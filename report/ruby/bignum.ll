inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 183
begin_hunk_0_@bary_mul_balance_with_mulfunc:bb.a
  br i1 %i.cc, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.bt, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.05779.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cy, %.lr.ph.i.i ] ; 4 uses
  %.05878.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cx, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.cd = getelementptr [4 x i8], ptr %i.bw, i64 %.05779.i.i ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr [4 x i8], ptr %i.by, i64 %.05779.i.i
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = zext i32 %i.ch to i64
  %i.cj = add nuw nsw i64 %.05878.i.i, %i.cf
  %i.ck = add nuw nsw i64 %i.cj, %i.ci            ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  store i32 %i.cl, ptr %i.cd, align 4, !tbaa !7
  %i.cm = lshr i64 %i.ck, 32
  %i.cn = or disjoint i64 %.05779.i.i, 1          ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %i.bw, i64 %i.cn ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr [4 x i8], ptr %i.by, i64 %i.cn
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw nsw i64 %i.cm, %i.cq
  %i.cv = add nuw nsw i64 %i.cu, %i.ct            ; 2 uses
  %i.cw = trunc i64 %i.cv to i32
  store i32 %i.cw, ptr %i.co, align 4, !tbaa !7
  %i.cx = lshr i64 %i.cv, 32                      ; 2 uses
  %i.cy = add nuw i64 %.05779.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %bary_add.exit126.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !34

bb.j:                                             ; preds = %.lr.ph142.split
  br i1 %i.u, label %bb.k, label %rbimpl_size_mul_or_raise.exit, !prof !32

.split.us:                                        ; preds = %.lr.ph142.split.us
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.19, i64 noundef %.1107, i64 noundef %3) #27
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
  %i.cz = getelementptr [4 x i8], ptr %4, i64 %.0108140
  call void %8(ptr noundef %i.bw, i64 noundef %i.bt, ptr noundef %2, i64 noundef %3, ptr noundef %i.cz, i64 noundef %i.bs, ptr noundef %i.w, i64 noundef %i.x) #23, !callees !33
  %i.da = icmp ugt i64 %i.bt, %3
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %ruby_nonempty_memcpy.exit
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %ruby_nonempty_memcpy.exit
  %.064.i.i = phi i64 [ %3, %bb.m ], [ %i.bt, %ruby_nonempty_memcpy.exit ] ; 8 uses
  %.063.i.i = phi ptr [ %i.bw, %bb.m ], [ %.1, %ruby_nonempty_memcpy.exit ] ; 12 uses
  %.062.i.i = phi i64 [ %i.bt, %bb.m ], [ %3, %ruby_nonempty_memcpy.exit ] ; 12 uses
  %.061.i.i = phi ptr [ %.1, %bb.m ], [ %i.bw, %ruby_nonempty_memcpy.exit ] ; 3 uses
  %.063.i.i173 = ptrtoaddr ptr %.063.i.i to i64
  %.not.i.i120 = icmp eq i64 %.064.i.i, 0
  br i1 %.not.i.i120, label %.preheader72.i.i, label %.lr.ph.i.i121.preheader

.lr.ph.i.i121.preheader:                          ; preds = %bb.n
  %xtraiter180 = and i64 %.064.i.i, 1
  %i.db = icmp eq i64 %.064.i.i, 1
  br i1 %i.db, label %.lr.ph.i.i121.epil.preheader, label %.lr.ph.i.i121.preheader.new

.lr.ph.i.i121.preheader.new:                      ; preds = %.lr.ph.i.i121.preheader
  %unroll_iter184 = and i64 %.064.i.i, -2
  br label %.lr.ph.i.i121

.preheader72.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i121
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.preheader72.i.i, label %.lr.ph.i.i121.epil.preheader

.lr.ph.i.i121.epil.preheader:                     ; preds = %.preheader72.i.i.loopexit.unr-lcssa, %.lr.ph.i.i121.preheader
  %.05779.i.i122.epil.init = phi i64 [ 0, %.lr.ph.i.i121.preheader ], [ %i.el, %.preheader72.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i123.epil.init = phi i64 [ 0, %.lr.ph.i.i121.preheader ], [ %i.ek, %.preheader72.i.i.loopexit.unr-lcssa ]
  %lcmp.mod183 = trunc i64 %.064.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod183)
  %i.dc = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i122.epil.init
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i122.epil.init
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nuw nsw i64 %.05878.i.i123.epil.init, %i.de
  %i.dj = add nuw nsw i64 %i.di, %i.dh            ; 2 uses
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr [4 x i8], ptr %i.bw, i64 %.05779.i.i122.epil.init
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !7
  %i.dm = lshr i64 %i.dj, 32
  br label %.preheader72.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph.i.i121.epil.preheader, %.preheader72.i.i.loopexit.unr-lcssa, %bb.n
  %.058.lcssa.i.i125 = phi i64 [ 0, %bb.n ], [ %i.ek, %.preheader72.i.i.loopexit.unr-lcssa ], [ %i.dm, %.lr.ph.i.i121.epil.preheader ] ; 2 uses
  %i.dn = icmp ult i64 %.064.i.i, %.062.i.i
  br i1 %i.dn, label %.lr.ph83.i.i, label %.preheader70.i.i

.lr.ph.i.i121:                                    ; preds = %.lr.ph.i.i121, %.lr.ph.i.i121.preheader.new
  %.05779.i.i122 = phi i64 [ 0, %.lr.ph.i.i121.preheader.new ], [ %i.el, %.lr.ph.i.i121 ] ; 5 uses
  %.05878.i.i123 = phi i64 [ 0, %.lr.ph.i.i121.preheader.new ], [ %i.ek, %.lr.ph.i.i121 ]
  %niter185 = phi i64 [ 0, %.lr.ph.i.i121.preheader.new ], [ %niter185.next.1, %.lr.ph.i.i121 ]
  %i.do = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i122
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !7
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i122
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.dt = zext i32 %i.ds to i64
  %i.du = add nuw nsw i64 %.05878.i.i123, %i.dq
  %i.dv = add nuw nsw i64 %i.du, %i.dt            ; 2 uses
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = getelementptr [4 x i8], ptr %i.bw, i64 %.05779.i.i122
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !7
  %i.dy = lshr i64 %i.dv, 32
  %i.dz = or disjoint i64 %.05779.i.i122, 1       ; 3 uses
  %i.ea = getelementptr [4 x i8], ptr %.061.i.i, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !7
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.dz
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !7
  %i.ef = zext i32 %i.ee to i64
  %i.eg = add nuw nsw i64 %i.dy, %i.ec
  %i.eh = add nuw nsw i64 %i.eg, %i.ef            ; 2 uses
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = getelementptr [4 x i8], ptr %i.bw, i64 %i.dz
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !7
  %i.ek = lshr i64 %i.eh, 32                      ; 3 uses
  %i.el = add nuw i64 %.05779.i.i122, 2           ; 2 uses
  %niter185.next.1 = add i64 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %.preheader72.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i121, !llvm.loop !34

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
  store i32 1, ptr %i.eo, align 4, !tbaa !7
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
  %i.es = load i32, ptr %i.er, align 4, !tbaa !7
  %i.et = zext i32 %i.es to i64
  %i.eu = add nuw nsw i64 %i.et, 1                ; 2 uses
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = getelementptr [4 x i8], ptr %i.bw, i64 %.182.i.i
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !7
  %i.ex = lshr i64 %i.eu, 32                      ; 2 uses
  %i.ey = add i64 %.182.i.i, 1                    ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.ey, %.062.i.i
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !36

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
  br i1 %min.iters.check, label %.lr.ph91.i.i.preheader175, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph91.i.i.preheader
  %i.fd = shl i64 %.0108140, 2
  %i.fe = add i64 %i.fd, %i.a
  %i.ff = sub i64 %.063.i.i173, %i.fe
  %diff.check = icmp ugt i64 %i.ff, -32
  br i1 %diff.check, label %.lr.ph91.i.i.preheader175, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fc, -8                      ; 3 uses
  %i.fg = add i64 %.3.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fh = add i64 %.3.i.i, %index                 ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.fh ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  %wide.load = load <4 x i32>, ptr %i.fi, align 4, !tbaa !7
  %wide.load174 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !7
  %i.fk = getelementptr [4 x i8], ptr %i.bw, i64 %i.fh ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  store <4 x i32> %wide.load, ptr %i.fk, align 4, !tbaa !7
  store <4 x i32> %wide.load174, ptr %i.fl, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fc, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %.lr.ph91.i.i.preheader175

.lr.ph91.i.i.preheader175:                        ; preds = %vector.memcheck, %.lr.ph91.i.i.preheader, %middle.block
  %.490.i.i.ph = phi i64 [ %.3.i.i, %vector.memcheck ], [ %.3.i.i, %.lr.ph91.i.i.preheader ], [ %i.fg, %middle.block ] ; 4 uses
  %i.fn = sub i64 %.062.i.i, %.490.i.i.ph
  %xtraiter186 = and i64 %i.fn, 3                 ; 2 uses
  %lcmp.mod187.not = icmp eq i64 %xtraiter186, 0
  br i1 %lcmp.mod187.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader175, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.fr, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader175 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader175 ]
  %i.fo = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i.prol
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !7
  %i.fq = getelementptr [4 x i8], ptr %i.bw, i64 %.490.i.i.prol
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !7
  %i.fr = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter186
  br i1 %prol.iter.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !40

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader175
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader175 ], [ %i.fr, %.lr.ph91.i.i.prol ]
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
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.fx, i1 false), !tbaa !7
  br label %bary_add.exit126

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.gn, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.fy = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !7
  %i.ga = getelementptr [4 x i8], ptr %i.bw, i64 %.490.i.i
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !7
  %i.gb = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !7
  %i.ge = getelementptr [4 x i8], ptr %i.bw, i64 %i.gb
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !7
  %i.gf = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.gg = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !7
  %i.gi = getelementptr [4 x i8], ptr %i.bw, i64 %i.gf
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !7
  %i.gj = add nuw i64 %.490.i.i, 3                ; 2 uses
  %i.gk = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !7
  %i.gm = getelementptr [4 x i8], ptr %i.bw, i64 %i.gj
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !7
  %i.gn = add nuw i64 %.490.i.i, 4                ; 2 uses
  %exitcond106.not.i.i.3 = icmp eq i64 %i.gn, %.062.i.i
  br i1 %exitcond106.not.i.i.3, label %.preheader.i.i, label %.lr.ph91.i.i, !llvm.loop !42

bary_add.exit126.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bary_add.exit126, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %bary_add.exit126.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.05779.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cy, %bary_add.exit126.loopexit.unr-lcssa ] ; 2 uses
  %.05878.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cx, %bary_add.exit126.loopexit.unr-lcssa ]
  %lcmp.mod179 = trunc i64 %i.bt to i1
  call void @llvm.assume(i1 %lcmp.mod179)
  %i.go = getelementptr [4 x i8], ptr %i.bw, i64 %.05779.i.i.epil.init ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !7
  %i.gq = getelementptr [4 x i8], ptr %i.by, i64 %.05779.i.i.epil.init
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !7
  %i.gs = trunc nuw nsw i64 %.05878.i.i.epil.init to i32
  %i.gt = add i32 %i.gp, %i.gs
  %i.gu = add i32 %i.gt, %i.gr
  store i32 %i.gu, ptr %i.go, align 4, !tbaa !7
  br label %bary_add.exit126

bary_add.exit126:                                 ; preds = %.lr.ph.i.i.epil.preheader, %bary_add.exit126.loopexit.unr-lcssa, %.preheader70.i.i, %bb.o, %._crit_edge139, %.lr.ph94.preheader.i.i, %.preheader.i.i, %.loopexit71.i.i
  %i.gv = add i64 %i.bs, %.0108140                ; 2 uses
  %i.gw = icmp ugt i64 %5, %i.gv
  br i1 %i.gw, label %.lr.ph142.split, label %._crit_edge143, !llvm.loop !35

._crit_edge143:                                   ; preds = %bary_add.exit126, %bary_add.exit126.us, %bb.g
  %i.gx = add i64 %3, %5                          ; 2 uses
  %.not116144 = icmp eq i64 %1, %i.gx
  br i1 %.not116144, label %._crit_edge149, label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %._crit_edge143
  %i.gy = getelementptr [4 x i8], ptr %0, i64 %3
  %i.gz = getelementptr [4 x i8], ptr %i.gy, i64 %5
  %i.ha = sub i64 %1, %i.gx
  %i.hb = shl i64 %i.ha, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gz, i8 0, i64 %i.hb, i1 false), !tbaa !7
  br label %._crit_edge149

._crit_edge149:                                   ; preds = %.lr.ph148.preheader, %._crit_edge143
  %i.hc = load i64, ptr %i.b, align 8, !tbaa !11
  %.not117 = icmp eq i64 %i.hc, 0
  br i1 %.not117, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge149
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bary_mul_toom3_start(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca i64, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !43
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  store ptr %2, ptr %i.c, align 8, !tbaa !43
  store i64 %3, ptr %i.d, align 8, !tbaa !11
  store ptr %4, ptr %i.e, align 8, !tbaa !43
  store i64 %5, ptr %i.f, align 8, !tbaa !11
  %i.g = call fastcc i32 @bary_mul_precheck(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bary_mul_toom3_branch.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !11   ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.k = load i64, ptr %i.d, align 8, !tbaa !11   ; 5 uses
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !43   ; 3 uses
  %i.m = load i64, ptr %i.f, align 8, !tbaa !11   ; 4 uses
  %i.n = icmp ult i64 %i.k, 150
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @bary_mul_karatsuba_branch(ptr noundef %i.h, i64 noundef %i.i, ptr noundef %i.j, i64 noundef %i.k, ptr noundef %i.l, i64 noundef %i.m, ptr noundef %6, i64 noundef %7), !inline_history !45
  br label %bary_mul_toom3_branch.exit

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.m, 2
  %i.p = udiv i64 %i.o, 3
  %i.q = shl nuw i64 %i.p, 1
  %i.r = icmp ult i64 %i.q, %i.k
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @bary_mul_balance_with_mulfunc(ptr noundef %i.h, i64 noundef %i.i, ptr noundef %i.j, i64 noundef %i.k, ptr noundef %i.l, i64 noundef %i.m, ptr noundef %6, i64 noundef %7, ptr noundef nonnull @bary_mul_toom3_start), !inline_history !45
  br label %bary_mul_toom3_branch.exit

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @bary_mul_toom3(ptr noundef %i.h, i64 noundef %i.i, ptr noundef %i.j, i64 noundef %i.k, ptr noundef %i.l, i64 noundef %i.m, ptr noundef %6, i64 noundef %7), !inline_history !45
  br label %bary_mul_toom3_branch.exit

bary_mul_toom3_branch.exit:                       ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_big_mul_karatsuba(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
end_hunk_0
begin_hunk_1_@bary_mul_karatsuba:bb.a
  %.not97.i.i = icmp eq i64 %i.az, 0
  br i1 %.not97.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge
  %xtraiter = and i64 %i.az, 1
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.az, 9223372036854775806
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.06278.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.by, %.lr.ph.i.i ] ; 5 uses
  %.06377.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bx, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bb = getelementptr [4 x i8], ptr %2, i64 %.06278.i.i
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr [4 x i8], ptr %i.as, i64 %.06278.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = zext i32 %i.bf to i64
  %i.bh = sub nsw i64 %i.bd, %i.bg
  %i.bi = add nsw i64 %i.bh, %.06377.i.i          ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr [4 x i8], ptr %0, i64 %.06278.i.i
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !7
  %i.bl = ashr i64 %i.bi, 32
  %i.bm = or disjoint i64 %.06278.i.i, 1          ; 3 uses
  %i.bn = getelementptr [4 x i8], ptr %2, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr [4 x i8], ptr %i.as, i64 %i.bm
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = zext i32 %i.br to i64
  %i.bt = sub nsw i64 %i.bp, %i.bs
  %i.bu = add nsw i64 %i.bt, %i.bl                ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr [4 x i8], ptr %0, i64 %i.bm
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !7
  %i.bx = ashr i64 %i.bu, 32                      ; 3 uses
  %i.by = add nuw nsw i64 %.06278.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !48

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.06278.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.by, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.06377.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bx, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod812 = trunc i64 %i.az to i1
  call void @llvm.assume(i1 %lcmp.mod812)
  %i.bz = getelementptr [4 x i8], ptr %2, i64 %.06278.i.i.epil.init
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr [4 x i8], ptr %i.as, i64 %.06278.i.i.epil.init
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.ce = zext i32 %i.cd to i64
  %i.cf = sub nsw i64 %i.cb, %i.ce
  %i.cg = add nsw i64 %i.cf, %.06377.i.i.epil.init ; 2 uses
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = getelementptr [4 x i8], ptr %0, i64 %.06278.i.i.epil.init
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !7
  %i.cj = ashr i64 %i.cg, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %._crit_edge
  %.063.lcssa.i.i = phi i64 [ 0, %._crit_edge ], [ %i.bx, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.cj, %.lr.ph.i.i.epil.preheader ] ; 4 uses
  %.not.i.i = icmp ugt i64 %i.ay, %i.aj
  br i1 %.not.i.i, label %.lr.ph87.i.i.preheader, label %.preheader72.i.i

.lr.ph87.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.ck = add nuw i64 %i.az, %i.aj
  %i.cl = sub i64 %.0, %i.ck
  %xtraiter813 = and i64 %i.cl, 3                 ; 2 uses
  %lcmp.mod814.not = icmp eq i64 %xtraiter813, 0
  br i1 %lcmp.mod814.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol

.lr.ph87.i.i.prol:                                ; preds = %.lr.ph87.i.i.preheader, %.lr.ph87.i.i.prol
  %.286.i.i.prol = phi i64 [ %i.ct, %.lr.ph87.i.i.prol ], [ %i.az, %.lr.ph87.i.i.preheader ] ; 3 uses
  %.26585.i.i.prol = phi i64 [ %i.cs, %.lr.ph87.i.i.prol ], [ %.063.lcssa.i.i, %.lr.ph87.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph87.i.i.prol ], [ 0, %.lr.ph87.i.i.preheader ]
  %i.cm = getelementptr [4 x i8], ptr %i.as, i64 %.286.i.i.prol
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = zext i32 %i.cn to i64
  %i.cp = sub nsw i64 %.26585.i.i.prol, %i.co     ; 2 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = getelementptr [4 x i8], ptr %0, i64 %.286.i.i.prol
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !7
  %i.cs = ashr i64 %i.cp, 32                      ; 3 uses
  %i.ct = add nuw i64 %.286.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter813
  br i1 %prol.iter.cmp.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol, !llvm.loop !49

.lr.ph87.i.i.prol.loopexit:                       ; preds = %.lr.ph87.i.i.prol, %.lr.ph87.i.i.preheader
  %.lcssa806.unr = phi i64 [ poison, %.lr.ph87.i.i.preheader ], [ %i.cs, %.lr.ph87.i.i.prol ]
  %.286.i.i.unr = phi i64 [ %i.az, %.lr.ph87.i.i.preheader ], [ %i.ct, %.lr.ph87.i.i.prol ]
  %.26585.i.i.unr = phi i64 [ %.063.lcssa.i.i, %.lr.ph87.i.i.preheader ], [ %i.cs, %.lr.ph87.i.i.prol ]
  %i.cu = sub i64 %i.az, %.0
  %i.cv = add i64 %i.cu, %i.aj
  %i.cw = icmp ugt i64 %i.cv, -4
  br i1 %i.cw, label %.loopexit71.i.i, label %.lr.ph87.i.i

.preheader72.i.i:                                 ; preds = %._crit_edge.i.i
  %i.cx = icmp samesign ult i64 %i.ay, %i.aj
  br i1 %i.cx, label %.lr.ph82.i.i, label %.loopexit71.i.i

.lr.ph82.i.i:                                     ; preds = %.preheader72.i.i, %bb.h
  %.181.i.i = phi i64 [ %i.dg, %bb.h ], [ %i.az, %.preheader72.i.i ] ; 4 uses
  %.16480.i.i = phi i64 [ %i.df, %bb.h ], [ %.063.lcssa.i.i, %.preheader72.i.i ]
  %i.cy = icmp eq i64 %.16480.i.i, 0
  br i1 %i.cy, label %.loopexit74.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph82.i.i
  %i.cz = getelementptr [4 x i8], ptr %2, i64 %.181.i.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = zext i32 %i.da to i64
  %i.dc = add nsw i64 %i.db, -1                   ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %i.de = getelementptr [4 x i8], ptr %0, i64 %.181.i.i
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !7
  %i.df = ashr i64 %i.dc, 32                      ; 2 uses
  %i.dg = add i64 %.181.i.i, 1                    ; 2 uses
  %exitcond107.not.i.i = icmp eq i64 %i.dg, %i.aj
  br i1 %exitcond107.not.i.i, label %.loopexit71.i.i, label %.lr.ph82.i.i, !llvm.loop !50

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i
  %.286.i.i = phi i64 [ %i.em, %.lr.ph87.i.i ], [ %.286.i.i.unr, %.lr.ph87.i.i.prol.loopexit ] ; 6 uses
  %.26585.i.i = phi i64 [ %i.el, %.lr.ph87.i.i ], [ %.26585.i.i.unr, %.lr.ph87.i.i.prol.loopexit ]
  %i.dh = getelementptr [4 x i8], ptr %i.as, i64 %.286.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.dj = zext i32 %i.di to i64
  %i.dk = sub nsw i64 %.26585.i.i, %i.dj          ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = getelementptr [4 x i8], ptr %0, i64 %.286.i.i
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !7
  %i.dn = ashr i64 %i.dk, 32
  %i.do = add nuw i64 %.286.i.i, 1                ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.as, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !7
  %i.dr = zext i32 %i.dq to i64
  %i.ds = sub nsw i64 %i.dn, %i.dr                ; 2 uses
  %i.dt = trunc i64 %i.ds to i32
  %i.du = getelementptr [4 x i8], ptr %0, i64 %i.do
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !7
  %i.dv = ashr i64 %i.ds, 32
  %i.dw = add nuw i64 %.286.i.i, 2                ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %i.as, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !7
  %i.dz = zext i32 %i.dy to i64
  %i.ea = sub nsw i64 %i.dv, %i.dz                ; 2 uses
  %i.eb = trunc i64 %i.ea to i32
  %i.ec = getelementptr [4 x i8], ptr %0, i64 %i.dw
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !7
  %i.ed = ashr i64 %i.ea, 32
  %i.ee = add nuw i64 %.286.i.i, 3                ; 2 uses
  %i.ef = getelementptr [4 x i8], ptr %i.as, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !7
  %i.eh = zext i32 %i.eg to i64
  %i.ei = sub nsw i64 %i.ed, %i.eh                ; 2 uses
  %i.ej = trunc i64 %i.ei to i32
  %i.ek = getelementptr [4 x i8], ptr %0, i64 %i.ee
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !7
  %i.el = ashr i64 %i.ei, 32                      ; 2 uses
  %i.em = add nuw i64 %.286.i.i, 4                ; 2 uses
  %exitcond108.not.i.i.3 = icmp eq i64 %i.em, %i.ay
  br i1 %exitcond108.not.i.i.3, label %.loopexit71.i.i, label %.lr.ph87.i.i, !llvm.loop !51

.loopexit71.i.i:                                  ; preds = %bb.h, %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i, %.preheader72.i.i
  %.366.i.i = phi i64 [ %.063.lcssa.i.i, %.preheader72.i.i ], [ %i.el, %.lr.ph87.i.i ], [ %.lcssa806.unr, %.lr.ph87.i.i.prol.loopexit ], [ %i.df, %bb.h ]
  %.3.i.i = phi i64 [ %i.az, %.preheader72.i.i ], [ %i.ay, %.lr.ph87.i.i.prol.loopexit ], [ %i.ay, %.lr.ph87.i.i ], [ %i.aj, %bb.h ] ; 4 uses
  %i.en = icmp eq i64 %.366.i.i, 0
  br i1 %i.en, label %.loopexit74.i.i, label %.preheader68.i.i

.preheader68.i.i:                                 ; preds = %.loopexit71.i.i
  %i.eo = icmp ult i64 %.3.i.i, %i.aj
  br i1 %i.eo, label %bary_sub.exit.thread, label %bary_sub.exit

bary_sub.exit.thread:                             ; preds = %.preheader68.i.i
  %i.ep = shl i64 %.3.i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.ep
  %i.eq = sub nuw nsw i64 %i.aj, %.3.i.i
  %i.er = shl i64 %i.eq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 -1, i64 %i.er, i1 false), !tbaa !7
  br label %.lr.ph.i.preheader

.loopexit74.i.i:                                  ; preds = %.lr.ph82.i.i, %.loopexit71.i.i
  %.5.i.i = phi i64 [ %.3.i.i, %.loopexit71.i.i ], [ %.181.i.i, %.lr.ph82.i.i ] ; 5 uses
  %i.es = icmp ne ptr %2, %0
  %i.et = icmp ult i64 %.5.i.i, %i.aj
  %or.cond473 = and i1 %i.es, %i.et
  br i1 %or.cond473, label %.lr.ph93.i.i.preheader, label %bary_2comp.exit

.lr.ph93.i.i.preheader:                           ; preds = %.loopexit74.i.i
  %i.eu = sub nuw i64 %i.aj, %.5.i.i              ; 3 uses
  %min.iters.check686 = icmp samesign ult i64 %i.eu, 8
  %i.ev = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.ev, -32
  %or.cond772 = or i1 %min.iters.check686, %diff.check
  br i1 %or.cond772, label %.lr.ph93.i.i.preheader799, label %vector.ph687

vector.ph687:                                     ; preds = %.lr.ph93.i.i.preheader
  %n.vec689 = and i64 %i.eu, 9223372036854775800  ; 3 uses
  %i.ew = add i64 %.5.i.i, %n.vec689
  br label %vector.body690

vector.body690:                                   ; preds = %vector.body690, %vector.ph687
  %index691 = phi i64 [ 0, %vector.ph687 ], [ %index.next694, %vector.body690 ] ; 2 uses
  %i.ex = add i64 %.5.i.i, %index691              ; 2 uses
  %i.ey = getelementptr [4 x i8], ptr %2, i64 %i.ex ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 16
  %wide.load692 = load <4 x i32>, ptr %i.ey, align 4, !tbaa !7
  %wide.load693 = load <4 x i32>, ptr %i.ez, align 4, !tbaa !7
  %i.fa = getelementptr [4 x i8], ptr %0, i64 %i.ex ; 2 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  store <4 x i32> %wide.load692, ptr %i.fa, align 4, !tbaa !7
  store <4 x i32> %wide.load693, ptr %i.fb, align 4, !tbaa !7
  %index.next694 = add nuw i64 %index691, 8       ; 2 uses
  %i.fc = icmp eq i64 %index.next694, %n.vec689
  br i1 %i.fc, label %middle.block695, label %vector.body690, !llvm.loop !52

middle.block695:                                  ; preds = %vector.body690
  %cmp.n696 = icmp eq i64 %i.eu, %n.vec689
  br i1 %cmp.n696, label %bary_2comp.exit, label %.lr.ph93.i.i.preheader799

.lr.ph93.i.i.preheader799:                        ; preds = %.lr.ph93.i.i.preheader, %middle.block695
  %.692.i.i.ph = phi i64 [ %.5.i.i, %.lr.ph93.i.i.preheader ], [ %i.ew, %middle.block695 ] ; 4 uses
  %i.fd = sub i64 %i.aj, %.692.i.i.ph
  %xtraiter815 = and i64 %i.fd, 3                 ; 2 uses
  %lcmp.mod816.not = icmp eq i64 %xtraiter815, 0
  br i1 %lcmp.mod816.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol

.lr.ph93.i.i.prol:                                ; preds = %.lr.ph93.i.i.preheader799, %.lr.ph93.i.i.prol
  %.692.i.i.prol = phi i64 [ %i.fh, %.lr.ph93.i.i.prol ], [ %.692.i.i.ph, %.lr.ph93.i.i.preheader799 ] ; 3 uses
  %prol.iter817 = phi i64 [ %prol.iter817.next, %.lr.ph93.i.i.prol ], [ 0, %.lr.ph93.i.i.preheader799 ]
  %i.fe = getelementptr [4 x i8], ptr %2, i64 %.692.i.i.prol
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !7
  %i.fg = getelementptr [4 x i8], ptr %0, i64 %.692.i.i.prol
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !7
  %i.fh = add nuw i64 %.692.i.i.prol, 1           ; 2 uses
  %prol.iter817.next = add i64 %prol.iter817, 1   ; 2 uses
  %prol.iter817.cmp.not = icmp eq i64 %prol.iter817.next, %xtraiter815
  br i1 %prol.iter817.cmp.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol, !llvm.loop !53

.lr.ph93.i.i.prol.loopexit:                       ; preds = %.lr.ph93.i.i.prol, %.lr.ph93.i.i.preheader799
  %.692.i.i.unr = phi i64 [ %.692.i.i.ph, %.lr.ph93.i.i.preheader799 ], [ %i.fh, %.lr.ph93.i.i.prol ]
  %i.fi = sub i64 %.692.i.i.ph, %i.aj
  %i.fj = icmp ugt i64 %i.fi, -4
  br i1 %i.fj, label %bary_2comp.exit, label %.lr.ph93.i.i

.lr.ph93.i.i:                                     ; preds = %.lr.ph93.i.i.prol.loopexit, %.lr.ph93.i.i
  %.692.i.i = phi i64 [ %i.fz, %.lr.ph93.i.i ], [ %.692.i.i.unr, %.lr.ph93.i.i.prol.loopexit ] ; 6 uses
  %i.fk = getelementptr [4 x i8], ptr %2, i64 %.692.i.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !7
  %i.fm = getelementptr [4 x i8], ptr %0, i64 %.692.i.i
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !7
  %i.fn = add nuw i64 %.692.i.i, 1                ; 2 uses
  %i.fo = getelementptr [4 x i8], ptr %2, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !7
  %i.fq = getelementptr [4 x i8], ptr %0, i64 %i.fn
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !7
  %i.fr = add nuw i64 %.692.i.i, 2                ; 2 uses
  %i.fs = getelementptr [4 x i8], ptr %2, i64 %i.fr
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !7
  %i.fu = getelementptr [4 x i8], ptr %0, i64 %i.fr
  store i32 %i.ft, ptr %i.fu, align 4, !tbaa !7
  %i.fv = add nuw i64 %.692.i.i, 3                ; 2 uses
  %i.fw = getelementptr [4 x i8], ptr %2, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !7
  %i.fy = getelementptr [4 x i8], ptr %0, i64 %i.fv
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !7
  %i.fz = add nuw i64 %.692.i.i, 4                ; 2 uses
  %exitcond111.not.i.i.3 = icmp eq i64 %i.fz, %i.aj
  br i1 %exitcond111.not.i.i.3, label %bary_2comp.exit, label %.lr.ph93.i.i, !llvm.loop !54

bary_sub.exit:                                    ; preds = %.preheader68.i.i
  %.not27.i = icmp eq i64 %i.aj, 0
  br i1 %.not27.i, label %bary_2comp.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bary_sub.exit.thread, %bary_sub.exit
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.i
  %.023.i = phi i64 [ %i.gc, %bb.i ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.ga = getelementptr [4 x i8], ptr %0, i64 %.023.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !7  ; 2 uses
  %.not.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.gc = add nuw nsw i64 %.023.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.gc, %i.aj
  br i1 %exitcond.not.i, label %bary_2comp.exit, label %.lr.ph.i, !llvm.loop !55

bb.j:                                             ; preds = %.lr.ph.i
  %i.gd = getelementptr [4 x i8], ptr %0, i64 %.023.i
  %i.ge = sub i32 0, %i.gb
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !7
  %.124.i = add nuw i64 %.023.i, 1                ; 4 uses
  %i.gf = icmp ult i64 %.124.i, %i.aj
  br i1 %i.gf, label %.lr.ph26.i.preheader, label %bary_2comp.exit

.lr.ph26.i.preheader:                             ; preds = %bb.j
  %i.gg = xor i64 %.023.i, -1
  %i.gh = add nsw i64 %i.aj, %i.gg                ; 3 uses
  %min.iters.check = icmp ult i64 %i.gh, 8
  br i1 %min.iters.check, label %.lr.ph26.i.preheader800, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i.preheader
  %n.vec = and i64 %i.gh, -8                      ; 3 uses
  %i.gi = add i64 %.124.i, %n.vec
  %i.gj = getelementptr [4 x i8], ptr %0, i64 %.124.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gk = getelementptr [4 x i8], ptr %i.gj, i64 %index ; 3 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.gk, align 4, !tbaa !7
  %wide.load684 = load <4 x i32>, ptr %i.gl, align 4, !tbaa !7
  %i.gm = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.gn = xor <4 x i32> %wide.load684, splat (i32 -1)
  store <4 x i32> %i.gm, ptr %i.gk, align 4, !tbaa !7
  store <4 x i32> %i.gn, ptr %i.gl, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.go = icmp eq i64 %index.next, %n.vec
  br i1 %i.go, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gh, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit, label %.lr.ph26.i.preheader800

.lr.ph26.i.preheader800:                          ; preds = %.lr.ph26.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ %.124.i, %.lr.ph26.i.preheader ], [ %i.gi, %middle.block ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader800, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader800 ] ; 2 uses
  %i.gp = getelementptr [4 x i8], ptr %0, i64 %.125.i ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !7
  %i.gr = xor i32 %i.gq, -1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !7
  %.1.i = add nuw i64 %.125.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %.1.i, %i.aj
  br i1 %exitcond31.not.i, label %bary_2comp.exit, label %.lr.ph26.i, !llvm.loop !57

bary_2comp.exit:                                  ; preds = %bb.i, %.lr.ph26.i, %.lr.ph93.i.i.prol.loopexit, %.lr.ph93.i.i, %middle.block, %middle.block695, %.loopexit74.i.i, %bb.j
  %.0.i.i444 = phi i32 [ 1, %bb.j ], [ 1, %middle.block ], [ 0, %middle.block695 ], [ 0, %.loopexit74.i.i ], [ 0, %.lr.ph93.i.i.prol.loopexit ], [ 1, %.lr.ph26.i ], [ 0, %.lr.ph93.i.i ], [ 1, %bb.i ] ; 4 uses
  %.0194 = phi i32 [ 0, %bb.j ], [ 0, %middle.block ], [ 1, %middle.block695 ], [ 1, %.loopexit74.i.i ], [ 1, %.lr.ph93.i.i.prol.loopexit ], [ 0, %.lr.ph26.i ], [ 1, %.lr.ph93.i.i ], [ 0, %bb.i ] ; 2 uses
  br i1 %i.ae, label %.critedge, label %bb.l

bary_2comp.exit.thread:                           ; preds = %bary_sub.exit
  br i1 %i.ae, label %.critedge, label %bary_2comp.exit266

.critedge:                                        ; preds = %bary_2comp.exit.thread, %bary_2comp.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %i.au, ptr %i.u, align 8, !tbaa !43
  store i64 %i.al, ptr %i.v, align 8, !tbaa !11
  store ptr %0, ptr %i.w, align 8, !tbaa !43
  store i64 %i.aj, ptr %i.x, align 8, !tbaa !11
  store ptr %0, ptr %i.y, align 8, !tbaa !43
  store i64 %i.aj, ptr %i.z, align 8, !tbaa !11
  %i.gs = call fastcc i32 @bary_mul_precheck(ptr noundef %i.u, ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.x, ptr noundef %i.y, ptr noundef %i.z), !inline_history !58
  %.not.i219 = icmp eq i32 %i.gs, 0
  br i1 %.not.i219, label %bb.k, label %bary_mul_karatsuba_start.exit

bb.k:                                             ; preds = %.critedge
  %i.gt = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.gu = load i64, ptr %i.v, align 8, !tbaa !11
  %i.gv = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.gw = load i64, ptr %i.x, align 8, !tbaa !11
  %i.gx = load ptr, ptr %i.y, align 8, !tbaa !43
  %i.gy = load i64, ptr %i.z, align 8, !tbaa !11
  call fastcc void @bary_mul_karatsuba_branch(ptr noundef %i.gt, i64 noundef %i.gu, ptr noundef %i.gv, i64 noundef %i.gw, ptr noundef %i.gx, i64 noundef %i.gy, ptr noundef %.0192, i64 noundef %.0193), !inline_history !58
  br label %bary_mul_karatsuba_start.exit

bary_mul_karatsuba_start.exit:                    ; preds = %.critedge, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.not27.i269.old = icmp eq i64 %i.al, 0
  br i1 %.not27.i269.old, label %bary_2comp.exit280, label %.lr.ph.i270.preheader

bb.l:                                             ; preds = %bary_2comp.exit
  switch i64 %i.aj, label %.lr.ph.i.i221.preheader.new [
    i64 0, label %bary_2comp.exit266
    i64 1, label %.lr.ph.i.i221.epil.preheader
  ]

.lr.ph.i.i221.preheader.new:                      ; preds = %bb.l
end_hunk_1
begin_hunk_2_@bary_mul_karatsuba:bb.a
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !7
  %i.pi = zext i32 %i.ph to i64
  %i.pj = add nuw nsw i64 %.05878.i.i321, %i.pf
  %i.pk = add nuw nsw i64 %i.pj, %i.pi            ; 2 uses
  %i.pl = trunc i64 %i.pk to i32
  store i32 %i.pl, ptr %i.pd, align 4, !tbaa !7
  %i.pm = lshr i64 %i.pk, 32
  %i.pn = or disjoint i64 %.05779.i.i320, 1       ; 2 uses
  %i.po = getelementptr [4 x i8], ptr %i.au, i64 %i.pn ; 2 uses
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !7
  %i.pq = zext i32 %i.pp to i64
  %i.pr = getelementptr [4 x i8], ptr %i.av, i64 %i.pn
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !7
  %i.pt = zext i32 %i.ps to i64
  %i.pu = add nuw nsw i64 %i.pm, %i.pq
  %i.pv = add nuw nsw i64 %i.pu, %i.pt            ; 2 uses
  %i.pw = trunc i64 %i.pv to i32
  store i32 %i.pw, ptr %i.po, align 4, !tbaa !7
  %i.px = lshr i64 %i.pv, 32                      ; 3 uses
  %i.py = add nuw nsw i64 %.05779.i.i320, 2       ; 2 uses
  %niter847.next.1 = add i64 %niter847, 2         ; 2 uses
  %niter847.ncmp.1 = icmp eq i64 %niter847.next.1, %unroll_iter846
  br i1 %niter847.ncmp.1, label %bary_add.exit331.loopexit.unr-lcssa, label %.lr.ph.i.i319, !llvm.loop !34

bary_add.exit331.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i319
  %i.pz = and i64 %.0191, 2
  %lcmp.mod843.not = icmp eq i64 %i.pz, 0
  br i1 %lcmp.mod843.not, label %bary_add.exit331.loopexit, label %.lr.ph.i.i319.epil.preheader

.lr.ph.i.i319.epil.preheader:                     ; preds = %bary_add.exit331.loopexit.unr-lcssa, %.lr.ph.i.i319.preheader
  %.05779.i.i320.epil.init = phi i64 [ 0, %.lr.ph.i.i319.preheader ], [ %i.py, %bary_add.exit331.loopexit.unr-lcssa ] ; 2 uses
  %.05878.i.i321.epil.init = phi i64 [ 0, %.lr.ph.i.i319.preheader ], [ %i.px, %bary_add.exit331.loopexit.unr-lcssa ]
  %lcmp.mod845 = trunc i64 %i.aj to i1
  call void @llvm.assume(i1 %lcmp.mod845)
  %i.qa = getelementptr [4 x i8], ptr %i.au, i64 %.05779.i.i320.epil.init ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !7
  %i.qc = zext i32 %i.qb to i64
  %i.qd = getelementptr [4 x i8], ptr %i.av, i64 %.05779.i.i320.epil.init
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !7
  %i.qf = zext i32 %i.qe to i64
  %i.qg = add nuw nsw i64 %.05878.i.i321.epil.init, %i.qc
  %i.qh = add nuw nsw i64 %i.qg, %i.qf            ; 2 uses
  %i.qi = trunc i64 %i.qh to i32
  store i32 %i.qi, ptr %i.qa, align 4, !tbaa !7
  %i.qj = lshr i64 %i.qh, 32
  br label %bary_add.exit331.loopexit

bary_add.exit331.loopexit:                        ; preds = %bary_add.exit331.loopexit.unr-lcssa, %.lr.ph.i.i319.epil.preheader
  %.lcssa784 = phi i64 [ %i.px, %bary_add.exit331.loopexit.unr-lcssa ], [ %i.qj, %.lr.ph.i.i319.epil.preheader ]
  %i.qk = icmp ne i64 %.lcssa784, 0
  %i.ql = zext i1 %i.qk to i64
  br label %bary_add.exit331

bary_add.exit331:                                 ; preds = %bary_add.exit331.loopexit, %bary_mul_karatsuba_start.exit317
  %.058.lcssa.i.i324 = phi i64 [ 0, %bary_mul_karatsuba_start.exit317 ], [ %i.ql, %bary_add.exit331.loopexit ] ; 3 uses
  %i.qm = icmp ult i64 %i.kf, %1
  %i.qn = sub i64 %1, %i.aw                       ; 9 uses
  %i.qo = select i1 %i.qm, i64 %i.aj, i64 %i.qn   ; 3 uses
  %i.qp = icmp ugt i64 %i.aj, %i.qo
  br i1 %i.qp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bary_add.exit331
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bary_add.exit331
  %.064.i = phi i64 [ %i.qo, %bb.w ], [ %i.aj, %bary_add.exit331 ] ; 8 uses
  %.063.i = phi ptr [ %i.av, %bb.w ], [ %i.ax, %bary_add.exit331 ] ; 12 uses
  %.062.i = phi i64 [ %i.aj, %bb.w ], [ %i.qo, %bary_add.exit331 ] ; 12 uses
  %i.qq = phi i64 [ %i.aw, %bb.w ], [ %i.al, %bary_add.exit331 ]
  %.063.i725 = ptrtoaddr ptr %.063.i to i64
  %.not.i332 = icmp eq i64 %.064.i, 0
  br i1 %.not.i332, label %.preheader72.i, label %.lr.ph.i333.preheader

.lr.ph.i333.preheader:                            ; preds = %bb.x
  %i.qr = getelementptr [4 x i8], ptr %0, i64 %i.qq ; 3 uses
  %xtraiter848 = and i64 %.064.i, 1
  %i.qs = icmp eq i64 %.064.i, 1
  br i1 %i.qs, label %.lr.ph.i333.epil.preheader, label %.lr.ph.i333.preheader.new

.lr.ph.i333.preheader.new:                        ; preds = %.lr.ph.i333.preheader
  %unroll_iter852 = and i64 %.064.i, -2
  br label %.lr.ph.i333

.preheader72.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i333
  %lcmp.mod849.not = icmp eq i64 %xtraiter848, 0
  br i1 %lcmp.mod849.not, label %.preheader72.i, label %.lr.ph.i333.epil.preheader

.lr.ph.i333.epil.preheader:                       ; preds = %.preheader72.i.loopexit.unr-lcssa, %.lr.ph.i333.preheader
  %.05779.i334.epil.init = phi i64 [ 0, %.lr.ph.i333.preheader ], [ %i.sc, %.preheader72.i.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i335.epil.init = phi i64 [ %.058.lcssa.i.i324, %.lr.ph.i333.preheader ], [ %i.sb, %.preheader72.i.loopexit.unr-lcssa ]
  %lcmp.mod851 = trunc i64 %.064.i to i1
  call void @llvm.assume(i1 %lcmp.mod851)
  %i.qt = getelementptr [4 x i8], ptr %i.qr, i64 %.05779.i334.epil.init
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !7
  %i.qv = zext i32 %i.qu to i64
  %i.qw = getelementptr [4 x i8], ptr %.063.i, i64 %.05779.i334.epil.init
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !7
  %i.qy = zext i32 %i.qx to i64
  %i.qz = add nuw nsw i64 %.05878.i335.epil.init, %i.qv
  %i.ra = add nuw nsw i64 %i.qz, %i.qy            ; 2 uses
  %i.rb = trunc i64 %i.ra to i32
  %i.rc = getelementptr [4 x i8], ptr %i.av, i64 %.05779.i334.epil.init
  store i32 %i.rb, ptr %i.rc, align 4, !tbaa !7
  %i.rd = lshr i64 %i.ra, 32
  br label %.preheader72.i

.preheader72.i:                                   ; preds = %.lr.ph.i333.epil.preheader, %.preheader72.i.loopexit.unr-lcssa, %bb.x
  %.058.lcssa.i337 = phi i64 [ %.058.lcssa.i.i324, %bb.x ], [ %i.sb, %.preheader72.i.loopexit.unr-lcssa ], [ %i.rd, %.lr.ph.i333.epil.preheader ] ; 2 uses
  %i.re = icmp ult i64 %.064.i, %.062.i
  br i1 %i.re, label %.lr.ph83.i, label %.preheader70.i

.lr.ph.i333:                                      ; preds = %.lr.ph.i333, %.lr.ph.i333.preheader.new
  %.05779.i334 = phi i64 [ 0, %.lr.ph.i333.preheader.new ], [ %i.sc, %.lr.ph.i333 ] ; 5 uses
  %.05878.i335 = phi i64 [ %.058.lcssa.i.i324, %.lr.ph.i333.preheader.new ], [ %i.sb, %.lr.ph.i333 ]
  %niter853 = phi i64 [ 0, %.lr.ph.i333.preheader.new ], [ %niter853.next.1, %.lr.ph.i333 ]
  %i.rf = getelementptr [4 x i8], ptr %i.qr, i64 %.05779.i334
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !7
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr [4 x i8], ptr %.063.i, i64 %.05779.i334
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !7
  %i.rk = zext i32 %i.rj to i64
  %i.rl = add nuw nsw i64 %.05878.i335, %i.rh
  %i.rm = add nuw nsw i64 %i.rl, %i.rk            ; 2 uses
  %i.rn = trunc i64 %i.rm to i32
  %i.ro = getelementptr [4 x i8], ptr %i.av, i64 %.05779.i334
  store i32 %i.rn, ptr %i.ro, align 4, !tbaa !7
  %i.rp = lshr i64 %i.rm, 32
  %i.rq = or disjoint i64 %.05779.i334, 1         ; 3 uses
  %i.rr = getelementptr [4 x i8], ptr %i.qr, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !7
  %i.rt = zext i32 %i.rs to i64
  %i.ru = getelementptr [4 x i8], ptr %.063.i, i64 %i.rq
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !7
  %i.rw = zext i32 %i.rv to i64
  %i.rx = add nuw nsw i64 %i.rp, %i.rt
  %i.ry = add nuw nsw i64 %i.rx, %i.rw            ; 2 uses
  %i.rz = trunc i64 %i.ry to i32
  %i.sa = getelementptr [4 x i8], ptr %i.av, i64 %i.rq
  store i32 %i.rz, ptr %i.sa, align 4, !tbaa !7
  %i.sb = lshr i64 %i.ry, 32                      ; 3 uses
  %i.sc = add nuw nsw i64 %.05779.i334, 2         ; 2 uses
  %niter853.next.1 = add i64 %niter853, 2         ; 2 uses
  %niter853.ncmp.1 = icmp eq i64 %niter853.next.1, %unroll_iter852
  br i1 %niter853.ncmp.1, label %.preheader72.i.loopexit.unr-lcssa, label %.lr.ph.i333, !llvm.loop !34

.preheader70.i:                                   ; preds = %bb.z, %.preheader72.i
  %.159.lcssa.i = phi i64 [ %.058.lcssa.i337, %.preheader72.i ], [ %i.so, %bb.z ] ; 2 uses
  %.1.lcssa.i = phi i64 [ %.064.i, %.preheader72.i ], [ %.062.i, %bb.z ] ; 4 uses
  %i.sd = icmp ult i64 %.1.lcssa.i, %i.aj
  br i1 %i.sd, label %.lr.ph88.preheader.i, label %._crit_edge.i

.lr.ph88.preheader.i:                             ; preds = %.preheader70.i
  %i.se = icmp eq i64 %.159.lcssa.i, 0
  br i1 %i.se, label %.loopexit71.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph88.preheader.i
  %i.sf = getelementptr [4 x i8], ptr %i.av, i64 %.1.lcssa.i
  store i32 1, ptr %i.sf, align 4, !tbaa !7
  %i.sg = add nuw nsw i64 %.1.lcssa.i, 1          ; 2 uses
  %exitcond103.peel.not.i = icmp eq i64 %i.sg, %i.aj
  br i1 %exitcond103.peel.not.i, label %._crit_edge.i, label %.loopexit71.i

.lr.ph83.i:                                       ; preds = %.preheader72.i, %bb.z
  %.182.i = phi i64 [ %i.sp, %bb.z ], [ %.064.i, %.preheader72.i ] ; 4 uses
  %.15981.i = phi i64 [ %i.so, %bb.z ], [ %.058.lcssa.i337, %.preheader72.i ]
  %i.sh = icmp eq i64 %.15981.i, 0
  br i1 %i.sh, label %.loopexit71.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph83.i
  %i.si = getelementptr [4 x i8], ptr %.063.i, i64 %.182.i
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !7
  %i.sk = zext i32 %i.sj to i64
  %i.sl = add nuw nsw i64 %i.sk, 1                ; 2 uses
  %i.sm = trunc i64 %i.sl to i32
  %i.sn = getelementptr [4 x i8], ptr %i.av, i64 %.182.i
  store i32 %i.sm, ptr %i.sn, align 4, !tbaa !7
  %i.so = lshr i64 %i.sl, 32                      ; 2 uses
  %i.sp = add i64 %.182.i, 1                      ; 2 uses
  %exitcond102.not.i = icmp eq i64 %i.sp, %.062.i
  br i1 %exitcond102.not.i, label %.preheader70.i, label %.lr.ph83.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %bb.y, %.preheader70.i
  %.260.lcssa.i = phi i64 [ %.159.lcssa.i, %.preheader70.i ], [ 0, %bb.y ]
  %i.sq = icmp ne i64 %.260.lcssa.i, 0
  %i.sr = zext i1 %i.sq to i32
  br label %bary_addc.exit339

.loopexit71.i:                                    ; preds = %.lr.ph83.i, %bb.y, %.lr.ph88.preheader.i
  %.3.i = phi i64 [ %i.sg, %bb.y ], [ %.1.lcssa.i, %.lr.ph88.preheader.i ], [ %.182.i, %.lr.ph83.i ] ; 7 uses
  %i.ss = icmp eq ptr %.063.i, %i.av
  %i.st = icmp eq i64 %.062.i, %i.aj
  %or.cond.i = and i1 %i.ss, %i.st
  br i1 %or.cond.i, label %bary_addc.exit339, label %.preheader69.i

.preheader69.i:                                   ; preds = %.loopexit71.i
  %i.su = icmp ult i64 %.3.i, %.062.i
  br i1 %i.su, label %.lr.ph91.i.preheader, label %.preheader.i

.lr.ph91.i.preheader:                             ; preds = %.preheader69.i
  %i.sv = sub nuw i64 %.062.i, %.3.i              ; 3 uses
  %min.iters.check728 = icmp ult i64 %i.sv, 16
  br i1 %min.iters.check728, label %.lr.ph91.i.preheader780, label %vector.memcheck724

vector.memcheck724:                               ; preds = %.lr.ph91.i.preheader
  %i.sw = shl i64 %i.aj, 3
  %i.sx = add i64 %i.sw, %i.b
  %i.sy = sub i64 %.063.i725, %i.sx
  %diff.check726 = icmp ugt i64 %i.sy, -32
  br i1 %diff.check726, label %.lr.ph91.i.preheader780, label %vector.ph729

vector.ph729:                                     ; preds = %vector.memcheck724
  %n.vec731 = and i64 %i.sv, -8                   ; 3 uses
  %i.sz = add i64 %.3.i, %n.vec731
  br label %vector.body732

vector.body732:                                   ; preds = %vector.body732, %vector.ph729
  %index733 = phi i64 [ 0, %vector.ph729 ], [ %index.next736, %vector.body732 ] ; 2 uses
  %i.ta = add i64 %.3.i, %index733                ; 2 uses
  %i.tb = getelementptr [4 x i8], ptr %.063.i, i64 %i.ta ; 2 uses
  %i.tc = getelementptr i8, ptr %i.tb, i64 16
  %wide.load734 = load <4 x i32>, ptr %i.tb, align 4, !tbaa !7
  %wide.load735 = load <4 x i32>, ptr %i.tc, align 4, !tbaa !7
  %i.td = getelementptr [4 x i8], ptr %i.av, i64 %i.ta ; 2 uses
  %i.te = getelementptr i8, ptr %i.td, i64 16
  store <4 x i32> %wide.load734, ptr %i.td, align 4, !tbaa !7
  store <4 x i32> %wide.load735, ptr %i.te, align 4, !tbaa !7
  %index.next736 = add nuw i64 %index733, 8       ; 2 uses
  %i.tf = icmp eq i64 %index.next736, %n.vec731
  br i1 %i.tf, label %middle.block737, label %vector.body732, !llvm.loop !63

middle.block737:                                  ; preds = %vector.body732
  %cmp.n738 = icmp eq i64 %i.sv, %n.vec731
  br i1 %cmp.n738, label %.preheader.i, label %.lr.ph91.i.preheader780

.lr.ph91.i.preheader780:                          ; preds = %vector.memcheck724, %.lr.ph91.i.preheader, %middle.block737
  %.490.i.ph = phi i64 [ %.3.i, %vector.memcheck724 ], [ %.3.i, %.lr.ph91.i.preheader ], [ %i.sz, %middle.block737 ] ; 4 uses
  %i.tg = sub i64 %.062.i, %.490.i.ph
  %xtraiter854 = and i64 %i.tg, 3                 ; 2 uses
  %lcmp.mod855.not = icmp eq i64 %xtraiter854, 0
  br i1 %lcmp.mod855.not, label %.lr.ph91.i.prol.loopexit, label %.lr.ph91.i.prol

.lr.ph91.i.prol:                                  ; preds = %.lr.ph91.i.preheader780, %.lr.ph91.i.prol
  %.490.i.prol = phi i64 [ %i.tk, %.lr.ph91.i.prol ], [ %.490.i.ph, %.lr.ph91.i.preheader780 ] ; 3 uses
  %prol.iter856 = phi i64 [ %prol.iter856.next, %.lr.ph91.i.prol ], [ 0, %.lr.ph91.i.preheader780 ]
  %i.th = getelementptr [4 x i8], ptr %.063.i, i64 %.490.i.prol
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !7
  %i.tj = getelementptr [4 x i8], ptr %i.av, i64 %.490.i.prol
  store i32 %i.ti, ptr %i.tj, align 4, !tbaa !7
  %i.tk = add nuw i64 %.490.i.prol, 1             ; 2 uses
  %prol.iter856.next = add i64 %prol.iter856, 1   ; 2 uses
  %prol.iter856.cmp.not = icmp eq i64 %prol.iter856.next, %xtraiter854
  br i1 %prol.iter856.cmp.not, label %.lr.ph91.i.prol.loopexit, label %.lr.ph91.i.prol, !llvm.loop !64

.lr.ph91.i.prol.loopexit:                         ; preds = %.lr.ph91.i.prol, %.lr.ph91.i.preheader780
  %.490.i.unr = phi i64 [ %.490.i.ph, %.lr.ph91.i.preheader780 ], [ %i.tk, %.lr.ph91.i.prol ]
  %i.tl = sub i64 %.490.i.ph, %.062.i
  %i.tm = icmp ugt i64 %i.tl, -4
  br i1 %i.tm, label %.preheader.i, label %.lr.ph91.i

.preheader.i:                                     ; preds = %.lr.ph91.i.prol.loopexit, %.lr.ph91.i, %middle.block737, %.preheader69.i
  %.4.lcssa.i = phi i64 [ %.3.i, %.preheader69.i ], [ %.062.i, %middle.block737 ], [ %.062.i, %.lr.ph91.i ], [ %.062.i, %.lr.ph91.i.prol.loopexit ] ; 3 uses
  %i.tn = icmp ult i64 %.4.lcssa.i, %i.aj
  br i1 %i.tn, label %.lr.ph94.preheader.i, label %bary_addc.exit339

.lr.ph94.preheader.i:                             ; preds = %.preheader.i
  %i.to = shl i64 %.4.lcssa.i, 2
  %scevgep.i = getelementptr i8, ptr %i.av, i64 %i.to
  %i.tp = sub nuw nsw i64 %i.aj, %.4.lcssa.i
  %i.tq = shl nuw i64 %i.tp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.tq, i1 false), !tbaa !7
  br label %bary_addc.exit339

.lr.ph91.i:                                       ; preds = %.lr.ph91.i.prol.loopexit, %.lr.ph91.i
  %.490.i = phi i64 [ %i.ug, %.lr.ph91.i ], [ %.490.i.unr, %.lr.ph91.i.prol.loopexit ] ; 6 uses
  %i.tr = getelementptr [4 x i8], ptr %.063.i, i64 %.490.i
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !7
  %i.tt = getelementptr [4 x i8], ptr %i.av, i64 %.490.i
  store i32 %i.ts, ptr %i.tt, align 4, !tbaa !7
  %i.tu = add nuw i64 %.490.i, 1                  ; 2 uses
  %i.tv = getelementptr [4 x i8], ptr %.063.i, i64 %i.tu
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !7
  %i.tx = getelementptr [4 x i8], ptr %i.av, i64 %i.tu
  store i32 %i.tw, ptr %i.tx, align 4, !tbaa !7
  %i.ty = add nuw i64 %.490.i, 2                  ; 2 uses
  %i.tz = getelementptr [4 x i8], ptr %.063.i, i64 %i.ty
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !7
  %i.ub = getelementptr [4 x i8], ptr %i.av, i64 %i.ty
  store i32 %i.ua, ptr %i.ub, align 4, !tbaa !7
  %i.uc = add nuw i64 %.490.i, 3                  ; 2 uses
  %i.ud = getelementptr [4 x i8], ptr %.063.i, i64 %i.uc
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !7
  %i.uf = getelementptr [4 x i8], ptr %i.av, i64 %i.uc
  store i32 %i.ue, ptr %i.uf, align 4, !tbaa !7
  %i.ug = add nuw i64 %.490.i, 4                  ; 2 uses
  %exitcond106.not.i.3 = icmp eq i64 %i.ug, %.062.i
  br i1 %exitcond106.not.i.3, label %.preheader.i, label %.lr.ph91.i, !llvm.loop !65

bary_addc.exit339:                                ; preds = %._crit_edge.i, %.loopexit71.i, %.preheader.i, %.lr.ph94.preheader.i
  %.0.i338 = phi i32 [ %i.sr, %._crit_edge.i ], [ 0, %.loopexit71.i ], [ 0, %.preheader.i ], [ 0, %.lr.ph94.preheader.i ]
  %i.uh = icmp ugt i64 %i.ou, %i.aj
  br i1 %i.uh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bary_addc.exit339
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bary_addc.exit339
  %.064.i.i = phi i64 [ %i.aj, %bb.aa ], [ %i.ou, %bary_addc.exit339 ] ; 8 uses
  %.063.i.i = phi ptr [ %i.av, %bb.aa ], [ %.0192, %bary_addc.exit339 ] ; 12 uses
  %.062.i.i = phi i64 [ %i.ou, %bb.aa ], [ %i.aj, %bary_addc.exit339 ] ; 12 uses
  %.061.i.i = phi ptr [ %.0192, %bb.aa ], [ %i.av, %bary_addc.exit339 ] ; 3 uses
  %.063.i.i741 = ptrtoaddr ptr %.063.i.i to i64
  %.not.i.i340 = icmp eq i64 %.064.i.i, 0
  br i1 %.not.i.i340, label %.preheader72.i.i345, label %.lr.ph.i.i341.preheader

.lr.ph.i.i341.preheader:                          ; preds = %bb.ab
  %xtraiter857 = and i64 %.064.i.i, 1
  %i.ui = icmp eq i64 %.064.i.i, 1
  br i1 %i.ui, label %.lr.ph.i.i341.epil.preheader, label %.lr.ph.i.i341.preheader.new

.lr.ph.i.i341.preheader.new:                      ; preds = %.lr.ph.i.i341.preheader
  %unroll_iter861 = and i64 %.064.i.i, -2
  br label %.lr.ph.i.i341

.preheader72.i.i345.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i341
  %lcmp.mod858.not = icmp eq i64 %xtraiter857, 0
  br i1 %lcmp.mod858.not, label %.preheader72.i.i345, label %.lr.ph.i.i341.epil.preheader

.lr.ph.i.i341.epil.preheader:                     ; preds = %.preheader72.i.i345.loopexit.unr-lcssa, %.lr.ph.i.i341.preheader
  %.05779.i.i342.epil.init = phi i64 [ 0, %.lr.ph.i.i341.preheader ], [ %i.vs, %.preheader72.i.i345.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i343.epil.init = phi i64 [ 0, %.lr.ph.i.i341.preheader ], [ %i.vr, %.preheader72.i.i345.loopexit.unr-lcssa ]
  %lcmp.mod860 = trunc i64 %.064.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod860)
  %i.uj = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i342.epil.init
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !7
  %i.ul = zext i32 %i.uk to i64
  %i.um = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i342.epil.init
  %i.un = load i32, ptr %i.um, align 4, !tbaa !7
  %i.uo = zext i32 %i.un to i64
  %i.up = add nuw nsw i64 %.05878.i.i343.epil.init, %i.ul
  %i.uq = add nuw nsw i64 %i.up, %i.uo            ; 2 uses
  %i.ur = trunc i64 %i.uq to i32
  %i.us = getelementptr [4 x i8], ptr %i.av, i64 %.05779.i.i342.epil.init
  store i32 %i.ur, ptr %i.us, align 4, !tbaa !7
  %i.ut = lshr i64 %i.uq, 32
  br label %.preheader72.i.i345

.preheader72.i.i345:                              ; preds = %.lr.ph.i.i341.epil.preheader, %.preheader72.i.i345.loopexit.unr-lcssa, %bb.ab
  %.058.lcssa.i.i346 = phi i64 [ 0, %bb.ab ], [ %i.vr, %.preheader72.i.i345.loopexit.unr-lcssa ], [ %i.ut, %.lr.ph.i.i341.epil.preheader ] ; 2 uses
  %i.uu = icmp ult i64 %.064.i.i, %.062.i.i
  br i1 %i.uu, label %.lr.ph83.i.i, label %.preheader70.i.i

.lr.ph.i.i341:                                    ; preds = %.lr.ph.i.i341, %.lr.ph.i.i341.preheader.new
  %.05779.i.i342 = phi i64 [ 0, %.lr.ph.i.i341.preheader.new ], [ %i.vs, %.lr.ph.i.i341 ] ; 5 uses
  %.05878.i.i343 = phi i64 [ 0, %.lr.ph.i.i341.preheader.new ], [ %i.vr, %.lr.ph.i.i341 ]
  %niter862 = phi i64 [ 0, %.lr.ph.i.i341.preheader.new ], [ %niter862.next.1, %.lr.ph.i.i341 ]
  %i.uv = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i342
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !7
  %i.ux = zext i32 %i.uw to i64
  %i.uy = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i342
  %i.uz = load i32, ptr %i.uy, align 4, !tbaa !7
  %i.va = zext i32 %i.uz to i64
  %i.vb = add nuw nsw i64 %.05878.i.i343, %i.ux
  %i.vc = add nuw nsw i64 %i.vb, %i.va            ; 2 uses
  %i.vd = trunc i64 %i.vc to i32
  %i.ve = getelementptr [4 x i8], ptr %i.av, i64 %.05779.i.i342
  store i32 %i.vd, ptr %i.ve, align 4, !tbaa !7
  %i.vf = lshr i64 %i.vc, 32
  %i.vg = or disjoint i64 %.05779.i.i342, 1       ; 3 uses
  %i.vh = getelementptr [4 x i8], ptr %.061.i.i, i64 %i.vg
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !7
  %i.vj = zext i32 %i.vi to i64
  %i.vk = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.vg
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !7
  %i.vm = zext i32 %i.vl to i64
  %i.vn = add nuw nsw i64 %i.vf, %i.vj
  %i.vo = add nuw nsw i64 %i.vn, %i.vm            ; 2 uses
  %i.vp = trunc i64 %i.vo to i32
  %i.vq = getelementptr [4 x i8], ptr %i.av, i64 %i.vg
  store i32 %i.vp, ptr %i.vq, align 4, !tbaa !7
  %i.vr = lshr i64 %i.vo, 32                      ; 3 uses
  %i.vs = add nuw nsw i64 %.05779.i.i342, 2       ; 2 uses
  %niter862.next.1 = add i64 %niter862, 2         ; 2 uses
  %niter862.ncmp.1 = icmp eq i64 %niter862.next.1, %unroll_iter861
  br i1 %niter862.ncmp.1, label %.preheader72.i.i345.loopexit.unr-lcssa, label %.lr.ph.i.i341, !llvm.loop !34

.preheader70.i.i:                                 ; preds = %bb.ad, %.preheader72.i.i345
  %.159.lcssa.i.i = phi i64 [ %.058.lcssa.i.i346, %.preheader72.i.i345 ], [ %i.we, %bb.ad ]
  %.1.lcssa.i.i = phi i64 [ %.064.i.i, %.preheader72.i.i345 ], [ %.062.i.i, %bb.ad ] ; 4 uses
  %i.vt = icmp ult i64 %.1.lcssa.i.i, %i.ou
  br i1 %i.vt, label %.lr.ph88.preheader.i.i, label %bary_add.exit353

.lr.ph88.preheader.i.i:                           ; preds = %.preheader70.i.i
  %i.vu = icmp eq i64 %.159.lcssa.i.i, 0
  br i1 %i.vu, label %.loopexit71.i.i349, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph88.preheader.i.i
  %i.vv = getelementptr [4 x i8], ptr %i.av, i64 %.1.lcssa.i.i
  store i32 1, ptr %i.vv, align 4, !tbaa !7
  %i.vw = add nuw i64 %.1.lcssa.i.i, 1            ; 2 uses
  %exitcond103.peel.not.i.i = icmp eq i64 %i.vw, %i.ou
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit353, label %.loopexit71.i.i349

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i345, %bb.ad
  %.182.i.i = phi i64 [ %i.wf, %bb.ad ], [ %.064.i.i, %.preheader72.i.i345 ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.we, %bb.ad ], [ %.058.lcssa.i.i346, %.preheader72.i.i345 ]
  %i.vx = icmp eq i64 %.15981.i.i, 0
  br i1 %i.vx, label %.loopexit71.i.i349, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph83.i.i
  %i.vy = getelementptr [4 x i8], ptr %.063.i.i, i64 %.182.i.i
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !7
  %i.wa = zext i32 %i.vz to i64
  %i.wb = add nuw nsw i64 %i.wa, 1                ; 2 uses
  %i.wc = trunc i64 %i.wb to i32
  %i.wd = getelementptr [4 x i8], ptr %i.av, i64 %.182.i.i
  store i32 %i.wc, ptr %i.wd, align 4, !tbaa !7
  %i.we = lshr i64 %i.wb, 32                      ; 2 uses
  %i.wf = add i64 %.182.i.i, 1                    ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.wf, %.062.i.i
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !36

.loopexit71.i.i349:                               ; preds = %.lr.ph83.i.i, %bb.ac, %.lr.ph88.preheader.i.i
  %.3.i.i350 = phi i64 [ %i.vw, %bb.ac ], [ %.1.lcssa.i.i, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 7 uses
  %i.wg = icmp eq ptr %.063.i.i, %i.av
  %i.wh = icmp eq i64 %.062.i.i, %i.ou
  %or.cond.i.i = and i1 %i.wg, %i.wh
  br i1 %or.cond.i.i, label %bary_add.exit353, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i349
  %i.wi = icmp ult i64 %.3.i.i350, %.062.i.i
  br i1 %i.wi, label %.lr.ph91.i.i.preheader, label %.preheader.i.i351

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i
  %i.wj = sub nuw i64 %.062.i.i, %.3.i.i350       ; 3 uses
  %min.iters.check744 = icmp ult i64 %i.wj, 16
  br i1 %min.iters.check744, label %.lr.ph91.i.i.preheader777, label %vector.memcheck740

vector.memcheck740:                               ; preds = %.lr.ph91.i.i.preheader
  %i.wk = shl i64 %i.aj, 3
  %i.wl = add i64 %i.wk, %i.b
  %i.wm = sub i64 %.063.i.i741, %i.wl
  %diff.check742 = icmp ugt i64 %i.wm, -32
  br i1 %diff.check742, label %.lr.ph91.i.i.preheader777, label %vector.ph745

vector.ph745:                                     ; preds = %vector.memcheck740
  %n.vec747 = and i64 %i.wj, -8                   ; 3 uses
  %i.wn = add i64 %.3.i.i350, %n.vec747
  br label %vector.body748

vector.body748:                                   ; preds = %vector.body748, %vector.ph745
  %index749 = phi i64 [ 0, %vector.ph745 ], [ %index.next752, %vector.body748 ] ; 2 uses
  %i.wo = add i64 %.3.i.i350, %index749           ; 2 uses
  %i.wp = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.wo ; 2 uses
  %i.wq = getelementptr i8, ptr %i.wp, i64 16
  %wide.load750 = load <4 x i32>, ptr %i.wp, align 4, !tbaa !7
  %wide.load751 = load <4 x i32>, ptr %i.wq, align 4, !tbaa !7
  %i.wr = getelementptr [4 x i8], ptr %i.av, i64 %i.wo ; 2 uses
  %i.ws = getelementptr i8, ptr %i.wr, i64 16
  store <4 x i32> %wide.load750, ptr %i.wr, align 4, !tbaa !7
  store <4 x i32> %wide.load751, ptr %i.ws, align 4, !tbaa !7
  %index.next752 = add nuw i64 %index749, 8       ; 2 uses
  %i.wt = icmp eq i64 %index.next752, %n.vec747
  br i1 %i.wt, label %middle.block753, label %vector.body748, !llvm.loop !66

middle.block753:                                  ; preds = %vector.body748
  %cmp.n754 = icmp eq i64 %i.wj, %n.vec747
  br i1 %cmp.n754, label %.preheader.i.i351, label %.lr.ph91.i.i.preheader777

.lr.ph91.i.i.preheader777:                        ; preds = %vector.memcheck740, %.lr.ph91.i.i.preheader, %middle.block753
  %.490.i.i.ph = phi i64 [ %.3.i.i350, %vector.memcheck740 ], [ %.3.i.i350, %.lr.ph91.i.i.preheader ], [ %i.wn, %middle.block753 ] ; 4 uses
  %i.wu = sub i64 %.062.i.i, %.490.i.i.ph
  %xtraiter863 = and i64 %i.wu, 3                 ; 2 uses
  %lcmp.mod864.not = icmp eq i64 %xtraiter863, 0
  br i1 %lcmp.mod864.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader777, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.wy, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader777 ] ; 3 uses
  %prol.iter865 = phi i64 [ %prol.iter865.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader777 ]
  %i.wv = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i.prol
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !7
  %i.wx = getelementptr [4 x i8], ptr %i.av, i64 %.490.i.i.prol
  store i32 %i.ww, ptr %i.wx, align 4, !tbaa !7
  %i.wy = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter865.next = add i64 %prol.iter865, 1   ; 2 uses
  %prol.iter865.cmp.not = icmp eq i64 %prol.iter865.next, %xtraiter863
  br i1 %prol.iter865.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !67

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader777
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader777 ], [ %i.wy, %.lr.ph91.i.i.prol ]
  %i.wz = sub i64 %.490.i.i.ph, %.062.i.i
  %i.xa = icmp ugt i64 %i.wz, -4
  br i1 %i.xa, label %.preheader.i.i351, label %.lr.ph91.i.i

.preheader.i.i351:                                ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i, %middle.block753, %.preheader69.i.i
  %.4.lcssa.i.i = phi i64 [ %.3.i.i350, %.preheader69.i.i ], [ %.062.i.i, %middle.block753 ], [ %.062.i.i, %.lr.ph91.i.i ], [ %.062.i.i, %.lr.ph91.i.i.prol.loopexit ] ; 3 uses
  %i.xb = icmp ult i64 %.4.lcssa.i.i, %i.ou
  br i1 %i.xb, label %.lr.ph94.preheader.i.i, label %bary_add.exit353

.lr.ph94.preheader.i.i:                           ; preds = %.preheader.i.i351
  %i.xc = shl i64 %.4.lcssa.i.i, 2
  %scevgep.i.i352 = getelementptr i8, ptr %i.av, i64 %i.xc
  %i.xd = sub nuw i64 %i.ou, %.4.lcssa.i.i
  %i.xe = shl i64 %i.xd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i352, i8 0, i64 %i.xe, i1 false), !tbaa !7
  br label %bary_add.exit353

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.xu, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.xf = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !7
  %i.xh = getelementptr [4 x i8], ptr %i.av, i64 %.490.i.i
  store i32 %i.xg, ptr %i.xh, align 4, !tbaa !7
  %i.xi = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.xj = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !7
  %i.xl = getelementptr [4 x i8], ptr %i.av, i64 %i.xi
  store i32 %i.xk, ptr %i.xl, align 4, !tbaa !7
  %i.xm = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.xn = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.xm
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !7
  %i.xp = getelementptr [4 x i8], ptr %i.av, i64 %i.xm
  store i32 %i.xo, ptr %i.xp, align 4, !tbaa !7
  %i.xq = add nuw i64 %.490.i.i, 3                ; 2 uses
  %i.xr = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.xq
  %i.xs = load i32, ptr %i.xr, align 4, !tbaa !7
  %i.xt = getelementptr [4 x i8], ptr %i.av, i64 %i.xq
  store i32 %i.xs, ptr %i.xt, align 4, !tbaa !7
  %i.xu = add nuw i64 %.490.i.i, 4                ; 2 uses
  %exitcond106.not.i.i.3 = icmp eq i64 %i.xu, %.062.i.i
  br i1 %exitcond106.not.i.i.3, label %.preheader.i.i351, label %.lr.ph91.i.i, !llvm.loop !68

bary_add.exit353:                                 ; preds = %.preheader70.i.i, %bb.ac, %.loopexit71.i.i349, %.preheader.i.i351, %.lr.ph94.preheader.i.i
  %.not17.i = icmp eq i64 %i.ou, 0
  %or.cond = or i1 %.not17.i, %.058.lcssa.i.i304601
  br i1 %or.cond, label %bary_add_one.exit, label %.lr.ph.i354

.lr.ph.i354:                                      ; preds = %bary_add.exit353, %.lr.ph.i354
  %.01314.i = phi i64 [ %i.xy, %.lr.ph.i354 ], [ 0, %bary_add.exit353 ] ; 2 uses
  %i.xv = getelementptr [4 x i8], ptr %i.av, i64 %.01314.i ; 2 uses
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !7
  %i.xx = add i32 %i.xw, 1                        ; 2 uses
  store i32 %i.xx, ptr %i.xv, align 4, !tbaa !7
  %.not.i355 = icmp ne i32 %i.xx, 0
  %i.xy = add nuw i64 %.01314.i, 1                ; 2 uses
  %exitcond.not.i357 = icmp eq i64 %i.xy, %i.ou
  %or.cond472 = select i1 %.not.i355, i1 true, i1 %exitcond.not.i357
  br i1 %or.cond472, label %bary_add_one.exit, label %.lr.ph.i354, !llvm.loop !69

bary_add_one.exit:                                ; preds = %.lr.ph.i354, %bary_add.exit353
  %i.xz = add nuw nsw i32 %.0.i338, %i.ot         ; 2 uses
  %i.ya = sub nsw i32 %i.xz, %.0195               ; 2 uses
  %i.yb = icmp slt i32 %i.ya, 0
  br i1 %i.yb, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bary_add_one.exit
  %.not.i358 = icmp eq i64 %i.qn, 0
  br i1 %.not.i358, label %bary_sub_one.exit, label %.lr.ph82.i.i359

.lr.ph82.i.i359:                                  ; preds = %bb.ae, %bb.af
  %.181.i.i360 = phi i64 [ %i.yj, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  %.16480.i.i361 = phi i64 [ %i.yi, %bb.af ], [ -1, %bb.ae ]
  %i.yc = icmp eq i64 %.16480.i.i361, 0
  br i1 %i.yc, label %bary_sub_one.exit, label %bb.af

bb.af:                                            ; preds = %.lr.ph82.i.i359
  %i.yd = getelementptr [4 x i8], ptr %i.ax, i64 %.181.i.i360 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !7
  %i.yf = zext i32 %i.ye to i64
  %i.yg = add nsw i64 %i.yf, -1                   ; 2 uses
  %i.yh = trunc i64 %i.yg to i32
  store i32 %i.yh, ptr %i.yd, align 4, !tbaa !7
  %i.yi = ashr i64 %i.yg, 32
  %i.yj = add nuw i64 %.181.i.i360, 1             ; 2 uses
  %exitcond107.not.i.i362 = icmp eq i64 %i.yj, %i.qn
  br i1 %exitcond107.not.i.i362, label %bary_sub_one.exit, label %.lr.ph82.i.i359, !llvm.loop !50

bb.ag:                                            ; preds = %bary_add_one.exit
  %.not214 = icmp eq i32 %i.xz, %.0195
  br i1 %.not214, label %bary_sub_one.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #23
  store i32 %i.ya, ptr %i.ab, align 4, !tbaa !7
  %i.yk = icmp ugt i64 %i.qn, 1
  br i1 %i.yk, label %.lr.ph.i.i370.preheader, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i369 = icmp eq i64 %i.qn, 0
  br i1 %.not.i.i369, label %.preheader72.i.i374, label %.lr.ph.i.i370.preheader

.lr.ph.i.i370.preheader:                          ; preds = %bb.ah, %bb.ai
  %.061.i.i368613 = phi ptr [ %i.ax, %bb.ai ], [ %i.ab, %bb.ah ]
  %.062.i.i367611 = phi i64 [ 1, %bb.ai ], [ %i.qn, %bb.ah ]
  %.063.i.i366609 = phi ptr [ %i.ab, %bb.ai ], [ %i.ax, %bb.ah ] ; 2 uses
  %i.yl = load i32, ptr %.061.i.i368613, align 4, !tbaa !7 ; 2 uses
  %i.ym = load i32, ptr %.063.i.i366609, align 4, !tbaa !7
  %add.narrowed = add i32 %i.yl, %i.ym            ; 2 uses
  %add.narrowed.overflow = icmp ult i32 %add.narrowed, %i.yl
  store i32 %add.narrowed, ptr %i.ax, align 4, !tbaa !7
  %i.yn = zext i1 %add.narrowed.overflow to i64
  br label %.preheader72.i.i374

.preheader72.i.i374:                              ; preds = %.lr.ph.i.i370.preheader, %bb.ai
  %.062.i.i367612 = phi i64 [ 1, %bb.ai ], [ %.062.i.i367611, %.lr.ph.i.i370.preheader ] ; 11 uses
  %.063.i.i366610 = phi ptr [ %i.ab, %bb.ai ], [ %.063.i.i366609, %.lr.ph.i.i370.preheader ] ; 9 uses
  %.064.i.i365608 = phi i64 [ 0, %bb.ai ], [ 1, %.lr.ph.i.i370.preheader ] ; 3 uses
  %.058.lcssa.i.i375 = phi i64 [ 0, %bb.ai ], [ %i.yn, %.lr.ph.i.i370.preheader ]
  %.063.i.i366610757 = ptrtoaddr ptr %.063.i.i366610 to i64
  %i.yo = icmp ult i64 %.064.i.i365608, %.062.i.i367612
  br i1 %i.yo, label %.lr.ph83.i.i395, label %bary_add.exit399

.lr.ph83.i.i395:                                  ; preds = %.preheader72.i.i374, %bb.aj
  %indvar = phi i64 [ %indvar.next, %bb.aj ], [ 0, %.preheader72.i.i374 ] ; 2 uses
  %.182.i.i396 = phi i64 [ %i.yx, %bb.aj ], [ %.064.i.i365608, %.preheader72.i.i374 ] ; 9 uses
  %.15981.i.i397 = phi i64 [ %i.yw, %bb.aj ], [ %.058.lcssa.i.i375, %.preheader72.i.i374 ]
  %i.yp = icmp eq i64 %.15981.i.i397, 0
  br i1 %i.yp, label %.loopexit71.i.i384, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph83.i.i395
  %i.yq = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %.182.i.i396
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !7
  %i.ys = zext i32 %i.yr to i64
  %i.yt = add nuw nsw i64 %i.ys, 1                ; 2 uses
  %i.yu = trunc i64 %i.yt to i32
  %i.yv = getelementptr [4 x i8], ptr %i.ax, i64 %.182.i.i396
  store i32 %i.yu, ptr %i.yv, align 4, !tbaa !7
  %i.yw = lshr i64 %i.yt, 32
  %i.yx = add i64 %.182.i.i396, 1                 ; 2 uses
  %exitcond102.not.i.i398 = icmp eq i64 %i.yx, %.062.i.i367612
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond102.not.i.i398, label %bary_add.exit399, label %.lr.ph83.i.i395, !llvm.loop !36

.loopexit71.i.i384:                               ; preds = %.lr.ph83.i.i395
  %i.yy = icmp eq ptr %.063.i.i366610, %i.ax
  %i.yz = icmp eq i64 %.062.i.i367612, %i.qn
  %or.cond.i.i386 = and i1 %i.yy, %i.yz
  br i1 %or.cond.i.i386, label %bary_add.exit399, label %.preheader69.i.i387

.preheader69.i.i387:                              ; preds = %.loopexit71.i.i384
  %i.za = icmp ult i64 %.182.i.i396, %.062.i.i367612
  br i1 %i.za, label %.lr.ph91.i.i392.preheader, label %.preheader.i.i388

.lr.ph91.i.i392.preheader:                        ; preds = %.preheader69.i.i387
  %i.zb = add i64 %.064.i.i365608, %indvar
  %i.zc = sub i64 %.062.i.i367612, %i.zb          ; 3 uses
  %min.iters.check760 = icmp ult i64 %i.zc, 16
  br i1 %min.iters.check760, label %.lr.ph91.i.i392.preheader774, label %vector.memcheck756

vector.memcheck756:                               ; preds = %.lr.ph91.i.i392.preheader
  %i.zd = mul i64 %i.aj, 12
  %i.ze = add i64 %i.zd, %i.b
  %i.zf = sub i64 %.063.i.i366610757, %i.ze
  %diff.check758 = icmp ugt i64 %i.zf, -32
  br i1 %diff.check758, label %.lr.ph91.i.i392.preheader774, label %vector.ph761

vector.ph761:                                     ; preds = %vector.memcheck756
  %n.vec763 = and i64 %i.zc, -8                   ; 3 uses
  %i.zg = add i64 %.182.i.i396, %n.vec763
  br label %vector.body764

vector.body764:                                   ; preds = %vector.body764, %vector.ph761
  %index765 = phi i64 [ 0, %vector.ph761 ], [ %index.next768, %vector.body764 ] ; 2 uses
  %i.zh = add i64 %.182.i.i396, %index765         ; 2 uses
  %i.zi = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %i.zh ; 2 uses
  %i.zj = getelementptr i8, ptr %i.zi, i64 16
  %wide.load766 = load <4 x i32>, ptr %i.zi, align 4, !tbaa !7
  %wide.load767 = load <4 x i32>, ptr %i.zj, align 4, !tbaa !7
  %i.zk = getelementptr [4 x i8], ptr %i.ax, i64 %i.zh ; 2 uses
  %i.zl = getelementptr i8, ptr %i.zk, i64 16
  store <4 x i32> %wide.load766, ptr %i.zk, align 4, !tbaa !7
  store <4 x i32> %wide.load767, ptr %i.zl, align 4, !tbaa !7
  %index.next768 = add nuw i64 %index765, 8       ; 2 uses
  %i.zm = icmp eq i64 %index.next768, %n.vec763
  br i1 %i.zm, label %middle.block769, label %vector.body764, !llvm.loop !70

middle.block769:                                  ; preds = %vector.body764
  %cmp.n770 = icmp eq i64 %i.zc, %n.vec763
  br i1 %cmp.n770, label %.preheader.i.i388, label %.lr.ph91.i.i392.preheader774

.lr.ph91.i.i392.preheader774:                     ; preds = %vector.memcheck756, %.lr.ph91.i.i392.preheader, %middle.block769
  %.490.i.i393.ph = phi i64 [ %.182.i.i396, %vector.memcheck756 ], [ %.182.i.i396, %.lr.ph91.i.i392.preheader ], [ %i.zg, %middle.block769 ] ; 4 uses
  %i.zn = sub i64 %.062.i.i367612, %.490.i.i393.ph
  %xtraiter866 = and i64 %i.zn, 3                 ; 2 uses
  %lcmp.mod867.not = icmp eq i64 %xtraiter866, 0
  br i1 %lcmp.mod867.not, label %.lr.ph91.i.i392.prol.loopexit, label %.lr.ph91.i.i392.prol

.lr.ph91.i.i392.prol:                             ; preds = %.lr.ph91.i.i392.preheader774, %.lr.ph91.i.i392.prol
  %.490.i.i393.prol = phi i64 [ %i.zr, %.lr.ph91.i.i392.prol ], [ %.490.i.i393.ph, %.lr.ph91.i.i392.preheader774 ] ; 3 uses
  %prol.iter868 = phi i64 [ %prol.iter868.next, %.lr.ph91.i.i392.prol ], [ 0, %.lr.ph91.i.i392.preheader774 ]
  %i.zo = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %.490.i.i393.prol
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !7
  %i.zq = getelementptr [4 x i8], ptr %i.ax, i64 %.490.i.i393.prol
  store i32 %i.zp, ptr %i.zq, align 4, !tbaa !7
  %i.zr = add nuw i64 %.490.i.i393.prol, 1        ; 2 uses
  %prol.iter868.next = add i64 %prol.iter868, 1   ; 2 uses
  %prol.iter868.cmp.not = icmp eq i64 %prol.iter868.next, %xtraiter866
  br i1 %prol.iter868.cmp.not, label %.lr.ph91.i.i392.prol.loopexit, label %.lr.ph91.i.i392.prol, !llvm.loop !71

.lr.ph91.i.i392.prol.loopexit:                    ; preds = %.lr.ph91.i.i392.prol, %.lr.ph91.i.i392.preheader774
  %.490.i.i393.unr = phi i64 [ %.490.i.i393.ph, %.lr.ph91.i.i392.preheader774 ], [ %i.zr, %.lr.ph91.i.i392.prol ]
  %i.zs = sub i64 %.490.i.i393.ph, %.062.i.i367612
  %i.zt = icmp ugt i64 %i.zs, -4
  br i1 %i.zt, label %.preheader.i.i388, label %.lr.ph91.i.i392

.preheader.i.i388:                                ; preds = %.lr.ph91.i.i392.prol.loopexit, %.lr.ph91.i.i392, %middle.block769, %.preheader69.i.i387
  %.4.lcssa.i.i389 = phi i64 [ %.182.i.i396, %.preheader69.i.i387 ], [ %.062.i.i367612, %middle.block769 ], [ %.062.i.i367612, %.lr.ph91.i.i392 ], [ %.062.i.i367612, %.lr.ph91.i.i392.prol.loopexit ] ; 3 uses
  %i.zu = icmp ult i64 %.4.lcssa.i.i389, %i.qn
  br i1 %i.zu, label %.lr.ph94.preheader.i.i390, label %bary_add.exit399

.lr.ph94.preheader.i.i390:                        ; preds = %.preheader.i.i388
  %i.zv = shl i64 %.4.lcssa.i.i389, 2
  %scevgep.i.i391 = getelementptr i8, ptr %i.ax, i64 %i.zv
  %i.zw = sub nuw i64 %i.qn, %.4.lcssa.i.i389
  %i.zx = shl i64 %i.zw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i391, i8 0, i64 %i.zx, i1 false), !tbaa !7
  br label %bary_add.exit399

.lr.ph91.i.i392:                                  ; preds = %.lr.ph91.i.i392.prol.loopexit, %.lr.ph91.i.i392
  %.490.i.i393 = phi i64 [ %i.aan, %.lr.ph91.i.i392 ], [ %.490.i.i393.unr, %.lr.ph91.i.i392.prol.loopexit ] ; 6 uses
  %i.zy = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %.490.i.i393
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !7
  %i.aaa = getelementptr [4 x i8], ptr %i.ax, i64 %.490.i.i393
  store i32 %i.zz, ptr %i.aaa, align 4, !tbaa !7
  %i.aab = add nuw i64 %.490.i.i393, 1            ; 2 uses
  %i.aac = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %i.aab
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !7
  %i.aae = getelementptr [4 x i8], ptr %i.ax, i64 %i.aab
  store i32 %i.aad, ptr %i.aae, align 4, !tbaa !7
  %i.aaf = add nuw i64 %.490.i.i393, 2            ; 2 uses
  %i.aag = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !7
  %i.aai = getelementptr [4 x i8], ptr %i.ax, i64 %i.aaf
  store i32 %i.aah, ptr %i.aai, align 4, !tbaa !7
  %i.aaj = add nuw i64 %.490.i.i393, 3            ; 2 uses
  %i.aak = getelementptr [4 x i8], ptr %.063.i.i366610, i64 %i.aaj
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !7
  %i.aam = getelementptr [4 x i8], ptr %i.ax, i64 %i.aaj
  store i32 %i.aal, ptr %i.aam, align 4, !tbaa !7
  %i.aan = add nuw i64 %.490.i.i393, 4            ; 2 uses
  %exitcond106.not.i.i394.3 = icmp eq i64 %i.aan, %.062.i.i367612
  br i1 %exitcond106.not.i.i394.3, label %.preheader.i.i388, label %.lr.ph91.i.i392, !llvm.loop !72

bary_add.exit399:                                 ; preds = %bb.aj, %.preheader72.i.i374, %.loopexit71.i.i384, %.preheader.i.i388, %.lr.ph94.preheader.i.i390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #23
  br label %bary_sub_one.exit

bary_sub_one.exit:                                ; preds = %bb.af, %.lr.ph82.i.i359, %bb.ae, %bb.ag, %bary_add.exit399
  br i1 %.not215, label %bb.av, label %bb.ak

bb.ak:                                            ; preds = %bary_sub_one.exit
  %i.aao = getelementptr [4 x i8], ptr %0, i64 %.0191 ; 4 uses
  %i.aap = sub i64 %1, %.0191                     ; 2 uses
  %i.aaq = getelementptr [4 x i8], ptr %4, i64 %.0191
  %i.aar = load i32, ptr %i.aaq, align 4, !tbaa !7 ; 2 uses
  %i.aas = icmp eq i32 %i.aar, 0
  br i1 %i.aas, label %bary_muladd_1xN.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.aat = zext i32 %i.aar to i64                 ; 3 uses
  %.not43.i = icmp eq i64 %.0, 0
  br i1 %.not43.i, label %bary_muladd_1xN.exit, label %.lr.ph.i400.preheader

.lr.ph.i400.preheader:                            ; preds = %bb.al
  %xtraiter869 = and i64 %.0, 1
  %i.aau = icmp eq i64 %.0, 1
  br i1 %i.aau, label %.lr.ph.i400.epil.preheader, label %.lr.ph.i400.preheader.new

.lr.ph.i400.preheader.new:                        ; preds = %.lr.ph.i400.preheader
  %unroll_iter873 = and i64 %.0, -2
  br label %.lr.ph.i400

.preheader.i403.unr-lcssa:                        ; preds = %bb.ap
  %lcmp.mod870.not = icmp eq i64 %xtraiter869, 0
  br i1 %lcmp.mod870.not, label %.preheader.i403, label %.lr.ph.i400.epil.preheader

.lr.ph.i400.epil.preheader:                       ; preds = %.preheader.i403.unr-lcssa, %.lr.ph.i400.preheader
  %.03036.i.epil.init = phi i64 [ 0, %.lr.ph.i400.preheader ], [ %i.acf, %.preheader.i403.unr-lcssa ] ; 2 uses
  %.03135.i.epil.init = phi i64 [ 0, %.lr.ph.i400.preheader ], [ %.132.i.1, %.preheader.i403.unr-lcssa ]
  %lcmp.mod872 = trunc i64 %.0 to i1
  call void @llvm.assume(i1 %lcmp.mod872)
  %i.aav = getelementptr [4 x i8], ptr %2, i64 %.03036.i.epil.init
  %i.aaw = load i32, ptr %i.aav, align 4, !tbaa !7
  %i.aax = zext i32 %i.aaw to i64
  %i.aay = mul nuw i64 %i.aax, %i.aat
  %i.aaz = add nuw i64 %i.aay, %.03135.i.epil.init ; 2 uses
  %.not.i401.epil = icmp eq i64 %i.aaz, 0
  br i1 %.not.i401.epil, label %.preheader.i403, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i400.epil.preheader
  %i.aba = getelementptr [4 x i8], ptr %i.aao, i64 %.03036.i.epil.init ; 2 uses
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !7
  %i.abc = zext i32 %i.abb to i64
  %i.abd = add nuw i64 %i.aaz, %i.abc             ; 2 uses
  %i.abe = trunc i64 %i.abd to i32
  store i32 %i.abe, ptr %i.aba, align 4, !tbaa !7
  %i.abf = lshr i64 %i.abd, 32
  br label %.preheader.i403

.preheader.i403:                                  ; preds = %.lr.ph.i400.epil.preheader, %bb.am, %.preheader.i403.unr-lcssa
  %.132.i.lcssa = phi i64 [ %.132.i.1, %.preheader.i403.unr-lcssa ], [ %i.abf, %bb.am ], [ 0, %.lr.ph.i400.epil.preheader ] ; 2 uses
  %i.abg = icmp uge i64 %.0, %i.aap
  %i.abh = icmp eq i64 %.132.i.lcssa, 0
  %or.cond38.i = select i1 %i.abg, i1 true, i1 %i.abh
  br i1 %or.cond38.i, label %bary_muladd_1xN.exit, label %.lr.ph41.i

.lr.ph.i400:                                      ; preds = %bb.ap, %.lr.ph.i400.preheader.new
  %.03036.i = phi i64 [ 0, %.lr.ph.i400.preheader.new ], [ %i.acf, %bb.ap ] ; 4 uses
  %.03135.i = phi i64 [ 0, %.lr.ph.i400.preheader.new ], [ %.132.i.1, %bb.ap ]
  %niter874 = phi i64 [ 0, %.lr.ph.i400.preheader.new ], [ %niter874.next.1, %bb.ap ]
  %i.abi = getelementptr [4 x i8], ptr %2, i64 %.03036.i
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !7
  %i.abk = zext i32 %i.abj to i64
  %i.abl = mul nuw i64 %i.abk, %i.aat
  %i.abm = add nuw i64 %i.abl, %.03135.i          ; 2 uses
  %.not.i401 = icmp eq i64 %i.abm, 0
  br i1 %.not.i401, label %.lr.ph.i400.1, label %bb.an

bb.an:                                            ; preds = %.lr.ph.i400
  %i.abn = getelementptr [4 x i8], ptr %i.aao, i64 %.03036.i ; 2 uses
  %i.abo = load i32, ptr %i.abn, align 4, !tbaa !7
  %i.abp = zext i32 %i.abo to i64
  %i.abq = add nuw i64 %i.abm, %i.abp             ; 2 uses
  %i.abr = trunc i64 %i.abq to i32
  store i32 %i.abr, ptr %i.abn, align 4, !tbaa !7
  %i.abs = lshr i64 %i.abq, 32
  br label %.lr.ph.i400.1

.lr.ph.i400.1:                                    ; preds = %bb.an, %.lr.ph.i400
  %.132.i = phi i64 [ %i.abs, %bb.an ], [ 0, %.lr.ph.i400 ]
  %i.abt = or disjoint i64 %.03036.i, 1           ; 2 uses
  %i.abu = getelementptr [4 x i8], ptr %2, i64 %i.abt
  %i.abv = load i32, ptr %i.abu, align 4, !tbaa !7
  %i.abw = zext i32 %i.abv to i64
  %i.abx = mul nuw i64 %i.abw, %i.aat
  %i.aby = add nuw i64 %i.abx, %.132.i            ; 2 uses
  %.not.i401.1 = icmp eq i64 %i.aby, 0
  br i1 %.not.i401.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i400.1
  %i.abz = getelementptr [4 x i8], ptr %i.aao, i64 %i.abt ; 2 uses
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !7
  %i.acb = zext i32 %i.aca to i64
  %i.acc = add nuw i64 %i.aby, %i.acb             ; 2 uses
  %i.acd = trunc i64 %i.acc to i32
  store i32 %i.acd, ptr %i.abz, align 4, !tbaa !7
  %i.ace = lshr i64 %i.acc, 32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i400.1
  %.132.i.1 = phi i64 [ %i.ace, %bb.ao ], [ 0, %.lr.ph.i400.1 ] ; 3 uses
  %i.acf = add nuw i64 %.03036.i, 2               ; 2 uses
  %niter874.next.1 = add i64 %niter874, 2         ; 2 uses
  %niter874.ncmp.1 = icmp eq i64 %niter874.next.1, %unroll_iter873
end_hunk_2
begin_hunk_3_@bary_mul_toom3:bb.a
  %i.q = mul i64 %i.o, 3                          ; 3 uses
  %i.r = lshr i64 %i.q, 1                         ; 5 uses
  %i.s = icmp ult i64 %i.q, 512
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = shl nuw nsw i64 %i.r, 2
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.v = icmp slt i64 %i.q, 0
  br i1 %i.v, label %bb.e, label %rb_alloc_tmp_buffer2.exit, !prof !32

bb.e:                                             ; preds = %bb.d
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.r, i64 noundef 4) #25
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.d
  %i.w = shl nuw i64 %i.r, 2                      ; 2 uses
  %i.x = add i64 %i.w, 4
  %i.y = lshr i64 %i.x, 3
  %i.z = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.w, i64 noundef %i.y) #26
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %rb_alloc_tmp_buffer2.exit, %bb.a
  %.0533 = phi i64 [ %7, %bb.a ], [ %i.r, %rb_alloc_tmp_buffer2.exit ], [ %i.r, %bb.c ]
  %.0532 = phi ptr [ %6, %bb.a ], [ %i.z, %rb_alloc_tmp_buffer2.exit ], [ %i.u, %bb.c ] ; 33 uses
  %.05322856 = ptrtoaddr ptr %.0532 to i64        ; 9 uses
  %.idx1993 = shl i64 %i.h, 2                     ; 4 uses
  %i.aa = getelementptr i8, ptr %.0532, i64 %.idx1993 ; 23 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 %.idx1993 ; 49 uses
  %i.ac = getelementptr [4 x i8], ptr %i.ab, i64 %i.h ; 33 uses
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %i.h ; 31 uses
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %i.h ; 61 uses
  %i.af = getelementptr [4 x i8], ptr %i.ae, i64 %i.h ; 7 uses
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %i.j ; 14 uses
  %i.ah = getelementptr [4 x i8], ptr %i.ag, i64 %i.k ; 23 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %i.k ; 8 uses
  %i.aj = getelementptr [4 x i8], ptr %i.ai, i64 %i.k ; 9 uses
  %i.ak = getelementptr [4 x i8], ptr %i.aj, i64 %i.j ; 34 uses
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.l ; 57 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %i.l ; 42 uses
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.l ; 8 uses
  %i.ao = sub i64 %.0533, %i.o                    ; 5 uses
  %i.ap = mul i64 %i.g, 6
  %i.aq = or disjoint i64 %i.ap, 1                ; 4 uses
  %i.ar = sub i64 %3, %i.j                        ; 20 uses
  %i.as = getelementptr [4 x i8], ptr %2, i64 %i.g ; 7 uses
  %i.at = getelementptr [4 x i8], ptr %2, i64 %i.j ; 13 uses
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = sub i64 %5, %i.j
  %i.av = getelementptr [4 x i8], ptr %4, i64 %i.g
  %i.aw = getelementptr [4 x i8], ptr %4, i64 %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.0546 = phi ptr [ %i.aw, %bb.g ], [ %i.at, %bb.f ] ; 17 uses
  %.0543 = phi i64 [ %i.au, %bb.g ], [ %i.ar, %bb.f ] ; 23 uses
  %.0542 = phi ptr [ %i.av, %bb.g ], [ %i.as, %bb.f ] ; 6 uses
  %.0537 = phi ptr [ %4, %bb.g ], [ %2, %bb.f ]   ; 9 uses
  %.05462972 = ptrtoaddr ptr %.0546 to i64
  %i.ax = icmp ugt i64 %i.g, %i.ar
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.064.i.i = phi i64 [ %i.ar, %bb.i ], [ %i.g, %bb.h ] ; 8 uses
  %.063.i.i = phi ptr [ %2, %bb.i ], [ %i.at, %bb.h ] ; 12 uses
  %.062.i.i = phi i64 [ %i.g, %bb.i ], [ %i.ar, %bb.h ] ; 13 uses
  %.061.i.i = phi ptr [ %i.at, %bb.i ], [ %2, %bb.h ] ; 3 uses
  %.063.i.i2857 = ptrtoaddr ptr %.063.i.i to i64
  %.not.i.i = icmp eq i64 %.064.i.i, 0
  br i1 %.not.i.i, label %.preheader72.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %xtraiter = and i64 %.064.i.i, 1
  %i.ay = icmp eq i64 %.064.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.064.i.i, -2
  br label %.lr.ph.i.i

.preheader72.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader72.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader72.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.05779.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ci, %.preheader72.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ch, %.preheader72.i.i.loopexit.unr-lcssa ]
  %lcmp.mod3365 = trunc i64 %.064.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod3365)
  %i.az = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i.epil.init
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i.epil.init
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !7
  %i.be = zext i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %.05878.i.i.epil.init, %i.bb
  %i.bg = add nuw nsw i64 %i.bf, %i.be            ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr [4 x i8], ptr %.0532, i64 %.05779.i.i.epil.init
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !7
  %i.bj = lshr i64 %i.bg, 32
  br label %.preheader72.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph.i.i.epil.preheader, %.preheader72.i.i.loopexit.unr-lcssa, %bb.j
  %.058.lcssa.i.i = phi i64 [ 0, %bb.j ], [ %i.ch, %.preheader72.i.i.loopexit.unr-lcssa ], [ %i.bj, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.bk = icmp ult i64 %.064.i.i, %.062.i.i
  br i1 %i.bk, label %.lr.ph83.i.i, label %.lr.ph88.preheader.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.05779.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ci, %.lr.ph.i.i ] ; 5 uses
  %.05878.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ch, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bl = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !7
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = zext i32 %i.bp to i64
  %i.br = add nuw nsw i64 %.05878.i.i, %i.bn
  %i.bs = add nuw nsw i64 %i.br, %i.bq            ; 2 uses
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = getelementptr [4 x i8], ptr %.0532, i64 %.05779.i.i
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !7
  %i.bv = lshr i64 %i.bs, 32
  %i.bw = or disjoint i64 %.05779.i.i, 1          ; 3 uses
  %i.bx = getelementptr [4 x i8], ptr %.061.i.i, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.bw
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.bv, %i.bz
  %i.ce = add nuw nsw i64 %i.cd, %i.cc            ; 2 uses
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = getelementptr [4 x i8], ptr %.0532, i64 %i.bw
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !7
  %i.ch = lshr i64 %i.ce, 32                      ; 3 uses
  %i.ci = add nuw nsw i64 %.05779.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader72.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !34

.preheader70.i.i:                                 ; preds = %bb.l
  %.not = icmp ugt i64 %.062.i.i, %i.g
  br i1 %.not, label %bary_add.exit, label %.lr.ph88.preheader.i.i

.lr.ph88.preheader.i.i:                           ; preds = %.preheader72.i.i, %.preheader70.i.i
  %.1.lcssa.i.i1944 = phi i64 [ %.062.i.i, %.preheader70.i.i ], [ %.064.i.i, %.preheader72.i.i ] ; 4 uses
  %.159.lcssa.i.i1943 = phi i64 [ %i.ct, %.preheader70.i.i ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.cj = icmp eq i64 %.159.lcssa.i.i1943, 0
  br i1 %i.cj, label %.loopexit71.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph88.preheader.i.i
  %i.ck = getelementptr [4 x i8], ptr %.0532, i64 %.1.lcssa.i.i1944
  store i32 1, ptr %i.ck, align 4, !tbaa !7
  %i.cl = add nuw nsw i64 %.1.lcssa.i.i1944, 1
  %exitcond103.peel.not.i.i = icmp eq i64 %.1.lcssa.i.i1944, %i.g
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit, label %.loopexit71.i.i

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i, %bb.l
  %.182.i.i = phi i64 [ %i.cu, %bb.l ], [ %.064.i.i, %.preheader72.i.i ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.ct, %bb.l ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.cm = icmp eq i64 %.15981.i.i, 0
  br i1 %i.cm, label %.loopexit71.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph83.i.i
  %i.cn = getelementptr [4 x i8], ptr %.063.i.i, i64 %.182.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !7
  %i.cp = zext i32 %i.co to i64
  %i.cq = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = getelementptr [4 x i8], ptr %.0532, i64 %.182.i.i
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !7
  %i.ct = lshr i64 %i.cq, 32                      ; 2 uses
  %i.cu = add i64 %.182.i.i, 1                    ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.cu, %.062.i.i
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !36

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.k, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.cl, %bb.k ], [ %.1.lcssa.i.i1944, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 6 uses
  %i.cv = icmp eq ptr %.063.i.i, %.0532
  %i.cw = icmp eq i64 %.062.i.i, %i.h
  %or.cond.i.i = and i1 %i.cv, %i.cw
  br i1 %or.cond.i.i, label %bary_add.exit, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i
  %i.cx = icmp ult i64 %.3.i.i, %.062.i.i
  br i1 %i.cx, label %.lr.ph91.i.i.preheader, label %.preheader.i.i

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i
  %i.cy = sub nuw i64 %.062.i.i, %.3.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.cy, 8
  %i.cz = sub i64 %.063.i.i2857, %.05322856
  %diff.check = icmp ugt i64 %i.cz, -32
  %or.cond3219 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond3219, label %.lr.ph91.i.i.preheader3360, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.i.i.preheader
  %n.vec = and i64 %i.cy, -8                      ; 3 uses
  %i.da = add i64 %.3.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = add i64 %.3.i.i, %index                 ; 2 uses
  %i.dc = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.db ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  %wide.load = load <4 x i32>, ptr %i.dc, align 4, !tbaa !7
  %wide.load2858 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !7
  %i.de = getelementptr [4 x i8], ptr %.0532, i64 %i.db ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  store <4 x i32> %wide.load, ptr %i.de, align 4, !tbaa !7
  store <4 x i32> %wide.load2858, ptr %i.df, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %.lr.ph91.i.i.preheader3360

.lr.ph91.i.i.preheader3360:                       ; preds = %.lr.ph91.i.i.preheader, %middle.block
  %.490.i.i.ph = phi i64 [ %.3.i.i, %.lr.ph91.i.i.preheader ], [ %i.da, %middle.block ] ; 4 uses
  %i.dh = sub i64 %.062.i.i, %.490.i.i.ph
  %xtraiter3366 = and i64 %i.dh, 3                ; 2 uses
  %lcmp.mod3367.not = icmp eq i64 %xtraiter3366, 0
  br i1 %lcmp.mod3367.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader3360, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.dl, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader3360 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader3360 ]
  %i.di = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i.prol
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !7
  %i.dk = getelementptr [4 x i8], ptr %.0532, i64 %.490.i.i.prol
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !7
  %i.dl = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3366
  br i1 %prol.iter.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !76

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader3360
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader3360 ], [ %i.dl, %.lr.ph91.i.i.prol ]
  %i.dm = sub i64 %.490.i.i.ph, %.062.i.i
  %i.dn = icmp ugt i64 %i.dm, -4
  br i1 %i.dn, label %.preheader.i.i, label %.lr.ph91.i.i

.preheader.i.i:                                   ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i, %middle.block, %.preheader69.i.i
  %.4.lcssa.i.i = phi i64 [ %.3.i.i, %.preheader69.i.i ], [ %.062.i.i, %middle.block ], [ %.062.i.i, %.lr.ph91.i.i ], [ %.062.i.i, %.lr.ph91.i.i.prol.loopexit ] ; 3 uses
  %.not1991 = icmp ugt i64 %.4.lcssa.i.i, %i.g
  br i1 %.not1991, label %bary_add.exit, label %.lr.ph94.preheader.i.i

.lr.ph94.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.do = shl i64 %.4.lcssa.i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %.0532, i64 %i.do
  %i.dp = sub nuw nsw i64 %i.h, %.4.lcssa.i.i
  %i.dq = shl i64 %i.dp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.dq, i1 false), !tbaa !7
  br label %bary_add.exit

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.eg, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.dr = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !7
  %i.dt = getelementptr [4 x i8], ptr %.0532, i64 %.490.i.i
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !7
  %i.du = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !7
  %i.dx = getelementptr [4 x i8], ptr %.0532, i64 %i.du
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !7
  %i.dy = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.dz = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !7
  %i.eb = getelementptr [4 x i8], ptr %.0532, i64 %i.dy
  store i32 %i.ea, ptr %i.eb, align 4, !tbaa !7
  %i.ec = add nuw i64 %.490.i.i, 3                ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !7
  %i.ef = getelementptr [4 x i8], ptr %.0532, i64 %i.ec
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !7
  %i.eg = add nuw i64 %.490.i.i, 4                ; 2 uses
  %exitcond106.not.i.i.3 = icmp eq i64 %i.eg, %.062.i.i
  br i1 %exitcond106.not.i.i.3, label %.preheader.i.i, label %.lr.ph91.i.i, !llvm.loop !77

bary_add.exit:                                    ; preds = %.preheader70.i.i, %bb.k, %.loopexit71.i.i, %.preheader.i.i, %.lr.ph94.preheader.i.i
  %.not97.i.i = icmp ult i64 %i.f, 3              ; 14 uses
  br i1 %.not97.i.i, label %.loopexit74.i.i, label %.lr.ph.i.i600.preheader

.lr.ph.i.i600.preheader:                          ; preds = %bary_add.exit
  %xtraiter3368 = and i64 %i.g, 1
  %.off = add i64 %5, -1
  %i.eh = icmp ult i64 %.off, 3
  br i1 %i.eh, label %.lr.ph.i.i600.epil.preheader, label %.lr.ph.i.i600.preheader.new

.lr.ph.i.i600.preheader.new:                      ; preds = %.lr.ph.i.i600.preheader
  %unroll_iter3372 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i600

.lr.ph.i.i600:                                    ; preds = %.lr.ph.i.i600, %.lr.ph.i.i600.preheader.new
  %.06278.i.i = phi i64 [ 0, %.lr.ph.i.i600.preheader.new ], [ %i.ff, %.lr.ph.i.i600 ] ; 5 uses
  %.06377.i.i = phi i64 [ 0, %.lr.ph.i.i600.preheader.new ], [ %i.fe, %.lr.ph.i.i600 ]
  %niter3373 = phi i64 [ 0, %.lr.ph.i.i600.preheader.new ], [ %niter3373.next.1, %.lr.ph.i.i600 ]
  %i.ei = getelementptr [4 x i8], ptr %.0532, i64 %.06278.i.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr [4 x i8], ptr %i.as, i64 %.06278.i.i
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = zext i32 %i.em to i64
  %i.eo = sub nsw i64 %i.ek, %i.en
  %i.ep = add nsw i64 %i.eo, %.06377.i.i          ; 2 uses
  %i.eq = trunc i64 %i.ep to i32
  %i.er = getelementptr [4 x i8], ptr %i.aa, i64 %.06278.i.i
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !7
  %i.es = ashr i64 %i.ep, 32
  %i.et = or disjoint i64 %.06278.i.i, 1          ; 3 uses
  %i.eu = getelementptr [4 x i8], ptr %.0532, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !7
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr [4 x i8], ptr %i.as, i64 %i.et
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !7
  %i.ez = zext i32 %i.ey to i64
  %i.fa = sub nsw i64 %i.ew, %i.ez
  %i.fb = add nsw i64 %i.fa, %i.es                ; 2 uses
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = getelementptr [4 x i8], ptr %i.aa, i64 %i.et
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !7
  %i.fe = ashr i64 %i.fb, 32                      ; 3 uses
  %i.ff = add nuw nsw i64 %.06278.i.i, 2          ; 2 uses
  %niter3373.next.1 = add i64 %niter3373, 2       ; 2 uses
  %niter3373.ncmp.1 = icmp eq i64 %niter3373.next.1, %unroll_iter3372
  br i1 %niter3373.ncmp.1, label %._crit_edge.i.i602.unr-lcssa, label %.lr.ph.i.i600, !llvm.loop !48

._crit_edge.i.i602.unr-lcssa:                     ; preds = %.lr.ph.i.i600
  %lcmp.mod3369.not = icmp eq i64 %xtraiter3368, 0
  br i1 %lcmp.mod3369.not, label %._crit_edge.i.i602, label %.lr.ph.i.i600.epil.preheader

.lr.ph.i.i600.epil.preheader:                     ; preds = %._crit_edge.i.i602.unr-lcssa, %.lr.ph.i.i600.preheader
  %.06278.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i600.preheader ], [ %i.ff, %._crit_edge.i.i602.unr-lcssa ] ; 3 uses
  %.06377.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i600.preheader ], [ %i.fe, %._crit_edge.i.i602.unr-lcssa ]
  %lcmp.mod3371 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3371)
  %i.fg = getelementptr [4 x i8], ptr %.0532, i64 %.06278.i.i.epil.init
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !7
  %i.fi = zext i32 %i.fh to i64
  %i.fj = getelementptr [4 x i8], ptr %i.as, i64 %.06278.i.i.epil.init
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !7
  %i.fl = zext i32 %i.fk to i64
  %i.fm = sub nsw i64 %i.fi, %i.fl
  %i.fn = add nsw i64 %i.fm, %.06377.i.i.epil.init ; 2 uses
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = getelementptr [4 x i8], ptr %i.aa, i64 %.06278.i.i.epil.init
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !7
  %i.fq = ashr i64 %i.fn, 32
  br label %._crit_edge.i.i602

._crit_edge.i.i602:                               ; preds = %._crit_edge.i.i602.unr-lcssa, %.lr.ph.i.i600.epil.preheader
  %.lcssa3359 = phi i64 [ %i.fe, %._crit_edge.i.i602.unr-lcssa ], [ %i.fq, %.lr.ph.i.i600.epil.preheader ]
  %i.fr = icmp eq i64 %.lcssa3359, 0
  br i1 %i.fr, label %.loopexit74.i.i, label %.loopexit71.i.i605

.loopexit71.i.i605:                               ; preds = %._crit_edge.i.i602
  %i.fs = getelementptr [4 x i8], ptr %.0532, i64 %i.g
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !7
  %i.fu = zext i32 %i.ft to i64
  %i.fv = add nsw i64 %i.fu, -1                   ; 2 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = getelementptr [4 x i8], ptr %i.aa, i64 %i.g
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !7
  %i.fy = icmp ult i64 %i.fv, 4294967296
  br i1 %i.fy, label %.lr.ph.i.i616.preheader, label %.lr.ph.i

.loopexit74.i.i:                                  ; preds = %bary_add.exit, %._crit_edge.i.i602
  %.not2735 = icmp eq i64 %.idx1993, 0
  br i1 %.not2735, label %bary_2comp.exit, label %.lr.ph93.i.i

.lr.ph93.i.i:                                     ; preds = %.loopexit74.i.i
  %i.fz = getelementptr [4 x i8], ptr %.0532, i64 %i.g
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !7
  %i.gb = getelementptr [4 x i8], ptr %i.aa, i64 %i.g
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !7
  br label %bary_2comp.exit

.lr.ph.i:                                         ; preds = %.loopexit71.i.i605, %bb.m
  %.023.i = phi i64 [ %i.ge, %bb.m ], [ 0, %.loopexit71.i.i605 ] ; 9 uses
  %i.gc = getelementptr [4 x i8], ptr %i.aa, i64 %.023.i
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !7  ; 2 uses
  %.not.i = icmp eq i32 %i.gd, 0
  br i1 %.not.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.ge = add nuw nsw i64 %.023.i, 1
  %exitcond.not.i = icmp eq i64 %.023.i, %i.g
  br i1 %exitcond.not.i, label %bary_2comp.exit, label %.lr.ph.i, !llvm.loop !55

end_hunk_3
begin_hunk_4_@bary_mul_toom3:bb.a
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !7
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr [4 x i8], ptr %.0532, i64 %.05779.i.i617.epil.init ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !7
  %i.gz = zext i32 %i.gy to i64
  %i.ha = add nuw nsw i64 %.05878.i.i618.epil.init, %i.gw
  %i.hb = add nuw nsw i64 %i.ha, %i.gz            ; 2 uses
  %i.hc = trunc i64 %i.hb to i32
  store i32 %i.hc, ptr %i.gx, align 4, !tbaa !7
  %i.hd = lshr i64 %i.hb, 32
  br label %.preheader72.i.i620

.preheader72.i.i620:                              ; preds = %.preheader72.i.i620.unr-lcssa, %.lr.ph.i.i616.epil.preheader
  %.lcssa3353 = phi i64 [ %i.hz, %.preheader72.i.i620.unr-lcssa ], [ %i.hd, %.lr.ph.i.i616.epil.preheader ]
  %i.he = icmp eq i64 %.lcssa3353, 0
  br i1 %i.he, label %bary_add.exit645, label %bb.o

.lr.ph.i.i616:                                    ; preds = %.lr.ph.i.i616, %.lr.ph.i.i616.preheader.new
  %.05779.i.i617 = phi i64 [ 0, %.lr.ph.i.i616.preheader.new ], [ %i.ia, %.lr.ph.i.i616 ] ; 4 uses
  %.05878.i.i618 = phi i64 [ 0, %.lr.ph.i.i616.preheader.new ], [ %i.hz, %.lr.ph.i.i616 ]
  %niter3379 = phi i64 [ 0, %.lr.ph.i.i616.preheader.new ], [ %niter3379.next.1, %.lr.ph.i.i616 ]
  %i.hf = getelementptr [4 x i8], ptr %i.as, i64 %.05779.i.i617
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !7
  %i.hh = zext i32 %i.hg to i64
  %i.hi = getelementptr [4 x i8], ptr %.0532, i64 %.05779.i.i617 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !7
  %i.hk = zext i32 %i.hj to i64
  %i.hl = add nuw nsw i64 %.05878.i.i618, %i.hh
  %i.hm = add nuw nsw i64 %i.hl, %i.hk            ; 2 uses
  %i.hn = trunc i64 %i.hm to i32
  store i32 %i.hn, ptr %i.hi, align 4, !tbaa !7
  %i.ho = lshr i64 %i.hm, 32
  %i.hp = or disjoint i64 %.05779.i.i617, 1       ; 2 uses
  %i.hq = getelementptr [4 x i8], ptr %i.as, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !7
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr [4 x i8], ptr %.0532, i64 %i.hp ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !7
  %i.hv = zext i32 %i.hu to i64
  %i.hw = add nuw nsw i64 %i.ho, %i.hs
  %i.hx = add nuw nsw i64 %i.hw, %i.hv            ; 2 uses
  %i.hy = trunc i64 %i.hx to i32
  store i32 %i.hy, ptr %i.ht, align 4, !tbaa !7
  %i.hz = lshr i64 %i.hx, 32                      ; 3 uses
  %i.ia = add nuw nsw i64 %.05779.i.i617, 2       ; 2 uses
  %niter3379.next.1 = add i64 %niter3379, 2       ; 2 uses
  %niter3379.ncmp.1 = icmp eq i64 %niter3379.next.1, %unroll_iter3378
  br i1 %niter3379.ncmp.1, label %.preheader72.i.i620.unr-lcssa, label %.lr.ph.i.i616, !llvm.loop !34

bb.o:                                             ; preds = %.preheader72.i.i620
  %i.ib = getelementptr [4 x i8], ptr %.0532, i64 %i.g ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !7
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !7
  br i1 %.not.not19482451, label %bb.p, label %bb.t

bary_add.exit645:                                 ; preds = %.preheader72.i.i620
  br i1 %.not.not19482451, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o, %.preheader72.i.i620.thread, %bary_add.exit645
  %.0547245424582463 = phi i32 [ %.0547, %.preheader72.i.i620.thread ], [ %.05472453, %bary_add.exit645 ], [ %.05472453, %bb.o ] ; 9 uses
  %.not1997 = icmp ult i64 %i.g, %i.ar
  br i1 %.not1997, label %.lr.ph.i.i651.preheader, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not.i.i650 = icmp eq i64 %i.ar, 0
  br i1 %.not.i.i650, label %.preheader72.i.i655, label %.lr.ph.i.i651.preheader

.lr.ph.i.i651.preheader:                          ; preds = %bb.p, %bb.q
  %.061.i.i6492475 = phi ptr [ %i.at, %bb.q ], [ %i.aa, %bb.p ] ; 3 uses
  %.062.i.i6482473 = phi i64 [ %i.h, %bb.q ], [ %i.ar, %bb.p ] ; 2 uses
  %.063.i.i6472471 = phi ptr [ %i.aa, %bb.q ], [ %i.at, %bb.p ] ; 5 uses
  %.064.i.i6462469 = phi i64 [ %i.ar, %bb.q ], [ %i.h, %bb.p ] ; 6 uses
  %xtraiter3401 = and i64 %.064.i.i6462469, 1
  %i.ie = icmp eq i64 %.064.i.i6462469, 1
  br i1 %i.ie, label %.lr.ph.i.i651.epil.preheader, label %.lr.ph.i.i651.preheader.new

.lr.ph.i.i651.preheader.new:                      ; preds = %.lr.ph.i.i651.preheader
  %unroll_iter3406 = and i64 %.064.i.i6462469, -2
  br label %.lr.ph.i.i651

.preheader72.i.i655.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i651
  %lcmp.mod3403.not = icmp eq i64 %xtraiter3401, 0
  br i1 %lcmp.mod3403.not, label %.preheader72.i.i655, label %.lr.ph.i.i651.epil.preheader

.lr.ph.i.i651.epil.preheader:                     ; preds = %.preheader72.i.i655.loopexit.unr-lcssa, %.lr.ph.i.i651.preheader
  %.05779.i.i652.epil.init = phi i64 [ 0, %.lr.ph.i.i651.preheader ], [ %i.jo, %.preheader72.i.i655.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i653.epil.init = phi i64 [ 0, %.lr.ph.i.i651.preheader ], [ %i.jn, %.preheader72.i.i655.loopexit.unr-lcssa ]
  %lcmp.mod3405 = trunc i64 %.064.i.i6462469 to i1
  call void @llvm.assume(i1 %lcmp.mod3405)
  %i.if = getelementptr [4 x i8], ptr %.061.i.i6492475, i64 %.05779.i.i652.epil.init
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !7
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr [4 x i8], ptr %.063.i.i6472471, i64 %.05779.i.i652.epil.init
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !7
  %i.ik = zext i32 %i.ij to i64
  %i.il = add nuw nsw i64 %.05878.i.i653.epil.init, %i.ih
  %i.im = add nuw nsw i64 %i.il, %i.ik            ; 2 uses
  %i.in = trunc i64 %i.im to i32
  %i.io = getelementptr [4 x i8], ptr %i.ab, i64 %.05779.i.i652.epil.init
  store i32 %i.in, ptr %i.io, align 4, !tbaa !7
  %i.ip = lshr i64 %i.im, 32
  br label %.preheader72.i.i655

.preheader72.i.i655:                              ; preds = %.lr.ph.i.i651.epil.preheader, %.preheader72.i.i655.loopexit.unr-lcssa, %bb.q
  %.062.i.i6482474 = phi i64 [ %i.h, %bb.q ], [ %.062.i.i6482473, %.preheader72.i.i655.loopexit.unr-lcssa ], [ %.062.i.i6482473, %.lr.ph.i.i651.epil.preheader ] ; 8 uses
  %.063.i.i6472472 = phi ptr [ %i.aa, %bb.q ], [ %.063.i.i6472471, %.preheader72.i.i655.loopexit.unr-lcssa ], [ %.063.i.i6472471, %.lr.ph.i.i651.epil.preheader ] ; 9 uses
  %.064.i.i6462470 = phi i64 [ 0, %bb.q ], [ %.064.i.i6462469, %.preheader72.i.i655.loopexit.unr-lcssa ], [ %.064.i.i6462469, %.lr.ph.i.i651.epil.preheader ] ; 7 uses
  %.058.lcssa.i.i656 = phi i64 [ 0, %bb.q ], [ %i.jn, %.preheader72.i.i655.loopexit.unr-lcssa ], [ %i.ip, %.lr.ph.i.i651.epil.preheader ] ; 2 uses
  %.063.i.i64724722901 = ptrtoaddr ptr %.063.i.i6472472 to i64
  %i.iq = icmp ult i64 %.064.i.i6462470, %.062.i.i6482474
  br i1 %i.iq, label %.lr.ph83.i.i676, label %.preheader70.i.i657

.lr.ph.i.i651:                                    ; preds = %.lr.ph.i.i651, %.lr.ph.i.i651.preheader.new
  %.05779.i.i652 = phi i64 [ 0, %.lr.ph.i.i651.preheader.new ], [ %i.jo, %.lr.ph.i.i651 ] ; 5 uses
  %.05878.i.i653 = phi i64 [ 0, %.lr.ph.i.i651.preheader.new ], [ %i.jn, %.lr.ph.i.i651 ]
  %niter3407 = phi i64 [ 0, %.lr.ph.i.i651.preheader.new ], [ %niter3407.next.1, %.lr.ph.i.i651 ]
  %i.ir = getelementptr [4 x i8], ptr %.061.i.i6492475, i64 %.05779.i.i652
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !7
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr [4 x i8], ptr %.063.i.i6472471, i64 %.05779.i.i652
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !7
  %i.iw = zext i32 %i.iv to i64
  %i.ix = add nuw nsw i64 %.05878.i.i653, %i.it
  %i.iy = add nuw nsw i64 %i.ix, %i.iw            ; 2 uses
  %i.iz = trunc i64 %i.iy to i32
  %i.ja = getelementptr [4 x i8], ptr %i.ab, i64 %.05779.i.i652
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !7
  %i.jb = lshr i64 %i.iy, 32
  %i.jc = or disjoint i64 %.05779.i.i652, 1       ; 3 uses
  %i.jd = getelementptr [4 x i8], ptr %.061.i.i6492475, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !7
  %i.jf = zext i32 %i.je to i64
  %i.jg = getelementptr [4 x i8], ptr %.063.i.i6472471, i64 %i.jc
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !7
  %i.ji = zext i32 %i.jh to i64
  %i.jj = add nuw nsw i64 %i.jb, %i.jf
  %i.jk = add nuw nsw i64 %i.jj, %i.ji            ; 2 uses
  %i.jl = trunc i64 %i.jk to i32
  %i.jm = getelementptr [4 x i8], ptr %i.ab, i64 %i.jc
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !7
  %i.jn = lshr i64 %i.jk, 32                      ; 3 uses
  %i.jo = add nuw i64 %.05779.i.i652, 2           ; 2 uses
  %niter3407.next.1 = add i64 %niter3407, 2       ; 2 uses
  %niter3407.ncmp.1 = icmp eq i64 %niter3407.next.1, %unroll_iter3406
  br i1 %niter3407.ncmp.1, label %.preheader72.i.i655.loopexit.unr-lcssa, label %.lr.ph.i.i651, !llvm.loop !34

.preheader70.i.i657:                              ; preds = %.preheader72.i.i655
  %.not1998 = icmp ugt i64 %.064.i.i6462470, %i.g
  br i1 %.not1998, label %.critedge597, label %.lr.ph88.preheader.i.i663

.lr.ph88.preheader.i.i663:                        ; preds = %.preheader70.i.i657
  %i.jp = icmp eq i64 %.058.lcssa.i.i656, 0
  br i1 %i.jp, label %.loopexit71.i.i665, label %bb.r

bb.r:                                             ; preds = %.lr.ph88.preheader.i.i663
  %i.jq = getelementptr [4 x i8], ptr %i.ab, i64 %.064.i.i6462470
  store i32 1, ptr %i.jq, align 4, !tbaa !7
  %i.jr = add nuw nsw i64 %.064.i.i6462470, 1
  %exitcond103.peel.not.i.i664 = icmp eq i64 %.064.i.i6462470, %i.g
  br i1 %exitcond103.peel.not.i.i664, label %.critedge597, label %.loopexit71.i.i665

.lr.ph83.i.i676:                                  ; preds = %.preheader72.i.i655, %bb.s
  %.182.i.i677 = phi i64 [ %i.ka, %bb.s ], [ %.064.i.i6462470, %.preheader72.i.i655 ] ; 4 uses
  %.15981.i.i678 = phi i64 [ %i.jz, %bb.s ], [ %.058.lcssa.i.i656, %.preheader72.i.i655 ]
  %i.js = icmp eq i64 %.15981.i.i678, 0
  br i1 %i.js, label %.loopexit71.i.i665, label %bb.s

bb.s:                                             ; preds = %.lr.ph83.i.i676
  %i.jt = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %.182.i.i677
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !7
  %i.jv = zext i32 %i.ju to i64
  %i.jw = add nuw nsw i64 %i.jv, 1                ; 2 uses
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = getelementptr [4 x i8], ptr %i.ab, i64 %.182.i.i677
  store i32 %i.jx, ptr %i.jy, align 4, !tbaa !7
  %i.jz = lshr i64 %i.jw, 32
  %i.ka = add i64 %.182.i.i677, 1                 ; 2 uses
  %exitcond102.not.i.i679 = icmp eq i64 %i.ka, %.062.i.i6482474
  br i1 %exitcond102.not.i.i679, label %.critedge597, label %.lr.ph83.i.i676, !llvm.loop !36

.loopexit71.i.i665:                               ; preds = %.lr.ph83.i.i676, %bb.r, %.lr.ph88.preheader.i.i663
  %.3.i.i666 = phi i64 [ %i.jr, %bb.r ], [ %.064.i.i6462470, %.lr.ph88.preheader.i.i663 ], [ %.182.i.i677, %.lr.ph83.i.i676 ] ; 8 uses
  %i.kb = icmp eq ptr %.063.i.i6472472, %i.ab
  %i.kc = icmp eq i64 %.062.i.i6482474, %i.h
  %or.cond.i.i667 = and i1 %i.kb, %i.kc
  br i1 %or.cond.i.i667, label %.critedge597, label %.preheader69.i.i668

.preheader69.i.i668:                              ; preds = %.loopexit71.i.i665
  %i.kd = icmp ult i64 %.3.i.i666, %.062.i.i6482474
  br i1 %i.kd, label %.lr.ph91.i.i673.preheader, label %.preheader.i.i669

.lr.ph91.i.i673.preheader:                        ; preds = %.preheader69.i.i668
  %i.ke = sub nuw i64 %.062.i.i6482474, %.3.i.i666 ; 3 uses
  %min.iters.check2904 = icmp ult i64 %i.ke, 16
  br i1 %min.iters.check2904, label %.lr.ph91.i.i673.preheader3337, label %vector.memcheck2900

vector.memcheck2900:                              ; preds = %.lr.ph91.i.i673.preheader
  %i.kf = shl i64 %i.g, 3
  %i.kg = add i64 %i.kf, %.05322856
  %8 = sub i64 %i.kg, %.063.i.i64724722901
  %9 = add i64 %8, 7
  %diff.check2902 = icmp ult i64 %9, 31
  br i1 %diff.check2902, label %.lr.ph91.i.i673.preheader3337, label %vector.ph2905

vector.ph2905:                                    ; preds = %vector.memcheck2900
  %n.vec2907 = and i64 %i.ke, -8                  ; 3 uses
  %i.kh = add i64 %.3.i.i666, %n.vec2907
  br label %vector.body2908

vector.body2908:                                  ; preds = %vector.body2908, %vector.ph2905
  %index2909 = phi i64 [ 0, %vector.ph2905 ], [ %index.next2912, %vector.body2908 ] ; 2 uses
  %i.ki = add i64 %.3.i.i666, %index2909          ; 2 uses
  %i.kj = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %i.ki ; 2 uses
  %i.kk = getelementptr i8, ptr %i.kj, i64 16
  %wide.load2910 = load <4 x i32>, ptr %i.kj, align 4, !tbaa !7
  %wide.load2911 = load <4 x i32>, ptr %i.kk, align 4, !tbaa !7
  %i.kl = getelementptr [4 x i8], ptr %i.ab, i64 %i.ki ; 2 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 16
  store <4 x i32> %wide.load2910, ptr %i.kl, align 4, !tbaa !7
  store <4 x i32> %wide.load2911, ptr %i.km, align 4, !tbaa !7
  %index.next2912 = add nuw i64 %index2909, 8     ; 2 uses
  %i.kn = icmp eq i64 %index.next2912, %n.vec2907
  br i1 %i.kn, label %middle.block2913, label %vector.body2908, !llvm.loop !80

middle.block2913:                                 ; preds = %vector.body2908
  %cmp.n2914 = icmp eq i64 %i.ke, %n.vec2907
  br i1 %cmp.n2914, label %.critedge597, label %.lr.ph91.i.i673.preheader3337

.lr.ph91.i.i673.preheader3337:                    ; preds = %vector.memcheck2900, %.lr.ph91.i.i673.preheader, %middle.block2913
  %.490.i.i674.ph = phi i64 [ %.3.i.i666, %vector.memcheck2900 ], [ %.3.i.i666, %.lr.ph91.i.i673.preheader ], [ %i.kh, %middle.block2913 ] ; 4 uses
  %i.ko = sub i64 %.062.i.i6482474, %.490.i.i674.ph
  %xtraiter3408 = and i64 %i.ko, 3                ; 2 uses
  %lcmp.mod3409.not = icmp eq i64 %xtraiter3408, 0
  br i1 %lcmp.mod3409.not, label %.lr.ph91.i.i673.prol.loopexit, label %.lr.ph91.i.i673.prol

.lr.ph91.i.i673.prol:                             ; preds = %.lr.ph91.i.i673.preheader3337, %.lr.ph91.i.i673.prol
  %.490.i.i674.prol = phi i64 [ %i.ks, %.lr.ph91.i.i673.prol ], [ %.490.i.i674.ph, %.lr.ph91.i.i673.preheader3337 ] ; 3 uses
  %prol.iter3410 = phi i64 [ %prol.iter3410.next, %.lr.ph91.i.i673.prol ], [ 0, %.lr.ph91.i.i673.preheader3337 ]
  %i.kp = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %.490.i.i674.prol
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !7
  %i.kr = getelementptr [4 x i8], ptr %i.ab, i64 %.490.i.i674.prol
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !7
  %i.ks = add nuw i64 %.490.i.i674.prol, 1        ; 2 uses
  %prol.iter3410.next = add i64 %prol.iter3410, 1 ; 2 uses
  %prol.iter3410.cmp.not = icmp eq i64 %prol.iter3410.next, %xtraiter3408
  br i1 %prol.iter3410.cmp.not, label %.lr.ph91.i.i673.prol.loopexit, label %.lr.ph91.i.i673.prol, !llvm.loop !81

.lr.ph91.i.i673.prol.loopexit:                    ; preds = %.lr.ph91.i.i673.prol, %.lr.ph91.i.i673.preheader3337
  %.490.i.i674.unr = phi i64 [ %.490.i.i674.ph, %.lr.ph91.i.i673.preheader3337 ], [ %i.ks, %.lr.ph91.i.i673.prol ]
  %i.kt = sub i64 %.490.i.i674.ph, %.062.i.i6482474
  %i.ku = icmp ugt i64 %i.kt, -4
  br i1 %i.ku, label %.critedge597, label %.lr.ph91.i.i673

.preheader.i.i669:                                ; preds = %.preheader69.i.i668
  %.not1999 = icmp ugt i64 %.3.i.i666, %i.g
  br i1 %.not1999, label %.critedge597, label %.critedge597.sink.split

.lr.ph91.i.i673:                                  ; preds = %.lr.ph91.i.i673.prol.loopexit, %.lr.ph91.i.i673
  %.490.i.i674 = phi i64 [ %i.lk, %.lr.ph91.i.i673 ], [ %.490.i.i674.unr, %.lr.ph91.i.i673.prol.loopexit ] ; 6 uses
  %i.kv = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %.490.i.i674
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !7
  %i.kx = getelementptr [4 x i8], ptr %i.ab, i64 %.490.i.i674
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !7
  %i.ky = add nuw i64 %.490.i.i674, 1             ; 2 uses
  %i.kz = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !7
  %i.lb = getelementptr [4 x i8], ptr %i.ab, i64 %i.ky
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !7
  %i.lc = add nuw i64 %.490.i.i674, 2             ; 2 uses
  %i.ld = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !7
  %i.lf = getelementptr [4 x i8], ptr %i.ab, i64 %i.lc
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !7
  %i.lg = add nuw i64 %.490.i.i674, 3             ; 2 uses
  %i.lh = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %i.lg
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !7
  %i.lj = getelementptr [4 x i8], ptr %i.ab, i64 %i.lg
  store i32 %i.li, ptr %i.lj, align 4, !tbaa !7
  %i.lk = add nuw i64 %.490.i.i674, 4             ; 2 uses
  %exitcond106.not.i.i675.3 = icmp eq i64 %i.lk, %.062.i.i6482474
  br i1 %exitcond106.not.i.i675.3, label %.critedge597, label %.lr.ph91.i.i673, !llvm.loop !82

bb.t:                                             ; preds = %bb.o, %.preheader72.i.i620.thread, %bary_add.exit645
  %.0547245424582462 = phi i32 [ %.0547, %.preheader72.i.i620.thread ], [ %.05472453, %bary_add.exit645 ], [ %.05472453, %bb.o ] ; 6 uses
  %i.ll = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.h) ; 10 uses
  %.not97.i.i681 = icmp eq i64 %i.ar, 0
  br i1 %.not97.i.i681, label %._crit_edge.i.i686, label %.lr.ph.i.i682.preheader

.lr.ph.i.i682.preheader:                          ; preds = %bb.t
  %xtraiter3380 = and i64 %i.ll, 1
  %i.lm = icmp eq i64 %i.ll, 1
  br i1 %i.lm, label %.lr.ph.i.i682.epil.preheader, label %.lr.ph.i.i682.preheader.new

.lr.ph.i.i682.preheader.new:                      ; preds = %.lr.ph.i.i682.preheader
  %unroll_iter3384 = and i64 %i.ll, 9223372036854775806
  br label %.lr.ph.i.i682

.lr.ph.i.i682:                                    ; preds = %.lr.ph.i.i682, %.lr.ph.i.i682.preheader.new
  %.06278.i.i683 = phi i64 [ 0, %.lr.ph.i.i682.preheader.new ], [ %i.mk, %.lr.ph.i.i682 ] ; 5 uses
  %.06377.i.i684 = phi i64 [ 0, %.lr.ph.i.i682.preheader.new ], [ %i.mj, %.lr.ph.i.i682 ]
  %niter3385 = phi i64 [ 0, %.lr.ph.i.i682.preheader.new ], [ %niter3385.next.1, %.lr.ph.i.i682 ]
  %i.ln = getelementptr [4 x i8], ptr %i.at, i64 %.06278.i.i683
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !7
  %i.lp = zext i32 %i.lo to i64
  %i.lq = getelementptr [4 x i8], ptr %i.aa, i64 %.06278.i.i683
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !7
  %i.ls = zext i32 %i.lr to i64
  %i.lt = sub nsw i64 %i.lp, %i.ls
  %i.lu = add nsw i64 %i.lt, %.06377.i.i684       ; 2 uses
  %i.lv = trunc i64 %i.lu to i32
  %i.lw = getelementptr [4 x i8], ptr %i.ab, i64 %.06278.i.i683
  store i32 %i.lv, ptr %i.lw, align 4, !tbaa !7
  %i.lx = ashr i64 %i.lu, 32
  %i.ly = or disjoint i64 %.06278.i.i683, 1       ; 3 uses
  %i.lz = getelementptr [4 x i8], ptr %i.at, i64 %i.ly
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !7
  %i.mb = zext i32 %i.ma to i64
  %i.mc = getelementptr [4 x i8], ptr %i.aa, i64 %i.ly
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !7
  %i.me = zext i32 %i.md to i64
  %i.mf = sub nsw i64 %i.mb, %i.me
  %i.mg = add nsw i64 %i.mf, %i.lx                ; 2 uses
  %i.mh = trunc i64 %i.mg to i32
  %i.mi = getelementptr [4 x i8], ptr %i.ab, i64 %i.ly
  store i32 %i.mh, ptr %i.mi, align 4, !tbaa !7
  %i.mj = ashr i64 %i.mg, 32                      ; 3 uses
  %i.mk = add nuw i64 %.06278.i.i683, 2           ; 2 uses
  %niter3385.next.1 = add i64 %niter3385, 2       ; 2 uses
  %niter3385.ncmp.1 = icmp eq i64 %niter3385.next.1, %unroll_iter3384
  br i1 %niter3385.ncmp.1, label %._crit_edge.i.i686.loopexit.unr-lcssa, label %.lr.ph.i.i682, !llvm.loop !48

._crit_edge.i.i686.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i682
  %lcmp.mod3381.not = icmp eq i64 %xtraiter3380, 0
  br i1 %lcmp.mod3381.not, label %._crit_edge.i.i686, label %.lr.ph.i.i682.epil.preheader

.lr.ph.i.i682.epil.preheader:                     ; preds = %._crit_edge.i.i686.loopexit.unr-lcssa, %.lr.ph.i.i682.preheader
  %.06278.i.i683.epil.init = phi i64 [ 0, %.lr.ph.i.i682.preheader ], [ %i.mk, %._crit_edge.i.i686.loopexit.unr-lcssa ] ; 3 uses
  %.06377.i.i684.epil.init = phi i64 [ 0, %.lr.ph.i.i682.preheader ], [ %i.mj, %._crit_edge.i.i686.loopexit.unr-lcssa ]
  %lcmp.mod3383 = trunc i64 %i.ll to i1
  call void @llvm.assume(i1 %lcmp.mod3383)
  %i.ml = getelementptr [4 x i8], ptr %i.at, i64 %.06278.i.i683.epil.init
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !7
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr [4 x i8], ptr %i.aa, i64 %.06278.i.i683.epil.init
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !7
  %i.mq = zext i32 %i.mp to i64
  %i.mr = sub nsw i64 %i.mn, %i.mq
  %i.ms = add nsw i64 %i.mr, %.06377.i.i684.epil.init ; 2 uses
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = getelementptr [4 x i8], ptr %i.ab, i64 %.06278.i.i683.epil.init
  store i32 %i.mt, ptr %i.mu, align 4, !tbaa !7
  %i.mv = ashr i64 %i.ms, 32
  br label %._crit_edge.i.i686

._crit_edge.i.i686:                               ; preds = %.lr.ph.i.i682.epil.preheader, %._crit_edge.i.i686.loopexit.unr-lcssa, %bb.t
  %.063.lcssa.i.i687 = phi i64 [ 0, %bb.t ], [ %i.mj, %._crit_edge.i.i686.loopexit.unr-lcssa ], [ %i.mv, %.lr.ph.i.i682.epil.preheader ] ; 4 uses
  %.not.i.i688.not = icmp ult i64 %i.g, %i.ar
  br i1 %.not.i.i688.not, label %.preheader72.i.i689, label %.lr.ph87.i.i.preheader

.lr.ph87.i.i.preheader:                           ; preds = %._crit_edge.i.i686
  %i.mw = add nuw nsw i64 %i.g, 1
  %i.mx = sub nuw nsw i64 %i.mw, %i.ll
  %i.my = sub nuw nsw i64 %i.g, %i.ll
  %xtraiter3386 = and i64 %i.mx, 3                ; 2 uses
  %lcmp.mod3387.not = icmp eq i64 %xtraiter3386, 0
  br i1 %lcmp.mod3387.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol

.lr.ph87.i.i.prol:                                ; preds = %.lr.ph87.i.i.preheader, %.lr.ph87.i.i.prol
  %.286.i.i.prol = phi i64 [ %i.ng, %.lr.ph87.i.i.prol ], [ %i.ll, %.lr.ph87.i.i.preheader ] ; 3 uses
  %.26585.i.i.prol = phi i64 [ %i.nf, %.lr.ph87.i.i.prol ], [ %.063.lcssa.i.i687, %.lr.ph87.i.i.preheader ]
  %prol.iter3388 = phi i64 [ %prol.iter3388.next, %.lr.ph87.i.i.prol ], [ 0, %.lr.ph87.i.i.preheader ]
  %i.mz = getelementptr [4 x i8], ptr %i.aa, i64 %.286.i.i.prol
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !7
  %i.nb = zext i32 %i.na to i64
  %i.nc = sub nsw i64 %.26585.i.i.prol, %i.nb     ; 2 uses
  %i.nd = trunc i64 %i.nc to i32
  %i.ne = getelementptr [4 x i8], ptr %i.ab, i64 %.286.i.i.prol
  store i32 %i.nd, ptr %i.ne, align 4, !tbaa !7
  %i.nf = ashr i64 %i.nc, 32                      ; 3 uses
  %i.ng = add nuw i64 %.286.i.i.prol, 1           ; 2 uses
  %prol.iter3388.next = add i64 %prol.iter3388, 1 ; 2 uses
  %prol.iter3388.cmp.not = icmp eq i64 %prol.iter3388.next, %xtraiter3386
  br i1 %prol.iter3388.cmp.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol, !llvm.loop !83

.lr.ph87.i.i.prol.loopexit:                       ; preds = %.lr.ph87.i.i.prol, %.lr.ph87.i.i.preheader
  %.lcssa3351.unr = phi i64 [ poison, %.lr.ph87.i.i.preheader ], [ %i.nf, %.lr.ph87.i.i.prol ]
  %.286.i.i.unr = phi i64 [ %i.ll, %.lr.ph87.i.i.preheader ], [ %i.ng, %.lr.ph87.i.i.prol ]
  %.26585.i.i.unr = phi i64 [ %.063.lcssa.i.i687, %.lr.ph87.i.i.preheader ], [ %i.nf, %.lr.ph87.i.i.prol ]
  %i.nh = icmp samesign ult i64 %i.my, 3
  br i1 %i.nh, label %.loopexit71.i.i690, label %.lr.ph87.i.i

.preheader72.i.i689:                              ; preds = %._crit_edge.i.i686
  %i.ni = icmp ult i64 %i.h, %i.ar
  br i1 %i.ni, label %.lr.ph82.i.i707, label %.loopexit71.i.i690

.lr.ph82.i.i707:                                  ; preds = %.preheader72.i.i689, %bb.u
  %.181.i.i708 = phi i64 [ %i.nr, %bb.u ], [ %i.ll, %.preheader72.i.i689 ] ; 4 uses
  %.16480.i.i709 = phi i64 [ %i.nq, %bb.u ], [ %.063.lcssa.i.i687, %.preheader72.i.i689 ]
  %i.nj = icmp eq i64 %.16480.i.i709, 0
  br i1 %i.nj, label %.loopexit74.i.i696, label %bb.u

bb.u:                                             ; preds = %.lr.ph82.i.i707
  %i.nk = getelementptr [4 x i8], ptr %i.at, i64 %.181.i.i708
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !7
  %i.nm = zext i32 %i.nl to i64
  %i.nn = add nsw i64 %i.nm, -1                   ; 2 uses
  %i.no = trunc i64 %i.nn to i32
  %i.np = getelementptr [4 x i8], ptr %i.ab, i64 %.181.i.i708
  store i32 %i.no, ptr %i.np, align 4, !tbaa !7
  %i.nq = ashr i64 %i.nn, 32                      ; 2 uses
  %i.nr = add i64 %.181.i.i708, 1                 ; 2 uses
  %exitcond107.not.i.i710 = icmp eq i64 %i.nr, %i.ar
  br i1 %exitcond107.not.i.i710, label %.loopexit71.i.i690, label %.lr.ph82.i.i707, !llvm.loop !50

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i
  %.286.i.i = phi i64 [ %i.ox, %.lr.ph87.i.i ], [ %.286.i.i.unr, %.lr.ph87.i.i.prol.loopexit ] ; 6 uses
  %.26585.i.i = phi i64 [ %i.ow, %.lr.ph87.i.i ], [ %.26585.i.i.unr, %.lr.ph87.i.i.prol.loopexit ]
  %i.ns = getelementptr [4 x i8], ptr %i.aa, i64 %.286.i.i
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !7
  %i.nu = zext i32 %i.nt to i64
  %i.nv = sub nsw i64 %.26585.i.i, %i.nu          ; 2 uses
  %i.nw = trunc i64 %i.nv to i32
  %i.nx = getelementptr [4 x i8], ptr %i.ab, i64 %.286.i.i
  store i32 %i.nw, ptr %i.nx, align 4, !tbaa !7
  %i.ny = ashr i64 %i.nv, 32
  %i.nz = add nuw i64 %.286.i.i, 1                ; 2 uses
  %i.oa = getelementptr [4 x i8], ptr %i.aa, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !7
  %i.oc = zext i32 %i.ob to i64
  %i.od = sub nsw i64 %i.ny, %i.oc                ; 2 uses
  %i.oe = trunc i64 %i.od to i32
  %i.of = getelementptr [4 x i8], ptr %i.ab, i64 %i.nz
  store i32 %i.oe, ptr %i.of, align 4, !tbaa !7
  %i.og = ashr i64 %i.od, 32
  %i.oh = add nuw i64 %.286.i.i, 2                ; 2 uses
  %i.oi = getelementptr [4 x i8], ptr %i.aa, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !7
  %i.ok = zext i32 %i.oj to i64
  %i.ol = sub nsw i64 %i.og, %i.ok                ; 2 uses
  %i.om = trunc i64 %i.ol to i32
  %i.on = getelementptr [4 x i8], ptr %i.ab, i64 %i.oh
  store i32 %i.om, ptr %i.on, align 4, !tbaa !7
  %i.oo = ashr i64 %i.ol, 32
  %i.op = add nuw i64 %.286.i.i, 3                ; 3 uses
  %i.oq = getelementptr [4 x i8], ptr %i.aa, i64 %i.op
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !7
  %i.os = zext i32 %i.or to i64
  %i.ot = sub nsw i64 %i.oo, %i.os                ; 2 uses
  %i.ou = trunc i64 %i.ot to i32
  %i.ov = getelementptr [4 x i8], ptr %i.ab, i64 %i.op
  store i32 %i.ou, ptr %i.ov, align 4, !tbaa !7
  %i.ow = ashr i64 %i.ot, 32                      ; 2 uses
  %i.ox = add nuw i64 %.286.i.i, 4
  %exitcond108.not.i.i.3 = icmp eq i64 %i.op, %i.g
  br i1 %exitcond108.not.i.i.3, label %.loopexit71.i.i690, label %.lr.ph87.i.i, !llvm.loop !51

.loopexit71.i.i690:                               ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i, %bb.u, %.preheader72.i.i689
  %.366.i.i = phi i64 [ %.063.lcssa.i.i687, %.preheader72.i.i689 ], [ %i.nq, %bb.u ], [ %.lcssa3351.unr, %.lr.ph87.i.i.prol.loopexit ], [ %i.ow, %.lr.ph87.i.i ]
  %.3.i.i691 = phi i64 [ %i.ll, %.preheader72.i.i689 ], [ %i.ar, %bb.u ], [ %i.h, %.lr.ph87.i.i ], [ %i.h, %.lr.ph87.i.i.prol.loopexit ] ; 4 uses
  %i.oy = icmp eq i64 %.366.i.i, 0
  br i1 %i.oy, label %.loopexit74.i.i696, label %.preheader68.i.i692

.preheader68.i.i692:                              ; preds = %.loopexit71.i.i690
  %.not1994 = icmp ugt i64 %.3.i.i691, %i.g
  br i1 %.not1994, label %.lr.ph.i712.preheader, label %.lr.ph91.preheader.i.i694

.lr.ph.i712.preheader:                            ; preds = %.lr.ph91.preheader.i.i694, %.preheader68.i.i692
  br label %.lr.ph.i712

.lr.ph91.preheader.i.i694:                        ; preds = %.preheader68.i.i692
  %i.oz = shl i64 %.3.i.i691, 2
  %scevgep.i.i695 = getelementptr i8, ptr %i.ab, i64 %i.oz
  %i.pa = sub nuw nsw i64 %i.h, %.3.i.i691
  %i.pb = shl i64 %i.pa, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i695, i8 -1, i64 %i.pb, i1 false), !tbaa !7
  br label %.lr.ph.i712.preheader

.loopexit74.i.i696:                               ; preds = %.lr.ph82.i.i707, %.loopexit71.i.i690
  %.5.i.i697 = phi i64 [ %.3.i.i691, %.loopexit71.i.i690 ], [ %.181.i.i708, %.lr.ph82.i.i707 ] ; 7 uses
  %i.pc = icmp eq ptr %i.at, %i.ab
  %i.pd = icmp eq i64 %i.ar, %i.h
  %or.cond.i.i698 = and i1 %i.pd, %i.pc
  br i1 %or.cond.i.i698, label %.critedge597, label %.preheader67.i.i699

.preheader67.i.i699:                              ; preds = %.loopexit74.i.i696
  %i.pe = icmp ult i64 %.5.i.i697, %i.ar
  br i1 %i.pe, label %.lr.ph93.i.i704.preheader, label %.preheader.i.i700

.lr.ph93.i.i704.preheader:                        ; preds = %.preheader67.i.i699
  %i.pf = shl nuw i64 %i.g, 1
  %i.pg = add i64 %.5.i.i697, %i.pf
  %i.ph = sub i64 %3, %i.pg                       ; 3 uses
  %min.iters.check2888 = icmp ult i64 %i.ph, 12
  br i1 %min.iters.check2888, label %.lr.ph93.i.i704.preheader3341, label %vector.memcheck2885

vector.memcheck2885:                              ; preds = %.lr.ph93.i.i704.preheader
  %10 = sub i64 %.05322856, %i.a
  %11 = add i64 %10, 7
  %diff.check2886 = icmp ult i64 %11, 31
  br i1 %diff.check2886, label %.lr.ph93.i.i704.preheader3341, label %vector.ph2889

vector.ph2889:                                    ; preds = %vector.memcheck2885
  %n.vec2891 = and i64 %i.ph, -8                  ; 3 uses
  %i.pi = add i64 %.5.i.i697, %n.vec2891
  br label %vector.body2892

vector.body2892:                                  ; preds = %vector.body2892, %vector.ph2889
  %index2893 = phi i64 [ 0, %vector.ph2889 ], [ %index.next2896, %vector.body2892 ] ; 2 uses
  %i.pj = add i64 %.5.i.i697, %index2893          ; 2 uses
  %i.pk = getelementptr [4 x i8], ptr %i.at, i64 %i.pj ; 2 uses
  %i.pl = getelementptr i8, ptr %i.pk, i64 16
  %wide.load2894 = load <4 x i32>, ptr %i.pk, align 4, !tbaa !7
  %wide.load2895 = load <4 x i32>, ptr %i.pl, align 4, !tbaa !7
  %i.pm = getelementptr [4 x i8], ptr %i.ab, i64 %i.pj ; 2 uses
  %i.pn = getelementptr i8, ptr %i.pm, i64 16
  store <4 x i32> %wide.load2894, ptr %i.pm, align 4, !tbaa !7
  store <4 x i32> %wide.load2895, ptr %i.pn, align 4, !tbaa !7
  %index.next2896 = add nuw i64 %index2893, 8     ; 2 uses
  %i.po = icmp eq i64 %index.next2896, %n.vec2891
  br i1 %i.po, label %middle.block2897, label %vector.body2892, !llvm.loop !84

middle.block2897:                                 ; preds = %vector.body2892
  %cmp.n2898 = icmp eq i64 %i.ph, %n.vec2891
  br i1 %cmp.n2898, label %.preheader.i.i700, label %.lr.ph93.i.i704.preheader3341

.lr.ph93.i.i704.preheader3341:                    ; preds = %vector.memcheck2885, %.lr.ph93.i.i704.preheader, %middle.block2897
  %.692.i.i705.ph = phi i64 [ %.5.i.i697, %vector.memcheck2885 ], [ %.5.i.i697, %.lr.ph93.i.i704.preheader ], [ %i.pi, %middle.block2897 ]
  br label %.lr.ph93.i.i704

.preheader.i.i700:                                ; preds = %.lr.ph93.i.i704, %middle.block2897, %.preheader67.i.i699
  %.6.lcssa.i.i701 = phi i64 [ %.5.i.i697, %.preheader67.i.i699 ], [ %i.ar, %middle.block2897 ], [ %i.ar, %.lr.ph93.i.i704 ] ; 2 uses
  %.not1996 = icmp ugt i64 %.6.lcssa.i.i701, %i.g
  br i1 %.not1996, label %.critedge597, label %.critedge597.sink.split

.lr.ph93.i.i704:                                  ; preds = %.lr.ph93.i.i704.preheader3341, %.lr.ph93.i.i704
  %.692.i.i705 = phi i64 [ %i.ps, %.lr.ph93.i.i704 ], [ %.692.i.i705.ph, %.lr.ph93.i.i704.preheader3341 ] ; 3 uses
  %i.pp = getelementptr [4 x i8], ptr %i.at, i64 %.692.i.i705
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !7
  %i.pr = getelementptr [4 x i8], ptr %i.ab, i64 %.692.i.i705
  store i32 %i.pq, ptr %i.pr, align 4, !tbaa !7
  %i.ps = add nuw i64 %.692.i.i705, 1             ; 2 uses
  %exitcond111.not.i.i706 = icmp eq i64 %i.ps, %i.ar
  br i1 %exitcond111.not.i.i706, label %.preheader.i.i700, label %.lr.ph93.i.i704, !llvm.loop !85

.lr.ph.i712:                                      ; preds = %.lr.ph.i712.preheader, %bb.v
  %.023.i713 = phi i64 [ %i.pv, %bb.v ], [ 0, %.lr.ph.i712.preheader ] ; 9 uses
  %i.pt = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i713
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !7  ; 2 uses
  %.not.i714 = icmp eq i32 %i.pu, 0
  br i1 %.not.i714, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i712
  %i.pv = add nuw nsw i64 %.023.i713, 1
  %exitcond.not.i721 = icmp eq i64 %.023.i713, %i.g
  br i1 %exitcond.not.i721, label %bary_2comp.exit722.preheader, label %.lr.ph.i712, !llvm.loop !55

bb.w:                                             ; preds = %.lr.ph.i712
  %i.pw = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i713
  %i.px = sub i32 0, %i.pu
  store i32 %i.px, ptr %i.pw, align 4, !tbaa !7
  %.not1995.not = icmp samesign ult i64 %.023.i713, %i.g
  br i1 %.not1995.not, label %.lr.ph26.i717.preheader, label %bary_2comp.exit722.preheader

.lr.ph26.i717.preheader:                          ; preds = %bb.w
  %i.py = sub nuw nsw i64 %i.g, %.023.i713        ; 3 uses
  %min.iters.check2873 = icmp samesign ult i64 %i.py, 8
  br i1 %min.iters.check2873, label %.lr.ph26.i717.preheader3343, label %vector.ph2874

vector.ph2874:                                    ; preds = %.lr.ph26.i717.preheader
  %n.vec2876 = and i64 %i.py, 9223372036854775800 ; 3 uses
  %i.pz = add nuw i64 %.023.i713, %n.vec2876
  %i.qa = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i713
  br label %vector.body2877

vector.body2877:                                  ; preds = %vector.body2877, %vector.ph2874
  %index2878 = phi i64 [ 0, %vector.ph2874 ], [ %index.next2881, %vector.body2877 ] ; 2 uses
  %i.qb = getelementptr [4 x i8], ptr %i.qa, i64 %index2878 ; 2 uses
  %i.qc = getelementptr i8, ptr %i.qb, i64 4      ; 2 uses
  %i.qd = getelementptr i8, ptr %i.qb, i64 20     ; 2 uses
  %wide.load2879 = load <4 x i32>, ptr %i.qc, align 4, !tbaa !7
  %wide.load2880 = load <4 x i32>, ptr %i.qd, align 4, !tbaa !7
  %i.qe = xor <4 x i32> %wide.load2879, splat (i32 -1)
  %i.qf = xor <4 x i32> %wide.load2880, splat (i32 -1)
  store <4 x i32> %i.qe, ptr %i.qc, align 4, !tbaa !7
  store <4 x i32> %i.qf, ptr %i.qd, align 4, !tbaa !7
  %index.next2881 = add nuw i64 %index2878, 8     ; 2 uses
  %i.qg = icmp eq i64 %index.next2881, %n.vec2876
  br i1 %i.qg, label %middle.block2882, label %vector.body2877, !llvm.loop !86

middle.block2882:                                 ; preds = %vector.body2877
  %cmp.n2883 = icmp eq i64 %i.py, %n.vec2876
  br i1 %cmp.n2883, label %bary_2comp.exit722.preheader, label %.lr.ph26.i717.preheader3343

.lr.ph26.i717.preheader3343:                      ; preds = %.lr.ph26.i717.preheader, %middle.block2882
  %.125.i718.in.ph = phi i64 [ %.023.i713, %.lr.ph26.i717.preheader ], [ %i.pz, %middle.block2882 ]
  br label %.lr.ph26.i717

.lr.ph26.i717:                                    ; preds = %.lr.ph26.i717.preheader3343, %.lr.ph26.i717
  %.125.i718.in = phi i64 [ %.125.i718, %.lr.ph26.i717 ], [ %.125.i718.in.ph, %.lr.ph26.i717.preheader3343 ]
  %.125.i718 = add nuw i64 %.125.i718.in, 1       ; 3 uses
  %i.qh = getelementptr [4 x i8], ptr %i.ab, i64 %.125.i718 ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !7
  %i.qj = xor i32 %i.qi, -1
  store i32 %i.qj, ptr %i.qh, align 4, !tbaa !7
  %exitcond31.not.i720 = icmp eq i64 %.125.i718, %i.g
  br i1 %exitcond31.not.i720, label %bary_2comp.exit722.preheader, label %.lr.ph26.i717, !llvm.loop !87

bary_2comp.exit722.preheader:                     ; preds = %bb.v, %.lr.ph26.i717, %middle.block2882, %bb.w
  %xtraiter3389 = and i64 %i.h, 3                 ; 3 uses
  %i.qk = icmp ult i64 %i.f, 9
  br i1 %i.qk, label %bary_2comp.exit722.epil.preheader, label %bary_2comp.exit722.preheader.new

bary_2comp.exit722.preheader.new:                 ; preds = %bary_2comp.exit722.preheader
  %unroll_iter3392 = and i64 %i.h, 9223372036854775804
  br label %bary_2comp.exit722

bary_2comp.exit722:                               ; preds = %bary_2comp.exit722, %bary_2comp.exit722.preheader.new
  %.015.i = phi i32 [ 0, %bary_2comp.exit722.preheader.new ], [ %i.qy, %bary_2comp.exit722 ]
  %.01013.i = phi ptr [ %i.ab, %bary_2comp.exit722.preheader.new ], [ %i.qv, %bary_2comp.exit722 ] ; 6 uses
  %niter3393 = phi i64 [ 0, %bary_2comp.exit722.preheader.new ], [ %niter3393.next.3, %bary_2comp.exit722 ]
  %i.ql = getelementptr i8, ptr %.01013.i, i64 4  ; 2 uses
  %i.qm = load i32, ptr %.01013.i, align 4, !tbaa !7 ; 2 uses
  %i.qn = shl i32 %i.qm, 1
  %i.qo = or disjoint i32 %i.qn, %.015.i
  store i32 %i.qo, ptr %.01013.i, align 4, !tbaa !7
  %i.qp = getelementptr i8, ptr %.01013.i, i64 8  ; 2 uses
  %i.qq = load i32, ptr %i.ql, align 4, !tbaa !7  ; 2 uses
  %i.qr = call i32 @llvm.fshl.i32(i32 %i.qq, i32 %i.qm, i32 1)
  store i32 %i.qr, ptr %i.ql, align 4, !tbaa !7
  %i.qs = getelementptr i8, ptr %.01013.i, i64 12 ; 2 uses
  %i.qt = load i32, ptr %i.qp, align 4, !tbaa !7  ; 2 uses
  %i.qu = call i32 @llvm.fshl.i32(i32 %i.qt, i32 %i.qq, i32 1)
  store i32 %i.qu, ptr %i.qp, align 4, !tbaa !7
  %i.qv = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  %i.qw = load i32, ptr %i.qs, align 4, !tbaa !7  ; 2 uses
  %i.qx = call i32 @llvm.fshl.i32(i32 %i.qw, i32 %i.qt, i32 1)
  store i32 %i.qx, ptr %i.qs, align 4, !tbaa !7
  %i.qy = lshr i32 %i.qw, 31                      ; 2 uses
  %niter3393.next.3 = add i64 %niter3393, 4       ; 2 uses
  %niter3393.ncmp.3 = icmp eq i64 %niter3393.next.3, %unroll_iter3392
  br i1 %niter3393.ncmp.3, label %bary_small_lshift.exit.unr-lcssa, label %bary_2comp.exit722, !llvm.loop !88

bary_small_lshift.exit.unr-lcssa:                 ; preds = %bary_2comp.exit722
  %lcmp.mod3390.not = icmp eq i64 %xtraiter3389, 0
  br i1 %lcmp.mod3390.not, label %bary_small_lshift.exit, label %bary_2comp.exit722.epil.preheader

bary_2comp.exit722.epil.preheader:                ; preds = %bary_small_lshift.exit.unr-lcssa, %bary_2comp.exit722.preheader
  %.015.i.epil.init = phi i32 [ 0, %bary_2comp.exit722.preheader ], [ %i.qy, %bary_small_lshift.exit.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %i.ab, %bary_2comp.exit722.preheader ], [ %i.qv, %bary_small_lshift.exit.unr-lcssa ]
  %lcmp.mod3391 = icmp ne i64 %xtraiter3389, 0
  call void @llvm.assume(i1 %lcmp.mod3391)
  br label %bary_2comp.exit722.epil

bary_2comp.exit722.epil:                          ; preds = %bary_2comp.exit722.epil, %bary_2comp.exit722.epil.preheader
  %.015.i.epil = phi i32 [ %i.rd, %bary_2comp.exit722.epil ], [ %.015.i.epil.init, %bary_2comp.exit722.epil.preheader ]
  %.01013.i.epil = phi ptr [ %i.qz, %bary_2comp.exit722.epil ], [ %.01013.i.epil.init, %bary_2comp.exit722.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bary_2comp.exit722.epil ], [ 0, %bary_2comp.exit722.epil.preheader ]
  %i.qz = getelementptr i8, ptr %.01013.i.epil, i64 4
  %i.ra = load i32, ptr %.01013.i.epil, align 4, !tbaa !7 ; 2 uses
  %i.rb = shl i32 %i.ra, 1
  %i.rc = or disjoint i32 %i.rb, %.015.i.epil
  store i32 %i.rc, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.rd = lshr i32 %i.ra, 31
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3389
  br i1 %epil.iter.cmp.not, label %bary_small_lshift.exit, label %bary_2comp.exit722.epil, !llvm.loop !89

bary_small_lshift.exit:                           ; preds = %bary_2comp.exit722.epil, %bary_small_lshift.exit.unr-lcssa
  br i1 %.not97.i.i, label %bary_add.exit760, label %.lr.ph.i.i731.preheader

.lr.ph.i.i731.preheader:                          ; preds = %bary_small_lshift.exit
  %xtraiter3394 = and i64 %i.g, 1
  %.off3625.a = add i64 %5, -1
  %i.re = icmp ult i64 %.off3625.a, 3
  br i1 %i.re, label %.lr.ph.i.i731.epil.preheader, label %.lr.ph.i.i731.preheader.new

.lr.ph.i.i731.preheader.new:                      ; preds = %.lr.ph.i.i731.preheader
  %unroll_iter3399 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i731

.preheader72.i.i735.unr-lcssa:                    ; preds = %.lr.ph.i.i731
  %lcmp.mod3396.not = icmp eq i64 %xtraiter3394, 0
  br i1 %lcmp.mod3396.not, label %.preheader72.i.i735, label %.lr.ph.i.i731.epil.preheader

.lr.ph.i.i731.epil.preheader:                     ; preds = %.preheader72.i.i735.unr-lcssa, %.lr.ph.i.i731.preheader
  %.05779.i.i732.epil.init = phi i64 [ 0, %.lr.ph.i.i731.preheader ], [ %i.sl, %.preheader72.i.i735.unr-lcssa ] ; 2 uses
  %.05878.i.i733.epil.init = phi i64 [ 0, %.lr.ph.i.i731.preheader ], [ %i.sk, %.preheader72.i.i735.unr-lcssa ]
  %lcmp.mod3398 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3398)
  %i.rf = getelementptr [4 x i8], ptr %2, i64 %.05779.i.i732.epil.init
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !7
  %i.rh = zext i32 %i.rg to i64
  %i.ri = getelementptr [4 x i8], ptr %i.ab, i64 %.05779.i.i732.epil.init ; 2 uses
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !7
  %i.rk = zext i32 %i.rj to i64
  %i.rl = add nuw nsw i64 %.05878.i.i733.epil.init, %i.rh
  %i.rm = add nuw nsw i64 %i.rl, %i.rk            ; 2 uses
  %i.rn = trunc i64 %i.rm to i32
  store i32 %i.rn, ptr %i.ri, align 4, !tbaa !7
end_hunk_4
begin_hunk_5_@bary_mul_toom3:bb.a
  %.not.i807 = icmp eq i32 %i.vb, 0
  br i1 %.not.i807, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i805
  %i.vc = add nuw nsw i64 %.023.i806, 1
  %exitcond.not.i814 = icmp eq i64 %.023.i806, %i.g
  br i1 %exitcond.not.i814, label %bary_add.exit760, label %.lr.ph.i805, !llvm.loop !55

bb.ab:                                            ; preds = %.lr.ph.i805
  %i.vd = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i806
  %i.ve = sub i32 0, %i.vb
  store i32 %i.ve, ptr %i.vd, align 4, !tbaa !7
  %.not2000.not = icmp samesign ult i64 %.023.i806, %i.g
  br i1 %.not2000.not, label %.lr.ph26.i810.preheader, label %bary_add.exit760

.lr.ph26.i810.preheader:                          ; preds = %bb.ab
  %i.vf = sub nuw nsw i64 %i.g, %.023.i806        ; 3 uses
  %min.iters.check2917 = icmp samesign ult i64 %i.vf, 8
  br i1 %min.iters.check2917, label %.lr.ph26.i810.preheader3331, label %vector.ph2918

vector.ph2918:                                    ; preds = %.lr.ph26.i810.preheader
  %n.vec2920 = and i64 %i.vf, 9223372036854775800 ; 3 uses
  %i.vg = add nuw i64 %.023.i806, %n.vec2920
  %i.vh = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i806
  br label %vector.body2921

vector.body2921:                                  ; preds = %vector.body2921, %vector.ph2918
  %index2922 = phi i64 [ 0, %vector.ph2918 ], [ %index.next2925, %vector.body2921 ] ; 2 uses
  %i.vi = getelementptr [4 x i8], ptr %i.vh, i64 %index2922 ; 2 uses
  %i.vj = getelementptr i8, ptr %i.vi, i64 4      ; 2 uses
  %i.vk = getelementptr i8, ptr %i.vi, i64 20     ; 2 uses
  %wide.load2923 = load <4 x i32>, ptr %i.vj, align 4, !tbaa !7
  %wide.load2924 = load <4 x i32>, ptr %i.vk, align 4, !tbaa !7
  %i.vl = xor <4 x i32> %wide.load2923, splat (i32 -1)
  %i.vm = xor <4 x i32> %wide.load2924, splat (i32 -1)
  store <4 x i32> %i.vl, ptr %i.vj, align 4, !tbaa !7
  store <4 x i32> %i.vm, ptr %i.vk, align 4, !tbaa !7
  %index.next2925 = add nuw i64 %index2922, 8     ; 2 uses
  %i.vn = icmp eq i64 %index.next2925, %n.vec2920
  br i1 %i.vn, label %middle.block2926, label %vector.body2921, !llvm.loop !91

middle.block2926:                                 ; preds = %vector.body2921
  %cmp.n2927 = icmp eq i64 %i.vf, %n.vec2920
  br i1 %cmp.n2927, label %bary_add.exit760, label %.lr.ph26.i810.preheader3331

.lr.ph26.i810.preheader3331:                      ; preds = %.lr.ph26.i810.preheader, %middle.block2926
  %.125.i811.in.ph = phi i64 [ %.023.i806, %.lr.ph26.i810.preheader ], [ %i.vg, %middle.block2926 ]
  br label %.lr.ph26.i810

.lr.ph26.i810:                                    ; preds = %.lr.ph26.i810.preheader3331, %.lr.ph26.i810
  %.125.i811.in = phi i64 [ %.125.i811, %.lr.ph26.i810 ], [ %.125.i811.in.ph, %.lr.ph26.i810.preheader3331 ]
  %.125.i811 = add nuw i64 %.125.i811.in, 1       ; 3 uses
  %i.vo = getelementptr [4 x i8], ptr %i.ab, i64 %.125.i811 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !7
  %i.vq = xor i32 %i.vp, -1
  store i32 %i.vq, ptr %i.vo, align 4, !tbaa !7
  %exitcond31.not.i813 = icmp eq i64 %.125.i811, %i.g
  br i1 %exitcond31.not.i813, label %bary_add.exit760, label %.lr.ph26.i810, !llvm.loop !92

bary_add.exit760:                                 ; preds = %bb.aa, %.lr.ph26.i810, %middle.block2926, %bary_small_lshift.exit768, %bary_small_lshift.exit, %.preheader72.i.i735, %bb.x, %._crit_edge.i.i774, %.loopexit71.i.i778, %bb.ab
  %.0547245424582460 = phi i32 [ %.0547245424582461, %middle.block2926 ], [ %.0547245424582461, %bary_small_lshift.exit768 ], [ %.0547245424582461, %._crit_edge.i.i774 ], [ %.0547245424582461, %bb.ab ], [ %.0547245424582461, %.loopexit71.i.i778 ], [ %.0547245424582462, %bary_small_lshift.exit ], [ %.0547245424582462, %.preheader72.i.i735 ], [ %.0547245424582462, %bb.x ], [ %.0547245424582461, %.lr.ph26.i810 ], [ %.0547245424582461, %bb.aa ] ; 2 uses
  %.1549 = phi i32 [ 0, %middle.block2926 ], [ 1, %bary_small_lshift.exit768 ], [ 1, %._crit_edge.i.i774 ], [ 0, %bb.ab ], [ 1, %.loopexit71.i.i778 ], [ 0, %bary_small_lshift.exit ], [ 0, %.preheader72.i.i735 ], [ 0, %bb.x ], [ 0, %.lr.ph26.i810 ], [ 0, %bb.aa ] ; 2 uses
  br i1 %i.e, label %bary_add.exit1057, label %bb.ac

bb.ac:                                            ; preds = %bary_add.exit760
  %i.vr = icmp ugt i64 %i.g, %.0543
  br i1 %i.vr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.064.i.i816 = phi i64 [ %.0543, %bb.ad ], [ %i.g, %bb.ac ] ; 8 uses
  %.063.i.i817 = phi ptr [ %.0537, %bb.ad ], [ %.0546, %bb.ac ] ; 12 uses
  %.062.i.i818 = phi i64 [ %i.g, %bb.ad ], [ %.0543, %bb.ac ] ; 13 uses
  %.061.i.i819 = phi ptr [ %.0546, %bb.ad ], [ %.0537, %bb.ac ] ; 3 uses
  %.063.i.i8172930 = ptrtoaddr ptr %.063.i.i817 to i64
  %.not.i.i820 = icmp eq i64 %.064.i.i816, 0
  br i1 %.not.i.i820, label %.preheader72.i.i825, label %.lr.ph.i.i821.preheader

.lr.ph.i.i821.preheader:                          ; preds = %bb.ae
  %xtraiter3424 = and i64 %.064.i.i816, 1
  %i.vs = icmp eq i64 %.064.i.i816, 1
  br i1 %i.vs, label %.lr.ph.i.i821.epil.preheader, label %.lr.ph.i.i821.preheader.new

.lr.ph.i.i821.preheader.new:                      ; preds = %.lr.ph.i.i821.preheader
  %unroll_iter3429 = and i64 %.064.i.i816, -2
  br label %.lr.ph.i.i821

.preheader72.i.i825.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i821
  %lcmp.mod3426.not = icmp eq i64 %xtraiter3424, 0
  br i1 %lcmp.mod3426.not, label %.preheader72.i.i825, label %.lr.ph.i.i821.epil.preheader

.lr.ph.i.i821.epil.preheader:                     ; preds = %.preheader72.i.i825.loopexit.unr-lcssa, %.lr.ph.i.i821.preheader
  %.05779.i.i822.epil.init = phi i64 [ 0, %.lr.ph.i.i821.preheader ], [ %i.xc, %.preheader72.i.i825.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i823.epil.init = phi i64 [ 0, %.lr.ph.i.i821.preheader ], [ %i.xb, %.preheader72.i.i825.loopexit.unr-lcssa ]
  %lcmp.mod3428 = trunc i64 %.064.i.i816 to i1
  call void @llvm.assume(i1 %lcmp.mod3428)
  %i.vt = getelementptr [4 x i8], ptr %.061.i.i819, i64 %.05779.i.i822.epil.init
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !7
  %i.vv = zext i32 %i.vu to i64
  %i.vw = getelementptr [4 x i8], ptr %.063.i.i817, i64 %.05779.i.i822.epil.init
  %i.vx = load i32, ptr %i.vw, align 4, !tbaa !7
  %i.vy = zext i32 %i.vx to i64
  %i.vz = add nuw nsw i64 %.05878.i.i823.epil.init, %i.vv
  %i.wa = add nuw nsw i64 %i.vz, %i.vy            ; 2 uses
  %i.wb = trunc i64 %i.wa to i32
  %i.wc = getelementptr [4 x i8], ptr %i.ac, i64 %.05779.i.i822.epil.init
  store i32 %i.wb, ptr %i.wc, align 4, !tbaa !7
  %i.wd = lshr i64 %i.wa, 32
  br label %.preheader72.i.i825

.preheader72.i.i825:                              ; preds = %.lr.ph.i.i821.epil.preheader, %.preheader72.i.i825.loopexit.unr-lcssa, %bb.ae
  %.058.lcssa.i.i826 = phi i64 [ 0, %bb.ae ], [ %i.xb, %.preheader72.i.i825.loopexit.unr-lcssa ], [ %i.wd, %.lr.ph.i.i821.epil.preheader ] ; 2 uses
  %i.we = icmp ult i64 %.064.i.i816, %.062.i.i818
  br i1 %i.we, label %.lr.ph83.i.i846, label %.lr.ph88.preheader.i.i833

.lr.ph.i.i821:                                    ; preds = %.lr.ph.i.i821, %.lr.ph.i.i821.preheader.new
  %.05779.i.i822 = phi i64 [ 0, %.lr.ph.i.i821.preheader.new ], [ %i.xc, %.lr.ph.i.i821 ] ; 5 uses
  %.05878.i.i823 = phi i64 [ 0, %.lr.ph.i.i821.preheader.new ], [ %i.xb, %.lr.ph.i.i821 ]
  %niter3430 = phi i64 [ 0, %.lr.ph.i.i821.preheader.new ], [ %niter3430.next.1, %.lr.ph.i.i821 ]
  %i.wf = getelementptr [4 x i8], ptr %.061.i.i819, i64 %.05779.i.i822
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !7
  %i.wh = zext i32 %i.wg to i64
  %i.wi = getelementptr [4 x i8], ptr %.063.i.i817, i64 %.05779.i.i822
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !7
  %i.wk = zext i32 %i.wj to i64
  %i.wl = add nuw nsw i64 %.05878.i.i823, %i.wh
  %i.wm = add nuw nsw i64 %i.wl, %i.wk            ; 2 uses
  %i.wn = trunc i64 %i.wm to i32
  %i.wo = getelementptr [4 x i8], ptr %i.ac, i64 %.05779.i.i822
  store i32 %i.wn, ptr %i.wo, align 4, !tbaa !7
  %i.wp = lshr i64 %i.wm, 32
  %i.wq = or disjoint i64 %.05779.i.i822, 1       ; 3 uses
  %i.wr = getelementptr [4 x i8], ptr %.061.i.i819, i64 %i.wq
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !7
  %i.wt = zext i32 %i.ws to i64
  %i.wu = getelementptr [4 x i8], ptr %.063.i.i817, i64 %i.wq
  %i.wv = load i32, ptr %i.wu, align 4, !tbaa !7
  %i.ww = zext i32 %i.wv to i64
  %i.wx = add nuw nsw i64 %i.wp, %i.wt
  %i.wy = add nuw nsw i64 %i.wx, %i.ww            ; 2 uses
  %i.wz = trunc i64 %i.wy to i32
  %i.xa = getelementptr [4 x i8], ptr %i.ac, i64 %i.wq
  store i32 %i.wz, ptr %i.xa, align 4, !tbaa !7
  %i.xb = lshr i64 %i.wy, 32                      ; 3 uses
  %i.xc = add nuw nsw i64 %.05779.i.i822, 2       ; 2 uses
  %niter3430.next.1 = add i64 %niter3430, 2       ; 2 uses
  %niter3430.ncmp.1 = icmp eq i64 %niter3430.next.1, %unroll_iter3429
  br i1 %niter3430.ncmp.1, label %.preheader72.i.i825.loopexit.unr-lcssa, label %.lr.ph.i.i821, !llvm.loop !34

.preheader70.i.i827:                              ; preds = %bb.ag
  %.not2001 = icmp ugt i64 %.062.i.i818, %i.g
  br i1 %.not2001, label %bary_add.exit850, label %.lr.ph88.preheader.i.i833

.lr.ph88.preheader.i.i833:                        ; preds = %.preheader72.i.i825, %.preheader70.i.i827
  %.1.lcssa.i.i8291956 = phi i64 [ %.062.i.i818, %.preheader70.i.i827 ], [ %.064.i.i816, %.preheader72.i.i825 ] ; 4 uses
  %.159.lcssa.i.i8281955 = phi i64 [ %i.xn, %.preheader70.i.i827 ], [ %.058.lcssa.i.i826, %.preheader72.i.i825 ]
  %i.xd = icmp eq i64 %.159.lcssa.i.i8281955, 0
  br i1 %i.xd, label %.loopexit71.i.i835, label %bb.af

bb.af:                                            ; preds = %.lr.ph88.preheader.i.i833
  %i.xe = getelementptr [4 x i8], ptr %i.ac, i64 %.1.lcssa.i.i8291956
  store i32 1, ptr %i.xe, align 4, !tbaa !7
  %i.xf = add nuw nsw i64 %.1.lcssa.i.i8291956, 1
  %exitcond103.peel.not.i.i834 = icmp eq i64 %.1.lcssa.i.i8291956, %i.g
  br i1 %exitcond103.peel.not.i.i834, label %bary_add.exit850, label %.loopexit71.i.i835

.lr.ph83.i.i846:                                  ; preds = %.preheader72.i.i825, %bb.ag
  %.182.i.i847 = phi i64 [ %i.xo, %bb.ag ], [ %.064.i.i816, %.preheader72.i.i825 ] ; 4 uses
  %.15981.i.i848 = phi i64 [ %i.xn, %bb.ag ], [ %.058.lcssa.i.i826, %.preheader72.i.i825 ]
  %i.xg = icmp eq i64 %.15981.i.i848, 0
  br i1 %i.xg, label %.loopexit71.i.i835, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph83.i.i846
  %i.xh = getelementptr [4 x i8], ptr %.063.i.i817, i64 %.182.i.i847
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !7
  %i.xj = zext i32 %i.xi to i64
  %i.xk = add nuw nsw i64 %i.xj, 1                ; 2 uses
  %i.xl = trunc i64 %i.xk to i32
  %i.xm = getelementptr [4 x i8], ptr %i.ac, i64 %.182.i.i847
  store i32 %i.xl, ptr %i.xm, align 4, !tbaa !7
  %i.xn = lshr i64 %i.xk, 32                      ; 2 uses
  %i.xo = add i64 %.182.i.i847, 1                 ; 2 uses
  %exitcond102.not.i.i849 = icmp eq i64 %i.xo, %.062.i.i818
  br i1 %exitcond102.not.i.i849, label %.preheader70.i.i827, label %.lr.ph83.i.i846, !llvm.loop !36

.loopexit71.i.i835:                               ; preds = %.lr.ph83.i.i846, %bb.af, %.lr.ph88.preheader.i.i833
  %.3.i.i836 = phi i64 [ %i.xf, %bb.af ], [ %.1.lcssa.i.i8291956, %.lr.ph88.preheader.i.i833 ], [ %.182.i.i847, %.lr.ph83.i.i846 ] ; 7 uses
  %i.xp = icmp eq ptr %.063.i.i817, %i.ac
  %i.xq = icmp eq i64 %.062.i.i818, %i.h
  %or.cond.i.i837 = and i1 %i.xp, %i.xq
  br i1 %or.cond.i.i837, label %bary_add.exit850, label %.preheader69.i.i838

.preheader69.i.i838:                              ; preds = %.loopexit71.i.i835
  %i.xr = icmp ult i64 %.3.i.i836, %.062.i.i818
  br i1 %i.xr, label %.lr.ph91.i.i843.preheader, label %.preheader.i.i839

.lr.ph91.i.i843.preheader:                        ; preds = %.preheader69.i.i838
  %i.xs = sub nuw i64 %.062.i.i818, %.3.i.i836    ; 3 uses
  %min.iters.check2933 = icmp ult i64 %i.xs, 20
  br i1 %min.iters.check2933, label %.lr.ph91.i.i843.preheader3327, label %vector.memcheck2929

vector.memcheck2929:                              ; preds = %.lr.ph91.i.i843.preheader
  %i.xt = mul i64 %i.g, 12
  %i.xu = add i64 %i.xt, %.05322856
  %12 = sub i64 %i.xu, %.063.i.i8172930
  %13 = add i64 %12, 11
  %diff.check2931 = icmp ult i64 %13, 31
  br i1 %diff.check2931, label %.lr.ph91.i.i843.preheader3327, label %vector.ph2934

vector.ph2934:                                    ; preds = %vector.memcheck2929
  %n.vec2936 = and i64 %i.xs, -8                  ; 3 uses
  %i.xv = add i64 %.3.i.i836, %n.vec2936
  br label %vector.body2937

vector.body2937:                                  ; preds = %vector.body2937, %vector.ph2934
  %index2938 = phi i64 [ 0, %vector.ph2934 ], [ %index.next2941, %vector.body2937 ] ; 2 uses
  %i.xw = add i64 %.3.i.i836, %index2938          ; 2 uses
  %i.xx = getelementptr [4 x i8], ptr %.063.i.i817, i64 %i.xw ; 2 uses
  %i.xy = getelementptr i8, ptr %i.xx, i64 16
  %wide.load2939 = load <4 x i32>, ptr %i.xx, align 4, !tbaa !7
  %wide.load2940 = load <4 x i32>, ptr %i.xy, align 4, !tbaa !7
  %i.xz = getelementptr [4 x i8], ptr %i.ac, i64 %i.xw ; 2 uses
  %i.ya = getelementptr i8, ptr %i.xz, i64 16
  store <4 x i32> %wide.load2939, ptr %i.xz, align 4, !tbaa !7
  store <4 x i32> %wide.load2940, ptr %i.ya, align 4, !tbaa !7
  %index.next2941 = add nuw i64 %index2938, 8     ; 2 uses
  %i.yb = icmp eq i64 %index.next2941, %n.vec2936
  br i1 %i.yb, label %middle.block2942, label %vector.body2937, !llvm.loop !93

middle.block2942:                                 ; preds = %vector.body2937
  %cmp.n2943 = icmp eq i64 %i.xs, %n.vec2936
  br i1 %cmp.n2943, label %.preheader.i.i839, label %.lr.ph91.i.i843.preheader3327

.lr.ph91.i.i843.preheader3327:                    ; preds = %vector.memcheck2929, %.lr.ph91.i.i843.preheader, %middle.block2942
  %.490.i.i844.ph = phi i64 [ %.3.i.i836, %vector.memcheck2929 ], [ %.3.i.i836, %.lr.ph91.i.i843.preheader ], [ %i.xv, %middle.block2942 ] ; 4 uses
  %i.yc = sub i64 %.062.i.i818, %.490.i.i844.ph
  %xtraiter3431 = and i64 %i.yc, 3                ; 2 uses
  %lcmp.mod3432.not = icmp eq i64 %xtraiter3431, 0
  br i1 %lcmp.mod3432.not, label %.lr.ph91.i.i843.prol.loopexit, label %.lr.ph91.i.i843.prol

.lr.ph91.i.i843.prol:                             ; preds = %.lr.ph91.i.i843.preheader3327, %.lr.ph91.i.i843.prol
  %.490.i.i844.prol = phi i64 [ %i.yg, %.lr.ph91.i.i843.prol ], [ %.490.i.i844.ph, %.lr.ph91.i.i843.preheader3327 ] ; 3 uses
  %prol.iter3433 = phi i64 [ %prol.iter3433.next, %.lr.ph91.i.i843.prol ], [ 0, %.lr.ph91.i.i843.preheader3327 ]
  %i.yd = getelementptr [4 x i8], ptr %.063.i.i817, i64 %.490.i.i844.prol
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !7
  %i.yf = getelementptr [4 x i8], ptr %i.ac, i64 %.490.i.i844.prol
  store i32 %i.ye, ptr %i.yf, align 4, !tbaa !7
  %i.yg = add nuw i64 %.490.i.i844.prol, 1        ; 2 uses
  %prol.iter3433.next = add i64 %prol.iter3433, 1 ; 2 uses
  %prol.iter3433.cmp.not = icmp eq i64 %prol.iter3433.next, %xtraiter3431
  br i1 %prol.iter3433.cmp.not, label %.lr.ph91.i.i843.prol.loopexit, label %.lr.ph91.i.i843.prol, !llvm.loop !94

.lr.ph91.i.i843.prol.loopexit:                    ; preds = %.lr.ph91.i.i843.prol, %.lr.ph91.i.i843.preheader3327
  %.490.i.i844.unr = phi i64 [ %.490.i.i844.ph, %.lr.ph91.i.i843.preheader3327 ], [ %i.yg, %.lr.ph91.i.i843.prol ]
  %i.yh = sub i64 %.490.i.i844.ph, %.062.i.i818
  %i.yi = icmp ugt i64 %i.yh, -4
  br i1 %i.yi, label %.preheader.i.i839, label %.lr.ph91.i.i843

.preheader.i.i839:                                ; preds = %.lr.ph91.i.i843.prol.loopexit, %.lr.ph91.i.i843, %middle.block2942, %.preheader69.i.i838
  %.4.lcssa.i.i840 = phi i64 [ %.3.i.i836, %.preheader69.i.i838 ], [ %.062.i.i818, %middle.block2942 ], [ %.062.i.i818, %.lr.ph91.i.i843 ], [ %.062.i.i818, %.lr.ph91.i.i843.prol.loopexit ] ; 3 uses
  %.not2002 = icmp ugt i64 %.4.lcssa.i.i840, %i.g
  br i1 %.not2002, label %bary_add.exit850, label %.lr.ph94.preheader.i.i841

.lr.ph94.preheader.i.i841:                        ; preds = %.preheader.i.i839
  %i.yj = shl i64 %.4.lcssa.i.i840, 2
  %scevgep.i.i842 = getelementptr i8, ptr %i.ac, i64 %i.yj
  %i.yk = sub nuw nsw i64 %i.h, %.4.lcssa.i.i840
  %i.yl = shl i64 %i.yk, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i842, i8 0, i64 %i.yl, i1 false), !tbaa !7
  br label %bary_add.exit850

.lr.ph91.i.i843:                                  ; preds = %.lr.ph91.i.i843.prol.loopexit, %.lr.ph91.i.i843
  %.490.i.i844 = phi i64 [ %i.zb, %.lr.ph91.i.i843 ], [ %.490.i.i844.unr, %.lr.ph91.i.i843.prol.loopexit ] ; 6 uses
  %i.ym = getelementptr [4 x i8], ptr %.063.i.i817, i64 %.490.i.i844
  %i.yn = load i32, ptr %i.ym, align 4, !tbaa !7
  %i.yo = getelementptr [4 x i8], ptr %i.ac, i64 %.490.i.i844
  store i32 %i.yn, ptr %i.yo, align 4, !tbaa !7
  %i.yp = add nuw i64 %.490.i.i844, 1             ; 2 uses
  %i.yq = getelementptr [4 x i8], ptr %.063.i.i817, i64 %i.yp
  %i.yr = load i32, ptr %i.yq, align 4, !tbaa !7
  %i.ys = getelementptr [4 x i8], ptr %i.ac, i64 %i.yp
  store i32 %i.yr, ptr %i.ys, align 4, !tbaa !7
  %i.yt = add nuw i64 %.490.i.i844, 2             ; 2 uses
  %i.yu = getelementptr [4 x i8], ptr %.063.i.i817, i64 %i.yt
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !7
  %i.yw = getelementptr [4 x i8], ptr %i.ac, i64 %i.yt
  store i32 %i.yv, ptr %i.yw, align 4, !tbaa !7
  %i.yx = add nuw i64 %.490.i.i844, 3             ; 2 uses
  %i.yy = getelementptr [4 x i8], ptr %.063.i.i817, i64 %i.yx
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !7
  %i.za = getelementptr [4 x i8], ptr %i.ac, i64 %i.yx
  store i32 %i.yz, ptr %i.za, align 4, !tbaa !7
  %i.zb = add nuw i64 %.490.i.i844, 4             ; 2 uses
  %exitcond106.not.i.i845.3 = icmp eq i64 %i.zb, %.062.i.i818
  br i1 %exitcond106.not.i.i845.3, label %.preheader.i.i839, label %.lr.ph91.i.i843, !llvm.loop !95

bary_add.exit850:                                 ; preds = %.preheader70.i.i827, %bb.af, %.loopexit71.i.i835, %.preheader.i.i839, %.lr.ph94.preheader.i.i841
  br i1 %.not97.i.i, label %.loopexit74.i.i867, label %.lr.ph.i.i852.preheader

.lr.ph.i.i852.preheader:                          ; preds = %bary_add.exit850
  %xtraiter3434 = and i64 %i.g, 1
  %.off3627.a = add i64 %5, -1
  %i.zc = icmp ult i64 %.off3627.a, 3
  br i1 %i.zc, label %.lr.ph.i.i852.epil.preheader, label %.lr.ph.i.i852.preheader.new

.lr.ph.i.i852.preheader.new:                      ; preds = %.lr.ph.i.i852.preheader
  %unroll_iter3439 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i852

.lr.ph.i.i852:                                    ; preds = %.lr.ph.i.i852, %.lr.ph.i.i852.preheader.new
  %.06278.i.i853 = phi i64 [ 0, %.lr.ph.i.i852.preheader.new ], [ %i.aaa, %.lr.ph.i.i852 ] ; 5 uses
  %.06377.i.i854 = phi i64 [ 0, %.lr.ph.i.i852.preheader.new ], [ %i.zz, %.lr.ph.i.i852 ]
  %niter3440 = phi i64 [ 0, %.lr.ph.i.i852.preheader.new ], [ %niter3440.next.1, %.lr.ph.i.i852 ]
  %i.zd = getelementptr [4 x i8], ptr %i.ac, i64 %.06278.i.i853
  %i.ze = load i32, ptr %i.zd, align 4, !tbaa !7
  %i.zf = zext i32 %i.ze to i64
  %i.zg = getelementptr [4 x i8], ptr %.0542, i64 %.06278.i.i853
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !7
  %i.zi = zext i32 %i.zh to i64
  %i.zj = sub nsw i64 %i.zf, %i.zi
  %i.zk = add nsw i64 %i.zj, %.06377.i.i854       ; 2 uses
  %i.zl = trunc i64 %i.zk to i32
  %i.zm = getelementptr [4 x i8], ptr %i.ad, i64 %.06278.i.i853
  store i32 %i.zl, ptr %i.zm, align 4, !tbaa !7
  %i.zn = ashr i64 %i.zk, 32
  %i.zo = or disjoint i64 %.06278.i.i853, 1       ; 3 uses
  %i.zp = getelementptr [4 x i8], ptr %i.ac, i64 %i.zo
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !7
  %i.zr = zext i32 %i.zq to i64
  %i.zs = getelementptr [4 x i8], ptr %.0542, i64 %i.zo
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !7
  %i.zu = zext i32 %i.zt to i64
  %i.zv = sub nsw i64 %i.zr, %i.zu
  %i.zw = add nsw i64 %i.zv, %i.zn                ; 2 uses
  %i.zx = trunc i64 %i.zw to i32
  %i.zy = getelementptr [4 x i8], ptr %i.ad, i64 %i.zo
  store i32 %i.zx, ptr %i.zy, align 4, !tbaa !7
  %i.zz = ashr i64 %i.zw, 32                      ; 3 uses
  %i.aaa = add nuw nsw i64 %.06278.i.i853, 2      ; 2 uses
  %niter3440.next.1 = add i64 %niter3440, 2       ; 2 uses
  %niter3440.ncmp.1 = icmp eq i64 %niter3440.next.1, %unroll_iter3439
  br i1 %niter3440.ncmp.1, label %._crit_edge.i.i856.unr-lcssa, label %.lr.ph.i.i852, !llvm.loop !48

._crit_edge.i.i856.unr-lcssa:                     ; preds = %.lr.ph.i.i852
  %lcmp.mod3436.not = icmp eq i64 %xtraiter3434, 0
  br i1 %lcmp.mod3436.not, label %._crit_edge.i.i856, label %.lr.ph.i.i852.epil.preheader

.lr.ph.i.i852.epil.preheader:                     ; preds = %._crit_edge.i.i856.unr-lcssa, %.lr.ph.i.i852.preheader
  %.06278.i.i853.epil.init = phi i64 [ 0, %.lr.ph.i.i852.preheader ], [ %i.aaa, %._crit_edge.i.i856.unr-lcssa ] ; 3 uses
  %.06377.i.i854.epil.init = phi i64 [ 0, %.lr.ph.i.i852.preheader ], [ %i.zz, %._crit_edge.i.i856.unr-lcssa ]
  %lcmp.mod3438 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3438)
  %i.aab = getelementptr [4 x i8], ptr %i.ac, i64 %.06278.i.i853.epil.init
  %i.aac = load i32, ptr %i.aab, align 4, !tbaa !7
  %i.aad = zext i32 %i.aac to i64
  %i.aae = getelementptr [4 x i8], ptr %.0542, i64 %.06278.i.i853.epil.init
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !7
  %i.aag = zext i32 %i.aaf to i64
  %i.aah = sub nsw i64 %i.aad, %i.aag
  %i.aai = add nsw i64 %i.aah, %.06377.i.i854.epil.init ; 2 uses
  %i.aaj = trunc i64 %i.aai to i32
  %i.aak = getelementptr [4 x i8], ptr %i.ad, i64 %.06278.i.i853.epil.init
  store i32 %i.aaj, ptr %i.aak, align 4, !tbaa !7
  %i.aal = ashr i64 %i.aai, 32
  br label %._crit_edge.i.i856

._crit_edge.i.i856:                               ; preds = %._crit_edge.i.i856.unr-lcssa, %.lr.ph.i.i852.epil.preheader
  %.lcssa3326 = phi i64 [ %i.zz, %._crit_edge.i.i856.unr-lcssa ], [ %i.aal, %.lr.ph.i.i852.epil.preheader ]
  %i.aam = icmp eq i64 %.lcssa3326, 0
  br i1 %i.aam, label %.loopexit74.i.i867, label %.loopexit71.i.i860

.loopexit71.i.i860:                               ; preds = %._crit_edge.i.i856
  %i.aan = getelementptr [4 x i8], ptr %i.ac, i64 %i.g
  %i.aao = load i32, ptr %i.aan, align 4, !tbaa !7
  %i.aap = zext i32 %i.aao to i64
  %i.aaq = add nsw i64 %i.aap, -1                 ; 2 uses
  %i.aar = trunc i64 %i.aaq to i32
  %i.aas = getelementptr [4 x i8], ptr %i.ad, i64 %i.g
  store i32 %i.aar, ptr %i.aas, align 4, !tbaa !7
  %i.aat = icmp ult i64 %i.aaq, 4294967296
  br i1 %i.aat, label %.lr.ph.i.i903.preheader, label %.lr.ph.i887

.loopexit74.i.i867:                               ; preds = %bary_add.exit850, %._crit_edge.i.i856
  %.not2736 = icmp eq i64 %.idx1993, 0
  br i1 %.not2736, label %bary_2comp.exit897, label %.lr.ph93.i.i875

.lr.ph93.i.i875:                                  ; preds = %.loopexit74.i.i867
  %i.aau = getelementptr [4 x i8], ptr %i.ac, i64 %i.g
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !7
  %i.aaw = getelementptr [4 x i8], ptr %i.ad, i64 %i.g
  store i32 %i.aav, ptr %i.aaw, align 4, !tbaa !7
  br label %bary_2comp.exit897

.lr.ph.i887:                                      ; preds = %.loopexit71.i.i860, %bb.ah
  %.023.i888 = phi i64 [ %i.aaz, %bb.ah ], [ 0, %.loopexit71.i.i860 ] ; 9 uses
  %i.aax = getelementptr [4 x i8], ptr %i.ad, i64 %.023.i888
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !7 ; 2 uses
  %.not.i889 = icmp eq i32 %i.aay, 0
  br i1 %.not.i889, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i887
  %i.aaz = add nuw nsw i64 %.023.i888, 1
  %exitcond.not.i896 = icmp eq i64 %.023.i888, %i.g
  br i1 %exitcond.not.i896, label %bary_2comp.exit897, label %.lr.ph.i887, !llvm.loop !55

bb.ai:                                            ; preds = %.lr.ph.i887
  %i.aba = getelementptr [4 x i8], ptr %i.ad, i64 %.023.i888
end_hunk_5
begin_hunk_6_@bary_mul_toom3:bb.a
.lr.ph.i.i903.epil.preheader:                     ; preds = %.preheader72.i.i907.unr-lcssa, %.lr.ph.i.i903.preheader
  %.05779.i.i904.epil.init = phi i64 [ 0, %.lr.ph.i.i903.preheader ], [ %i.acv, %.preheader72.i.i907.unr-lcssa ] ; 2 uses
  %.05878.i.i905.epil.init = phi i64 [ 0, %.lr.ph.i.i903.preheader ], [ %i.acu, %.preheader72.i.i907.unr-lcssa ]
  %lcmp.mod3445 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3445)
  %i.abp = getelementptr [4 x i8], ptr %.0542, i64 %.05779.i.i904.epil.init
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !7
  %i.abr = zext i32 %i.abq to i64
  %i.abs = getelementptr [4 x i8], ptr %i.ac, i64 %.05779.i.i904.epil.init ; 2 uses
  %i.abt = load i32, ptr %i.abs, align 4, !tbaa !7
  %i.abu = zext i32 %i.abt to i64
  %i.abv = add nuw nsw i64 %.05878.i.i905.epil.init, %i.abr
  %i.abw = add nuw nsw i64 %i.abv, %i.abu         ; 2 uses
  %i.abx = trunc i64 %i.abw to i32
  store i32 %i.abx, ptr %i.abs, align 4, !tbaa !7
  %i.aby = lshr i64 %i.abw, 32
  br label %.preheader72.i.i907

.preheader72.i.i907:                              ; preds = %.preheader72.i.i907.unr-lcssa, %.lr.ph.i.i903.epil.preheader
  %.lcssa3320 = phi i64 [ %i.acu, %.preheader72.i.i907.unr-lcssa ], [ %i.aby, %.lr.ph.i.i903.epil.preheader ]
  %i.abz = icmp eq i64 %.lcssa3320, 0
  br i1 %i.abz, label %bary_add.exit932, label %bb.aj

.lr.ph.i.i903:                                    ; preds = %.lr.ph.i.i903, %.lr.ph.i.i903.preheader.new
  %.05779.i.i904 = phi i64 [ 0, %.lr.ph.i.i903.preheader.new ], [ %i.acv, %.lr.ph.i.i903 ] ; 4 uses
  %.05878.i.i905 = phi i64 [ 0, %.lr.ph.i.i903.preheader.new ], [ %i.acu, %.lr.ph.i.i903 ]
  %niter3447 = phi i64 [ 0, %.lr.ph.i.i903.preheader.new ], [ %niter3447.next.1, %.lr.ph.i.i903 ]
  %i.aca = getelementptr [4 x i8], ptr %.0542, i64 %.05779.i.i904
  %i.acb = load i32, ptr %i.aca, align 4, !tbaa !7
  %i.acc = zext i32 %i.acb to i64
  %i.acd = getelementptr [4 x i8], ptr %i.ac, i64 %.05779.i.i904 ; 2 uses
  %i.ace = load i32, ptr %i.acd, align 4, !tbaa !7
  %i.acf = zext i32 %i.ace to i64
  %i.acg = add nuw nsw i64 %.05878.i.i905, %i.acc
  %i.ach = add nuw nsw i64 %i.acg, %i.acf         ; 2 uses
  %i.aci = trunc i64 %i.ach to i32
  store i32 %i.aci, ptr %i.acd, align 4, !tbaa !7
  %i.acj = lshr i64 %i.ach, 32
  %i.ack = or disjoint i64 %.05779.i.i904, 1      ; 2 uses
  %i.acl = getelementptr [4 x i8], ptr %.0542, i64 %i.ack
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !7
  %i.acn = zext i32 %i.acm to i64
  %i.aco = getelementptr [4 x i8], ptr %i.ac, i64 %i.ack ; 2 uses
  %i.acp = load i32, ptr %i.aco, align 4, !tbaa !7
  %i.acq = zext i32 %i.acp to i64
  %i.acr = add nuw nsw i64 %i.acj, %i.acn
  %i.acs = add nuw nsw i64 %i.acr, %i.acq         ; 2 uses
  %i.act = trunc i64 %i.acs to i32
  store i32 %i.act, ptr %i.aco, align 4, !tbaa !7
  %i.acu = lshr i64 %i.acs, 32                    ; 3 uses
  %i.acv = add nuw nsw i64 %.05779.i.i904, 2      ; 2 uses
  %niter3447.next.1 = add i64 %niter3447, 2       ; 2 uses
  %niter3447.ncmp.1 = icmp eq i64 %niter3447.next.1, %unroll_iter3446
  br i1 %niter3447.ncmp.1, label %.preheader72.i.i907.unr-lcssa, label %.lr.ph.i.i903, !llvm.loop !34

bb.aj:                                            ; preds = %.preheader72.i.i907
  %i.acw = getelementptr [4 x i8], ptr %i.ac, i64 %i.g ; 2 uses
  %i.acx = load i32, ptr %i.acw, align 4, !tbaa !7
  %i.acy = add i32 %i.acx, 1
  store i32 %i.acy, ptr %i.acw, align 4, !tbaa !7
  br i1 %.not572.not19602488, label %bb.ak, label %bb.ao

bary_add.exit932:                                 ; preds = %.preheader72.i.i907
  br i1 %.not572.not19602488, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj, %.preheader72.i.i907.thread, %bary_add.exit932
  %.0555249124952499 = phi i32 [ %.0555, %.preheader72.i.i907.thread ], [ %.05552490, %bary_add.exit932 ], [ %.05552490, %bb.aj ] ; 9 uses
  %.not2008 = icmp ult i64 %i.g, %.0543
  br i1 %.not2008, label %.lr.ph.i.i938.preheader, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.i.i937 = icmp eq i64 %.0543, 0
  br i1 %.not.i.i937, label %.preheader72.i.i942, label %.lr.ph.i.i938.preheader

.lr.ph.i.i938.preheader:                          ; preds = %bb.ak, %bb.al
  %.061.i.i9362512 = phi ptr [ %.0546, %bb.al ], [ %i.ad, %bb.ak ] ; 3 uses
  %.062.i.i9352510 = phi i64 [ %i.h, %bb.al ], [ %.0543, %bb.ak ] ; 2 uses
  %.063.i.i9342508 = phi ptr [ %i.ad, %bb.al ], [ %.0546, %bb.ak ] ; 5 uses
  %.064.i.i9332506 = phi i64 [ %.0543, %bb.al ], [ %i.h, %bb.ak ] ; 6 uses
  %xtraiter3474 = and i64 %.064.i.i9332506, 1
  %i.acz = icmp eq i64 %.064.i.i9332506, 1
  br i1 %i.acz, label %.lr.ph.i.i938.epil.preheader, label %.lr.ph.i.i938.preheader.new

.lr.ph.i.i938.preheader.new:                      ; preds = %.lr.ph.i.i938.preheader
  %unroll_iter3479 = and i64 %.064.i.i9332506, -2
  br label %.lr.ph.i.i938

.preheader72.i.i942.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i938
  %lcmp.mod3476.not = icmp eq i64 %xtraiter3474, 0
  br i1 %lcmp.mod3476.not, label %.preheader72.i.i942, label %.lr.ph.i.i938.epil.preheader

.lr.ph.i.i938.epil.preheader:                     ; preds = %.preheader72.i.i942.loopexit.unr-lcssa, %.lr.ph.i.i938.preheader
  %.05779.i.i939.epil.init = phi i64 [ 0, %.lr.ph.i.i938.preheader ], [ %i.aej, %.preheader72.i.i942.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i940.epil.init = phi i64 [ 0, %.lr.ph.i.i938.preheader ], [ %i.aei, %.preheader72.i.i942.loopexit.unr-lcssa ]
  %lcmp.mod3478 = trunc i64 %.064.i.i9332506 to i1
  call void @llvm.assume(i1 %lcmp.mod3478)
  %i.ada = getelementptr [4 x i8], ptr %.061.i.i9362512, i64 %.05779.i.i939.epil.init
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !7
  %i.adc = zext i32 %i.adb to i64
  %i.add = getelementptr [4 x i8], ptr %.063.i.i9342508, i64 %.05779.i.i939.epil.init
  %i.ade = load i32, ptr %i.add, align 4, !tbaa !7
  %i.adf = zext i32 %i.ade to i64
  %i.adg = add nuw nsw i64 %.05878.i.i940.epil.init, %i.adc
  %i.adh = add nuw nsw i64 %i.adg, %i.adf         ; 2 uses
  %i.adi = trunc i64 %i.adh to i32
  %i.adj = getelementptr [4 x i8], ptr %i.ae, i64 %.05779.i.i939.epil.init
  store i32 %i.adi, ptr %i.adj, align 4, !tbaa !7
  %i.adk = lshr i64 %i.adh, 32
  br label %.preheader72.i.i942

.preheader72.i.i942:                              ; preds = %.lr.ph.i.i938.epil.preheader, %.preheader72.i.i942.loopexit.unr-lcssa, %bb.al
  %.062.i.i9352511 = phi i64 [ %i.h, %bb.al ], [ %.062.i.i9352510, %.preheader72.i.i942.loopexit.unr-lcssa ], [ %.062.i.i9352510, %.lr.ph.i.i938.epil.preheader ] ; 8 uses
  %.063.i.i9342509 = phi ptr [ %i.ad, %bb.al ], [ %.063.i.i9342508, %.preheader72.i.i942.loopexit.unr-lcssa ], [ %.063.i.i9342508, %.lr.ph.i.i938.epil.preheader ] ; 9 uses
  %.064.i.i9332507 = phi i64 [ 0, %bb.al ], [ %.064.i.i9332506, %.preheader72.i.i942.loopexit.unr-lcssa ], [ %.064.i.i9332506, %.lr.ph.i.i938.epil.preheader ] ; 7 uses
  %.058.lcssa.i.i943 = phi i64 [ 0, %bb.al ], [ %i.aei, %.preheader72.i.i942.loopexit.unr-lcssa ], [ %i.adk, %.lr.ph.i.i938.epil.preheader ] ; 2 uses
  %.063.i.i93425092988 = ptrtoaddr ptr %.063.i.i9342509 to i64
  %i.adl = icmp ult i64 %.064.i.i9332507, %.062.i.i9352511
  br i1 %i.adl, label %.lr.ph83.i.i963, label %.preheader70.i.i944

.lr.ph.i.i938:                                    ; preds = %.lr.ph.i.i938, %.lr.ph.i.i938.preheader.new
  %.05779.i.i939 = phi i64 [ 0, %.lr.ph.i.i938.preheader.new ], [ %i.aej, %.lr.ph.i.i938 ] ; 5 uses
  %.05878.i.i940 = phi i64 [ 0, %.lr.ph.i.i938.preheader.new ], [ %i.aei, %.lr.ph.i.i938 ]
  %niter3480 = phi i64 [ 0, %.lr.ph.i.i938.preheader.new ], [ %niter3480.next.1, %.lr.ph.i.i938 ]
  %i.adm = getelementptr [4 x i8], ptr %.061.i.i9362512, i64 %.05779.i.i939
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !7
  %i.ado = zext i32 %i.adn to i64
  %i.adp = getelementptr [4 x i8], ptr %.063.i.i9342508, i64 %.05779.i.i939
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !7
  %i.adr = zext i32 %i.adq to i64
  %i.ads = add nuw nsw i64 %.05878.i.i940, %i.ado
  %i.adt = add nuw nsw i64 %i.ads, %i.adr         ; 2 uses
  %i.adu = trunc i64 %i.adt to i32
  %i.adv = getelementptr [4 x i8], ptr %i.ae, i64 %.05779.i.i939
  store i32 %i.adu, ptr %i.adv, align 4, !tbaa !7
  %i.adw = lshr i64 %i.adt, 32
  %i.adx = or disjoint i64 %.05779.i.i939, 1      ; 3 uses
  %i.ady = getelementptr [4 x i8], ptr %.061.i.i9362512, i64 %i.adx
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !7
  %i.aea = zext i32 %i.adz to i64
  %i.aeb = getelementptr [4 x i8], ptr %.063.i.i9342508, i64 %i.adx
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !7
  %i.aed = zext i32 %i.aec to i64
  %i.aee = add nuw nsw i64 %i.adw, %i.aea
  %i.aef = add nuw nsw i64 %i.aee, %i.aed         ; 2 uses
  %i.aeg = trunc i64 %i.aef to i32
  %i.aeh = getelementptr [4 x i8], ptr %i.ae, i64 %i.adx
  store i32 %i.aeg, ptr %i.aeh, align 4, !tbaa !7
  %i.aei = lshr i64 %i.aef, 32                    ; 3 uses
  %i.aej = add nuw i64 %.05779.i.i939, 2          ; 2 uses
  %niter3480.next.1 = add i64 %niter3480, 2       ; 2 uses
  %niter3480.ncmp.1 = icmp eq i64 %niter3480.next.1, %unroll_iter3479
  br i1 %niter3480.ncmp.1, label %.preheader72.i.i942.loopexit.unr-lcssa, label %.lr.ph.i.i938, !llvm.loop !34

.preheader70.i.i944:                              ; preds = %.preheader72.i.i942
  %.not2009 = icmp ugt i64 %.064.i.i9332507, %i.g
  br i1 %.not2009, label %.critedge599, label %.lr.ph88.preheader.i.i950

.lr.ph88.preheader.i.i950:                        ; preds = %.preheader70.i.i944
  %i.aek = icmp eq i64 %.058.lcssa.i.i943, 0
  br i1 %i.aek, label %.loopexit71.i.i952, label %bb.am

bb.am:                                            ; preds = %.lr.ph88.preheader.i.i950
  %i.ael = getelementptr [4 x i8], ptr %i.ae, i64 %.064.i.i9332507
  store i32 1, ptr %i.ael, align 4, !tbaa !7
  %i.aem = add nuw nsw i64 %.064.i.i9332507, 1
  %exitcond103.peel.not.i.i951 = icmp eq i64 %.064.i.i9332507, %i.g
  br i1 %exitcond103.peel.not.i.i951, label %.critedge599, label %.loopexit71.i.i952

.lr.ph83.i.i963:                                  ; preds = %.preheader72.i.i942, %bb.an
  %.182.i.i964 = phi i64 [ %i.aev, %bb.an ], [ %.064.i.i9332507, %.preheader72.i.i942 ] ; 4 uses
  %.15981.i.i965 = phi i64 [ %i.aeu, %bb.an ], [ %.058.lcssa.i.i943, %.preheader72.i.i942 ]
  %i.aen = icmp eq i64 %.15981.i.i965, 0
  br i1 %i.aen, label %.loopexit71.i.i952, label %bb.an

bb.an:                                            ; preds = %.lr.ph83.i.i963
  %i.aeo = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %.182.i.i964
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !7
  %i.aeq = zext i32 %i.aep to i64
  %i.aer = add nuw nsw i64 %i.aeq, 1              ; 2 uses
  %i.aes = trunc i64 %i.aer to i32
  %i.aet = getelementptr [4 x i8], ptr %i.ae, i64 %.182.i.i964
  store i32 %i.aes, ptr %i.aet, align 4, !tbaa !7
  %i.aeu = lshr i64 %i.aer, 32
  %i.aev = add i64 %.182.i.i964, 1                ; 2 uses
  %exitcond102.not.i.i966 = icmp eq i64 %i.aev, %.062.i.i9352511
  br i1 %exitcond102.not.i.i966, label %.critedge599, label %.lr.ph83.i.i963, !llvm.loop !36

.loopexit71.i.i952:                               ; preds = %.lr.ph83.i.i963, %bb.am, %.lr.ph88.preheader.i.i950
  %.3.i.i953 = phi i64 [ %i.aem, %bb.am ], [ %.064.i.i9332507, %.lr.ph88.preheader.i.i950 ], [ %.182.i.i964, %.lr.ph83.i.i963 ] ; 8 uses
  %i.aew = icmp eq ptr %.063.i.i9342509, %i.ae
  %i.aex = icmp eq i64 %.062.i.i9352511, %i.h
  %or.cond.i.i954 = and i1 %i.aew, %i.aex
  br i1 %or.cond.i.i954, label %.critedge599, label %.preheader69.i.i955

.preheader69.i.i955:                              ; preds = %.loopexit71.i.i952
  %i.aey = icmp ult i64 %.3.i.i953, %.062.i.i9352511
  br i1 %i.aey, label %.lr.ph91.i.i960.preheader, label %.preheader.i.i956

.lr.ph91.i.i960.preheader:                        ; preds = %.preheader69.i.i955
  %i.aez = sub nuw i64 %.062.i.i9352511, %.3.i.i953 ; 3 uses
  %min.iters.check2991 = icmp ult i64 %i.aez, 20
  br i1 %min.iters.check2991, label %.lr.ph91.i.i960.preheader3304, label %vector.memcheck2987

vector.memcheck2987:                              ; preds = %.lr.ph91.i.i960.preheader
  %i.afa = mul i64 %i.g, 20
  %i.afb = add i64 %i.afa, %.05322856
  %14 = sub i64 %i.afb, %.063.i.i93425092988
  %15 = add i64 %14, 19
  %diff.check2989 = icmp ult i64 %15, 31
  br i1 %diff.check2989, label %.lr.ph91.i.i960.preheader3304, label %vector.ph2992

vector.ph2992:                                    ; preds = %vector.memcheck2987
  %n.vec2994 = and i64 %i.aez, -8                 ; 3 uses
  %i.afc = add i64 %.3.i.i953, %n.vec2994
  br label %vector.body2995

vector.body2995:                                  ; preds = %vector.body2995, %vector.ph2992
  %index2996 = phi i64 [ 0, %vector.ph2992 ], [ %index.next2999, %vector.body2995 ] ; 2 uses
  %i.afd = add i64 %.3.i.i953, %index2996         ; 2 uses
  %i.afe = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %i.afd ; 2 uses
  %i.aff = getelementptr i8, ptr %i.afe, i64 16
  %wide.load2997 = load <4 x i32>, ptr %i.afe, align 4, !tbaa !7
  %wide.load2998 = load <4 x i32>, ptr %i.aff, align 4, !tbaa !7
  %i.afg = getelementptr [4 x i8], ptr %i.ae, i64 %i.afd ; 2 uses
  %i.afh = getelementptr i8, ptr %i.afg, i64 16
  store <4 x i32> %wide.load2997, ptr %i.afg, align 4, !tbaa !7
  store <4 x i32> %wide.load2998, ptr %i.afh, align 4, !tbaa !7
  %index.next2999 = add nuw i64 %index2996, 8     ; 2 uses
  %i.afi = icmp eq i64 %index.next2999, %n.vec2994
  br i1 %i.afi, label %middle.block3000, label %vector.body2995, !llvm.loop !98

middle.block3000:                                 ; preds = %vector.body2995
  %cmp.n3001 = icmp eq i64 %i.aez, %n.vec2994
  br i1 %cmp.n3001, label %.critedge599, label %.lr.ph91.i.i960.preheader3304

.lr.ph91.i.i960.preheader3304:                    ; preds = %vector.memcheck2987, %.lr.ph91.i.i960.preheader, %middle.block3000
  %.490.i.i961.ph = phi i64 [ %.3.i.i953, %vector.memcheck2987 ], [ %.3.i.i953, %.lr.ph91.i.i960.preheader ], [ %i.afc, %middle.block3000 ] ; 4 uses
  %i.afj = sub i64 %.062.i.i9352511, %.490.i.i961.ph
  %xtraiter3481 = and i64 %i.afj, 3               ; 2 uses
  %lcmp.mod3482.not = icmp eq i64 %xtraiter3481, 0
  br i1 %lcmp.mod3482.not, label %.lr.ph91.i.i960.prol.loopexit, label %.lr.ph91.i.i960.prol

.lr.ph91.i.i960.prol:                             ; preds = %.lr.ph91.i.i960.preheader3304, %.lr.ph91.i.i960.prol
  %.490.i.i961.prol = phi i64 [ %i.afn, %.lr.ph91.i.i960.prol ], [ %.490.i.i961.ph, %.lr.ph91.i.i960.preheader3304 ] ; 3 uses
  %prol.iter3483 = phi i64 [ %prol.iter3483.next, %.lr.ph91.i.i960.prol ], [ 0, %.lr.ph91.i.i960.preheader3304 ]
  %i.afk = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %.490.i.i961.prol
  %i.afl = load i32, ptr %i.afk, align 4, !tbaa !7
  %i.afm = getelementptr [4 x i8], ptr %i.ae, i64 %.490.i.i961.prol
  store i32 %i.afl, ptr %i.afm, align 4, !tbaa !7
  %i.afn = add nuw i64 %.490.i.i961.prol, 1       ; 2 uses
  %prol.iter3483.next = add i64 %prol.iter3483, 1 ; 2 uses
  %prol.iter3483.cmp.not = icmp eq i64 %prol.iter3483.next, %xtraiter3481
  br i1 %prol.iter3483.cmp.not, label %.lr.ph91.i.i960.prol.loopexit, label %.lr.ph91.i.i960.prol, !llvm.loop !99

.lr.ph91.i.i960.prol.loopexit:                    ; preds = %.lr.ph91.i.i960.prol, %.lr.ph91.i.i960.preheader3304
  %.490.i.i961.unr = phi i64 [ %.490.i.i961.ph, %.lr.ph91.i.i960.preheader3304 ], [ %i.afn, %.lr.ph91.i.i960.prol ]
  %i.afo = sub i64 %.490.i.i961.ph, %.062.i.i9352511
  %i.afp = icmp ugt i64 %i.afo, -4
  br i1 %i.afp, label %.critedge599, label %.lr.ph91.i.i960

.preheader.i.i956:                                ; preds = %.preheader69.i.i955
  %.not2010 = icmp ugt i64 %.3.i.i953, %i.g
  br i1 %.not2010, label %.critedge599, label %.critedge599.sink.split

.lr.ph91.i.i960:                                  ; preds = %.lr.ph91.i.i960.prol.loopexit, %.lr.ph91.i.i960
  %.490.i.i961 = phi i64 [ %i.agf, %.lr.ph91.i.i960 ], [ %.490.i.i961.unr, %.lr.ph91.i.i960.prol.loopexit ] ; 6 uses
  %i.afq = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %.490.i.i961
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !7
  %i.afs = getelementptr [4 x i8], ptr %i.ae, i64 %.490.i.i961
  store i32 %i.afr, ptr %i.afs, align 4, !tbaa !7
  %i.aft = add nuw i64 %.490.i.i961, 1            ; 2 uses
  %i.afu = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %i.aft
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !7
  %i.afw = getelementptr [4 x i8], ptr %i.ae, i64 %i.aft
  store i32 %i.afv, ptr %i.afw, align 4, !tbaa !7
  %i.afx = add nuw i64 %.490.i.i961, 2            ; 2 uses
  %i.afy = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %i.afx
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !7
  %i.aga = getelementptr [4 x i8], ptr %i.ae, i64 %i.afx
  store i32 %i.afz, ptr %i.aga, align 4, !tbaa !7
  %i.agb = add nuw i64 %.490.i.i961, 3            ; 2 uses
  %i.agc = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %i.agb
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !7
  %i.age = getelementptr [4 x i8], ptr %i.ae, i64 %i.agb
  store i32 %i.agd, ptr %i.age, align 4, !tbaa !7
  %i.agf = add nuw i64 %.490.i.i961, 4            ; 2 uses
  %exitcond106.not.i.i962.3 = icmp eq i64 %i.agf, %.062.i.i9352511
  br i1 %exitcond106.not.i.i962.3, label %.critedge599, label %.lr.ph91.i.i960, !llvm.loop !100

bb.ao:                                            ; preds = %bb.aj, %.preheader72.i.i907.thread, %bary_add.exit932
  %.0555249124952498 = phi i32 [ %.0555, %.preheader72.i.i907.thread ], [ %.05552490, %bary_add.exit932 ], [ %.05552490, %bb.aj ] ; 6 uses
  %i.agg = call i64 @llvm.umin.i64(i64 %.0543, i64 %i.h) ; 10 uses
  %.not97.i.i968 = icmp eq i64 %.0543, 0
  br i1 %.not97.i.i968, label %._crit_edge.i.i973, label %.lr.ph.i.i969.preheader

.lr.ph.i.i969.preheader:                          ; preds = %bb.ao
  %xtraiter3448 = and i64 %i.agg, 1
  %i.agh = icmp eq i64 %i.agg, 1
  br i1 %i.agh, label %.lr.ph.i.i969.epil.preheader, label %.lr.ph.i.i969.preheader.new

.lr.ph.i.i969.preheader.new:                      ; preds = %.lr.ph.i.i969.preheader
  %unroll_iter3453 = and i64 %i.agg, 9223372036854775806
  br label %.lr.ph.i.i969

.lr.ph.i.i969:                                    ; preds = %.lr.ph.i.i969, %.lr.ph.i.i969.preheader.new
  %.06278.i.i970 = phi i64 [ 0, %.lr.ph.i.i969.preheader.new ], [ %i.ahf, %.lr.ph.i.i969 ] ; 5 uses
  %.06377.i.i971 = phi i64 [ 0, %.lr.ph.i.i969.preheader.new ], [ %i.ahe, %.lr.ph.i.i969 ]
  %niter3454 = phi i64 [ 0, %.lr.ph.i.i969.preheader.new ], [ %niter3454.next.1, %.lr.ph.i.i969 ]
  %i.agi = getelementptr [4 x i8], ptr %.0546, i64 %.06278.i.i970
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !7
  %i.agk = zext i32 %i.agj to i64
  %i.agl = getelementptr [4 x i8], ptr %i.ad, i64 %.06278.i.i970
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !7
  %i.agn = zext i32 %i.agm to i64
  %i.ago = sub nsw i64 %i.agk, %i.agn
  %i.agp = add nsw i64 %i.ago, %.06377.i.i971     ; 2 uses
  %i.agq = trunc i64 %i.agp to i32
  %i.agr = getelementptr [4 x i8], ptr %i.ae, i64 %.06278.i.i970
  store i32 %i.agq, ptr %i.agr, align 4, !tbaa !7
  %i.ags = ashr i64 %i.agp, 32
  %i.agt = or disjoint i64 %.06278.i.i970, 1      ; 3 uses
  %i.agu = getelementptr [4 x i8], ptr %.0546, i64 %i.agt
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !7
  %i.agw = zext i32 %i.agv to i64
  %i.agx = getelementptr [4 x i8], ptr %i.ad, i64 %i.agt
  %i.agy = load i32, ptr %i.agx, align 4, !tbaa !7
  %i.agz = zext i32 %i.agy to i64
  %i.aha = sub nsw i64 %i.agw, %i.agz
  %i.ahb = add nsw i64 %i.aha, %i.ags             ; 2 uses
  %i.ahc = trunc i64 %i.ahb to i32
  %i.ahd = getelementptr [4 x i8], ptr %i.ae, i64 %i.agt
  store i32 %i.ahc, ptr %i.ahd, align 4, !tbaa !7
  %i.ahe = ashr i64 %i.ahb, 32                    ; 3 uses
  %i.ahf = add nuw nsw i64 %.06278.i.i970, 2      ; 2 uses
  %niter3454.next.1 = add i64 %niter3454, 2       ; 2 uses
  %niter3454.ncmp.1 = icmp eq i64 %niter3454.next.1, %unroll_iter3453
  br i1 %niter3454.ncmp.1, label %._crit_edge.i.i973.loopexit.unr-lcssa, label %.lr.ph.i.i969, !llvm.loop !48

._crit_edge.i.i973.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i969
  %lcmp.mod3450.not = icmp eq i64 %xtraiter3448, 0
  br i1 %lcmp.mod3450.not, label %._crit_edge.i.i973, label %.lr.ph.i.i969.epil.preheader

.lr.ph.i.i969.epil.preheader:                     ; preds = %._crit_edge.i.i973.loopexit.unr-lcssa, %.lr.ph.i.i969.preheader
  %.06278.i.i970.epil.init = phi i64 [ 0, %.lr.ph.i.i969.preheader ], [ %i.ahf, %._crit_edge.i.i973.loopexit.unr-lcssa ] ; 3 uses
  %.06377.i.i971.epil.init = phi i64 [ 0, %.lr.ph.i.i969.preheader ], [ %i.ahe, %._crit_edge.i.i973.loopexit.unr-lcssa ]
  %lcmp.mod3452 = trunc i64 %i.agg to i1
  call void @llvm.assume(i1 %lcmp.mod3452)
  %i.ahg = getelementptr [4 x i8], ptr %.0546, i64 %.06278.i.i970.epil.init
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !7
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = getelementptr [4 x i8], ptr %i.ad, i64 %.06278.i.i970.epil.init
  %i.ahk = load i32, ptr %i.ahj, align 4, !tbaa !7
  %i.ahl = zext i32 %i.ahk to i64
  %i.ahm = sub nsw i64 %i.ahi, %i.ahl
  %i.ahn = add nsw i64 %i.ahm, %.06377.i.i971.epil.init ; 2 uses
  %i.aho = trunc i64 %i.ahn to i32
  %i.ahp = getelementptr [4 x i8], ptr %i.ae, i64 %.06278.i.i970.epil.init
  store i32 %i.aho, ptr %i.ahp, align 4, !tbaa !7
  %i.ahq = ashr i64 %i.ahn, 32
  br label %._crit_edge.i.i973

._crit_edge.i.i973:                               ; preds = %.lr.ph.i.i969.epil.preheader, %._crit_edge.i.i973.loopexit.unr-lcssa, %bb.ao
  %.063.lcssa.i.i974 = phi i64 [ 0, %bb.ao ], [ %i.ahe, %._crit_edge.i.i973.loopexit.unr-lcssa ], [ %i.ahq, %.lr.ph.i.i969.epil.preheader ] ; 4 uses
  %.not.i.i975.not = icmp ult i64 %i.g, %.0543
  br i1 %.not.i.i975.not, label %.preheader72.i.i976, label %.lr.ph87.i.i999.preheader

.lr.ph87.i.i999.preheader:                        ; preds = %._crit_edge.i.i973
  %i.ahr = add nuw nsw i64 %i.g, 1
  %i.ahs = sub nuw nsw i64 %i.ahr, %i.agg
  %i.aht = sub nuw nsw i64 %i.g, %i.agg
  %xtraiter3455 = and i64 %i.ahs, 3               ; 2 uses
  %lcmp.mod3456.not = icmp eq i64 %xtraiter3455, 0
  br i1 %lcmp.mod3456.not, label %.lr.ph87.i.i999.prol.loopexit, label %.lr.ph87.i.i999.prol

.lr.ph87.i.i999.prol:                             ; preds = %.lr.ph87.i.i999.preheader, %.lr.ph87.i.i999.prol
  %.286.i.i1000.prol = phi i64 [ %i.aib, %.lr.ph87.i.i999.prol ], [ %i.agg, %.lr.ph87.i.i999.preheader ] ; 3 uses
  %.26585.i.i1001.prol = phi i64 [ %i.aia, %.lr.ph87.i.i999.prol ], [ %.063.lcssa.i.i974, %.lr.ph87.i.i999.preheader ]
  %prol.iter3457 = phi i64 [ %prol.iter3457.next, %.lr.ph87.i.i999.prol ], [ 0, %.lr.ph87.i.i999.preheader ]
  %i.ahu = getelementptr [4 x i8], ptr %i.ad, i64 %.286.i.i1000.prol
  %i.ahv = load i32, ptr %i.ahu, align 4, !tbaa !7
  %i.ahw = zext i32 %i.ahv to i64
  %i.ahx = sub nsw i64 %.26585.i.i1001.prol, %i.ahw ; 2 uses
  %i.ahy = trunc i64 %i.ahx to i32
  %i.ahz = getelementptr [4 x i8], ptr %i.ae, i64 %.286.i.i1000.prol
  store i32 %i.ahy, ptr %i.ahz, align 4, !tbaa !7
  %i.aia = ashr i64 %i.ahx, 32                    ; 3 uses
  %i.aib = add nuw i64 %.286.i.i1000.prol, 1      ; 2 uses
  %prol.iter3457.next = add i64 %prol.iter3457, 1 ; 2 uses
  %prol.iter3457.cmp.not = icmp eq i64 %prol.iter3457.next, %xtraiter3455
  br i1 %prol.iter3457.cmp.not, label %.lr.ph87.i.i999.prol.loopexit, label %.lr.ph87.i.i999.prol, !llvm.loop !101

.lr.ph87.i.i999.prol.loopexit:                    ; preds = %.lr.ph87.i.i999.prol, %.lr.ph87.i.i999.preheader
  %.lcssa3318.unr = phi i64 [ poison, %.lr.ph87.i.i999.preheader ], [ %i.aia, %.lr.ph87.i.i999.prol ]
  %.286.i.i1000.unr = phi i64 [ %i.agg, %.lr.ph87.i.i999.preheader ], [ %i.aib, %.lr.ph87.i.i999.prol ]
  %.26585.i.i1001.unr = phi i64 [ %.063.lcssa.i.i974, %.lr.ph87.i.i999.preheader ], [ %i.aia, %.lr.ph87.i.i999.prol ]
  %i.aic = icmp samesign ult i64 %i.aht, 3
  br i1 %i.aic, label %.loopexit71.i.i977, label %.lr.ph87.i.i999

.preheader72.i.i976:                              ; preds = %._crit_edge.i.i973
  %i.aid = icmp ult i64 %i.h, %.0543
  br i1 %i.aid, label %.lr.ph82.i.i995, label %.loopexit71.i.i977

.lr.ph82.i.i995:                                  ; preds = %.preheader72.i.i976, %bb.ap
  %.181.i.i996 = phi i64 [ %i.aim, %bb.ap ], [ %i.agg, %.preheader72.i.i976 ] ; 4 uses
  %.16480.i.i997 = phi i64 [ %i.ail, %bb.ap ], [ %.063.lcssa.i.i974, %.preheader72.i.i976 ]
  %i.aie = icmp eq i64 %.16480.i.i997, 0
  br i1 %i.aie, label %.loopexit74.i.i984, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph82.i.i995
  %i.aif = getelementptr [4 x i8], ptr %.0546, i64 %.181.i.i996
  %i.aig = load i32, ptr %i.aif, align 4, !tbaa !7
  %i.aih = zext i32 %i.aig to i64
  %i.aii = add nsw i64 %i.aih, -1                 ; 2 uses
  %i.aij = trunc i64 %i.aii to i32
  %i.aik = getelementptr [4 x i8], ptr %i.ae, i64 %.181.i.i996
  store i32 %i.aij, ptr %i.aik, align 4, !tbaa !7
  %i.ail = ashr i64 %i.aii, 32                    ; 2 uses
  %i.aim = add i64 %.181.i.i996, 1                ; 2 uses
  %exitcond107.not.i.i998 = icmp eq i64 %i.aim, %.0543
  br i1 %exitcond107.not.i.i998, label %.loopexit71.i.i977, label %.lr.ph82.i.i995, !llvm.loop !50

.lr.ph87.i.i999:                                  ; preds = %.lr.ph87.i.i999.prol.loopexit, %.lr.ph87.i.i999
  %.286.i.i1000 = phi i64 [ %i.ajs, %.lr.ph87.i.i999 ], [ %.286.i.i1000.unr, %.lr.ph87.i.i999.prol.loopexit ] ; 6 uses
  %.26585.i.i1001 = phi i64 [ %i.ajr, %.lr.ph87.i.i999 ], [ %.26585.i.i1001.unr, %.lr.ph87.i.i999.prol.loopexit ]
  %i.ain = getelementptr [4 x i8], ptr %i.ad, i64 %.286.i.i1000
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !7
  %i.aip = zext i32 %i.aio to i64
  %i.aiq = sub nsw i64 %.26585.i.i1001, %i.aip    ; 2 uses
  %i.air = trunc i64 %i.aiq to i32
  %i.ais = getelementptr [4 x i8], ptr %i.ae, i64 %.286.i.i1000
  store i32 %i.air, ptr %i.ais, align 4, !tbaa !7
  %i.ait = ashr i64 %i.aiq, 32
  %i.aiu = add nuw i64 %.286.i.i1000, 1           ; 2 uses
  %i.aiv = getelementptr [4 x i8], ptr %i.ad, i64 %i.aiu
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !7
  %i.aix = zext i32 %i.aiw to i64
  %i.aiy = sub nsw i64 %i.ait, %i.aix             ; 2 uses
  %i.aiz = trunc i64 %i.aiy to i32
  %i.aja = getelementptr [4 x i8], ptr %i.ae, i64 %i.aiu
  store i32 %i.aiz, ptr %i.aja, align 4, !tbaa !7
  %i.ajb = ashr i64 %i.aiy, 32
  %i.ajc = add nuw i64 %.286.i.i1000, 2           ; 2 uses
  %i.ajd = getelementptr [4 x i8], ptr %i.ad, i64 %i.ajc
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !7
  %i.ajf = zext i32 %i.aje to i64
  %i.ajg = sub nsw i64 %i.ajb, %i.ajf             ; 2 uses
  %i.ajh = trunc i64 %i.ajg to i32
  %i.aji = getelementptr [4 x i8], ptr %i.ae, i64 %i.ajc
  store i32 %i.ajh, ptr %i.aji, align 4, !tbaa !7
  %i.ajj = ashr i64 %i.ajg, 32
  %i.ajk = add nuw i64 %.286.i.i1000, 3           ; 3 uses
  %i.ajl = getelementptr [4 x i8], ptr %i.ad, i64 %i.ajk
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !7
  %i.ajn = zext i32 %i.ajm to i64
  %i.ajo = sub nsw i64 %i.ajj, %i.ajn             ; 2 uses
  %i.ajp = trunc i64 %i.ajo to i32
  %i.ajq = getelementptr [4 x i8], ptr %i.ae, i64 %i.ajk
  store i32 %i.ajp, ptr %i.ajq, align 4, !tbaa !7
  %i.ajr = ashr i64 %i.ajo, 32                    ; 2 uses
  %i.ajs = add nuw i64 %.286.i.i1000, 4
  %exitcond108.not.i.i1002.3 = icmp eq i64 %i.ajk, %i.g
  br i1 %exitcond108.not.i.i1002.3, label %.loopexit71.i.i977, label %.lr.ph87.i.i999, !llvm.loop !51

.loopexit71.i.i977:                               ; preds = %.lr.ph87.i.i999.prol.loopexit, %.lr.ph87.i.i999, %bb.ap, %.preheader72.i.i976
  %.366.i.i978 = phi i64 [ %.063.lcssa.i.i974, %.preheader72.i.i976 ], [ %i.ail, %bb.ap ], [ %.lcssa3318.unr, %.lr.ph87.i.i999.prol.loopexit ], [ %i.ajr, %.lr.ph87.i.i999 ]
  %.3.i.i979 = phi i64 [ %i.agg, %.preheader72.i.i976 ], [ %.0543, %bb.ap ], [ %i.h, %.lr.ph87.i.i999 ], [ %i.h, %.lr.ph87.i.i999.prol.loopexit ] ; 4 uses
  %i.ajt = icmp eq i64 %.366.i.i978, 0
  br i1 %i.ajt, label %.loopexit74.i.i984, label %.preheader68.i.i980

.preheader68.i.i980:                              ; preds = %.loopexit71.i.i977
  %.not2005 = icmp ugt i64 %.3.i.i979, %i.g
  br i1 %.not2005, label %.lr.ph.i1004.preheader, label %.lr.ph91.preheader.i.i982

.lr.ph.i1004.preheader:                           ; preds = %.lr.ph91.preheader.i.i982, %.preheader68.i.i980
  br label %.lr.ph.i1004

.lr.ph91.preheader.i.i982:                        ; preds = %.preheader68.i.i980
  %i.aju = shl i64 %.3.i.i979, 2
  %scevgep.i.i983 = getelementptr i8, ptr %i.ae, i64 %i.aju
  %i.ajv = sub nuw nsw i64 %i.h, %.3.i.i979
  %i.ajw = shl i64 %i.ajv, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i983, i8 -1, i64 %i.ajw, i1 false), !tbaa !7
  br label %.lr.ph.i1004.preheader

.loopexit74.i.i984:                               ; preds = %.lr.ph82.i.i995, %.loopexit71.i.i977
  %.5.i.i985 = phi i64 [ %.3.i.i979, %.loopexit71.i.i977 ], [ %.181.i.i996, %.lr.ph82.i.i995 ] ; 7 uses
  %i.ajx = icmp eq ptr %.0546, %i.ae
  %i.ajy = icmp eq i64 %.0543, %i.h
  %or.cond.i.i986 = and i1 %i.ajx, %i.ajy
  br i1 %or.cond.i.i986, label %.critedge599, label %.preheader67.i.i987

.preheader67.i.i987:                              ; preds = %.loopexit74.i.i984
  %i.ajz = icmp ult i64 %.5.i.i985, %.0543
  br i1 %i.ajz, label %.lr.ph93.i.i992.preheader, label %.preheader.i.i988

.lr.ph93.i.i992.preheader:                        ; preds = %.preheader67.i.i987
  %i.aka = sub nuw i64 %.0543, %.5.i.i985         ; 3 uses
  %min.iters.check2975 = icmp ult i64 %i.aka, 20
  br i1 %min.iters.check2975, label %.lr.ph93.i.i992.preheader3308, label %vector.memcheck2971

vector.memcheck2971:                              ; preds = %.lr.ph93.i.i992.preheader
  %i.akb = mul i64 %i.g, 20
  %i.akc = add i64 %i.akb, %.05322856
  %16 = sub i64 %i.akc, %.05462972
  %17 = add i64 %16, 19
  %diff.check2973 = icmp ult i64 %17, 31
  br i1 %diff.check2973, label %.lr.ph93.i.i992.preheader3308, label %vector.ph2976

vector.ph2976:                                    ; preds = %vector.memcheck2971
  %n.vec2978 = and i64 %i.aka, -8                 ; 3 uses
  %i.akd = add i64 %.5.i.i985, %n.vec2978
  br label %vector.body2979

vector.body2979:                                  ; preds = %vector.body2979, %vector.ph2976
  %index2980 = phi i64 [ 0, %vector.ph2976 ], [ %index.next2983, %vector.body2979 ] ; 2 uses
  %i.ake = add i64 %.5.i.i985, %index2980         ; 2 uses
  %i.akf = getelementptr [4 x i8], ptr %.0546, i64 %i.ake ; 2 uses
  %i.akg = getelementptr i8, ptr %i.akf, i64 16
  %wide.load2981 = load <4 x i32>, ptr %i.akf, align 4, !tbaa !7
  %wide.load2982 = load <4 x i32>, ptr %i.akg, align 4, !tbaa !7
  %i.akh = getelementptr [4 x i8], ptr %i.ae, i64 %i.ake ; 2 uses
  %i.aki = getelementptr i8, ptr %i.akh, i64 16
  store <4 x i32> %wide.load2981, ptr %i.akh, align 4, !tbaa !7
  store <4 x i32> %wide.load2982, ptr %i.aki, align 4, !tbaa !7
  %index.next2983 = add nuw i64 %index2980, 8     ; 2 uses
  %i.akj = icmp eq i64 %index.next2983, %n.vec2978
  br i1 %i.akj, label %middle.block2984, label %vector.body2979, !llvm.loop !102

middle.block2984:                                 ; preds = %vector.body2979
  %cmp.n2985 = icmp eq i64 %i.aka, %n.vec2978
  br i1 %cmp.n2985, label %.preheader.i.i988, label %.lr.ph93.i.i992.preheader3308

.lr.ph93.i.i992.preheader3308:                    ; preds = %vector.memcheck2971, %.lr.ph93.i.i992.preheader, %middle.block2984
  %.692.i.i993.ph = phi i64 [ %.5.i.i985, %vector.memcheck2971 ], [ %.5.i.i985, %.lr.ph93.i.i992.preheader ], [ %i.akd, %middle.block2984 ] ; 4 uses
  %i.akk = sub i64 %.0543, %.692.i.i993.ph
  %xtraiter3471 = and i64 %i.akk, 3               ; 2 uses
  %lcmp.mod3472.not = icmp eq i64 %xtraiter3471, 0
  br i1 %lcmp.mod3472.not, label %.lr.ph93.i.i992.prol.loopexit, label %.lr.ph93.i.i992.prol

.lr.ph93.i.i992.prol:                             ; preds = %.lr.ph93.i.i992.preheader3308, %.lr.ph93.i.i992.prol
  %.692.i.i993.prol = phi i64 [ %i.ako, %.lr.ph93.i.i992.prol ], [ %.692.i.i993.ph, %.lr.ph93.i.i992.preheader3308 ] ; 3 uses
  %prol.iter3473 = phi i64 [ %prol.iter3473.next, %.lr.ph93.i.i992.prol ], [ 0, %.lr.ph93.i.i992.preheader3308 ]
  %i.akl = getelementptr [4 x i8], ptr %.0546, i64 %.692.i.i993.prol
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !7
  %i.akn = getelementptr [4 x i8], ptr %i.ae, i64 %.692.i.i993.prol
  store i32 %i.akm, ptr %i.akn, align 4, !tbaa !7
  %i.ako = add nuw i64 %.692.i.i993.prol, 1       ; 2 uses
  %prol.iter3473.next = add i64 %prol.iter3473, 1 ; 2 uses
  %prol.iter3473.cmp.not = icmp eq i64 %prol.iter3473.next, %xtraiter3471
  br i1 %prol.iter3473.cmp.not, label %.lr.ph93.i.i992.prol.loopexit, label %.lr.ph93.i.i992.prol, !llvm.loop !103

.lr.ph93.i.i992.prol.loopexit:                    ; preds = %.lr.ph93.i.i992.prol, %.lr.ph93.i.i992.preheader3308
  %.692.i.i993.unr = phi i64 [ %.692.i.i993.ph, %.lr.ph93.i.i992.preheader3308 ], [ %i.ako, %.lr.ph93.i.i992.prol ]
  %i.akp = sub i64 %.692.i.i993.ph, %.0543
  %i.akq = icmp ugt i64 %i.akp, -4
  br i1 %i.akq, label %.preheader.i.i988, label %.lr.ph93.i.i992

.preheader.i.i988:                                ; preds = %.lr.ph93.i.i992.prol.loopexit, %.lr.ph93.i.i992, %middle.block2984, %.preheader67.i.i987
  %.6.lcssa.i.i989 = phi i64 [ %.5.i.i985, %.preheader67.i.i987 ], [ %.0543, %middle.block2984 ], [ %.0543, %.lr.ph93.i.i992 ], [ %.0543, %.lr.ph93.i.i992.prol.loopexit ] ; 2 uses
  %.not2007 = icmp ugt i64 %.6.lcssa.i.i989, %i.g
  br i1 %.not2007, label %.critedge599, label %.critedge599.sink.split

.lr.ph93.i.i992:                                  ; preds = %.lr.ph93.i.i992.prol.loopexit, %.lr.ph93.i.i992
  %.692.i.i993 = phi i64 [ %i.alg, %.lr.ph93.i.i992 ], [ %.692.i.i993.unr, %.lr.ph93.i.i992.prol.loopexit ] ; 6 uses
  %i.akr = getelementptr [4 x i8], ptr %.0546, i64 %.692.i.i993
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !7
  %i.akt = getelementptr [4 x i8], ptr %i.ae, i64 %.692.i.i993
  store i32 %i.aks, ptr %i.akt, align 4, !tbaa !7
  %i.aku = add nuw i64 %.692.i.i993, 1            ; 2 uses
  %i.akv = getelementptr [4 x i8], ptr %.0546, i64 %i.aku
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !7
  %i.akx = getelementptr [4 x i8], ptr %i.ae, i64 %i.aku
  store i32 %i.akw, ptr %i.akx, align 4, !tbaa !7
  %i.aky = add nuw i64 %.692.i.i993, 2            ; 2 uses
  %i.akz = getelementptr [4 x i8], ptr %.0546, i64 %i.aky
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !7
  %i.alb = getelementptr [4 x i8], ptr %i.ae, i64 %i.aky
  store i32 %i.ala, ptr %i.alb, align 4, !tbaa !7
  %i.alc = add nuw i64 %.692.i.i993, 3            ; 2 uses
  %i.ald = getelementptr [4 x i8], ptr %.0546, i64 %i.alc
  %i.ale = load i32, ptr %i.ald, align 4, !tbaa !7
  %i.alf = getelementptr [4 x i8], ptr %i.ae, i64 %i.alc
  store i32 %i.ale, ptr %i.alf, align 4, !tbaa !7
  %i.alg = add nuw i64 %.692.i.i993, 4            ; 2 uses
  %exitcond111.not.i.i994.3 = icmp eq i64 %i.alg, %.0543
  br i1 %exitcond111.not.i.i994.3, label %.preheader.i.i988, label %.lr.ph93.i.i992, !llvm.loop !104

.lr.ph.i1004:                                     ; preds = %.lr.ph.i1004.preheader, %bb.aq
  %.023.i1005 = phi i64 [ %i.alj, %bb.aq ], [ 0, %.lr.ph.i1004.preheader ] ; 9 uses
  %i.alh = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1005
  %i.ali = load i32, ptr %i.alh, align 4, !tbaa !7 ; 2 uses
  %.not.i1006 = icmp eq i32 %i.ali, 0
  br i1 %.not.i1006, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i1004
  %i.alj = add nuw nsw i64 %.023.i1005, 1
  %exitcond.not.i1013 = icmp eq i64 %.023.i1005, %i.g
  br i1 %exitcond.not.i1013, label %bary_2comp.exit1014.preheader, label %.lr.ph.i1004, !llvm.loop !55

bb.ar:                                            ; preds = %.lr.ph.i1004
  %i.alk = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1005
  %i.all = sub i32 0, %i.ali
  store i32 %i.all, ptr %i.alk, align 4, !tbaa !7
  %.not2006.not = icmp samesign ult i64 %.023.i1005, %i.g
  br i1 %.not2006.not, label %.lr.ph26.i1009.preheader, label %bary_2comp.exit1014.preheader

.lr.ph26.i1009.preheader:                         ; preds = %bb.ar
  %i.alm = sub nuw nsw i64 %i.g, %.023.i1005      ; 3 uses
  %min.iters.check2959 = icmp samesign ult i64 %i.alm, 8
  br i1 %min.iters.check2959, label %.lr.ph26.i1009.preheader3310, label %vector.ph2960

vector.ph2960:                                    ; preds = %.lr.ph26.i1009.preheader
  %n.vec2962 = and i64 %i.alm, 9223372036854775800 ; 3 uses
  %i.aln = add nuw i64 %.023.i1005, %n.vec2962
  %i.alo = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1005
  br label %vector.body2963

vector.body2963:                                  ; preds = %vector.body2963, %vector.ph2960
  %index2964 = phi i64 [ 0, %vector.ph2960 ], [ %index.next2967, %vector.body2963 ] ; 2 uses
  %i.alp = getelementptr [4 x i8], ptr %i.alo, i64 %index2964 ; 2 uses
  %i.alq = getelementptr i8, ptr %i.alp, i64 4    ; 2 uses
  %i.alr = getelementptr i8, ptr %i.alp, i64 20   ; 2 uses
  %wide.load2965 = load <4 x i32>, ptr %i.alq, align 4, !tbaa !7
  %wide.load2966 = load <4 x i32>, ptr %i.alr, align 4, !tbaa !7
  %i.als = xor <4 x i32> %wide.load2965, splat (i32 -1)
  %i.alt = xor <4 x i32> %wide.load2966, splat (i32 -1)
  store <4 x i32> %i.als, ptr %i.alq, align 4, !tbaa !7
  store <4 x i32> %i.alt, ptr %i.alr, align 4, !tbaa !7
  %index.next2967 = add nuw i64 %index2964, 8     ; 2 uses
  %i.alu = icmp eq i64 %index.next2967, %n.vec2962
  br i1 %i.alu, label %middle.block2968, label %vector.body2963, !llvm.loop !105

middle.block2968:                                 ; preds = %vector.body2963
  %cmp.n2969 = icmp eq i64 %i.alm, %n.vec2962
  br i1 %cmp.n2969, label %bary_2comp.exit1014.preheader, label %.lr.ph26.i1009.preheader3310

.lr.ph26.i1009.preheader3310:                     ; preds = %.lr.ph26.i1009.preheader, %middle.block2968
  %.125.i1010.in.ph = phi i64 [ %.023.i1005, %.lr.ph26.i1009.preheader ], [ %i.aln, %middle.block2968 ]
  br label %.lr.ph26.i1009

.lr.ph26.i1009:                                   ; preds = %.lr.ph26.i1009.preheader3310, %.lr.ph26.i1009
  %.125.i1010.in = phi i64 [ %.125.i1010, %.lr.ph26.i1009 ], [ %.125.i1010.in.ph, %.lr.ph26.i1009.preheader3310 ]
  %.125.i1010 = add nuw i64 %.125.i1010.in, 1     ; 3 uses
  %i.alv = getelementptr [4 x i8], ptr %i.ae, i64 %.125.i1010 ; 2 uses
  %i.alw = load i32, ptr %i.alv, align 4, !tbaa !7
  %i.alx = xor i32 %i.alw, -1
  store i32 %i.alx, ptr %i.alv, align 4, !tbaa !7
  %exitcond31.not.i1012 = icmp eq i64 %.125.i1010, %i.g
  br i1 %exitcond31.not.i1012, label %bary_2comp.exit1014.preheader, label %.lr.ph26.i1009, !llvm.loop !106

bary_2comp.exit1014.preheader:                    ; preds = %bb.aq, %.lr.ph26.i1009, %middle.block2968, %bb.ar
  %xtraiter3458 = and i64 %i.h, 3                 ; 3 uses
  %i.aly = icmp ult i64 %i.f, 9
  br i1 %i.aly, label %bary_2comp.exit1014.epil.preheader, label %bary_2comp.exit1014.preheader.new

bary_2comp.exit1014.preheader.new:                ; preds = %bary_2comp.exit1014.preheader
  %unroll_iter3462 = and i64 %i.h, 9223372036854775804
  br label %bary_2comp.exit1014

bary_2comp.exit1014:                              ; preds = %bary_2comp.exit1014, %bary_2comp.exit1014.preheader.new
  %.015.i1017 = phi i32 [ 0, %bary_2comp.exit1014.preheader.new ], [ %i.amm, %bary_2comp.exit1014 ]
  %.01013.i1019 = phi ptr [ %i.ae, %bary_2comp.exit1014.preheader.new ], [ %i.amj, %bary_2comp.exit1014 ] ; 6 uses
  %niter3463 = phi i64 [ 0, %bary_2comp.exit1014.preheader.new ], [ %niter3463.next.3, %bary_2comp.exit1014 ]
  %i.alz = getelementptr i8, ptr %.01013.i1019, i64 4 ; 2 uses
  %i.ama = load i32, ptr %.01013.i1019, align 4, !tbaa !7 ; 2 uses
  %i.amb = shl i32 %i.ama, 1
  %i.amc = or disjoint i32 %i.amb, %.015.i1017
  store i32 %i.amc, ptr %.01013.i1019, align 4, !tbaa !7
  %i.amd = getelementptr i8, ptr %.01013.i1019, i64 8 ; 2 uses
  %i.ame = load i32, ptr %i.alz, align 4, !tbaa !7 ; 2 uses
  %i.amf = call i32 @llvm.fshl.i32(i32 %i.ame, i32 %i.ama, i32 1)
  store i32 %i.amf, ptr %i.alz, align 4, !tbaa !7
  %i.amg = getelementptr i8, ptr %.01013.i1019, i64 12 ; 2 uses
  %i.amh = load i32, ptr %i.amd, align 4, !tbaa !7 ; 2 uses
  %i.ami = call i32 @llvm.fshl.i32(i32 %i.amh, i32 %i.ame, i32 1)
  store i32 %i.ami, ptr %i.amd, align 4, !tbaa !7
  %i.amj = getelementptr i8, ptr %.01013.i1019, i64 16 ; 2 uses
  %i.amk = load i32, ptr %i.amg, align 4, !tbaa !7 ; 2 uses
  %i.aml = call i32 @llvm.fshl.i32(i32 %i.amk, i32 %i.amh, i32 1)
  store i32 %i.aml, ptr %i.amg, align 4, !tbaa !7
  %i.amm = lshr i32 %i.amk, 31                    ; 2 uses
  %niter3463.next.3 = add i64 %niter3463, 4       ; 2 uses
  %niter3463.ncmp.3 = icmp eq i64 %niter3463.next.3, %unroll_iter3462
  br i1 %niter3463.ncmp.3, label %bary_small_lshift.exit1022.unr-lcssa, label %bary_2comp.exit1014, !llvm.loop !88

bary_small_lshift.exit1022.unr-lcssa:             ; preds = %bary_2comp.exit1014
  %lcmp.mod3460.not = icmp eq i64 %xtraiter3458, 0
  br i1 %lcmp.mod3460.not, label %bary_small_lshift.exit1022, label %bary_2comp.exit1014.epil.preheader

bary_2comp.exit1014.epil.preheader:               ; preds = %bary_small_lshift.exit1022.unr-lcssa, %bary_2comp.exit1014.preheader
  %.015.i1017.epil.init = phi i32 [ 0, %bary_2comp.exit1014.preheader ], [ %i.amm, %bary_small_lshift.exit1022.unr-lcssa ]
  %.01013.i1019.epil.init = phi ptr [ %i.ae, %bary_2comp.exit1014.preheader ], [ %i.amj, %bary_small_lshift.exit1022.unr-lcssa ]
  %lcmp.mod3461 = icmp ne i64 %xtraiter3458, 0
  call void @llvm.assume(i1 %lcmp.mod3461)
  br label %bary_2comp.exit1014.epil

bary_2comp.exit1014.epil:                         ; preds = %bary_2comp.exit1014.epil, %bary_2comp.exit1014.epil.preheader
  %.015.i1017.epil = phi i32 [ %i.amr, %bary_2comp.exit1014.epil ], [ %.015.i1017.epil.init, %bary_2comp.exit1014.epil.preheader ]
  %.01013.i1019.epil = phi ptr [ %i.amn, %bary_2comp.exit1014.epil ], [ %.01013.i1019.epil.init, %bary_2comp.exit1014.epil.preheader ] ; 3 uses
  %epil.iter3459 = phi i64 [ %epil.iter3459.next, %bary_2comp.exit1014.epil ], [ 0, %bary_2comp.exit1014.epil.preheader ]
  %i.amn = getelementptr i8, ptr %.01013.i1019.epil, i64 4
  %i.amo = load i32, ptr %.01013.i1019.epil, align 4, !tbaa !7 ; 2 uses
  %i.amp = shl i32 %i.amo, 1
  %i.amq = or disjoint i32 %i.amp, %.015.i1017.epil
  store i32 %i.amq, ptr %.01013.i1019.epil, align 4, !tbaa !7
  %i.amr = lshr i32 %i.amo, 31
end_hunk_6
begin_hunk_7_@bary_mul_toom3:bb.a
vector.body3034:                                  ; preds = %vector.body3034, %vector.ph3031
  %index3035 = phi i64 [ 0, %vector.ph3031 ], [ %index.next3038, %vector.body3034 ] ; 2 uses
  %i.awr = getelementptr [4 x i8], ptr %i.awq, i64 %index3035 ; 3 uses
  %i.aws = getelementptr i8, ptr %i.awr, i64 16   ; 2 uses
  %wide.load3036 = load <4 x i32>, ptr %i.awr, align 4, !tbaa !7
  %wide.load3037 = load <4 x i32>, ptr %i.aws, align 4, !tbaa !7
  %i.awt = xor <4 x i32> %wide.load3036, splat (i32 -1)
  %i.awu = xor <4 x i32> %wide.load3037, splat (i32 -1)
  store <4 x i32> %i.awt, ptr %i.awr, align 4, !tbaa !7
  store <4 x i32> %i.awu, ptr %i.aws, align 4, !tbaa !7
  %index.next3038 = add nuw i64 %index3035, 8     ; 2 uses
  %i.awv = icmp eq i64 %index.next3038, %n.vec3033
  br i1 %i.awv, label %middle.block3039, label %vector.body3034, !llvm.loop !114

middle.block3039:                                 ; preds = %vector.body3034
  %cmp.n3040 = icmp eq i64 %i.awo, %n.vec3033
  br i1 %cmp.n3040, label %bary_2comp.exit1244, label %.lr.ph26.i1239.preheader3284

.lr.ph26.i1239.preheader3284:                     ; preds = %.lr.ph26.i1239.preheader, %middle.block3039
  %.125.i1240.ph = phi i64 [ %.124.i1237, %.lr.ph26.i1239.preheader ], [ %i.awp, %middle.block3039 ]
  br label %.lr.ph26.i1239

.lr.ph26.i1239:                                   ; preds = %.lr.ph26.i1239.preheader3284, %.lr.ph26.i1239
  %.125.i1240 = phi i64 [ %.1.i1241, %.lr.ph26.i1239 ], [ %.125.i1240.ph, %.lr.ph26.i1239.preheader3284 ] ; 3 uses
  %i.aww = getelementptr [4 x i8], ptr %i.ak, i64 %.125.i1240 ; 2 uses
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !7
  %i.awy = xor i32 %i.awx, -1
  store i32 %i.awy, ptr %i.aww, align 4, !tbaa !7
  %.1.i1241 = add nuw i64 %.125.i1240, 1
  %exitcond31.not.i1242 = icmp eq i64 %.125.i1240, %i.j
  br i1 %exitcond31.not.i1242, label %bary_2comp.exit1244, label %.lr.ph26.i1239, !llvm.loop !115

.lr.ph.i.i1250:                                   ; preds = %.lr.ph.i.i1250.preheader, %.lr.ph.i.i1250
  %.05779.i.i1251 = phi i64 [ %i.axw, %.lr.ph.i.i1250 ], [ 0, %.lr.ph.i.i1250.preheader ] ; 5 uses
  %.05878.i.i1252 = phi i64 [ %i.axv, %.lr.ph.i.i1250 ], [ 0, %.lr.ph.i.i1250.preheader ]
  %niter3516 = phi i64 [ %niter3516.next.1, %.lr.ph.i.i1250 ], [ 0, %.lr.ph.i.i1250.preheader ]
  %i.awz = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1251
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !7
  %i.axb = zext i32 %i.axa to i64
  %i.axc = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1251
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !7
  %i.axe = zext i32 %i.axd to i64
  %i.axf = add nuw nsw i64 %.05878.i.i1252, %i.axb
  %i.axg = add nuw nsw i64 %i.axf, %i.axe         ; 2 uses
  %i.axh = trunc i64 %i.axg to i32
  %i.axi = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1251
  store i32 %i.axh, ptr %i.axi, align 4, !tbaa !7
  %i.axj = lshr i64 %i.axg, 32
  %i.axk = or disjoint i64 %.05779.i.i1251, 1     ; 3 uses
  %i.axl = getelementptr [4 x i8], ptr %i.ag, i64 %i.axk
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !7
  %i.axn = zext i32 %i.axm to i64
  %i.axo = getelementptr [4 x i8], ptr %i.ah, i64 %i.axk
  %i.axp = load i32, ptr %i.axo, align 4, !tbaa !7
  %i.axq = zext i32 %i.axp to i64
  %i.axr = add nuw nsw i64 %i.axj, %i.axn
  %i.axs = add nuw nsw i64 %i.axr, %i.axq         ; 2 uses
  %i.axt = trunc i64 %i.axs to i32
  %i.axu = getelementptr [4 x i8], ptr %i.ak, i64 %i.axk
  store i32 %i.axt, ptr %i.axu, align 4, !tbaa !7
  %i.axv = lshr i64 %i.axs, 32                    ; 2 uses
  %i.axw = add nuw i64 %.05779.i.i1251, 2         ; 2 uses
  %niter3516.next.1 = add i64 %niter3516, 2       ; 2 uses
  %niter3516.ncmp.1 = icmp eq i64 %niter3516.next.1, %i.j
  br i1 %niter3516.ncmp.1, label %.lr.ph.i.i1250.epil, label %.lr.ph.i.i1250, !llvm.loop !34

.lr.ph.i.i1250.epil:                              ; preds = %.lr.ph.i.i1250.preheader, %.lr.ph.i.i1250
  %.05779.i.i1251.epil.init = phi i64 [ 0, %.lr.ph.i.i1250.preheader ], [ %i.axw, %.lr.ph.i.i1250 ] ; 3 uses
  %.05878.i.i1252.epil.init = phi i64 [ 0, %.lr.ph.i.i1250.preheader ], [ %i.axv, %.lr.ph.i.i1250 ]
  %i.axx = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1251.epil.init
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !7
  %i.axz = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1251.epil.init
  %i.aya = load i32, ptr %i.axz, align 4, !tbaa !7
  %i.ayb = trunc nuw nsw i64 %.05878.i.i1252.epil.init to i32
  %i.ayc = add i32 %i.axy, %i.ayb
  %i.ayd = add i32 %i.ayc, %i.aya
  %i.aye = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1251.epil.init
  store i32 %i.ayd, ptr %i.aye, align 4, !tbaa !7
  br label %bary_2comp.exit1244

bary_2comp.exit1244:                              ; preds = %bb.ba, %.lr.ph26.i1239, %.lr.ph.i.i1250.epil, %middle.block3039, %.lr.ph.i.i1199.epil, %bb.bb
  %.not587 = phi i32 [ 0, %.lr.ph.i.i1199.epil ], [ 1, %middle.block3039 ], [ 0, %.lr.ph.i.i1250.epil ], [ 1, %bb.bb ], [ 1, %.lr.ph26.i1239 ], [ 1, %bb.ba ] ; 4 uses
  %.0544 = phi i32 [ 1, %.lr.ph.i.i1199.epil ], [ 0, %middle.block3039 ], [ 1, %.lr.ph.i.i1250.epil ], [ 0, %bb.bb ], [ 0, %.lr.ph26.i1239 ], [ 0, %bb.ba ] ; 5 uses
  %min.iters.check3043 = icmp ult i64 %i.f, 12
  br i1 %min.iters.check3043, label %scalar.ph3042.preheader, label %vector.ph3044

vector.ph3044:                                    ; preds = %bary_2comp.exit1244
  %n.vec3046 = and i64 %i.j, -8                   ; 2 uses
  br label %vector.body3047

vector.body3047:                                  ; preds = %vector.body3047, %vector.ph3044
  %index3048 = phi i64 [ 0, %vector.ph3044 ], [ %index.next3054, %vector.body3047 ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph3044 ], [ %i.ayk, %vector.body3047 ]
  %i.ayf = xor i64 %index3048, -1
  %i.ayg = getelementptr [4 x i8], ptr %i.al, i64 %i.ayf ; 2 uses
  %i.ayh = getelementptr i8, ptr %i.ayg, i64 -12  ; 2 uses
  %i.ayi = getelementptr i8, ptr %i.ayg, i64 -28  ; 2 uses
  %wide.load3049 = load <4 x i32>, ptr %i.ayh, align 4, !tbaa !7
  %wide.load3050 = load <4 x i32>, ptr %i.ayi, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load3049, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3051 = shufflevector <4 x i32> %wide.load3050, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ayj = zext <4 x i32> %reverse to <4 x i64>   ; 3 uses
  %i.ayk = zext <4 x i32> %reverse3051 to <4 x i64> ; 4 uses
  %i.ayl = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.ayj, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aym = shufflevector <4 x i64> %i.ayj, <4 x i64> %i.ayk, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ayn = shl nuw <4 x i64> %i.ayl, splat (i64 32)
  %i.ayo = shl nuw <4 x i64> %i.aym, splat (i64 32)
  %i.ayp = or disjoint <4 x i64> %i.ayn, %i.ayj
  %i.ayq = or disjoint <4 x i64> %i.ayo, %i.ayk
  %i.ayr = lshr <4 x i64> %i.ayp, splat (i64 1)
  %i.ays = lshr <4 x i64> %i.ayq, splat (i64 1)
  %i.ayt = trunc <4 x i64> %i.ayr to <4 x i32>
  %i.ayu = trunc <4 x i64> %i.ays to <4 x i32>
  %reverse3052 = shufflevector <4 x i32> %i.ayt, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3053 = shufflevector <4 x i32> %i.ayu, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse3052, ptr %i.ayh, align 4, !tbaa !7
  store <4 x i32> %reverse3053, ptr %i.ayi, align 4, !tbaa !7
  %index.next3054 = add nuw i64 %index3048, 8     ; 2 uses
  %i.ayv = icmp eq i64 %index.next3054, %n.vec3046
  br i1 %i.ayv, label %middle.block3055, label %vector.body3047, !llvm.loop !116

middle.block3055:                                 ; preds = %vector.body3047
  %vector.recur.extract = extractelement <4 x i64> %i.ayk, i64 3
  br label %scalar.ph3042.preheader

scalar.ph3042.preheader:                          ; preds = %middle.block3055, %bary_2comp.exit1244
  %.017.i1282.ph = phi i64 [ 0, %bary_2comp.exit1244 ], [ %n.vec3046, %middle.block3055 ]
  %.014.in16.i.ph = phi i64 [ 0, %bary_2comp.exit1244 ], [ %vector.recur.extract, %middle.block3055 ]
  br label %scalar.ph3042

scalar.ph3042:                                    ; preds = %scalar.ph3042.preheader, %scalar.ph3042
  %.017.i1282 = phi i64 [ %i.azd, %scalar.ph3042 ], [ %.017.i1282.ph, %scalar.ph3042.preheader ] ; 3 uses
  %.014.in16.i = phi i64 [ %i.ayz, %scalar.ph3042 ], [ %.014.in16.i.ph, %scalar.ph3042.preheader ]
  %.014.i = shl nuw i64 %.014.in16.i, 32
  %i.ayw = xor i64 %.017.i1282, -1
  %i.ayx = getelementptr [4 x i8], ptr %i.al, i64 %i.ayw ; 2 uses
  %i.ayy = load i32, ptr %i.ayx, align 4, !tbaa !7
  %i.ayz = zext i32 %i.ayy to i64                 ; 2 uses
  %i.aza = or disjoint i64 %.014.i, %i.ayz
  %i.azb = lshr i64 %i.aza, 1
  %i.azc = trunc i64 %i.azb to i32
  store i32 %i.azc, ptr %i.ayx, align 4, !tbaa !7
  %i.azd = add nuw i64 %.017.i1282, 1
  %exitcond.not.i1283 = icmp eq i64 %.017.i1282, %i.j
  br i1 %exitcond.not.i1283, label %bary_small_rshift.exit, label %scalar.ph3042, !llvm.loop !117

bary_small_rshift.exit:                           ; preds = %scalar.ph3042
  br i1 %i.arf, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not97.i.i, label %.loopexit74.i.i1300, label %.lr.ph.i.i1285

.lr.ph.i.i1285:                                   ; preds = %bb.bc, %.lr.ph.i.i1285
  %.06278.i.i1286 = phi i64 [ %i.bab, %.lr.ph.i.i1285 ], [ 0, %bb.bc ] ; 5 uses
  %.06377.i.i1287 = phi i64 [ %i.baa, %.lr.ph.i.i1285 ], [ 0, %bb.bc ]
  %i.aze = getelementptr [4 x i8], ptr %i.ah, i64 %.06278.i.i1286
  %i.azf = load i32, ptr %i.aze, align 4, !tbaa !7
  %i.azg = zext i32 %i.azf to i64
  %i.azh = getelementptr [4 x i8], ptr %i.af, i64 %.06278.i.i1286
  %i.azi = load i32, ptr %i.azh, align 4, !tbaa !7
  %i.azj = zext i32 %i.azi to i64
  %i.azk = sub nsw i64 %i.azg, %i.azj
  %i.azl = add nsw i64 %i.azk, %.06377.i.i1287    ; 2 uses
  %i.azm = trunc i64 %i.azl to i32
  %i.azn = getelementptr [4 x i8], ptr %i.al, i64 %.06278.i.i1286
  store i32 %i.azm, ptr %i.azn, align 4, !tbaa !7
  %i.azo = ashr i64 %i.azl, 32
  %i.azp = or disjoint i64 %.06278.i.i1286, 1     ; 3 uses
  %i.azq = getelementptr [4 x i8], ptr %i.ah, i64 %i.azp
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !7
  %i.azs = zext i32 %i.azr to i64
  %i.azt = getelementptr [4 x i8], ptr %i.af, i64 %i.azp
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !7
  %i.azv = zext i32 %i.azu to i64
  %i.azw = sub nsw i64 %i.azs, %i.azv
  %i.azx = add nsw i64 %i.azw, %i.azo             ; 2 uses
  %i.azy = trunc i64 %i.azx to i32
  %i.azz = getelementptr [4 x i8], ptr %i.al, i64 %i.azp
  store i32 %i.azy, ptr %i.azz, align 4, !tbaa !7
  %i.baa = ashr i64 %i.azx, 32                    ; 2 uses
  %i.bab = add nuw i64 %.06278.i.i1286, 2         ; 2 uses
  %exitcond.not.i.i1288.1 = icmp eq i64 %i.bab, %i.j
  br i1 %exitcond.not.i.i1288.1, label %._crit_edge.i.i1289, label %.lr.ph.i.i1285, !llvm.loop !48

._crit_edge.i.i1289:                              ; preds = %.lr.ph.i.i1285
  %i.bac = icmp eq i64 %i.baa, 0
  br i1 %i.bac, label %.loopexit74.i.i1300, label %.loopexit71.i.i1293

.loopexit71.i.i1293:                              ; preds = %._crit_edge.i.i1289
  %i.bad = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bae = load i32, ptr %i.bad, align 4, !tbaa !7
  %i.baf = zext i32 %i.bae to i64
  %i.bag = add nsw i64 %i.baf, -1                 ; 2 uses
  %i.bah = trunc i64 %i.bag to i32
  %i.bai = getelementptr [4 x i8], ptr %i.al, i64 %i.j
  store i32 %i.bah, ptr %i.bai, align 4, !tbaa !7
  %i.baj = icmp ult i64 %i.bag, 4294967296
  br i1 %i.baj, label %.loopexit74.i.i1300, label %.lr.ph.i1320

.loopexit74.i.i1300:                              ; preds = %bb.bc, %._crit_edge.i.i1289, %.loopexit71.i.i1293
  %.5.i.i1301 = phi i64 [ %i.l, %.loopexit71.i.i1293 ], [ %i.j, %._crit_edge.i.i1289 ], [ %i.j, %bb.bc ] ; 6 uses
  %i.bak = icmp ne ptr %i.ah, %i.al
  %i.bal = icmp ule i64 %.5.i.i1301, %i.j
  %or.cond1990 = and i1 %i.bak, %i.bal
  br i1 %or.cond1990, label %.lr.ph93.i.i1308.preheader, label %bary_2comp.exit1330

.lr.ph93.i.i1308.preheader:                       ; preds = %.loopexit74.i.i1300
  %i.bam = sub nuw i64 %i.j, %.5.i.i1301
  %i.ban = add i64 %i.bam, 1                      ; 3 uses
  %min.iters.check3074 = icmp ult i64 %i.ban, 12
  br i1 %min.iters.check3074, label %.lr.ph93.i.i1308.preheader3275, label %vector.memcheck3071

vector.memcheck3071:                              ; preds = %.lr.ph93.i.i1308.preheader
  %18 = shl i64 %i.g, 5
  %19 = or disjoint i64 %18, 19
  %diff.check3072 = icmp ult i64 %19, 31
  br i1 %diff.check3072, label %.lr.ph93.i.i1308.preheader3275, label %vector.ph3075

vector.ph3075:                                    ; preds = %vector.memcheck3071
  %n.vec3077 = and i64 %i.ban, -8                 ; 3 uses
  %i.bao = add i64 %.5.i.i1301, %n.vec3077
  br label %vector.body3078

vector.body3078:                                  ; preds = %vector.body3078, %vector.ph3075
  %index3079 = phi i64 [ 0, %vector.ph3075 ], [ %index.next3082, %vector.body3078 ] ; 2 uses
  %i.bap = add i64 %.5.i.i1301, %index3079        ; 2 uses
  %i.baq = getelementptr [4 x i8], ptr %i.ah, i64 %i.bap ; 2 uses
  %i.bar = getelementptr i8, ptr %i.baq, i64 16
  %wide.load3080 = load <4 x i32>, ptr %i.baq, align 4, !tbaa !7
  %wide.load3081 = load <4 x i32>, ptr %i.bar, align 4, !tbaa !7
  %i.bas = getelementptr [4 x i8], ptr %i.al, i64 %i.bap ; 2 uses
  %i.bat = getelementptr i8, ptr %i.bas, i64 16
  store <4 x i32> %wide.load3080, ptr %i.bas, align 4, !tbaa !7
  store <4 x i32> %wide.load3081, ptr %i.bat, align 4, !tbaa !7
  %index.next3082 = add nuw i64 %index3079, 8     ; 2 uses
  %i.bau = icmp eq i64 %index.next3082, %n.vec3077
  br i1 %i.bau, label %middle.block3083, label %vector.body3078, !llvm.loop !118

middle.block3083:                                 ; preds = %vector.body3078
  %cmp.n3084 = icmp eq i64 %i.ban, %n.vec3077
  br i1 %cmp.n3084, label %bary_2comp.exit1330, label %.lr.ph93.i.i1308.preheader3275

.lr.ph93.i.i1308.preheader3275:                   ; preds = %vector.memcheck3071, %.lr.ph93.i.i1308.preheader, %middle.block3083
  %.692.i.i1309.ph = phi i64 [ %.5.i.i1301, %vector.memcheck3071 ], [ %.5.i.i1301, %.lr.ph93.i.i1308.preheader ], [ %i.bao, %middle.block3083 ] ; 4 uses
  %i.bav = or disjoint i64 %i.j, 1
  %i.baw = sub i64 %i.bav, %.692.i.i1309.ph
  %i.bax = sub i64 %i.j, %.692.i.i1309.ph
  %xtraiter3524 = and i64 %i.baw, 3               ; 2 uses
  %lcmp.mod3525.not = icmp eq i64 %xtraiter3524, 0
  br i1 %lcmp.mod3525.not, label %.lr.ph93.i.i1308.prol.loopexit, label %.lr.ph93.i.i1308.prol

.lr.ph93.i.i1308.prol:                            ; preds = %.lr.ph93.i.i1308.preheader3275, %.lr.ph93.i.i1308.prol
  %.692.i.i1309.prol = phi i64 [ %i.bbb, %.lr.ph93.i.i1308.prol ], [ %.692.i.i1309.ph, %.lr.ph93.i.i1308.preheader3275 ] ; 3 uses
  %prol.iter3526 = phi i64 [ %prol.iter3526.next, %.lr.ph93.i.i1308.prol ], [ 0, %.lr.ph93.i.i1308.preheader3275 ]
  %i.bay = getelementptr [4 x i8], ptr %i.ah, i64 %.692.i.i1309.prol
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !7
  %i.bba = getelementptr [4 x i8], ptr %i.al, i64 %.692.i.i1309.prol
  store i32 %i.baz, ptr %i.bba, align 4, !tbaa !7
  %i.bbb = add nuw i64 %.692.i.i1309.prol, 1      ; 2 uses
  %prol.iter3526.next = add i64 %prol.iter3526, 1 ; 2 uses
  %prol.iter3526.cmp.not = icmp eq i64 %prol.iter3526.next, %xtraiter3524
  br i1 %prol.iter3526.cmp.not, label %.lr.ph93.i.i1308.prol.loopexit, label %.lr.ph93.i.i1308.prol, !llvm.loop !119

.lr.ph93.i.i1308.prol.loopexit:                   ; preds = %.lr.ph93.i.i1308.prol, %.lr.ph93.i.i1308.preheader3275
  %.692.i.i1309.unr = phi i64 [ %.692.i.i1309.ph, %.lr.ph93.i.i1308.preheader3275 ], [ %i.bbb, %.lr.ph93.i.i1308.prol ]
  %i.bbc = icmp ult i64 %i.bax, 3
  br i1 %i.bbc, label %bary_2comp.exit1330, label %.lr.ph93.i.i1308

.lr.ph93.i.i1308:                                 ; preds = %.lr.ph93.i.i1308.prol.loopexit, %.lr.ph93.i.i1308
  %.692.i.i1309 = phi i64 [ %i.bbs, %.lr.ph93.i.i1308 ], [ %.692.i.i1309.unr, %.lr.ph93.i.i1308.prol.loopexit ] ; 6 uses
  %i.bbd = getelementptr [4 x i8], ptr %i.ah, i64 %.692.i.i1309
  %i.bbe = load i32, ptr %i.bbd, align 4, !tbaa !7
  %i.bbf = getelementptr [4 x i8], ptr %i.al, i64 %.692.i.i1309
  store i32 %i.bbe, ptr %i.bbf, align 4, !tbaa !7
  %i.bbg = add nuw i64 %.692.i.i1309, 1           ; 2 uses
  %i.bbh = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbg
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !7
  %i.bbj = getelementptr [4 x i8], ptr %i.al, i64 %i.bbg
  store i32 %i.bbi, ptr %i.bbj, align 4, !tbaa !7
  %i.bbk = add nuw i64 %.692.i.i1309, 2           ; 2 uses
  %i.bbl = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbk
  %i.bbm = load i32, ptr %i.bbl, align 4, !tbaa !7
  %i.bbn = getelementptr [4 x i8], ptr %i.al, i64 %i.bbk
  store i32 %i.bbm, ptr %i.bbn, align 4, !tbaa !7
  %i.bbo = add nuw i64 %.692.i.i1309, 3           ; 3 uses
  %i.bbp = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbo
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !7
  %i.bbr = getelementptr [4 x i8], ptr %i.al, i64 %i.bbo
  store i32 %i.bbq, ptr %i.bbr, align 4, !tbaa !7
  %i.bbs = add nuw i64 %.692.i.i1309, 4
  %exitcond111.not.i.i1310.3 = icmp eq i64 %i.bbo, %i.j
  br i1 %exitcond111.not.i.i1310.3, label %bary_2comp.exit1330, label %.lr.ph93.i.i1308, !llvm.loop !120

.lr.ph.i1320:                                     ; preds = %.loopexit71.i.i1293, %bb.bd
  %.023.i1321 = phi i64 [ %i.bbv, %bb.bd ], [ 0, %.loopexit71.i.i1293 ] ; 6 uses
  %i.bbt = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1321
  %i.bbu = load i32, ptr %i.bbt, align 4, !tbaa !7 ; 2 uses
  %.not.i1322 = icmp eq i32 %i.bbu, 0
  br i1 %.not.i1322, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i1320
  %i.bbv = add nuw i64 %.023.i1321, 1
  %exitcond.not.i1329 = icmp eq i64 %.023.i1321, %i.j
  br i1 %exitcond.not.i1329, label %bary_2comp.exit1330.thr_comm, label %.lr.ph.i1320, !llvm.loop !55

bb.be:                                            ; preds = %.lr.ph.i1320
  %i.bbw = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1321
  %i.bbx = sub i32 0, %i.bbu
  store i32 %i.bbx, ptr %i.bbw, align 4, !tbaa !7
  %.124.i1323 = add i64 %.023.i1321, 1            ; 4 uses
  %.not2016 = icmp ugt i64 %.124.i1323, %i.j
  br i1 %.not2016, label %bary_2comp.exit1330.thr_comm, label %.lr.ph26.i1325.preheader

.lr.ph26.i1325.preheader:                         ; preds = %bb.be
  %i.bby = sub i64 %i.j, %.023.i1321              ; 3 uses
  %min.iters.check3059 = icmp ult i64 %i.bby, 8
  br i1 %min.iters.check3059, label %.lr.ph26.i1325.preheader3276, label %vector.ph3060

vector.ph3060:                                    ; preds = %.lr.ph26.i1325.preheader
  %n.vec3062 = and i64 %i.bby, -8                 ; 3 uses
  %i.bbz = add i64 %.124.i1323, %n.vec3062
  %i.bca = getelementptr [4 x i8], ptr %i.al, i64 %.124.i1323
  br label %vector.body3063

vector.body3063:                                  ; preds = %vector.body3063, %vector.ph3060
  %index3064 = phi i64 [ 0, %vector.ph3060 ], [ %index.next3067, %vector.body3063 ] ; 2 uses
  %i.bcb = getelementptr [4 x i8], ptr %i.bca, i64 %index3064 ; 3 uses
  %i.bcc = getelementptr i8, ptr %i.bcb, i64 16   ; 2 uses
  %wide.load3065 = load <4 x i32>, ptr %i.bcb, align 4, !tbaa !7
  %wide.load3066 = load <4 x i32>, ptr %i.bcc, align 4, !tbaa !7
  %i.bcd = xor <4 x i32> %wide.load3065, splat (i32 -1)
  %i.bce = xor <4 x i32> %wide.load3066, splat (i32 -1)
  store <4 x i32> %i.bcd, ptr %i.bcb, align 4, !tbaa !7
  store <4 x i32> %i.bce, ptr %i.bcc, align 4, !tbaa !7
  %index.next3067 = add nuw i64 %index3064, 8     ; 2 uses
  %i.bcf = icmp eq i64 %index.next3067, %n.vec3062
  br i1 %i.bcf, label %middle.block3068, label %vector.body3063, !llvm.loop !121

middle.block3068:                                 ; preds = %vector.body3063
  %cmp.n3069 = icmp eq i64 %i.bby, %n.vec3062
  br i1 %cmp.n3069, label %bary_2comp.exit1330.thr_comm, label %.lr.ph26.i1325.preheader3276

.lr.ph26.i1325.preheader3276:                     ; preds = %.lr.ph26.i1325.preheader, %middle.block3068
  %.125.i1326.ph = phi i64 [ %.124.i1323, %.lr.ph26.i1325.preheader ], [ %i.bbz, %middle.block3068 ]
  br label %.lr.ph26.i1325

.lr.ph26.i1325:                                   ; preds = %.lr.ph26.i1325.preheader3276, %.lr.ph26.i1325
  %.125.i1326 = phi i64 [ %.1.i1327, %.lr.ph26.i1325 ], [ %.125.i1326.ph, %.lr.ph26.i1325.preheader3276 ] ; 3 uses
  %i.bcg = getelementptr [4 x i8], ptr %i.al, i64 %.125.i1326 ; 2 uses
  %i.bch = load i32, ptr %i.bcg, align 4, !tbaa !7
  %i.bci = xor i32 %i.bch, -1
  store i32 %i.bci, ptr %i.bcg, align 4, !tbaa !7
  %.1.i1327 = add nuw i64 %.125.i1326, 1
  %exitcond31.not.i1328 = icmp eq i64 %.125.i1326, %i.j
  br i1 %exitcond31.not.i1328, label %bary_2comp.exit1330.thr_comm, label %.lr.ph26.i1325, !llvm.loop !122

bb.bf:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not97.i.i, label %.loopexit71.i.i1350, label %.lr.ph.i.i1336

.preheader72.i.i1340:                             ; preds = %.lr.ph.i.i1336
  %i.bcj = icmp eq i64 %i.bdg, 0
  br i1 %i.bcj, label %.loopexit71.i.i1350, label %bary_2comp.exit1330.thr_comm.loopexit2229

.lr.ph.i.i1336:                                   ; preds = %bb.bf, %.lr.ph.i.i1336
  %.05779.i.i1337 = phi i64 [ %i.bdh, %.lr.ph.i.i1336 ], [ 0, %bb.bf ] ; 5 uses
  %.05878.i.i1338 = phi i64 [ %i.bdg, %.lr.ph.i.i1336 ], [ 0, %bb.bf ]
  %i.bck = getelementptr [4 x i8], ptr %i.af, i64 %.05779.i.i1337
  %i.bcl = load i32, ptr %i.bck, align 4, !tbaa !7
  %i.bcm = zext i32 %i.bcl to i64
  %i.bcn = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1337
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !7
  %i.bcp = zext i32 %i.bco to i64
  %i.bcq = add nuw nsw i64 %.05878.i.i1338, %i.bcm
  %i.bcr = add nuw nsw i64 %i.bcq, %i.bcp         ; 2 uses
  %i.bcs = trunc i64 %i.bcr to i32
  %i.bct = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1337
  store i32 %i.bcs, ptr %i.bct, align 4, !tbaa !7
  %i.bcu = lshr i64 %i.bcr, 32
  %i.bcv = or disjoint i64 %.05779.i.i1337, 1     ; 3 uses
  %i.bcw = getelementptr [4 x i8], ptr %i.af, i64 %i.bcv
  %i.bcx = load i32, ptr %i.bcw, align 4, !tbaa !7
  %i.bcy = zext i32 %i.bcx to i64
  %i.bcz = getelementptr [4 x i8], ptr %i.ah, i64 %i.bcv
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !7
  %i.bdb = zext i32 %i.bda to i64
  %i.bdc = add nuw nsw i64 %i.bcu, %i.bcy
  %i.bdd = add nuw nsw i64 %i.bdc, %i.bdb         ; 2 uses
  %i.bde = trunc i64 %i.bdd to i32
  %i.bdf = getelementptr [4 x i8], ptr %i.al, i64 %i.bcv
  store i32 %i.bde, ptr %i.bdf, align 4, !tbaa !7
  %i.bdg = lshr i64 %i.bdd, 32                    ; 2 uses
  %i.bdh = add nuw i64 %.05779.i.i1337, 2         ; 2 uses
  %exitcond.not.i.i1339.1 = icmp eq i64 %i.bdh, %i.j
  br i1 %exitcond.not.i.i1339.1, label %.preheader72.i.i1340, label %.lr.ph.i.i1336, !llvm.loop !34

bary_2comp.exit1330.thr_comm.loopexit2229:        ; preds = %.preheader72.i.i1340
  %i.bdi = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !7
  %i.bdk = add i32 %i.bdj, 1
  br label %bary_2comp.exit1330.thr_comm.sink.split

.loopexit71.i.i1350:                              ; preds = %bb.bf, %.preheader72.i.i1340
  %i.bdl = icmp eq ptr %i.ah, %i.al
  br i1 %i.bdl, label %bary_2comp.exit1330.thr_comm, label %.preheader.i.i1354

.preheader.i.i1354:                               ; preds = %.loopexit71.i.i1350
  %i.bdm = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bdn = load i32, ptr %i.bdm, align 4, !tbaa !7
  br label %bary_2comp.exit1330.thr_comm.sink.split

bary_2comp.exit1330.thr_comm.sink.split:          ; preds = %bary_2comp.exit1330.thr_comm.loopexit2229, %.preheader.i.i1354
  %.sink = phi i32 [ %i.bdn, %.preheader.i.i1354 ], [ %i.bdk, %bary_2comp.exit1330.thr_comm.loopexit2229 ]
  %i.bdo = getelementptr [4 x i8], ptr %i.al, i64 %i.j
  store i32 %.sink, ptr %i.bdo, align 4, !tbaa !7
  br label %bary_2comp.exit1330.thr_comm

bary_2comp.exit1330.thr_comm:                     ; preds = %bb.bd, %.lr.ph26.i1325, %middle.block3068, %bary_2comp.exit1330.thr_comm.sink.split, %.loopexit71.i.i1350, %bb.be
  br i1 %.0536.shrunk, label %bb.bj, label %bb.bg

bary_2comp.exit1330:                              ; preds = %.lr.ph93.i.i1308.prol.loopexit, %.lr.ph93.i.i1308, %middle.block3083, %.loopexit74.i.i1300
  br i1 %.0536.shrunk, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bary_2comp.exit1330.thr_comm, %bary_2comp.exit1330
  %.05391976 = phi i32 [ 0, %bary_2comp.exit1330.thr_comm ], [ 1, %bary_2comp.exit1330 ] ; 3 uses
  %.0539.shrunk1972 = phi i1 [ false, %bary_2comp.exit1330.thr_comm ], [ true, %bary_2comp.exit1330 ] ; 3 uses
  %i.bdp = icmp ult i64 %i.f, 3
  br i1 %i.bdp, label %.lr.ph.i.i1367.epil, label %.lr.ph.i.i1367

.lr.ph.i.i1367:                                   ; preds = %bb.bg, %.lr.ph.i.i1367
  %.06278.i.i1368 = phi i64 [ %i.bel, %.lr.ph.i.i1367 ], [ 0, %bb.bg ] ; 4 uses
  %.06377.i.i1369 = phi i64 [ %i.bek, %.lr.ph.i.i1367 ], [ 0, %bb.bg ]
  %niter3540 = phi i64 [ %niter3540.next.1, %.lr.ph.i.i1367 ], [ 0, %bb.bg ]
  %i.bdq = getelementptr [4 x i8], ptr %i.al, i64 %.06278.i.i1368
  %i.bdr = load i32, ptr %i.bdq, align 4, !tbaa !7
  %i.bds = zext i32 %i.bdr to i64
  %i.bdt = getelementptr [4 x i8], ptr %i.am, i64 %.06278.i.i1368 ; 2 uses
  %i.bdu = load i32, ptr %i.bdt, align 4, !tbaa !7
  %i.bdv = zext i32 %i.bdu to i64
  %i.bdw = sub nsw i64 %i.bds, %i.bdv
  %i.bdx = add nsw i64 %i.bdw, %.06377.i.i1369    ; 2 uses
  %i.bdy = trunc i64 %i.bdx to i32
  store i32 %i.bdy, ptr %i.bdt, align 4, !tbaa !7
  %i.bdz = ashr i64 %i.bdx, 32
  %i.bea = or disjoint i64 %.06278.i.i1368, 1     ; 2 uses
end_hunk_7
begin_hunk_8_@bary_mul_toom3:bb.a
  %i.bsj = trunc i64 %i.bsi to i32
  store i32 %i.bsj, ptr %i.bsb, align 4, !tbaa !7
  %i.bsk = lshr i64 %i.bsi, 32                    ; 2 uses
  %i.bsl = add nuw i64 %.05779.i.i1690, 2         ; 2 uses
  %niter3559.next.1 = add i64 %niter3559, 2       ; 2 uses
  %niter3559.ncmp.1 = icmp eq i64 %niter3559.next.1, %i.j
  br i1 %niter3559.ncmp.1, label %.lr.ph.i.i1689.epil, label %.lr.ph.i.i1689, !llvm.loop !34

.lr.ph.i.i1689.epil:                              ; preds = %.lr.ph.i.i1689.preheader, %.lr.ph.i.i1689
  %.05779.i.i1690.epil.init = phi i64 [ 0, %.lr.ph.i.i1689.preheader ], [ %i.bsl, %.lr.ph.i.i1689 ] ; 2 uses
  %.05878.i.i1691.epil.init = phi i64 [ 0, %.lr.ph.i.i1689.preheader ], [ %i.bsk, %.lr.ph.i.i1689 ]
  %i.bsm = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1690.epil.init ; 2 uses
  %i.bsn = load i32, ptr %i.bsm, align 4, !tbaa !7
  %i.bso = getelementptr [4 x i8], ptr %i.am, i64 %.05779.i.i1690.epil.init
  %i.bsp = load i32, ptr %i.bso, align 4, !tbaa !7
  %i.bsq = trunc nuw nsw i64 %.05878.i.i1691.epil.init to i32
  %i.bsr = add i32 %i.bsn, %i.bsq
  %i.bss = add i32 %i.bsr, %i.bsp
  store i32 %i.bss, ptr %i.bsm, align 4, !tbaa !7
  br label %bary_2comp.exit1683

bary_2comp.exit1683:                              ; preds = %bb.bz, %.lr.ph26.i1678, %.lr.ph.i.i1689.epil, %middle.block3168, %.lr.ph.i.i1638.epil, %bb.ca
  %.1545 = phi i32 [ %.0544, %.lr.ph.i.i1638.epil ], [ %.not587, %middle.block3168 ], [ %.0544, %.lr.ph.i.i1689.epil ], [ %.not587, %bb.ca ], [ %.not587, %.lr.ph26.i1678 ], [ %.not587, %bb.bz ]
  %i.bst = icmp ugt i64 %i.f, 6917529027641081855
  br i1 %i.bst, label %bb.cb, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.cb:                                            ; preds = %bary_2comp.exit1683
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.j) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bary_2comp.exit1683
  %i.bsu = shl i64 %i.g, 3                        ; 4 uses
  %.not.i1719 = icmp eq i64 %i.bsu, 0             ; 2 uses
  br i1 %.not.i1719, label %ruby_nonempty_memcpy.exit, label %bb.cc

bb.cc:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0532, ptr noundef nonnull readonly align 1 %i.af, i64 noundef range(i64 1, 0) %i.bsu, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.cc
  %i.bsv = getelementptr [4 x i8], ptr %.0532, i64 %i.j ; 26 uses
  br i1 %.not97.i.i, label %rbimpl_size_mul_or_raise.exit1720, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %ruby_nonempty_memcpy.exit
  call void @llvm.memset.p0.i64(ptr align 4 %i.bsv, i8 0, i64 %i.bsu, i1 false), !tbaa !7
  br label %rbimpl_size_mul_or_raise.exit1720

rbimpl_size_mul_or_raise.exit1720:                ; preds = %.lr.ph.preheader, %ruby_nonempty_memcpy.exit
  %.idx = shl i64 %i.g, 4
  %i.bsw = getelementptr i8, ptr %.0532, i64 %.idx ; 2 uses
  br i1 %.not.i1719, label %ruby_nonempty_memcpy.exit1723, label %bb.cd

bb.cd:                                            ; preds = %rbimpl_size_mul_or_raise.exit1720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bsw, ptr noundef nonnull readonly align 1 %i.aj, i64 noundef range(i64 1, 0) %i.bsu, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit1723

ruby_nonempty_memcpy.exit1723:                    ; preds = %rbimpl_size_mul_or_raise.exit1720, %bb.cd
  %i.bsx = getelementptr [4 x i8], ptr %i.bsw, i64 %i.j
  store i32 0, ptr %i.bsx, align 4, !tbaa !7
  %.not590 = icmp eq i32 %.1545, 0
  %i.bsy = getelementptr [4 x i8], ptr %.0532, i64 %i.g ; 21 uses
  %i.bsz = sub i64 %i.aq, %i.g                    ; 16 uses
  br i1 %.not590, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %ruby_nonempty_memcpy.exit1723
  %i.bta = icmp ugt i64 %i.bsz, %i.l
  br i1 %i.bta, label %.lr.ph.i.i1729.preheader, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.not.i.i1728 = icmp eq i64 %i.bsz, 0
  br i1 %.not.i.i1728, label %.preheader72.i.i1733, label %.lr.ph.i.i1729.preheader

.lr.ph.i.i1729.preheader:                         ; preds = %bb.ce, %bb.cf
  %.061.i.i17272541 = phi ptr [ %i.bsy, %bb.cf ], [ %i.ak, %bb.ce ] ; 3 uses
  %.062.i.i17262539 = phi i64 [ %i.l, %bb.cf ], [ %i.bsz, %bb.ce ] ; 2 uses
  %.063.i.i17252537 = phi ptr [ %i.ak, %bb.cf ], [ %i.bsy, %bb.ce ] ; 5 uses
  %.064.i.i17242535 = phi i64 [ %i.bsz, %bb.cf ], [ %i.l, %bb.ce ] ; 6 uses
  %xtraiter3567 = and i64 %.064.i.i17242535, 1
  %i.btb = icmp eq i64 %.064.i.i17242535, 1
  br i1 %i.btb, label %.lr.ph.i.i1729.epil.preheader, label %.lr.ph.i.i1729.preheader.new

.lr.ph.i.i1729.preheader.new:                     ; preds = %.lr.ph.i.i1729.preheader
  %unroll_iter3572 = and i64 %.064.i.i17242535, -2
  br label %.lr.ph.i.i1729

.preheader72.i.i1733.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i1729
  %lcmp.mod3569.not = icmp eq i64 %xtraiter3567, 0
  br i1 %lcmp.mod3569.not, label %.preheader72.i.i1733, label %.lr.ph.i.i1729.epil.preheader

.lr.ph.i.i1729.epil.preheader:                    ; preds = %.preheader72.i.i1733.loopexit.unr-lcssa, %.lr.ph.i.i1729.preheader
  %.05779.i.i1730.epil.init = phi i64 [ 0, %.lr.ph.i.i1729.preheader ], [ %i.bul, %.preheader72.i.i1733.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i1731.epil.init = phi i64 [ 0, %.lr.ph.i.i1729.preheader ], [ %i.buk, %.preheader72.i.i1733.loopexit.unr-lcssa ]
  %lcmp.mod3571 = trunc i64 %.064.i.i17242535 to i1
  call void @llvm.assume(i1 %lcmp.mod3571)
  %i.btc = getelementptr [4 x i8], ptr %.061.i.i17272541, i64 %.05779.i.i1730.epil.init
  %i.btd = load i32, ptr %i.btc, align 4, !tbaa !7
  %i.bte = zext i32 %i.btd to i64
  %i.btf = getelementptr [4 x i8], ptr %.063.i.i17252537, i64 %.05779.i.i1730.epil.init
  %i.btg = load i32, ptr %i.btf, align 4, !tbaa !7
  %i.bth = zext i32 %i.btg to i64
  %i.bti = add nuw nsw i64 %.05878.i.i1731.epil.init, %i.bte
  %i.btj = add nuw nsw i64 %i.bti, %i.bth         ; 2 uses
  %i.btk = trunc i64 %i.btj to i32
  %i.btl = getelementptr [4 x i8], ptr %i.bsy, i64 %.05779.i.i1730.epil.init
  store i32 %i.btk, ptr %i.btl, align 4, !tbaa !7
  %i.btm = lshr i64 %i.btj, 32
  br label %.preheader72.i.i1733

.preheader72.i.i1733:                             ; preds = %.lr.ph.i.i1729.epil.preheader, %.preheader72.i.i1733.loopexit.unr-lcssa, %bb.cf
  %.062.i.i17262540 = phi i64 [ %i.l, %bb.cf ], [ %.062.i.i17262539, %.preheader72.i.i1733.loopexit.unr-lcssa ], [ %.062.i.i17262539, %.lr.ph.i.i1729.epil.preheader ] ; 12 uses
  %.063.i.i17252538 = phi ptr [ %i.ak, %bb.cf ], [ %.063.i.i17252537, %.preheader72.i.i1733.loopexit.unr-lcssa ], [ %.063.i.i17252537, %.lr.ph.i.i1729.epil.preheader ] ; 9 uses
  %.064.i.i17242536 = phi i64 [ 0, %bb.cf ], [ %.064.i.i17242535, %.preheader72.i.i1733.loopexit.unr-lcssa ], [ %.064.i.i17242535, %.lr.ph.i.i1729.epil.preheader ] ; 3 uses
  %.058.lcssa.i.i1734 = phi i64 [ 0, %bb.cf ], [ %i.buk, %.preheader72.i.i1733.loopexit.unr-lcssa ], [ %i.btm, %.lr.ph.i.i1729.epil.preheader ] ; 2 uses
  %.063.i.i172525383172 = ptrtoaddr ptr %.063.i.i17252538 to i64
  %i.btn = icmp ult i64 %.064.i.i17242536, %.062.i.i17262540
  br i1 %i.btn, label %.lr.ph83.i.i1754, label %.preheader70.i.i1735

.lr.ph.i.i1729:                                   ; preds = %.lr.ph.i.i1729, %.lr.ph.i.i1729.preheader.new
  %.05779.i.i1730 = phi i64 [ 0, %.lr.ph.i.i1729.preheader.new ], [ %i.bul, %.lr.ph.i.i1729 ] ; 5 uses
  %.05878.i.i1731 = phi i64 [ 0, %.lr.ph.i.i1729.preheader.new ], [ %i.buk, %.lr.ph.i.i1729 ]
  %niter3573 = phi i64 [ 0, %.lr.ph.i.i1729.preheader.new ], [ %niter3573.next.1, %.lr.ph.i.i1729 ]
  %i.bto = getelementptr [4 x i8], ptr %.061.i.i17272541, i64 %.05779.i.i1730
  %i.btp = load i32, ptr %i.bto, align 4, !tbaa !7
  %i.btq = zext i32 %i.btp to i64
  %i.btr = getelementptr [4 x i8], ptr %.063.i.i17252537, i64 %.05779.i.i1730
  %i.bts = load i32, ptr %i.btr, align 4, !tbaa !7
  %i.btt = zext i32 %i.bts to i64
  %i.btu = add nuw nsw i64 %.05878.i.i1731, %i.btq
  %i.btv = add nuw nsw i64 %i.btu, %i.btt         ; 2 uses
  %i.btw = trunc i64 %i.btv to i32
  %i.btx = getelementptr [4 x i8], ptr %i.bsy, i64 %.05779.i.i1730
  store i32 %i.btw, ptr %i.btx, align 4, !tbaa !7
  %i.bty = lshr i64 %i.btv, 32
  %i.btz = or disjoint i64 %.05779.i.i1730, 1     ; 3 uses
  %i.bua = getelementptr [4 x i8], ptr %.061.i.i17272541, i64 %i.btz
  %i.bub = load i32, ptr %i.bua, align 4, !tbaa !7
  %i.buc = zext i32 %i.bub to i64
  %i.bud = getelementptr [4 x i8], ptr %.063.i.i17252537, i64 %i.btz
  %i.bue = load i32, ptr %i.bud, align 4, !tbaa !7
  %i.buf = zext i32 %i.bue to i64
  %i.bug = add nuw nsw i64 %i.bty, %i.buc
  %i.buh = add nuw nsw i64 %i.bug, %i.buf         ; 2 uses
  %i.bui = trunc i64 %i.buh to i32
  %i.buj = getelementptr [4 x i8], ptr %i.bsy, i64 %i.btz
  store i32 %i.bui, ptr %i.buj, align 4, !tbaa !7
  %i.buk = lshr i64 %i.buh, 32                    ; 3 uses
  %i.bul = add nuw i64 %.05779.i.i1730, 2         ; 2 uses
  %niter3573.next.1 = add i64 %niter3573, 2       ; 2 uses
  %niter3573.ncmp.1 = icmp eq i64 %niter3573.next.1, %unroll_iter3572
  br i1 %niter3573.ncmp.1, label %.preheader72.i.i1733.loopexit.unr-lcssa, label %.lr.ph.i.i1729, !llvm.loop !34

.preheader70.i.i1735:                             ; preds = %bb.ch, %.preheader72.i.i1733
  %.159.lcssa.i.i1736 = phi i64 [ %.058.lcssa.i.i1734, %.preheader72.i.i1733 ], [ %i.bux, %bb.ch ]
  %.1.lcssa.i.i1737 = phi i64 [ %.064.i.i17242536, %.preheader72.i.i1733 ], [ %.062.i.i17262540, %bb.ch ] ; 4 uses
  %i.bum = icmp ult i64 %.1.lcssa.i.i1737, %i.bsz
  br i1 %i.bum, label %.lr.ph88.preheader.i.i1741, label %bary_add.exit1758

.lr.ph88.preheader.i.i1741:                       ; preds = %.preheader70.i.i1735
  %i.bun = icmp eq i64 %.159.lcssa.i.i1736, 0
  br i1 %i.bun, label %.loopexit71.i.i1743, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph88.preheader.i.i1741
  %i.buo = getelementptr [4 x i8], ptr %i.bsy, i64 %.1.lcssa.i.i1737
  store i32 1, ptr %i.buo, align 4, !tbaa !7
  %i.bup = add nuw i64 %.1.lcssa.i.i1737, 1       ; 2 uses
  %exitcond103.peel.not.i.i1742 = icmp eq i64 %i.bup, %i.bsz
  br i1 %exitcond103.peel.not.i.i1742, label %bary_add.exit1758, label %.loopexit71.i.i1743

.lr.ph83.i.i1754:                                 ; preds = %.preheader72.i.i1733, %bb.ch
  %.182.i.i1755 = phi i64 [ %i.buy, %bb.ch ], [ %.064.i.i17242536, %.preheader72.i.i1733 ] ; 4 uses
  %.15981.i.i1756 = phi i64 [ %i.bux, %bb.ch ], [ %.058.lcssa.i.i1734, %.preheader72.i.i1733 ]
  %i.buq = icmp eq i64 %.15981.i.i1756, 0
  br i1 %i.buq, label %.loopexit71.i.i1743, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph83.i.i1754
  %i.bur = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %.182.i.i1755
  %i.bus = load i32, ptr %i.bur, align 4, !tbaa !7
  %i.but = zext i32 %i.bus to i64
  %i.buu = add nuw nsw i64 %i.but, 1              ; 2 uses
  %i.buv = trunc i64 %i.buu to i32
  %i.buw = getelementptr [4 x i8], ptr %i.bsy, i64 %.182.i.i1755
  store i32 %i.buv, ptr %i.buw, align 4, !tbaa !7
  %i.bux = lshr i64 %i.buu, 32                    ; 2 uses
  %i.buy = add i64 %.182.i.i1755, 1               ; 2 uses
  %exitcond102.not.i.i1757 = icmp eq i64 %i.buy, %.062.i.i17262540
  br i1 %exitcond102.not.i.i1757, label %.preheader70.i.i1735, label %.lr.ph83.i.i1754, !llvm.loop !36

.loopexit71.i.i1743:                              ; preds = %.lr.ph83.i.i1754, %bb.cg, %.lr.ph88.preheader.i.i1741
  %.3.i.i1744 = phi i64 [ %i.bup, %bb.cg ], [ %.1.lcssa.i.i1737, %.lr.ph88.preheader.i.i1741 ], [ %.182.i.i1755, %.lr.ph83.i.i1754 ] ; 7 uses
  %i.buz = icmp eq ptr %.063.i.i17252538, %i.bsy
  %i.bva = icmp eq i64 %.062.i.i17262540, %i.bsz
  %or.cond.i.i1745 = and i1 %i.buz, %i.bva
  br i1 %or.cond.i.i1745, label %bary_add.exit1758, label %.preheader69.i.i1746

.preheader69.i.i1746:                             ; preds = %.loopexit71.i.i1743
  %i.bvb = icmp ult i64 %.3.i.i1744, %.062.i.i17262540
  br i1 %i.bvb, label %.lr.ph91.i.i1751.preheader, label %.preheader.i.i1747

.lr.ph91.i.i1751.preheader:                       ; preds = %.preheader69.i.i1746
  %i.bvc = sub nuw i64 %.062.i.i17262540, %.3.i.i1744 ; 3 uses
  %min.iters.check3175 = icmp ult i64 %i.bvc, 16
  br i1 %min.iters.check3175, label %.lr.ph91.i.i1751.preheader3235, label %vector.memcheck3171

vector.memcheck3171:                              ; preds = %.lr.ph91.i.i1751.preheader
  %i.bvd = shl nuw i64 %i.g, 2
  %i.bve = add i64 %i.bvd, %.05322856
  %i.bvf = sub i64 %.063.i.i172525383172, %i.bve
  %diff.check3173 = icmp ugt i64 %i.bvf, -32
  br i1 %diff.check3173, label %.lr.ph91.i.i1751.preheader3235, label %vector.ph3176

vector.ph3176:                                    ; preds = %vector.memcheck3171
  %n.vec3178 = and i64 %i.bvc, -8                 ; 3 uses
  %i.bvg = add i64 %.3.i.i1744, %n.vec3178
  br label %vector.body3179

vector.body3179:                                  ; preds = %vector.body3179, %vector.ph3176
  %index3180 = phi i64 [ 0, %vector.ph3176 ], [ %index.next3183, %vector.body3179 ] ; 2 uses
  %i.bvh = add i64 %.3.i.i1744, %index3180        ; 2 uses
  %i.bvi = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %i.bvh ; 2 uses
  %i.bvj = getelementptr i8, ptr %i.bvi, i64 16
  %wide.load3181 = load <4 x i32>, ptr %i.bvi, align 4, !tbaa !7
  %wide.load3182 = load <4 x i32>, ptr %i.bvj, align 4, !tbaa !7
  %i.bvk = getelementptr [4 x i8], ptr %i.bsy, i64 %i.bvh ; 2 uses
  %i.bvl = getelementptr i8, ptr %i.bvk, i64 16
  store <4 x i32> %wide.load3181, ptr %i.bvk, align 4, !tbaa !7
  store <4 x i32> %wide.load3182, ptr %i.bvl, align 4, !tbaa !7
  %index.next3183 = add nuw i64 %index3180, 8     ; 2 uses
  %i.bvm = icmp eq i64 %index.next3183, %n.vec3178
  br i1 %i.bvm, label %middle.block3184, label %vector.body3179, !llvm.loop !136

middle.block3184:                                 ; preds = %vector.body3179
  %cmp.n3185 = icmp eq i64 %i.bvc, %n.vec3178
  br i1 %cmp.n3185, label %.preheader.i.i1747, label %.lr.ph91.i.i1751.preheader3235

.lr.ph91.i.i1751.preheader3235:                   ; preds = %vector.memcheck3171, %.lr.ph91.i.i1751.preheader, %middle.block3184
  %.490.i.i1752.ph = phi i64 [ %.3.i.i1744, %vector.memcheck3171 ], [ %.3.i.i1744, %.lr.ph91.i.i1751.preheader ], [ %i.bvg, %middle.block3184 ] ; 4 uses
  %i.bvn = sub i64 %.062.i.i17262540, %.490.i.i1752.ph
  %xtraiter3574 = and i64 %i.bvn, 3               ; 2 uses
  %lcmp.mod3575.not = icmp eq i64 %xtraiter3574, 0
  br i1 %lcmp.mod3575.not, label %.lr.ph91.i.i1751.prol.loopexit, label %.lr.ph91.i.i1751.prol

.lr.ph91.i.i1751.prol:                            ; preds = %.lr.ph91.i.i1751.preheader3235, %.lr.ph91.i.i1751.prol
  %.490.i.i1752.prol = phi i64 [ %i.bvr, %.lr.ph91.i.i1751.prol ], [ %.490.i.i1752.ph, %.lr.ph91.i.i1751.preheader3235 ] ; 3 uses
  %prol.iter3576 = phi i64 [ %prol.iter3576.next, %.lr.ph91.i.i1751.prol ], [ 0, %.lr.ph91.i.i1751.preheader3235 ]
  %i.bvo = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %.490.i.i1752.prol
  %i.bvp = load i32, ptr %i.bvo, align 4, !tbaa !7
  %i.bvq = getelementptr [4 x i8], ptr %i.bsy, i64 %.490.i.i1752.prol
  store i32 %i.bvp, ptr %i.bvq, align 4, !tbaa !7
  %i.bvr = add nuw i64 %.490.i.i1752.prol, 1      ; 2 uses
  %prol.iter3576.next = add i64 %prol.iter3576, 1 ; 2 uses
  %prol.iter3576.cmp.not = icmp eq i64 %prol.iter3576.next, %xtraiter3574
  br i1 %prol.iter3576.cmp.not, label %.lr.ph91.i.i1751.prol.loopexit, label %.lr.ph91.i.i1751.prol, !llvm.loop !137

.lr.ph91.i.i1751.prol.loopexit:                   ; preds = %.lr.ph91.i.i1751.prol, %.lr.ph91.i.i1751.preheader3235
  %.490.i.i1752.unr = phi i64 [ %.490.i.i1752.ph, %.lr.ph91.i.i1751.preheader3235 ], [ %i.bvr, %.lr.ph91.i.i1751.prol ]
  %i.bvs = sub i64 %.490.i.i1752.ph, %.062.i.i17262540
  %i.bvt = icmp ugt i64 %i.bvs, -4
  br i1 %i.bvt, label %.preheader.i.i1747, label %.lr.ph91.i.i1751

.preheader.i.i1747:                               ; preds = %.lr.ph91.i.i1751.prol.loopexit, %.lr.ph91.i.i1751, %middle.block3184, %.preheader69.i.i1746
  %.4.lcssa.i.i1748 = phi i64 [ %.3.i.i1744, %.preheader69.i.i1746 ], [ %.062.i.i17262540, %middle.block3184 ], [ %.062.i.i17262540, %.lr.ph91.i.i1751 ], [ %.062.i.i17262540, %.lr.ph91.i.i1751.prol.loopexit ] ; 3 uses
  %i.bvu = icmp ult i64 %.4.lcssa.i.i1748, %i.bsz
  br i1 %i.bvu, label %.lr.ph94.preheader.i.i1749, label %bary_add.exit1758

.lr.ph94.preheader.i.i1749:                       ; preds = %.preheader.i.i1747
  %i.bvv = shl i64 %.4.lcssa.i.i1748, 2
  %scevgep.i.i1750 = getelementptr i8, ptr %i.bsy, i64 %i.bvv
  %i.bvw = sub nuw i64 %i.bsz, %.4.lcssa.i.i1748
  %i.bvx = shl i64 %i.bvw, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1750, i8 0, i64 %i.bvx, i1 false), !tbaa !7
  br label %bary_add.exit1758

.lr.ph91.i.i1751:                                 ; preds = %.lr.ph91.i.i1751.prol.loopexit, %.lr.ph91.i.i1751
  %.490.i.i1752 = phi i64 [ %i.bwn, %.lr.ph91.i.i1751 ], [ %.490.i.i1752.unr, %.lr.ph91.i.i1751.prol.loopexit ] ; 6 uses
  %i.bvy = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %.490.i.i1752
  %i.bvz = load i32, ptr %i.bvy, align 4, !tbaa !7
  %i.bwa = getelementptr [4 x i8], ptr %i.bsy, i64 %.490.i.i1752
  store i32 %i.bvz, ptr %i.bwa, align 4, !tbaa !7
  %i.bwb = add nuw i64 %.490.i.i1752, 1           ; 2 uses
  %i.bwc = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %i.bwb
  %i.bwd = load i32, ptr %i.bwc, align 4, !tbaa !7
  %i.bwe = getelementptr [4 x i8], ptr %i.bsy, i64 %i.bwb
  store i32 %i.bwd, ptr %i.bwe, align 4, !tbaa !7
  %i.bwf = add nuw i64 %.490.i.i1752, 2           ; 2 uses
  %i.bwg = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %i.bwf
  %i.bwh = load i32, ptr %i.bwg, align 4, !tbaa !7
  %i.bwi = getelementptr [4 x i8], ptr %i.bsy, i64 %i.bwf
  store i32 %i.bwh, ptr %i.bwi, align 4, !tbaa !7
  %i.bwj = add nuw i64 %.490.i.i1752, 3           ; 2 uses
  %i.bwk = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %i.bwj
  %i.bwl = load i32, ptr %i.bwk, align 4, !tbaa !7
  %i.bwm = getelementptr [4 x i8], ptr %i.bsy, i64 %i.bwj
  store i32 %i.bwl, ptr %i.bwm, align 4, !tbaa !7
  %i.bwn = add nuw i64 %.490.i.i1752, 4           ; 2 uses
  %exitcond106.not.i.i1753.3 = icmp eq i64 %i.bwn, %.062.i.i17262540
  br i1 %exitcond106.not.i.i1753.3, label %.preheader.i.i1747, label %.lr.ph91.i.i1751, !llvm.loop !138

bb.ci:                                            ; preds = %ruby_nonempty_memcpy.exit1723
  %i.bwo = call i64 @llvm.umin.i64(i64 %i.bsz, i64 %i.l) ; 3 uses
  %.not97.i.i1759 = icmp eq i64 %i.bsz, 0
  br i1 %.not97.i.i1759, label %._crit_edge.i.i1764, label %.lr.ph.i.i1760.preheader

.lr.ph.i.i1760.preheader:                         ; preds = %bb.ci
  %i.bwp = mul i64 %i.g, 5
  %i.bwq = add i64 %i.bwp, 1
  %umin = call i64 @llvm.umin.i64(i64 %i.bwq, i64 %i.l) ; 4 uses
  %xtraiter3577 = and i64 %umin, 1
  %i.bwr = icmp eq i64 %umin, 1
  br i1 %i.bwr, label %.lr.ph.i.i1760.epil.preheader, label %.lr.ph.i.i1760.preheader.new

.lr.ph.i.i1760.preheader.new:                     ; preds = %.lr.ph.i.i1760.preheader
  %unroll_iter3582 = and i64 %umin, 9223372036854775806
  br label %.lr.ph.i.i1760

.lr.ph.i.i1760:                                   ; preds = %.lr.ph.i.i1760, %.lr.ph.i.i1760.preheader.new
  %.06278.i.i1761 = phi i64 [ 0, %.lr.ph.i.i1760.preheader.new ], [ %i.bxn, %.lr.ph.i.i1760 ] ; 4 uses
  %.06377.i.i1762 = phi i64 [ 0, %.lr.ph.i.i1760.preheader.new ], [ %i.bxm, %.lr.ph.i.i1760 ]
  %niter3583 = phi i64 [ 0, %.lr.ph.i.i1760.preheader.new ], [ %niter3583.next.1, %.lr.ph.i.i1760 ]
  %i.bws = getelementptr [4 x i8], ptr %i.bsy, i64 %.06278.i.i1761 ; 2 uses
  %i.bwt = load i32, ptr %i.bws, align 4, !tbaa !7
  %i.bwu = zext i32 %i.bwt to i64
  %i.bwv = getelementptr [4 x i8], ptr %i.ak, i64 %.06278.i.i1761
  %i.bww = load i32, ptr %i.bwv, align 4, !tbaa !7
  %i.bwx = zext i32 %i.bww to i64
  %i.bwy = sub nsw i64 %i.bwu, %i.bwx
  %i.bwz = add nsw i64 %i.bwy, %.06377.i.i1762    ; 2 uses
  %i.bxa = trunc i64 %i.bwz to i32
  store i32 %i.bxa, ptr %i.bws, align 4, !tbaa !7
  %i.bxb = ashr i64 %i.bwz, 32
  %i.bxc = or disjoint i64 %.06278.i.i1761, 1     ; 2 uses
  %i.bxd = getelementptr [4 x i8], ptr %i.bsy, i64 %i.bxc ; 2 uses
  %i.bxe = load i32, ptr %i.bxd, align 4, !tbaa !7
  %i.bxf = zext i32 %i.bxe to i64
  %i.bxg = getelementptr [4 x i8], ptr %i.ak, i64 %i.bxc
  %i.bxh = load i32, ptr %i.bxg, align 4, !tbaa !7
  %i.bxi = zext i32 %i.bxh to i64
  %i.bxj = sub nsw i64 %i.bxf, %i.bxi
  %i.bxk = add nsw i64 %i.bxj, %i.bxb             ; 2 uses
  %i.bxl = trunc i64 %i.bxk to i32
  store i32 %i.bxl, ptr %i.bxd, align 4, !tbaa !7
  %i.bxm = ashr i64 %i.bxk, 32                    ; 3 uses
  %i.bxn = add nuw i64 %.06278.i.i1761, 2         ; 2 uses
  %niter3583.next.1 = add i64 %niter3583, 2       ; 2 uses
  %niter3583.ncmp.1 = icmp eq i64 %niter3583.next.1, %unroll_iter3582
  br i1 %niter3583.ncmp.1, label %._crit_edge.i.i1764.loopexit.unr-lcssa, label %.lr.ph.i.i1760, !llvm.loop !48

._crit_edge.i.i1764.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i1760
  %lcmp.mod3579.not = icmp eq i64 %xtraiter3577, 0
  br i1 %lcmp.mod3579.not, label %._crit_edge.i.i1764, label %.lr.ph.i.i1760.epil.preheader

.lr.ph.i.i1760.epil.preheader:                    ; preds = %._crit_edge.i.i1764.loopexit.unr-lcssa, %.lr.ph.i.i1760.preheader
  %.06278.i.i1761.epil.init = phi i64 [ 0, %.lr.ph.i.i1760.preheader ], [ %i.bxn, %._crit_edge.i.i1764.loopexit.unr-lcssa ] ; 2 uses
  %.06377.i.i1762.epil.init = phi i64 [ 0, %.lr.ph.i.i1760.preheader ], [ %i.bxm, %._crit_edge.i.i1764.loopexit.unr-lcssa ]
  %lcmp.mod3581 = trunc i64 %umin to i1
  call void @llvm.assume(i1 %lcmp.mod3581)
  %i.bxo = getelementptr [4 x i8], ptr %i.bsy, i64 %.06278.i.i1761.epil.init ; 2 uses
  %i.bxp = load i32, ptr %i.bxo, align 4, !tbaa !7
  %i.bxq = zext i32 %i.bxp to i64
  %i.bxr = getelementptr [4 x i8], ptr %i.ak, i64 %.06278.i.i1761.epil.init
  %i.bxs = load i32, ptr %i.bxr, align 4, !tbaa !7
  %i.bxt = zext i32 %i.bxs to i64
  %i.bxu = sub nsw i64 %i.bxq, %i.bxt
  %i.bxv = add nsw i64 %i.bxu, %.06377.i.i1762.epil.init ; 2 uses
  %i.bxw = trunc i64 %i.bxv to i32
  store i32 %i.bxw, ptr %i.bxo, align 4, !tbaa !7
  %i.bxx = ashr i64 %i.bxv, 32
  br label %._crit_edge.i.i1764

._crit_edge.i.i1764:                              ; preds = %.lr.ph.i.i1760.epil.preheader, %._crit_edge.i.i1764.loopexit.unr-lcssa, %bb.ci
  %.063.lcssa.i.i1765 = phi i64 [ 0, %bb.ci ], [ %i.bxm, %._crit_edge.i.i1764.loopexit.unr-lcssa ], [ %i.bxx, %.lr.ph.i.i1760.epil.preheader ] ; 3 uses
  %.not.i.i1766.not = icmp ult i64 %i.j, %i.bsz
  br i1 %.not.i.i1766.not, label %.preheader72.i.i1767, label %.lr.ph87.i.i1790

.preheader72.i.i1767:                             ; preds = %._crit_edge.i.i1764
  %i.bxy = icmp ult i64 %i.l, %i.bsz
  br i1 %i.bxy, label %.lr.ph82.i.i1786, label %.loopexit71.i.i1768

.lr.ph82.i.i1786:                                 ; preds = %.preheader72.i.i1767, %bb.cj
  %.181.i.i1787 = phi i64 [ %i.byg, %bb.cj ], [ %i.bwo, %.preheader72.i.i1767 ] ; 2 uses
  %.16480.i.i1788 = phi i64 [ %i.byf, %bb.cj ], [ %.063.lcssa.i.i1765, %.preheader72.i.i1767 ]
  %i.bxz = icmp eq i64 %.16480.i.i1788, 0
  br i1 %i.bxz, label %bary_add.exit1758, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph82.i.i1786
  %i.bya = getelementptr [4 x i8], ptr %i.bsy, i64 %.181.i.i1787 ; 2 uses
  %i.byb = load i32, ptr %i.bya, align 4, !tbaa !7
  %i.byc = zext i32 %i.byb to i64
  %i.byd = add nsw i64 %i.byc, -1                 ; 2 uses
  %i.bye = trunc i64 %i.byd to i32
  store i32 %i.bye, ptr %i.bya, align 4, !tbaa !7
  %i.byf = ashr i64 %i.byd, 32
  %i.byg = add i64 %.181.i.i1787, 1               ; 2 uses
  %exitcond107.not.i.i1789 = icmp eq i64 %i.byg, %i.bsz
  br i1 %exitcond107.not.i.i1789, label %bary_add.exit1758, label %.lr.ph82.i.i1786, !llvm.loop !50

.lr.ph87.i.i1790:                                 ; preds = %._crit_edge.i.i1764, %.lr.ph87.i.i1790
  %.286.i.i1791 = phi i64 [ %i.byo, %.lr.ph87.i.i1790 ], [ %i.bwo, %._crit_edge.i.i1764 ] ; 4 uses
  %.26585.i.i1792 = phi i64 [ %i.byn, %.lr.ph87.i.i1790 ], [ %.063.lcssa.i.i1765, %._crit_edge.i.i1764 ]
  %i.byh = getelementptr [4 x i8], ptr %i.ak, i64 %.286.i.i1791
  %i.byi = load i32, ptr %i.byh, align 4, !tbaa !7
  %i.byj = zext i32 %i.byi to i64
  %i.byk = sub nsw i64 %.26585.i.i1792, %i.byj    ; 2 uses
  %i.byl = trunc i64 %i.byk to i32
  %i.bym = getelementptr [4 x i8], ptr %i.bsy, i64 %.286.i.i1791
  store i32 %i.byl, ptr %i.bym, align 4, !tbaa !7
  %i.byn = ashr i64 %i.byk, 32                    ; 2 uses
  %i.byo = add nuw i64 %.286.i.i1791, 1
  %exitcond108.not.i.i1793 = icmp eq i64 %.286.i.i1791, %i.j
  br i1 %exitcond108.not.i.i1793, label %.loopexit71.i.i1768, label %.lr.ph87.i.i1790, !llvm.loop !51

.loopexit71.i.i1768:                              ; preds = %.lr.ph87.i.i1790, %.preheader72.i.i1767
  %.366.i.i1769 = phi i64 [ %.063.lcssa.i.i1765, %.preheader72.i.i1767 ], [ %i.byn, %.lr.ph87.i.i1790 ]
  %.3.i.i1770 = phi i64 [ %i.bwo, %.preheader72.i.i1767 ], [ %i.l, %.lr.ph87.i.i1790 ] ; 3 uses
  %i.byp = icmp ne i64 %.366.i.i1769, 0
  %i.byq = icmp ult i64 %.3.i.i1770, %i.bsz
  %or.cond = and i1 %i.byp, %i.byq
  br i1 %or.cond, label %.lr.ph91.preheader.i.i1773, label %bary_add.exit1758

.lr.ph91.preheader.i.i1773:                       ; preds = %.loopexit71.i.i1768
  %i.byr = shl i64 %.3.i.i1770, 2
  %scevgep.i.i1774 = getelementptr i8, ptr %i.bsy, i64 %i.byr
  %i.bys = sub nuw i64 %i.bsz, %.3.i.i1770
  %i.byt = shl i64 %i.bys, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1774, i8 -1, i64 %i.byt, i1 false), !tbaa !7
  br label %bary_add.exit1758

bary_add.exit1758:                                ; preds = %bb.cj, %.lr.ph82.i.i1786, %.preheader70.i.i1735, %bb.cg, %.lr.ph91.preheader.i.i1773, %.loopexit71.i.i1768, %.lr.ph94.preheader.i.i1749, %.preheader.i.i1747, %.loopexit71.i.i1743
  %i.byu = sub i64 %i.aq, %i.j                    ; 14 uses
  br i1 %.not591, label %bb.cp, label %bb.ck

bb.ck:                                            ; preds = %bary_add.exit1758
  %i.byv = icmp ugt i64 %i.byu, %i.l
  br i1 %i.byv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.064.i.i1795 = phi i64 [ %i.l, %bb.cl ], [ %i.byu, %bb.ck ] ; 7 uses
  %.063.i.i1796 = phi ptr [ %i.bsv, %bb.cl ], [ %i.al, %bb.ck ] ; 12 uses
  %.062.i.i1797 = phi i64 [ %i.byu, %bb.cl ], [ %i.l, %bb.ck ] ; 9 uses
  %.061.i.i1798 = phi ptr [ %i.al, %bb.cl ], [ %i.bsv, %bb.ck ] ; 3 uses
  %.063.i.i17963188 = ptrtoaddr ptr %.063.i.i1796 to i64
  %xtraiter3585 = and i64 %.064.i.i1795, 1
  %i.byw = icmp eq i64 %.064.i.i1795, 1
  br i1 %i.byw, label %.lr.ph.i.i1800.epil.preheader, label %.new3584

.new3584:                                         ; preds = %bb.cm
  %unroll_iter3590 = and i64 %.064.i.i1795, -2
  br label %.lr.ph.i.i1800

.preheader72.i.i1804.unr-lcssa:                   ; preds = %.lr.ph.i.i1800
  %lcmp.mod3587.not = icmp eq i64 %xtraiter3585, 0
  br i1 %lcmp.mod3587.not, label %.preheader72.i.i1804, label %.lr.ph.i.i1800.epil.preheader

.lr.ph.i.i1800.epil.preheader:                    ; preds = %.preheader72.i.i1804.unr-lcssa, %bb.cm
  %.05779.i.i1801.epil.init = phi i64 [ 0, %bb.cm ], [ %i.cag, %.preheader72.i.i1804.unr-lcssa ] ; 3 uses
  %.05878.i.i1802.epil.init = phi i64 [ 0, %bb.cm ], [ %i.caf, %.preheader72.i.i1804.unr-lcssa ]
  %lcmp.mod3589 = trunc i64 %.064.i.i1795 to i1
  call void @llvm.assume(i1 %lcmp.mod3589)
  %i.byx = getelementptr [4 x i8], ptr %.061.i.i1798, i64 %.05779.i.i1801.epil.init
  %i.byy = load i32, ptr %i.byx, align 4, !tbaa !7
  %i.byz = zext i32 %i.byy to i64
  %i.bza = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %.05779.i.i1801.epil.init
  %i.bzb = load i32, ptr %i.bza, align 4, !tbaa !7
  %i.bzc = zext i32 %i.bzb to i64
  %i.bzd = add nuw nsw i64 %.05878.i.i1802.epil.init, %i.byz
  %i.bze = add nuw nsw i64 %i.bzd, %i.bzc         ; 2 uses
  %i.bzf = trunc i64 %i.bze to i32
  %i.bzg = getelementptr [4 x i8], ptr %i.bsv, i64 %.05779.i.i1801.epil.init
  store i32 %i.bzf, ptr %i.bzg, align 4, !tbaa !7
  %i.bzh = lshr i64 %i.bze, 32
  br label %.preheader72.i.i1804

.preheader72.i.i1804:                             ; preds = %.preheader72.i.i1804.unr-lcssa, %.lr.ph.i.i1800.epil.preheader
  %.lcssa3232 = phi i64 [ %i.caf, %.preheader72.i.i1804.unr-lcssa ], [ %i.bzh, %.lr.ph.i.i1800.epil.preheader ] ; 2 uses
  %i.bzi = icmp ult i64 %.064.i.i1795, %.062.i.i1797
  br i1 %i.bzi, label %.lr.ph83.i.i1825, label %.preheader70.i.i1806

.lr.ph.i.i1800:                                   ; preds = %.lr.ph.i.i1800, %.new3584
  %.05779.i.i1801 = phi i64 [ 0, %.new3584 ], [ %i.cag, %.lr.ph.i.i1800 ] ; 5 uses
  %.05878.i.i1802 = phi i64 [ 0, %.new3584 ], [ %i.caf, %.lr.ph.i.i1800 ]
  %niter3591 = phi i64 [ 0, %.new3584 ], [ %niter3591.next.1, %.lr.ph.i.i1800 ]
  %i.bzj = getelementptr [4 x i8], ptr %.061.i.i1798, i64 %.05779.i.i1801
  %i.bzk = load i32, ptr %i.bzj, align 4, !tbaa !7
  %i.bzl = zext i32 %i.bzk to i64
  %i.bzm = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %.05779.i.i1801
  %i.bzn = load i32, ptr %i.bzm, align 4, !tbaa !7
  %i.bzo = zext i32 %i.bzn to i64
  %i.bzp = add nuw nsw i64 %.05878.i.i1802, %i.bzl
  %i.bzq = add nuw nsw i64 %i.bzp, %i.bzo         ; 2 uses
  %i.bzr = trunc i64 %i.bzq to i32
  %i.bzs = getelementptr [4 x i8], ptr %i.bsv, i64 %.05779.i.i1801
  store i32 %i.bzr, ptr %i.bzs, align 4, !tbaa !7
  %i.bzt = lshr i64 %i.bzq, 32
  %i.bzu = or disjoint i64 %.05779.i.i1801, 1     ; 3 uses
  %i.bzv = getelementptr [4 x i8], ptr %.061.i.i1798, i64 %i.bzu
  %i.bzw = load i32, ptr %i.bzv, align 4, !tbaa !7
  %i.bzx = zext i32 %i.bzw to i64
  %i.bzy = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %i.bzu
  %i.bzz = load i32, ptr %i.bzy, align 4, !tbaa !7
  %i.caa = zext i32 %i.bzz to i64
  %i.cab = add nuw nsw i64 %i.bzt, %i.bzx
  %i.cac = add nuw nsw i64 %i.cab, %i.caa         ; 2 uses
  %i.cad = trunc i64 %i.cac to i32
  %i.cae = getelementptr [4 x i8], ptr %i.bsv, i64 %i.bzu
  store i32 %i.cad, ptr %i.cae, align 4, !tbaa !7
  %i.caf = lshr i64 %i.cac, 32                    ; 3 uses
  %i.cag = add nuw i64 %.05779.i.i1801, 2         ; 2 uses
  %niter3591.next.1 = add i64 %niter3591, 2       ; 2 uses
  %niter3591.ncmp.1 = icmp eq i64 %niter3591.next.1, %unroll_iter3590
  br i1 %niter3591.ncmp.1, label %.preheader72.i.i1804.unr-lcssa, label %.lr.ph.i.i1800, !llvm.loop !34

.preheader70.i.i1806:                             ; preds = %bb.co, %.preheader72.i.i1804
  %.159.lcssa.i.i1807 = phi i64 [ %.lcssa3232, %.preheader72.i.i1804 ], [ %i.cas, %bb.co ]
  %.1.lcssa.i.i1808 = phi i64 [ %.064.i.i1795, %.preheader72.i.i1804 ], [ %.062.i.i1797, %bb.co ] ; 4 uses
  %i.cah = icmp ult i64 %.1.lcssa.i.i1808, %i.byu
  br i1 %i.cah, label %.lr.ph88.preheader.i.i1812, label %bary_add.exit1829

.lr.ph88.preheader.i.i1812:                       ; preds = %.preheader70.i.i1806
  %i.cai = icmp eq i64 %.159.lcssa.i.i1807, 0
  br i1 %i.cai, label %.loopexit71.i.i1814, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph88.preheader.i.i1812
  %i.caj = getelementptr [4 x i8], ptr %i.bsv, i64 %.1.lcssa.i.i1808
  store i32 1, ptr %i.caj, align 4, !tbaa !7
  %i.cak = add nuw i64 %.1.lcssa.i.i1808, 1       ; 2 uses
  %exitcond103.peel.not.i.i1813 = icmp eq i64 %i.cak, %i.byu
  br i1 %exitcond103.peel.not.i.i1813, label %bary_add.exit1829, label %.loopexit71.i.i1814

.lr.ph83.i.i1825:                                 ; preds = %.preheader72.i.i1804, %bb.co
  %.182.i.i1826 = phi i64 [ %i.cat, %bb.co ], [ %.064.i.i1795, %.preheader72.i.i1804 ] ; 4 uses
  %.15981.i.i1827 = phi i64 [ %i.cas, %bb.co ], [ %.lcssa3232, %.preheader72.i.i1804 ]
  %i.cal = icmp eq i64 %.15981.i.i1827, 0
  br i1 %i.cal, label %.loopexit71.i.i1814, label %bb.co

bb.co:                                            ; preds = %.lr.ph83.i.i1825
  %i.cam = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %.182.i.i1826
  %i.can = load i32, ptr %i.cam, align 4, !tbaa !7
  %i.cao = zext i32 %i.can to i64
  %i.cap = add nuw nsw i64 %i.cao, 1              ; 2 uses
  %i.caq = trunc i64 %i.cap to i32
  %i.car = getelementptr [4 x i8], ptr %i.bsv, i64 %.182.i.i1826
  store i32 %i.caq, ptr %i.car, align 4, !tbaa !7
  %i.cas = lshr i64 %i.cap, 32                    ; 2 uses
  %i.cat = add i64 %.182.i.i1826, 1               ; 2 uses
  %exitcond102.not.i.i1828 = icmp eq i64 %i.cat, %.062.i.i1797
  br i1 %exitcond102.not.i.i1828, label %.preheader70.i.i1806, label %.lr.ph83.i.i1825, !llvm.loop !36

.loopexit71.i.i1814:                              ; preds = %.lr.ph83.i.i1825, %bb.cn, %.lr.ph88.preheader.i.i1812
  %.3.i.i1815 = phi i64 [ %i.cak, %bb.cn ], [ %.1.lcssa.i.i1808, %.lr.ph88.preheader.i.i1812 ], [ %.182.i.i1826, %.lr.ph83.i.i1825 ] ; 7 uses
  %i.cau = icmp eq ptr %.063.i.i1796, %i.bsv
  %i.cav = icmp eq i64 %.062.i.i1797, %i.byu
  %or.cond.i.i1816 = and i1 %i.cau, %i.cav
  br i1 %or.cond.i.i1816, label %bary_add.exit1829, label %.preheader69.i.i1817

.preheader69.i.i1817:                             ; preds = %.loopexit71.i.i1814
  %i.caw = icmp ult i64 %.3.i.i1815, %.062.i.i1797
  br i1 %i.caw, label %.lr.ph91.i.i1822.preheader, label %.preheader.i.i1818

.lr.ph91.i.i1822.preheader:                       ; preds = %.preheader69.i.i1817
  %i.cax = shl nuw i64 %i.g, 2
  %i.cay = or disjoint i64 %i.cax, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.cay, i64 %i.l) ; 3 uses
  %i.caz = sub i64 %umax, %.3.i.i1815             ; 3 uses
  %min.iters.check3191 = icmp ult i64 %i.caz, 16
  br i1 %min.iters.check3191, label %.lr.ph91.i.i1822.preheader3229, label %vector.memcheck3187

vector.memcheck3187:                              ; preds = %.lr.ph91.i.i1822.preheader
  %i.cba = shl i64 %i.g, 3
  %i.cbb = add i64 %i.cba, %.05322856
  %i.cbc = sub i64 %.063.i.i17963188, %i.cbb
  %diff.check3189 = icmp ugt i64 %i.cbc, -32
  br i1 %diff.check3189, label %.lr.ph91.i.i1822.preheader3229, label %vector.ph3192

vector.ph3192:                                    ; preds = %vector.memcheck3187
  %n.vec3194 = and i64 %i.caz, -8                 ; 3 uses
  %i.cbd = add i64 %.3.i.i1815, %n.vec3194
  br label %vector.body3195

vector.body3195:                                  ; preds = %vector.body3195, %vector.ph3192
  %index3196 = phi i64 [ 0, %vector.ph3192 ], [ %index.next3199, %vector.body3195 ] ; 2 uses
  %i.cbe = add i64 %.3.i.i1815, %index3196        ; 2 uses
  %i.cbf = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %i.cbe ; 2 uses
  %i.cbg = getelementptr i8, ptr %i.cbf, i64 16
  %wide.load3197 = load <4 x i32>, ptr %i.cbf, align 4, !tbaa !7
  %wide.load3198 = load <4 x i32>, ptr %i.cbg, align 4, !tbaa !7
  %i.cbh = getelementptr [4 x i8], ptr %i.bsv, i64 %i.cbe ; 2 uses
  %i.cbi = getelementptr i8, ptr %i.cbh, i64 16
  store <4 x i32> %wide.load3197, ptr %i.cbh, align 4, !tbaa !7
  store <4 x i32> %wide.load3198, ptr %i.cbi, align 4, !tbaa !7
  %index.next3199 = add nuw i64 %index3196, 8     ; 2 uses
  %i.cbj = icmp eq i64 %index.next3199, %n.vec3194
  br i1 %i.cbj, label %middle.block3200, label %vector.body3195, !llvm.loop !139

middle.block3200:                                 ; preds = %vector.body3195
  %cmp.n3201 = icmp eq i64 %i.caz, %n.vec3194
  br i1 %cmp.n3201, label %.preheader.i.i1818, label %.lr.ph91.i.i1822.preheader3229

.lr.ph91.i.i1822.preheader3229:                   ; preds = %vector.memcheck3187, %.lr.ph91.i.i1822.preheader, %middle.block3200
  %.490.i.i1823.ph = phi i64 [ %.3.i.i1815, %vector.memcheck3187 ], [ %.3.i.i1815, %.lr.ph91.i.i1822.preheader ], [ %i.cbd, %middle.block3200 ] ; 4 uses
  %i.cbk = sub i64 %umax, %.490.i.i1823.ph
  %xtraiter3592 = and i64 %i.cbk, 3               ; 2 uses
  %lcmp.mod3593.not = icmp eq i64 %xtraiter3592, 0
  br i1 %lcmp.mod3593.not, label %.lr.ph91.i.i1822.prol.loopexit, label %.lr.ph91.i.i1822.prol

.lr.ph91.i.i1822.prol:                            ; preds = %.lr.ph91.i.i1822.preheader3229, %.lr.ph91.i.i1822.prol
  %.490.i.i1823.prol = phi i64 [ %i.cbo, %.lr.ph91.i.i1822.prol ], [ %.490.i.i1823.ph, %.lr.ph91.i.i1822.preheader3229 ] ; 3 uses
  %prol.iter3594 = phi i64 [ %prol.iter3594.next, %.lr.ph91.i.i1822.prol ], [ 0, %.lr.ph91.i.i1822.preheader3229 ]
  %i.cbl = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %.490.i.i1823.prol
  %i.cbm = load i32, ptr %i.cbl, align 4, !tbaa !7
  %i.cbn = getelementptr [4 x i8], ptr %i.bsv, i64 %.490.i.i1823.prol
  store i32 %i.cbm, ptr %i.cbn, align 4, !tbaa !7
  %i.cbo = add nuw i64 %.490.i.i1823.prol, 1      ; 2 uses
  %prol.iter3594.next = add i64 %prol.iter3594, 1 ; 2 uses
  %prol.iter3594.cmp.not = icmp eq i64 %prol.iter3594.next, %xtraiter3592
  br i1 %prol.iter3594.cmp.not, label %.lr.ph91.i.i1822.prol.loopexit, label %.lr.ph91.i.i1822.prol, !llvm.loop !140

.lr.ph91.i.i1822.prol.loopexit:                   ; preds = %.lr.ph91.i.i1822.prol, %.lr.ph91.i.i1822.preheader3229
  %.490.i.i1823.unr = phi i64 [ %.490.i.i1823.ph, %.lr.ph91.i.i1822.preheader3229 ], [ %i.cbo, %.lr.ph91.i.i1822.prol ]
  %i.cbp = sub i64 %.490.i.i1823.ph, %umax
  %i.cbq = icmp ugt i64 %i.cbp, -4
  br i1 %i.cbq, label %.preheader.i.i1818, label %.lr.ph91.i.i1822

.preheader.i.i1818:                               ; preds = %.lr.ph91.i.i1822.prol.loopexit, %.lr.ph91.i.i1822, %middle.block3200, %.preheader69.i.i1817
  %.4.lcssa.i.i1819 = phi i64 [ %.3.i.i1815, %.preheader69.i.i1817 ], [ %.062.i.i1797, %middle.block3200 ], [ %.062.i.i1797, %.lr.ph91.i.i1822 ], [ %.062.i.i1797, %.lr.ph91.i.i1822.prol.loopexit ] ; 3 uses
  %i.cbr = icmp ult i64 %.4.lcssa.i.i1819, %i.byu
  br i1 %i.cbr, label %.lr.ph94.preheader.i.i1820, label %bary_add.exit1829

.lr.ph94.preheader.i.i1820:                       ; preds = %.preheader.i.i1818
  %i.cbs = shl i64 %.4.lcssa.i.i1819, 2
  %scevgep.i.i1821 = getelementptr i8, ptr %i.bsv, i64 %i.cbs
  %i.cbt = sub nuw i64 %i.byu, %.4.lcssa.i.i1819
  %i.cbu = shl i64 %i.cbt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1821, i8 0, i64 %i.cbu, i1 false), !tbaa !7
  br label %bary_add.exit1829

.lr.ph91.i.i1822:                                 ; preds = %.lr.ph91.i.i1822.prol.loopexit, %.lr.ph91.i.i1822
  %.490.i.i1823 = phi i64 [ %i.cck, %.lr.ph91.i.i1822 ], [ %.490.i.i1823.unr, %.lr.ph91.i.i1822.prol.loopexit ] ; 6 uses
  %i.cbv = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %.490.i.i1823
  %i.cbw = load i32, ptr %i.cbv, align 4, !tbaa !7
  %i.cbx = getelementptr [4 x i8], ptr %i.bsv, i64 %.490.i.i1823
  store i32 %i.cbw, ptr %i.cbx, align 4, !tbaa !7
  %i.cby = add nuw i64 %.490.i.i1823, 1           ; 2 uses
  %i.cbz = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %i.cby
  %i.cca = load i32, ptr %i.cbz, align 4, !tbaa !7
  %i.ccb = getelementptr [4 x i8], ptr %i.bsv, i64 %i.cby
  store i32 %i.cca, ptr %i.ccb, align 4, !tbaa !7
  %i.ccc = add nuw i64 %.490.i.i1823, 2           ; 2 uses
  %i.ccd = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %i.ccc
  %i.cce = load i32, ptr %i.ccd, align 4, !tbaa !7
  %i.ccf = getelementptr [4 x i8], ptr %i.bsv, i64 %i.ccc
  store i32 %i.cce, ptr %i.ccf, align 4, !tbaa !7
  %i.ccg = add nuw i64 %.490.i.i1823, 3           ; 2 uses
  %i.cch = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %i.ccg
  %i.cci = load i32, ptr %i.cch, align 4, !tbaa !7
  %i.ccj = getelementptr [4 x i8], ptr %i.bsv, i64 %i.ccg
  store i32 %i.cci, ptr %i.ccj, align 4, !tbaa !7
  %i.cck = add nuw i64 %.490.i.i1823, 4           ; 2 uses
  %exitcond106.not.i.i1824.3 = icmp eq i64 %i.cck, %.062.i.i1797
  br i1 %exitcond106.not.i.i1824.3, label %.preheader.i.i1818, label %.lr.ph91.i.i1822, !llvm.loop !141

bb.cp:                                            ; preds = %bary_add.exit1758
  %i.ccl = call i64 @llvm.umin.i64(i64 %i.byu, i64 %i.l) ; 8 uses
  %i.ccm = icmp eq i64 %i.ccl, 1
  br i1 %i.ccm, label %.lr.ph.i.i1831.epil, label %.new3595

.new3595:                                         ; preds = %bb.cp
  %i.ccn = add nsw i64 %i.ccl, -3
  br label %.lr.ph.i.i1831

.lr.ph.i.i1831:                                   ; preds = %.lr.ph.i.i1831, %.new3595
  %.06278.i.i1832 = phi i64 [ 0, %.new3595 ], [ %i.cdj, %.lr.ph.i.i1831 ] ; 4 uses
  %.06377.i.i1833 = phi i64 [ 0, %.new3595 ], [ %i.cdi, %.lr.ph.i.i1831 ]
  %niter3602 = phi i64 [ 0, %.new3595 ], [ %niter3602.next.1, %.lr.ph.i.i1831 ] ; 2 uses
  %i.cco = getelementptr [4 x i8], ptr %i.bsv, i64 %.06278.i.i1832 ; 2 uses
  %i.ccp = load i32, ptr %i.cco, align 4, !tbaa !7
  %i.ccq = zext i32 %i.ccp to i64
  %i.ccr = getelementptr [4 x i8], ptr %i.al, i64 %.06278.i.i1832
  %i.ccs = load i32, ptr %i.ccr, align 4, !tbaa !7
  %i.cct = zext i32 %i.ccs to i64
  %i.ccu = sub nsw i64 %i.ccq, %i.cct
  %i.ccv = add nsw i64 %i.ccu, %.06377.i.i1833    ; 2 uses
  %i.ccw = trunc i64 %i.ccv to i32
  store i32 %i.ccw, ptr %i.cco, align 4, !tbaa !7
  %i.ccx = ashr i64 %i.ccv, 32
  %i.ccy = or disjoint i64 %.06278.i.i1832, 1     ; 2 uses
  %i.ccz = getelementptr [4 x i8], ptr %i.bsv, i64 %i.ccy ; 2 uses
  %i.cda = load i32, ptr %i.ccz, align 4, !tbaa !7
  %i.cdb = zext i32 %i.cda to i64
  %i.cdc = getelementptr [4 x i8], ptr %i.al, i64 %i.ccy
  %i.cdd = load i32, ptr %i.cdc, align 4, !tbaa !7
  %i.cde = zext i32 %i.cdd to i64
  %i.cdf = sub nsw i64 %i.cdb, %i.cde
  %i.cdg = add nsw i64 %i.cdf, %i.ccx             ; 2 uses
  %i.cdh = trunc i64 %i.cdg to i32
  store i32 %i.cdh, ptr %i.ccz, align 4, !tbaa !7
  %i.cdi = ashr i64 %i.cdg, 32                    ; 2 uses
  %i.cdj = add nuw i64 %.06278.i.i1832, 2         ; 2 uses
  %niter3602.next.1 = add i64 %niter3602, 2
  %niter3602.ncmp.1 = icmp eq i64 %niter3602, %i.ccn
  br i1 %niter3602.ncmp.1, label %.lr.ph.i.i1831.epil, label %.lr.ph.i.i1831, !llvm.loop !48

.lr.ph.i.i1831.epil:                              ; preds = %bb.cp, %.lr.ph.i.i1831
  %.06278.i.i1832.epil.init = phi i64 [ 0, %bb.cp ], [ %i.cdj, %.lr.ph.i.i1831 ] ; 2 uses
  %.06377.i.i1833.epil.init = phi i64 [ 0, %bb.cp ], [ %i.cdi, %.lr.ph.i.i1831 ]
  %i.cdk = getelementptr [4 x i8], ptr %i.bsv, i64 %.06278.i.i1832.epil.init ; 2 uses
  %i.cdl = load i32, ptr %i.cdk, align 4, !tbaa !7
  %i.cdm = zext i32 %i.cdl to i64
  %i.cdn = getelementptr [4 x i8], ptr %i.al, i64 %.06278.i.i1832.epil.init
  %i.cdo = load i32, ptr %i.cdn, align 4, !tbaa !7
  %i.cdp = zext i32 %i.cdo to i64
  %i.cdq = sub nsw i64 %i.cdm, %i.cdp
  %i.cdr = add nsw i64 %i.cdq, %.06377.i.i1833.epil.init ; 2 uses
  %i.cds = trunc i64 %i.cdr to i32
  store i32 %i.cds, ptr %i.cdk, align 4, !tbaa !7
  %i.cdt = ashr i64 %i.cdr, 32                    ; 4 uses
  %.not.i.i1837.not = icmp ult i64 %i.j, %i.byu
  br i1 %.not.i.i1837.not, label %.preheader72.i.i1838, label %.lr.ph87.i.i1861.preheader

.lr.ph87.i.i1861.preheader:                       ; preds = %.lr.ph.i.i1831.epil
  %i.cdu = or disjoint i64 %i.j, 1
  %i.cdv = sub nuw nsw i64 %i.cdu, %i.ccl
  %i.cdw = sub nuw nsw i64 %i.j, %i.ccl
  %xtraiter3603 = and i64 %i.cdv, 2               ; 2 uses
  %lcmp.mod3604.not = icmp eq i64 %xtraiter3603, 0
  br i1 %lcmp.mod3604.not, label %.lr.ph87.i.i1861.prol.loopexit, label %.lr.ph87.i.i1861.prol

.lr.ph87.i.i1861.prol:                            ; preds = %.lr.ph87.i.i1861.preheader, %.lr.ph87.i.i1861.prol
  %.286.i.i1862.prol = phi i64 [ %i.cee, %.lr.ph87.i.i1861.prol ], [ %i.ccl, %.lr.ph87.i.i1861.preheader ] ; 3 uses
  %.26585.i.i1863.prol = phi i64 [ %i.ced, %.lr.ph87.i.i1861.prol ], [ %i.cdt, %.lr.ph87.i.i1861.preheader ]
  %prol.iter3605 = phi i64 [ %prol.iter3605.next, %.lr.ph87.i.i1861.prol ], [ 0, %.lr.ph87.i.i1861.preheader ]
  %i.cdx = getelementptr [4 x i8], ptr %i.al, i64 %.286.i.i1862.prol
  %i.cdy = load i32, ptr %i.cdx, align 4, !tbaa !7
  %i.cdz = zext i32 %i.cdy to i64
  %i.cea = sub nsw i64 %.26585.i.i1863.prol, %i.cdz ; 2 uses
  %i.ceb = trunc i64 %i.cea to i32
  %i.cec = getelementptr [4 x i8], ptr %i.bsv, i64 %.286.i.i1862.prol
  store i32 %i.ceb, ptr %i.cec, align 4, !tbaa !7
  %i.ced = ashr i64 %i.cea, 32                    ; 3 uses
  %i.cee = add nuw i64 %.286.i.i1862.prol, 1      ; 2 uses
  %prol.iter3605.next = add i64 %prol.iter3605, 1 ; 2 uses
  %prol.iter3605.cmp.not = icmp eq i64 %prol.iter3605.next, %xtraiter3603
  br i1 %prol.iter3605.cmp.not, label %.lr.ph87.i.i1861.prol.loopexit, label %.lr.ph87.i.i1861.prol, !llvm.loop !142

.lr.ph87.i.i1861.prol.loopexit:                   ; preds = %.lr.ph87.i.i1861.prol, %.lr.ph87.i.i1861.preheader
  %.lcssa3227.unr = phi i64 [ poison, %.lr.ph87.i.i1861.preheader ], [ %i.ced, %.lr.ph87.i.i1861.prol ]
  %.286.i.i1862.unr = phi i64 [ %i.ccl, %.lr.ph87.i.i1861.preheader ], [ %i.cee, %.lr.ph87.i.i1861.prol ]
  %.26585.i.i1863.unr = phi i64 [ %i.cdt, %.lr.ph87.i.i1861.preheader ], [ %i.ced, %.lr.ph87.i.i1861.prol ]
  %i.cef = icmp ult i64 %i.cdw, 3
  br i1 %i.cef, label %.loopexit71.i.i1839, label %.lr.ph87.i.i1861

.preheader72.i.i1838:                             ; preds = %.lr.ph.i.i1831.epil
  %i.ceg = icmp ult i64 %i.l, %i.byu
  br i1 %i.ceg, label %.lr.ph82.i.i1857, label %.loopexit71.i.i1839

.lr.ph82.i.i1857:                                 ; preds = %.preheader72.i.i1838, %bb.cq
  %.181.i.i1858 = phi i64 [ %i.ceo, %bb.cq ], [ %i.ccl, %.preheader72.i.i1838 ] ; 2 uses
  %.16480.i.i1859 = phi i64 [ %i.cen, %bb.cq ], [ %i.cdt, %.preheader72.i.i1838 ]
  %i.ceh = icmp eq i64 %.16480.i.i1859, 0
  br i1 %i.ceh, label %bary_add.exit1829, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph82.i.i1857
  %i.cei = getelementptr [4 x i8], ptr %i.bsv, i64 %.181.i.i1858 ; 2 uses
  %i.cej = load i32, ptr %i.cei, align 4, !tbaa !7
  %i.cek = zext i32 %i.cej to i64
  %i.cel = add nsw i64 %i.cek, -1                 ; 2 uses
  %i.cem = trunc i64 %i.cel to i32
  store i32 %i.cem, ptr %i.cei, align 4, !tbaa !7
  %i.cen = ashr i64 %i.cel, 32
  %i.ceo = add i64 %.181.i.i1858, 1               ; 2 uses
  %exitcond107.not.i.i1860 = icmp eq i64 %i.ceo, %i.byu
  br i1 %exitcond107.not.i.i1860, label %bary_add.exit1829, label %.lr.ph82.i.i1857, !llvm.loop !50
end_hunk_8
begin_hunk_9_@bary_mul_toom3:bb.a
  %i.ces = sub nsw i64 %.26585.i.i1863, %i.cer    ; 2 uses
  %i.cet = trunc i64 %i.ces to i32
  %i.ceu = getelementptr [4 x i8], ptr %i.bsv, i64 %.286.i.i1862
  store i32 %i.cet, ptr %i.ceu, align 4, !tbaa !7
  %i.cev = ashr i64 %i.ces, 32
  %i.cew = add nuw i64 %.286.i.i1862, 1           ; 2 uses
  %i.cex = getelementptr [4 x i8], ptr %i.al, i64 %i.cew
  %i.cey = load i32, ptr %i.cex, align 4, !tbaa !7
  %i.cez = zext i32 %i.cey to i64
  %i.cfa = sub nsw i64 %i.cev, %i.cez             ; 2 uses
  %i.cfb = trunc i64 %i.cfa to i32
  %i.cfc = getelementptr [4 x i8], ptr %i.bsv, i64 %i.cew
  store i32 %i.cfb, ptr %i.cfc, align 4, !tbaa !7
  %i.cfd = ashr i64 %i.cfa, 32
  %i.cfe = add nuw i64 %.286.i.i1862, 2           ; 2 uses
  %i.cff = getelementptr [4 x i8], ptr %i.al, i64 %i.cfe
  %i.cfg = load i32, ptr %i.cff, align 4, !tbaa !7
  %i.cfh = zext i32 %i.cfg to i64
  %i.cfi = sub nsw i64 %i.cfd, %i.cfh             ; 2 uses
  %i.cfj = trunc i64 %i.cfi to i32
  %i.cfk = getelementptr [4 x i8], ptr %i.bsv, i64 %i.cfe
  store i32 %i.cfj, ptr %i.cfk, align 4, !tbaa !7
  %i.cfl = ashr i64 %i.cfi, 32
  %i.cfm = add nuw i64 %.286.i.i1862, 3           ; 3 uses
  %i.cfn = getelementptr [4 x i8], ptr %i.al, i64 %i.cfm
  %i.cfo = load i32, ptr %i.cfn, align 4, !tbaa !7
  %i.cfp = zext i32 %i.cfo to i64
  %i.cfq = sub nsw i64 %i.cfl, %i.cfp             ; 2 uses
  %i.cfr = trunc i64 %i.cfq to i32
  %i.cfs = getelementptr [4 x i8], ptr %i.bsv, i64 %i.cfm
  store i32 %i.cfr, ptr %i.cfs, align 4, !tbaa !7
  %i.cft = ashr i64 %i.cfq, 32                    ; 2 uses
  %i.cfu = add nuw i64 %.286.i.i1862, 4
  %exitcond108.not.i.i1864.3 = icmp eq i64 %i.cfm, %i.j
  br i1 %exitcond108.not.i.i1864.3, label %.loopexit71.i.i1839, label %.lr.ph87.i.i1861, !llvm.loop !51

.loopexit71.i.i1839:                              ; preds = %.lr.ph87.i.i1861.prol.loopexit, %.lr.ph87.i.i1861, %.preheader72.i.i1838
  %.366.i.i1840 = phi i64 [ %i.cdt, %.preheader72.i.i1838 ], [ %.lcssa3227.unr, %.lr.ph87.i.i1861.prol.loopexit ], [ %i.cft, %.lr.ph87.i.i1861 ]
  %.3.i.i1841 = phi i64 [ %i.ccl, %.preheader72.i.i1838 ], [ %i.l, %.lr.ph87.i.i1861 ], [ %i.l, %.lr.ph87.i.i1861.prol.loopexit ] ; 3 uses
  %i.cfv = icmp ne i64 %.366.i.i1840, 0
  %i.cfw = icmp ult i64 %.3.i.i1841, %i.byu
  %or.cond1986 = and i1 %i.cfv, %i.cfw
  br i1 %or.cond1986, label %.lr.ph91.preheader.i.i1844, label %bary_add.exit1829

.lr.ph91.preheader.i.i1844:                       ; preds = %.loopexit71.i.i1839
  %i.cfx = shl i64 %.3.i.i1841, 2
  %scevgep.i.i1845 = getelementptr i8, ptr %i.bsv, i64 %i.cfx
  %i.cfy = sub nuw i64 %i.byu, %.3.i.i1841
  %i.cfz = shl i64 %i.cfy, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1845, i8 -1, i64 %i.cfz, i1 false), !tbaa !7
  br label %bary_add.exit1829

bary_add.exit1829:                                ; preds = %bb.cq, %.lr.ph82.i.i1857, %.preheader70.i.i1806, %bb.cn, %.lr.ph91.preheader.i.i1844, %.loopexit71.i.i1839, %.lr.ph94.preheader.i.i1820, %.preheader.i.i1818, %.loopexit71.i.i1814
  %i.cga = mul nuw i64 %i.g, 3                    ; 3 uses
  %i.cgb = getelementptr [4 x i8], ptr %.0532, i64 %i.cga ; 21 uses
  %i.cgc = sub i64 %i.aq, %i.cga                  ; 16 uses
  br i1 %.not592, label %bb.cv, label %bb.cr

bb.cr:                                            ; preds = %bary_add.exit1829
  %i.cgd = icmp ugt i64 %i.cgc, %i.l
  br i1 %i.cgd, label %.lr.ph.i.i1871.preheader, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.not.i.i1870 = icmp eq i64 %i.cgc, 0
  br i1 %.not.i.i1870, label %.preheader72.i.i1875, label %.lr.ph.i.i1871.preheader

.lr.ph.i.i1871.preheader:                         ; preds = %bb.cr, %bb.cs
  %.061.i.i18692560 = phi ptr [ %i.cgb, %bb.cs ], [ %i.am, %bb.cr ] ; 3 uses
  %.062.i.i18682558 = phi i64 [ %i.l, %bb.cs ], [ %i.cgc, %bb.cr ] ; 2 uses
  %.063.i.i18672556 = phi ptr [ %i.am, %bb.cs ], [ %i.cgb, %bb.cr ] ; 5 uses
  %.064.i.i18662554 = phi i64 [ %i.cgc, %bb.cs ], [ %i.l, %bb.cr ] ; 6 uses
  %xtraiter3606 = and i64 %.064.i.i18662554, 1
  %i.cge = icmp eq i64 %.064.i.i18662554, 1
  br i1 %i.cge, label %.lr.ph.i.i1871.epil.preheader, label %.lr.ph.i.i1871.preheader.new

.lr.ph.i.i1871.preheader.new:                     ; preds = %.lr.ph.i.i1871.preheader
  %unroll_iter3611 = and i64 %.064.i.i18662554, -2
  br label %.lr.ph.i.i1871

.preheader72.i.i1875.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i1871
  %lcmp.mod3608.not = icmp eq i64 %xtraiter3606, 0
  br i1 %lcmp.mod3608.not, label %.preheader72.i.i1875, label %.lr.ph.i.i1871.epil.preheader

.lr.ph.i.i1871.epil.preheader:                    ; preds = %.preheader72.i.i1875.loopexit.unr-lcssa, %.lr.ph.i.i1871.preheader
  %.05779.i.i1872.epil.init = phi i64 [ 0, %.lr.ph.i.i1871.preheader ], [ %i.cho, %.preheader72.i.i1875.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i1873.epil.init = phi i64 [ 0, %.lr.ph.i.i1871.preheader ], [ %i.chn, %.preheader72.i.i1875.loopexit.unr-lcssa ]
  %lcmp.mod3610 = trunc i64 %.064.i.i18662554 to i1
  call void @llvm.assume(i1 %lcmp.mod3610)
  %i.cgf = getelementptr [4 x i8], ptr %.061.i.i18692560, i64 %.05779.i.i1872.epil.init
  %i.cgg = load i32, ptr %i.cgf, align 4, !tbaa !7
  %i.cgh = zext i32 %i.cgg to i64
  %i.cgi = getelementptr [4 x i8], ptr %.063.i.i18672556, i64 %.05779.i.i1872.epil.init
  %i.cgj = load i32, ptr %i.cgi, align 4, !tbaa !7
  %i.cgk = zext i32 %i.cgj to i64
  %i.cgl = add nuw nsw i64 %.05878.i.i1873.epil.init, %i.cgh
  %i.cgm = add nuw nsw i64 %i.cgl, %i.cgk         ; 2 uses
  %i.cgn = trunc i64 %i.cgm to i32
  %i.cgo = getelementptr [4 x i8], ptr %i.cgb, i64 %.05779.i.i1872.epil.init
  store i32 %i.cgn, ptr %i.cgo, align 4, !tbaa !7
  %i.cgp = lshr i64 %i.cgm, 32
  br label %.preheader72.i.i1875

.preheader72.i.i1875:                             ; preds = %.lr.ph.i.i1871.epil.preheader, %.preheader72.i.i1875.loopexit.unr-lcssa, %bb.cs
  %.062.i.i18682559 = phi i64 [ %i.l, %bb.cs ], [ %.062.i.i18682558, %.preheader72.i.i1875.loopexit.unr-lcssa ], [ %.062.i.i18682558, %.lr.ph.i.i1871.epil.preheader ] ; 12 uses
  %.063.i.i18672557 = phi ptr [ %i.am, %bb.cs ], [ %.063.i.i18672556, %.preheader72.i.i1875.loopexit.unr-lcssa ], [ %.063.i.i18672556, %.lr.ph.i.i1871.epil.preheader ] ; 9 uses
  %.064.i.i18662555 = phi i64 [ 0, %bb.cs ], [ %.064.i.i18662554, %.preheader72.i.i1875.loopexit.unr-lcssa ], [ %.064.i.i18662554, %.lr.ph.i.i1871.epil.preheader ] ; 3 uses
  %.058.lcssa.i.i1876 = phi i64 [ 0, %bb.cs ], [ %i.chn, %.preheader72.i.i1875.loopexit.unr-lcssa ], [ %i.cgp, %.lr.ph.i.i1871.epil.preheader ] ; 2 uses
  %.063.i.i186725573204 = ptrtoaddr ptr %.063.i.i18672557 to i64
  %i.cgq = icmp ult i64 %.064.i.i18662555, %.062.i.i18682559
  br i1 %i.cgq, label %.lr.ph83.i.i1896, label %.preheader70.i.i1877

.lr.ph.i.i1871:                                   ; preds = %.lr.ph.i.i1871, %.lr.ph.i.i1871.preheader.new
  %.05779.i.i1872 = phi i64 [ 0, %.lr.ph.i.i1871.preheader.new ], [ %i.cho, %.lr.ph.i.i1871 ] ; 5 uses
  %.05878.i.i1873 = phi i64 [ 0, %.lr.ph.i.i1871.preheader.new ], [ %i.chn, %.lr.ph.i.i1871 ]
  %niter3612 = phi i64 [ 0, %.lr.ph.i.i1871.preheader.new ], [ %niter3612.next.1, %.lr.ph.i.i1871 ]
  %i.cgr = getelementptr [4 x i8], ptr %.061.i.i18692560, i64 %.05779.i.i1872
  %i.cgs = load i32, ptr %i.cgr, align 4, !tbaa !7
  %i.cgt = zext i32 %i.cgs to i64
  %i.cgu = getelementptr [4 x i8], ptr %.063.i.i18672556, i64 %.05779.i.i1872
  %i.cgv = load i32, ptr %i.cgu, align 4, !tbaa !7
  %i.cgw = zext i32 %i.cgv to i64
  %i.cgx = add nuw nsw i64 %.05878.i.i1873, %i.cgt
  %i.cgy = add nuw nsw i64 %i.cgx, %i.cgw         ; 2 uses
  %i.cgz = trunc i64 %i.cgy to i32
  %i.cha = getelementptr [4 x i8], ptr %i.cgb, i64 %.05779.i.i1872
  store i32 %i.cgz, ptr %i.cha, align 4, !tbaa !7
  %i.chb = lshr i64 %i.cgy, 32
  %i.chc = or disjoint i64 %.05779.i.i1872, 1     ; 3 uses
  %i.chd = getelementptr [4 x i8], ptr %.061.i.i18692560, i64 %i.chc
  %i.che = load i32, ptr %i.chd, align 4, !tbaa !7
  %i.chf = zext i32 %i.che to i64
  %i.chg = getelementptr [4 x i8], ptr %.063.i.i18672556, i64 %i.chc
  %i.chh = load i32, ptr %i.chg, align 4, !tbaa !7
  %i.chi = zext i32 %i.chh to i64
  %i.chj = add nuw nsw i64 %i.chb, %i.chf
  %i.chk = add nuw nsw i64 %i.chj, %i.chi         ; 2 uses
  %i.chl = trunc i64 %i.chk to i32
  %i.chm = getelementptr [4 x i8], ptr %i.cgb, i64 %i.chc
  store i32 %i.chl, ptr %i.chm, align 4, !tbaa !7
  %i.chn = lshr i64 %i.chk, 32                    ; 3 uses
  %i.cho = add nuw i64 %.05779.i.i1872, 2         ; 2 uses
  %niter3612.next.1 = add i64 %niter3612, 2       ; 2 uses
  %niter3612.ncmp.1 = icmp eq i64 %niter3612.next.1, %unroll_iter3611
  br i1 %niter3612.ncmp.1, label %.preheader72.i.i1875.loopexit.unr-lcssa, label %.lr.ph.i.i1871, !llvm.loop !34

.preheader70.i.i1877:                             ; preds = %bb.cu, %.preheader72.i.i1875
  %.159.lcssa.i.i1878 = phi i64 [ %.058.lcssa.i.i1876, %.preheader72.i.i1875 ], [ %i.cia, %bb.cu ]
  %.1.lcssa.i.i1879 = phi i64 [ %.064.i.i18662555, %.preheader72.i.i1875 ], [ %.062.i.i18682559, %bb.cu ] ; 4 uses
  %i.chp = icmp ult i64 %.1.lcssa.i.i1879, %i.cgc
  br i1 %i.chp, label %.lr.ph88.preheader.i.i1883, label %bary_add.exit1900.preheader

.lr.ph88.preheader.i.i1883:                       ; preds = %.preheader70.i.i1877
  %i.chq = icmp eq i64 %.159.lcssa.i.i1878, 0
  br i1 %i.chq, label %.loopexit71.i.i1885, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph88.preheader.i.i1883
  %i.chr = getelementptr [4 x i8], ptr %i.cgb, i64 %.1.lcssa.i.i1879
  store i32 1, ptr %i.chr, align 4, !tbaa !7
  %i.chs = add nuw i64 %.1.lcssa.i.i1879, 1       ; 2 uses
  %exitcond103.peel.not.i.i1884 = icmp eq i64 %i.chs, %i.cgc
  br i1 %exitcond103.peel.not.i.i1884, label %bary_add.exit1900.preheader, label %.loopexit71.i.i1885

.lr.ph83.i.i1896:                                 ; preds = %.preheader72.i.i1875, %bb.cu
  %.182.i.i1897 = phi i64 [ %i.cib, %bb.cu ], [ %.064.i.i18662555, %.preheader72.i.i1875 ] ; 4 uses
  %.15981.i.i1898 = phi i64 [ %i.cia, %bb.cu ], [ %.058.lcssa.i.i1876, %.preheader72.i.i1875 ]
  %i.cht = icmp eq i64 %.15981.i.i1898, 0
  br i1 %i.cht, label %.loopexit71.i.i1885, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph83.i.i1896
  %i.chu = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %.182.i.i1897
  %i.chv = load i32, ptr %i.chu, align 4, !tbaa !7
  %i.chw = zext i32 %i.chv to i64
  %i.chx = add nuw nsw i64 %i.chw, 1              ; 2 uses
  %i.chy = trunc i64 %i.chx to i32
  %i.chz = getelementptr [4 x i8], ptr %i.cgb, i64 %.182.i.i1897
  store i32 %i.chy, ptr %i.chz, align 4, !tbaa !7
  %i.cia = lshr i64 %i.chx, 32                    ; 2 uses
  %i.cib = add i64 %.182.i.i1897, 1               ; 2 uses
  %exitcond102.not.i.i1899 = icmp eq i64 %i.cib, %.062.i.i18682559
  br i1 %exitcond102.not.i.i1899, label %.preheader70.i.i1877, label %.lr.ph83.i.i1896, !llvm.loop !36

.loopexit71.i.i1885:                              ; preds = %.lr.ph83.i.i1896, %bb.ct, %.lr.ph88.preheader.i.i1883
  %.3.i.i1886 = phi i64 [ %i.chs, %bb.ct ], [ %.1.lcssa.i.i1879, %.lr.ph88.preheader.i.i1883 ], [ %.182.i.i1897, %.lr.ph83.i.i1896 ] ; 7 uses
  %i.cic = icmp eq ptr %.063.i.i18672557, %i.cgb
  %i.cid = icmp eq i64 %.062.i.i18682559, %i.cgc
  %or.cond.i.i1887 = and i1 %i.cic, %i.cid
  br i1 %or.cond.i.i1887, label %bary_add.exit1900.preheader, label %.preheader69.i.i1888

.preheader69.i.i1888:                             ; preds = %.loopexit71.i.i1885
  %i.cie = icmp ult i64 %.3.i.i1886, %.062.i.i18682559
  br i1 %i.cie, label %.lr.ph91.i.i1893.preheader, label %.preheader.i.i1889

.lr.ph91.i.i1893.preheader:                       ; preds = %.preheader69.i.i1888
  %i.cif = sub nuw i64 %.062.i.i18682559, %.3.i.i1886 ; 3 uses
  %min.iters.check3207 = icmp ult i64 %i.cif, 16
  br i1 %min.iters.check3207, label %.lr.ph91.i.i1893.preheader3223, label %vector.memcheck3203

vector.memcheck3203:                              ; preds = %.lr.ph91.i.i1893.preheader
  %i.cig = mul i64 %i.g, 12
  %i.cih = add i64 %i.cig, %.05322856
  %i.cii = sub i64 %.063.i.i186725573204, %i.cih
  %diff.check3205 = icmp ugt i64 %i.cii, -32
  br i1 %diff.check3205, label %.lr.ph91.i.i1893.preheader3223, label %vector.ph3208

vector.ph3208:                                    ; preds = %vector.memcheck3203
  %n.vec3210 = and i64 %i.cif, -8                 ; 3 uses
  %i.cij = add i64 %.3.i.i1886, %n.vec3210
  br label %vector.body3211

vector.body3211:                                  ; preds = %vector.body3211, %vector.ph3208
  %index3212 = phi i64 [ 0, %vector.ph3208 ], [ %index.next3215, %vector.body3211 ] ; 2 uses
  %i.cik = add i64 %.3.i.i1886, %index3212        ; 2 uses
  %i.cil = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %i.cik ; 2 uses
  %i.cim = getelementptr i8, ptr %i.cil, i64 16
  %wide.load3213 = load <4 x i32>, ptr %i.cil, align 4, !tbaa !7
  %wide.load3214 = load <4 x i32>, ptr %i.cim, align 4, !tbaa !7
  %i.cin = getelementptr [4 x i8], ptr %i.cgb, i64 %i.cik ; 2 uses
  %i.cio = getelementptr i8, ptr %i.cin, i64 16
  store <4 x i32> %wide.load3213, ptr %i.cin, align 4, !tbaa !7
  store <4 x i32> %wide.load3214, ptr %i.cio, align 4, !tbaa !7
  %index.next3215 = add nuw i64 %index3212, 8     ; 2 uses
  %i.cip = icmp eq i64 %index.next3215, %n.vec3210
  br i1 %i.cip, label %middle.block3216, label %vector.body3211, !llvm.loop !143

middle.block3216:                                 ; preds = %vector.body3211
  %cmp.n3217 = icmp eq i64 %i.cif, %n.vec3210
  br i1 %cmp.n3217, label %.preheader.i.i1889, label %.lr.ph91.i.i1893.preheader3223

.lr.ph91.i.i1893.preheader3223:                   ; preds = %vector.memcheck3203, %.lr.ph91.i.i1893.preheader, %middle.block3216
  %.490.i.i1894.ph = phi i64 [ %.3.i.i1886, %vector.memcheck3203 ], [ %.3.i.i1886, %.lr.ph91.i.i1893.preheader ], [ %i.cij, %middle.block3216 ] ; 4 uses
  %i.ciq = sub i64 %.062.i.i18682559, %.490.i.i1894.ph
  %xtraiter3613 = and i64 %i.ciq, 3               ; 2 uses
  %lcmp.mod3614.not = icmp eq i64 %xtraiter3613, 0
  br i1 %lcmp.mod3614.not, label %.lr.ph91.i.i1893.prol.loopexit, label %.lr.ph91.i.i1893.prol

.lr.ph91.i.i1893.prol:                            ; preds = %.lr.ph91.i.i1893.preheader3223, %.lr.ph91.i.i1893.prol
  %.490.i.i1894.prol = phi i64 [ %i.ciu, %.lr.ph91.i.i1893.prol ], [ %.490.i.i1894.ph, %.lr.ph91.i.i1893.preheader3223 ] ; 3 uses
  %prol.iter3615 = phi i64 [ %prol.iter3615.next, %.lr.ph91.i.i1893.prol ], [ 0, %.lr.ph91.i.i1893.preheader3223 ]
  %i.cir = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %.490.i.i1894.prol
  %i.cis = load i32, ptr %i.cir, align 4, !tbaa !7
  %i.cit = getelementptr [4 x i8], ptr %i.cgb, i64 %.490.i.i1894.prol
  store i32 %i.cis, ptr %i.cit, align 4, !tbaa !7
  %i.ciu = add nuw i64 %.490.i.i1894.prol, 1      ; 2 uses
  %prol.iter3615.next = add i64 %prol.iter3615, 1 ; 2 uses
  %prol.iter3615.cmp.not = icmp eq i64 %prol.iter3615.next, %xtraiter3613
  br i1 %prol.iter3615.cmp.not, label %.lr.ph91.i.i1893.prol.loopexit, label %.lr.ph91.i.i1893.prol, !llvm.loop !144

.lr.ph91.i.i1893.prol.loopexit:                   ; preds = %.lr.ph91.i.i1893.prol, %.lr.ph91.i.i1893.preheader3223
  %.490.i.i1894.unr = phi i64 [ %.490.i.i1894.ph, %.lr.ph91.i.i1893.preheader3223 ], [ %i.ciu, %.lr.ph91.i.i1893.prol ]
  %i.civ = sub i64 %.490.i.i1894.ph, %.062.i.i18682559
  %i.ciw = icmp ugt i64 %i.civ, -4
  br i1 %i.ciw, label %.preheader.i.i1889, label %.lr.ph91.i.i1893

.preheader.i.i1889:                               ; preds = %.lr.ph91.i.i1893.prol.loopexit, %.lr.ph91.i.i1893, %middle.block3216, %.preheader69.i.i1888
  %.4.lcssa.i.i1890 = phi i64 [ %.3.i.i1886, %.preheader69.i.i1888 ], [ %.062.i.i18682559, %middle.block3216 ], [ %.062.i.i18682559, %.lr.ph91.i.i1893 ], [ %.062.i.i18682559, %.lr.ph91.i.i1893.prol.loopexit ] ; 3 uses
  %i.cix = icmp ult i64 %.4.lcssa.i.i1890, %i.cgc
  br i1 %i.cix, label %.lr.ph94.preheader.i.i1891, label %bary_add.exit1900.preheader

.lr.ph94.preheader.i.i1891:                       ; preds = %.preheader.i.i1889
  %i.ciy = shl i64 %.4.lcssa.i.i1890, 2
  %scevgep.i.i1892 = getelementptr i8, ptr %i.cgb, i64 %i.ciy
  %i.ciz = sub nuw i64 %i.cgc, %.4.lcssa.i.i1890
  %i.cja = shl i64 %i.ciz, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1892, i8 0, i64 %i.cja, i1 false), !tbaa !7
  br label %bary_add.exit1900.preheader

.lr.ph91.i.i1893:                                 ; preds = %.lr.ph91.i.i1893.prol.loopexit, %.lr.ph91.i.i1893
  %.490.i.i1894 = phi i64 [ %i.cjq, %.lr.ph91.i.i1893 ], [ %.490.i.i1894.unr, %.lr.ph91.i.i1893.prol.loopexit ] ; 6 uses
  %i.cjb = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %.490.i.i1894
  %i.cjc = load i32, ptr %i.cjb, align 4, !tbaa !7
  %i.cjd = getelementptr [4 x i8], ptr %i.cgb, i64 %.490.i.i1894
  store i32 %i.cjc, ptr %i.cjd, align 4, !tbaa !7
  %i.cje = add nuw i64 %.490.i.i1894, 1           ; 2 uses
  %i.cjf = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %i.cje
  %i.cjg = load i32, ptr %i.cjf, align 4, !tbaa !7
  %i.cjh = getelementptr [4 x i8], ptr %i.cgb, i64 %i.cje
  store i32 %i.cjg, ptr %i.cjh, align 4, !tbaa !7
  %i.cji = add nuw i64 %.490.i.i1894, 2           ; 2 uses
  %i.cjj = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %i.cji
  %i.cjk = load i32, ptr %i.cjj, align 4, !tbaa !7
  %i.cjl = getelementptr [4 x i8], ptr %i.cgb, i64 %i.cji
  store i32 %i.cjk, ptr %i.cjl, align 4, !tbaa !7
  %i.cjm = add nuw i64 %.490.i.i1894, 3           ; 2 uses
  %i.cjn = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %i.cjm
  %i.cjo = load i32, ptr %i.cjn, align 4, !tbaa !7
  %i.cjp = getelementptr [4 x i8], ptr %i.cgb, i64 %i.cjm
  store i32 %i.cjo, ptr %i.cjp, align 4, !tbaa !7
  %i.cjq = add nuw i64 %.490.i.i1894, 4           ; 2 uses
  %exitcond106.not.i.i1895.3 = icmp eq i64 %i.cjq, %.062.i.i18682559
  br i1 %exitcond106.not.i.i1895.3, label %.preheader.i.i1889, label %.lr.ph91.i.i1893, !llvm.loop !145

bb.cv:                                            ; preds = %bary_add.exit1829
  %i.cjr = call i64 @llvm.umin.i64(i64 %i.cgc, i64 %i.l) ; 3 uses
  %.not97.i.i1901 = icmp eq i64 %i.cgc, 0
  br i1 %.not97.i.i1901, label %._crit_edge.i.i1906, label %.lr.ph.i.i1902.preheader

.lr.ph.i.i1902.preheader:                         ; preds = %bb.cv
  %i.cjs = add i64 %i.cga, 1
  %umin3616 = call i64 @llvm.umin.i64(i64 %i.cjs, i64 %i.l) ; 4 uses
  %xtraiter3617 = and i64 %umin3616, 1
  %i.cjt = icmp eq i64 %umin3616, 1
  br i1 %i.cjt, label %.lr.ph.i.i1902.epil.preheader, label %.lr.ph.i.i1902.preheader.new

.lr.ph.i.i1902.preheader.new:                     ; preds = %.lr.ph.i.i1902.preheader
  %unroll_iter3622 = and i64 %umin3616, 9223372036854775806
  br label %.lr.ph.i.i1902

.lr.ph.i.i1902:                                   ; preds = %.lr.ph.i.i1902, %.lr.ph.i.i1902.preheader.new
  %.06278.i.i1903 = phi i64 [ 0, %.lr.ph.i.i1902.preheader.new ], [ %i.ckp, %.lr.ph.i.i1902 ] ; 4 uses
  %.06377.i.i1904 = phi i64 [ 0, %.lr.ph.i.i1902.preheader.new ], [ %i.cko, %.lr.ph.i.i1902 ]
  %niter3623 = phi i64 [ 0, %.lr.ph.i.i1902.preheader.new ], [ %niter3623.next.1, %.lr.ph.i.i1902 ]
  %i.cju = getelementptr [4 x i8], ptr %i.cgb, i64 %.06278.i.i1903 ; 2 uses
  %i.cjv = load i32, ptr %i.cju, align 4, !tbaa !7
  %i.cjw = zext i32 %i.cjv to i64
  %i.cjx = getelementptr [4 x i8], ptr %i.am, i64 %.06278.i.i1903
  %i.cjy = load i32, ptr %i.cjx, align 4, !tbaa !7
  %i.cjz = zext i32 %i.cjy to i64
  %i.cka = sub nsw i64 %i.cjw, %i.cjz
  %i.ckb = add nsw i64 %i.cka, %.06377.i.i1904    ; 2 uses
  %i.ckc = trunc i64 %i.ckb to i32
  store i32 %i.ckc, ptr %i.cju, align 4, !tbaa !7
  %i.ckd = ashr i64 %i.ckb, 32
  %i.cke = or disjoint i64 %.06278.i.i1903, 1     ; 2 uses
  %i.ckf = getelementptr [4 x i8], ptr %i.cgb, i64 %i.cke ; 2 uses
  %i.ckg = load i32, ptr %i.ckf, align 4, !tbaa !7
  %i.ckh = zext i32 %i.ckg to i64
  %i.cki = getelementptr [4 x i8], ptr %i.am, i64 %i.cke
  %i.ckj = load i32, ptr %i.cki, align 4, !tbaa !7
  %i.ckk = zext i32 %i.ckj to i64
  %i.ckl = sub nsw i64 %i.ckh, %i.ckk
  %i.ckm = add nsw i64 %i.ckl, %i.ckd             ; 2 uses
  %i.ckn = trunc i64 %i.ckm to i32
  store i32 %i.ckn, ptr %i.ckf, align 4, !tbaa !7
  %i.cko = ashr i64 %i.ckm, 32                    ; 3 uses
  %i.ckp = add nuw i64 %.06278.i.i1903, 2         ; 2 uses
  %niter3623.next.1 = add i64 %niter3623, 2       ; 2 uses
  %niter3623.ncmp.1 = icmp eq i64 %niter3623.next.1, %unroll_iter3622
  br i1 %niter3623.ncmp.1, label %._crit_edge.i.i1906.loopexit.unr-lcssa, label %.lr.ph.i.i1902, !llvm.loop !48

._crit_edge.i.i1906.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i1902
  %lcmp.mod3619.not = icmp eq i64 %xtraiter3617, 0
  br i1 %lcmp.mod3619.not, label %._crit_edge.i.i1906, label %.lr.ph.i.i1902.epil.preheader

.lr.ph.i.i1902.epil.preheader:                    ; preds = %._crit_edge.i.i1906.loopexit.unr-lcssa, %.lr.ph.i.i1902.preheader
  %.06278.i.i1903.epil.init = phi i64 [ 0, %.lr.ph.i.i1902.preheader ], [ %i.ckp, %._crit_edge.i.i1906.loopexit.unr-lcssa ] ; 2 uses
  %.06377.i.i1904.epil.init = phi i64 [ 0, %.lr.ph.i.i1902.preheader ], [ %i.cko, %._crit_edge.i.i1906.loopexit.unr-lcssa ]
  %lcmp.mod3621 = trunc i64 %umin3616 to i1
  call void @llvm.assume(i1 %lcmp.mod3621)
  %i.ckq = getelementptr [4 x i8], ptr %i.cgb, i64 %.06278.i.i1903.epil.init ; 2 uses
  %i.ckr = load i32, ptr %i.ckq, align 4, !tbaa !7
  %i.cks = zext i32 %i.ckr to i64
  %i.ckt = getelementptr [4 x i8], ptr %i.am, i64 %.06278.i.i1903.epil.init
  %i.cku = load i32, ptr %i.ckt, align 4, !tbaa !7
  %i.ckv = zext i32 %i.cku to i64
  %i.ckw = sub nsw i64 %i.cks, %i.ckv
  %i.ckx = add nsw i64 %i.ckw, %.06377.i.i1904.epil.init ; 2 uses
  %i.cky = trunc i64 %i.ckx to i32
  store i32 %i.cky, ptr %i.ckq, align 4, !tbaa !7
  %i.ckz = ashr i64 %i.ckx, 32
  br label %._crit_edge.i.i1906

._crit_edge.i.i1906:                              ; preds = %.lr.ph.i.i1902.epil.preheader, %._crit_edge.i.i1906.loopexit.unr-lcssa, %bb.cv
  %.063.lcssa.i.i1907 = phi i64 [ 0, %bb.cv ], [ %i.cko, %._crit_edge.i.i1906.loopexit.unr-lcssa ], [ %i.ckz, %.lr.ph.i.i1902.epil.preheader ] ; 3 uses
  %.not.i.i1908.not = icmp ult i64 %i.j, %i.cgc
  br i1 %.not.i.i1908.not, label %.preheader72.i.i1909, label %.lr.ph87.i.i1932

.preheader72.i.i1909:                             ; preds = %._crit_edge.i.i1906
  %i.cla = icmp ult i64 %i.l, %i.cgc
  br i1 %i.cla, label %.lr.ph82.i.i1928, label %.loopexit71.i.i1910

.lr.ph82.i.i1928:                                 ; preds = %.preheader72.i.i1909, %bb.cw
  %.181.i.i1929 = phi i64 [ %i.cli, %bb.cw ], [ %i.cjr, %.preheader72.i.i1909 ] ; 2 uses
  %.16480.i.i1930 = phi i64 [ %i.clh, %bb.cw ], [ %.063.lcssa.i.i1907, %.preheader72.i.i1909 ]
  %i.clb = icmp eq i64 %.16480.i.i1930, 0
  br i1 %i.clb, label %bary_add.exit1900.preheader, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph82.i.i1928
  %i.clc = getelementptr [4 x i8], ptr %i.cgb, i64 %.181.i.i1929 ; 2 uses
  %i.cld = load i32, ptr %i.clc, align 4, !tbaa !7
  %i.cle = zext i32 %i.cld to i64
  %i.clf = add nsw i64 %i.cle, -1                 ; 2 uses
  %i.clg = trunc i64 %i.clf to i32
  store i32 %i.clg, ptr %i.clc, align 4, !tbaa !7
  %i.clh = ashr i64 %i.clf, 32
  %i.cli = add i64 %.181.i.i1929, 1               ; 2 uses
  %exitcond107.not.i.i1931 = icmp eq i64 %i.cli, %i.cgc
  br i1 %exitcond107.not.i.i1931, label %bary_add.exit1900.preheader, label %.lr.ph82.i.i1928, !llvm.loop !50

.lr.ph87.i.i1932:                                 ; preds = %._crit_edge.i.i1906, %.lr.ph87.i.i1932
  %.286.i.i1933 = phi i64 [ %i.clq, %.lr.ph87.i.i1932 ], [ %i.cjr, %._crit_edge.i.i1906 ] ; 4 uses
  %.26585.i.i1934 = phi i64 [ %i.clp, %.lr.ph87.i.i1932 ], [ %.063.lcssa.i.i1907, %._crit_edge.i.i1906 ]
  %i.clj = getelementptr [4 x i8], ptr %i.am, i64 %.286.i.i1933
  %i.clk = load i32, ptr %i.clj, align 4, !tbaa !7
  %i.cll = zext i32 %i.clk to i64
  %i.clm = sub nsw i64 %.26585.i.i1934, %i.cll    ; 2 uses
  %i.cln = trunc i64 %i.clm to i32
  %i.clo = getelementptr [4 x i8], ptr %i.cgb, i64 %.286.i.i1933
  store i32 %i.cln, ptr %i.clo, align 4, !tbaa !7
  %i.clp = ashr i64 %i.clm, 32                    ; 2 uses
  %i.clq = add nuw i64 %.286.i.i1933, 1
  %exitcond108.not.i.i1935 = icmp eq i64 %.286.i.i1933, %i.j
  br i1 %exitcond108.not.i.i1935, label %.loopexit71.i.i1910, label %.lr.ph87.i.i1932, !llvm.loop !51
end_hunk_9
begin_hunk_10_@bary_divmod_normal:bb.a

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bt, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %.086140, %.lr.ph.i ], [ %i.bs, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01112.i.epil.init = phi ptr [ %4, %.lr.ph.i ], [ %i.bm, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.epil.preheader
  %.015.i.epil = phi i64 [ %.015.i.epil.init, %.epil.preheader ], [ %i.cb, %bb.t ]
  %.01013.i.epil = phi ptr [ %.01013.i.epil.init, %.epil.preheader ], [ %i.ca, %bb.t ] ; 2 uses
  %.01112.i.epil = phi ptr [ %.01112.i.epil.init, %.epil.preheader ], [ %i.bu, %bb.t ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.t ]
  %i.bu = getelementptr i8, ptr %.01112.i.epil, i64 4
  %i.bv = load i32, ptr %.01112.i.epil, align 4, !tbaa !7
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw i64 %i.bw, %i.al                ; 2 uses
  %i.by = or i64 %i.bx, %.015.i.epil
  %i.bz = trunc i64 %i.by to i32
  %i.ca = getelementptr i8, ptr %.01013.i.epil, i64 4
  store i32 %i.bz, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.cb = lshr i64 %i.bx, 32                      ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.t, !llvm.loop !153

._crit_edge.loopexit.i:                           ; preds = %bb.t, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa189 = phi i64 [ %i.bt, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.cb, %bb.t ]
  %i.cc = trunc nuw i64 %.lcssa189 to i32
  br label %bary_small_lshift.exit

bary_small_lshift.exit:                           ; preds = %bb.r, %._crit_edge.loopexit.i
  %.086141 = phi ptr [ %.086, %bb.r ], [ %.086140, %._crit_edge.loopexit.i ] ; 14 uses
  %.089139 = phi ptr [ %.089, %bb.r ], [ %.089138, %._crit_edge.loopexit.i ] ; 4 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.r ], [ %i.cc, %._crit_edge.loopexit.i ]
  %.086141186 = ptrtoaddr ptr %.086141 to i64
  %i.cd = getelementptr [4 x i8], ptr %.086141, i64 %5
  store i32 %.0.lcssa.i, ptr %i.cd, align 4, !tbaa !7
  %.not.i115 = icmp eq i64 %7, 0
  br i1 %.not.i115, label %bary_small_lshift.exit124, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %bary_small_lshift.exit
  %i.ce = zext nneg i32 %i.g to i64               ; 5 uses
  %i.cf = add i64 %7, -1
  %xtraiter193 = and i64 %7, 3                    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 3
  br i1 %i.cg, label %.epil.preheader192, label %.lr.ph.i116.new

.lr.ph.i116.new:                                  ; preds = %.lr.ph.i116
  %unroll_iter197 = and i64 %7, -4
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i116.new
  %.015.i117 = phi i64 [ 0, %.lr.ph.i116.new ], [ %i.dm, %bb.u ]
  %.01013.i119 = phi ptr [ %.089139, %.lr.ph.i116.new ], [ %i.dl, %bb.u ] ; 5 uses
  %.01112.i120 = phi ptr [ %6, %.lr.ph.i116.new ], [ %i.df, %bb.u ] ; 5 uses
  %niter198 = phi i64 [ 0, %.lr.ph.i116.new ], [ %niter198.next.3, %bb.u ]
  %i.ch = getelementptr i8, ptr %.01112.i120, i64 4
  %i.ci = load i32, ptr %.01112.i120, align 4, !tbaa !7
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw i64 %i.cj, %i.ce                ; 2 uses
  %i.cl = or i64 %i.ck, %.015.i117
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = getelementptr i8, ptr %.01013.i119, i64 4
  store i32 %i.cm, ptr %.01013.i119, align 4, !tbaa !7
  %i.co = lshr i64 %i.ck, 32
  %i.cp = getelementptr i8, ptr %.01112.i120, i64 8
  %i.cq = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cr = zext i32 %i.cq to i64
  %i.cs = shl nuw i64 %i.cr, %i.ce                ; 2 uses
  %i.ct = or i64 %i.cs, %i.co
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = getelementptr i8, ptr %.01013.i119, i64 8
  store i32 %i.cu, ptr %i.cn, align 4, !tbaa !7
  %i.cw = lshr i64 %i.cs, 32
  %i.cx = getelementptr i8, ptr %.01112.i120, i64 12
  %i.cy = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cz = zext i32 %i.cy to i64
  %i.da = shl nuw i64 %i.cz, %i.ce                ; 2 uses
  %i.db = or i64 %i.da, %i.cw
  %i.dc = trunc i64 %i.db to i32
  %i.dd = getelementptr i8, ptr %.01013.i119, i64 12
  store i32 %i.dc, ptr %i.cv, align 4, !tbaa !7
  %i.de = lshr i64 %i.da, 32
  %i.df = getelementptr i8, ptr %.01112.i120, i64 16 ; 2 uses
  %i.dg = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.dh = zext i32 %i.dg to i64
  %i.di = shl nuw i64 %i.dh, %i.ce                ; 2 uses
  %i.dj = or i64 %i.di, %i.de
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr i8, ptr %.01013.i119, i64 16 ; 2 uses
  store i32 %i.dk, ptr %i.dd, align 4, !tbaa !7
  %i.dm = lshr i64 %i.di, 32                      ; 2 uses
  %niter198.next.3 = add i64 %niter198, 4         ; 2 uses
  %niter198.ncmp.3 = icmp eq i64 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %bary_small_lshift.exit124.thread184.unr-lcssa, label %bb.u, !llvm.loop !88

bb.v:                                             ; preds = %bb.a
  %.not103 = icmp eq ptr %0, null
  %.not104 = icmp ugt i64 %i.c, %1
  %or.cond112 = or i1 %.not103, %.not104
  br i1 %or.cond112, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.dn = icmp ult i64 %i.c, 256
  br i1 %i.dn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.do = shl nuw nsw i64 %i.c, 2
  %i.dp = alloca i8, i64 %i.do, align 16
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.dq = icmp ugt i64 %i.c, 4611686018427387903
  br i1 %i.dq, label %bb.z, label %rbimpl_size_mul_or_raise.exit.thread, !prof !32

bb.z:                                             ; preds = %bb.y
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 256, 0) %i.c, i64 noundef 4) #25
  unreachable

rbimpl_size_mul_or_raise.exit.thread:             ; preds = %bb.y
  %i.dr = shl nuw i64 %i.c, 2                     ; 2 uses
  %i.ds = add i64 %i.dr, 4
  %i.dt = lshr i64 %i.ds, 3
  %i.du = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.b, i64 noundef %i.dr, i64 noundef %i.dt) #26
  br label %bb.ac

bb.aa:                                            ; preds = %bb.x, %bb.v
  %.1 = phi ptr [ %0, %bb.v ], [ %i.dp, %bb.x ]   ; 2 uses
  %i.dv = icmp ugt i64 %5, 4611686018427387903
  br i1 %i.dv, label %bb.ab, label %rbimpl_size_mul_or_raise.exit, !prof !154

bb.ab:                                            ; preds = %bb.aa
  tail call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %5) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.aa
  %.not.i126 = icmp eq i64 %5, 0
  br i1 %.not.i126, label %bary_small_lshift.exit124.thread, label %bb.ac

bb.ac:                                            ; preds = %rbimpl_size_mul_or_raise.exit.thread, %rbimpl_size_mul_or_raise.exit
  %.1179182 = phi ptr [ %i.du, %rbimpl_size_mul_or_raise.exit.thread ], [ %.1, %rbimpl_size_mul_or_raise.exit ] ; 2 uses
  %i.dw = shl nuw i64 %5, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.1179182, ptr noundef nonnull readonly align 1 %4, i64 noundef range(i64 1, 0) %i.dw, i1 noundef false) #23
  br label %bary_small_lshift.exit124.thread

bary_small_lshift.exit124:                        ; preds = %bary_small_lshift.exit
  call fastcc void @bigdivrem_restoring(ptr noundef nonnull %.086141, i64 noundef %i.c, ptr noundef nonnull %.089139, i64 noundef %7)
  br i1 %.not105, label %.loopexit151, label %bary_small_rshift.exit

bary_small_lshift.exit124.thread184.unr-lcssa:    ; preds = %bb.u
  %lcmp.mod195.not = icmp eq i64 %xtraiter193, 0
  br i1 %lcmp.mod195.not, label %bary_small_lshift.exit124.thread184, label %.epil.preheader192

.epil.preheader192:                               ; preds = %bary_small_lshift.exit124.thread184.unr-lcssa, %.lr.ph.i116
  %.015.i117.epil.init = phi i64 [ 0, %.lr.ph.i116 ], [ %i.dm, %bary_small_lshift.exit124.thread184.unr-lcssa ]
  %.01013.i119.epil.init = phi ptr [ %.089139, %.lr.ph.i116 ], [ %i.dl, %bary_small_lshift.exit124.thread184.unr-lcssa ]
  %.01112.i120.epil.init = phi ptr [ %6, %.lr.ph.i116 ], [ %i.df, %bary_small_lshift.exit124.thread184.unr-lcssa ]
  %lcmp.mod196 = icmp ne i64 %xtraiter193, 0
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader192
  %.015.i117.epil = phi i64 [ %.015.i117.epil.init, %.epil.preheader192 ], [ %i.ee, %bb.ad ]
  %.01013.i119.epil = phi ptr [ %.01013.i119.epil.init, %.epil.preheader192 ], [ %i.ed, %bb.ad ] ; 2 uses
  %.01112.i120.epil = phi ptr [ %.01112.i120.epil.init, %.epil.preheader192 ], [ %i.dx, %bb.ad ] ; 2 uses
  %epil.iter194 = phi i64 [ 0, %.epil.preheader192 ], [ %epil.iter194.next, %bb.ad ]
  %i.dx = getelementptr i8, ptr %.01112.i120.epil, i64 4
  %i.dy = load i32, ptr %.01112.i120.epil, align 4, !tbaa !7
  %i.dz = zext i32 %i.dy to i64
  %i.ea = shl nuw i64 %i.dz, %i.ce                ; 2 uses
  %i.eb = or i64 %i.ea, %.015.i117.epil
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr i8, ptr %.01013.i119.epil, i64 4
  store i32 %i.ec, ptr %.01013.i119.epil, align 4, !tbaa !7
  %i.ee = lshr i64 %i.ea, 32
  %epil.iter194.next = add i64 %epil.iter194, 1   ; 2 uses
  %epil.iter194.cmp.not = icmp eq i64 %epil.iter194.next, %xtraiter193
  br i1 %epil.iter194.cmp.not, label %bary_small_lshift.exit124.thread184, label %bb.ad, !llvm.loop !155

bary_small_lshift.exit124.thread184:              ; preds = %bb.ad, %bary_small_lshift.exit124.thread184.unr-lcssa
  call fastcc void @bigdivrem_restoring(ptr noundef nonnull %.086141, i64 noundef %i.c, ptr noundef nonnull %.089139, i64 noundef %7)
  br i1 %.not105, label %.loopexit151, label %.lr.ph.i128

bary_small_lshift.exit124.thread:                 ; preds = %bb.ac, %rbimpl_size_mul_or_raise.exit
  %.1179183 = phi ptr [ %.1179182, %bb.ac ], [ %.1, %rbimpl_size_mul_or_raise.exit ] ; 6 uses
  %i.ef = getelementptr [4 x i8], ptr %.1179183, i64 %5
  store i32 0, ptr %i.ef, align 4, !tbaa !7
  call fastcc void @bigdivrem_restoring(ptr noundef nonnull %.1179183, i64 noundef %i.c, ptr noundef nonnull %6, i64 noundef %7)
  %.not107144 = icmp eq ptr %2, null
  br i1 %.not107144, label %.loopexit151, label %.thread147

.lr.ph.i128:                                      ; preds = %bary_small_lshift.exit124.thread184
  %i.eg = zext nneg i32 %i.g to i64               ; 4 uses
  %min.iters.check = icmp ult i64 %7, 4
  %i.eh = sub i64 %i.a, %.086141186
  %diff.check = icmp ugt i64 %i.eh, -16
  %or.cond188 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond188, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i128
  %n.vec = and i64 %7, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.eg, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph ], [ %i.em, %vector.body ]
  %i.ei = xor i64 %index, -1
  %i.ej = add i64 %7, %i.ei                       ; 2 uses
  %i.ek = getelementptr [4 x i8], ptr %.086141, i64 %i.ej
  %i.el = getelementptr i8, ptr %i.ek, i64 -12
  %wide.load = load <4 x i32>, ptr %i.el, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.em = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.en = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.em, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.eo = shl nuw <4 x i64> %i.en, splat (i64 32)
  %i.ep = or disjoint <4 x i64> %i.eo, %i.em
  %i.eq = lshr <4 x i64> %i.ep, %broadcast.splat
  %i.er = trunc <4 x i64> %i.eq to <4 x i32>
  %i.es = getelementptr [4 x i8], ptr %2, i64 %i.ej
  %i.et = getelementptr i8, ptr %i.es, i64 -12
  %reverse187 = shufflevector <4 x i32> %i.er, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse187, ptr %i.et, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.em, i64 3
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %bary_small_rshift.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i128, %middle.block
  %.017.i.ph = phi i64 [ 0, %.lr.ph.i128 ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.ph = phi i64 [ 0, %.lr.ph.i128 ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.neg = or disjoint i64 %.017.i.ph, 1
  %xtraiter199 = and i64 %7, 1
  %lcmp.mod200.not = icmp eq i64 %xtraiter199, 0
  br i1 %lcmp.mod200.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.prol = shl nuw i64 %.014.in16.i.ph, 32
  %i.ev = xor i64 %.017.i.ph, -1
  %i.ew = add i64 %7, %i.ev                       ; 2 uses
  %i.ex = getelementptr [4 x i8], ptr %.086141, i64 %i.ew
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !7
  %i.ez = zext i32 %i.ey to i64                   ; 2 uses
  %i.fa = or disjoint i64 %.014.i.prol, %i.ez
  %i.fb = lshr i64 %i.fa, %i.eg
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = getelementptr [4 x i8], ptr %2, i64 %i.ew
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !7
  %i.fe = or disjoint i64 %.017.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %scalar.ph.preheader ], [ %i.fe, %scalar.ph.prol ]
  %.014.in16.i.unr = phi i64 [ %.014.in16.i.ph, %scalar.ph.preheader ], [ %i.ez, %scalar.ph.prol ]
  %i.ff = icmp eq i64 %7, %.neg
  br i1 %i.ff, label %bary_small_rshift.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i = phi i64 [ %i.fx, %scalar.ph ], [ %.017.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i = phi i64 [ %i.fs, %scalar.ph ], [ %.014.in16.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i = shl nuw i64 %.014.in16.i, 32
  %i.fg = xor i64 %.017.i, -1
  %i.fh = add i64 %7, %i.fg                       ; 2 uses
  %i.fi = getelementptr [4 x i8], ptr %.086141, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !7
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = or disjoint i64 %.014.i, %i.fk
  %i.fm = lshr i64 %i.fl, %i.eg
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = getelementptr [4 x i8], ptr %2, i64 %i.fh
  store i32 %i.fn, ptr %i.fo, align 4, !tbaa !7
  %.014.i.1 = shl nuw i64 %i.fk, 32
  %reass.sub = sub i64 %7, %.017.i
  %i.fp = add i64 %reass.sub, -2                  ; 2 uses
  %i.fq = getelementptr [4 x i8], ptr %.086141, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !7
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = or disjoint i64 %.014.i.1, %i.fs
  %i.fu = lshr i64 %i.ft, %i.eg
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = getelementptr [4 x i8], ptr %2, i64 %i.fp
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !7
  %i.fx = add nuw i64 %.017.i, 2                  ; 2 uses
  %exitcond.not.i129.1 = icmp eq i64 %i.fx, %7
  br i1 %exitcond.not.i129.1, label %bary_small_rshift.exit, label %scalar.ph, !llvm.loop !157

.thread147:                                       ; preds = %bary_small_lshift.exit124.thread
  %i.fy = icmp ugt i64 %7, 4611686018427387903
  br i1 %i.fy, label %bb.ae, label %rbimpl_size_mul_or_raise.exit130, !prof !32

bb.ae:                                            ; preds = %.thread147
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %7) #25
  unreachable

rbimpl_size_mul_or_raise.exit130:                 ; preds = %.thread147
  %.not.i131 = icmp eq i64 %7, 0
  br i1 %.not.i131, label %bary_small_rshift.exit, label %bb.af

bb.af:                                            ; preds = %rbimpl_size_mul_or_raise.exit130
  %i.fz = shl nuw i64 %7, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %2, ptr noundef nonnull readonly align 1 %.1179183, i64 noundef range(i64 1, 0) %i.fz, i1 noundef false) #23
  br label %bary_small_rshift.exit

bary_small_rshift.exit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bary_small_lshift.exit124, %bb.af, %rbimpl_size_mul_or_raise.exit130
  %.2145149 = phi ptr [ %.1179183, %bb.af ], [ %.086141, %bary_small_lshift.exit124 ], [ %.1179183, %rbimpl_size_mul_or_raise.exit130 ], [ %.086141, %middle.block ], [ %.086141, %scalar.ph ], [ %.086141, %scalar.ph.prol.loopexit ] ; 2 uses
  %.not108152 = icmp eq i64 %3, %7
  br i1 %.not108152, label %.loopexit151, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bary_small_rshift.exit
  %i.ga = getelementptr [4 x i8], ptr %2, i64 %7
  %i.gb = sub i64 %3, %7
  %i.gc = shl i64 %i.gb, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ga, i8 0, i64 %i.gc, i1 false), !tbaa !7
  br label %.loopexit151

.loopexit151:                                     ; preds = %bary_small_lshift.exit124.thread184, %.lr.ph.preheader, %bary_small_rshift.exit, %bary_small_lshift.exit124.thread, %bary_small_lshift.exit124
  %.2146 = phi ptr [ %.1179183, %bary_small_lshift.exit124.thread ], [ %.086141, %bary_small_lshift.exit124 ], [ %.2145149, %bary_small_rshift.exit ], [ %.2145149, %.lr.ph.preheader ], [ %.086141, %bary_small_lshift.exit124.thread184 ]
  %.not109 = icmp eq ptr %0, null
  br i1 %.not109, label %.loopexit, label %bb.ag

bb.ag:                                            ; preds = %.loopexit151
  %i.gd = sub i64 %i.c, %7                        ; 6 uses
  %i.ge = icmp ugt i64 %i.gd, 4611686018427387903
  br i1 %i.ge, label %bb.ah, label %rbimpl_size_mul_or_raise.exit134, !prof !32

bb.ah:                                            ; preds = %bb.ag
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.gd) #25
  unreachable

rbimpl_size_mul_or_raise.exit134:                 ; preds = %bb.ag
  %i.gf = getelementptr [4 x i8], ptr %.2146, i64 %7
  %i.gg = shl nuw i64 %i.gd, 2
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %i.gf, i64 noundef %i.gg, i1 noundef false) #23
  %.not110155 = icmp eq i64 %1, %i.gd
  br i1 %.not110155, label %.loopexit, label %.lr.ph158.preheader

.lr.ph158.preheader:                              ; preds = %rbimpl_size_mul_or_raise.exit134
  %i.gh = sub i64 %1, %i.gd
  %i.gi = getelementptr [4 x i8], ptr %0, i64 %i.gd
  %i.gj = shl nuw i64 %i.gh, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.gi, i8 0, i64 %i.gj, i1 false), !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph158.preheader, %rbimpl_size_mul_or_raise.exit134, %.loopexit151
  %i.gk = load i64, ptr %i.b, align 8, !tbaa !11
  %.not111 = icmp eq i64 %i.gk, 0
  br i1 %.not111, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.loopexit
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @rb_bigzero_p(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = and i64 %i.b, 16384
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %BIGNUM_LEN.exit, label %BIGNUM_LEN.exit.thread

BIGNUM_LEN.exit:                                  ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15   ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bigzero_p.exit, label %BIGNUM_DIGITS.exit

BIGNUM_LEN.exit.thread:                           ; preds = %bb.a
  %i.g = and i64 %i.b, 16744448                   ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bigzero_p.exit, label %BIGNUM_DIGITS.exit.thread

BIGNUM_DIGITS.exit:                               ; preds = %BIGNUM_LEN.exit
  %i.i = getelementptr i8, ptr %i.a, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %BIGNUM_LEN.exit8, label %bigzero_p.exit

BIGNUM_DIGITS.exit.thread:                        ; preds = %BIGNUM_LEN.exit.thread
  %i.m = getelementptr i8, ptr %i.a, i64 16       ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !7
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %BIGNUM_LEN.exit8.thread, label %bigzero_p.exit

BIGNUM_LEN.exit8:                                 ; preds = %BIGNUM_DIGITS.exit
end_hunk_10
begin_hunk_11_@str2big_karatsuba:bb.a
bb.j:                                             ; preds = %bb.i
  %i.ao = zext nneg i8 %i.am to i64
  %i.ap = mul i64 %.0117212, %i.ao
  %i.aq = add i64 %i.ap, %.0119211                ; 2 uses
  %i.ar = mul i64 %.0117212, %i.ag
  %i.as = add i64 %.0216, -1                      ; 3 uses
  %i.at = add i32 %.1115213, -1                   ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr [4 x i8], ptr %i.j, i64 %.0111214
  store i64 %i.aq, ptr %i.av, align 4
  %i.aw = add i64 %.0111214, 2
  %spec.select138201 = call i64 @llvm.umin.i64(i64 %i.as, i64 %i.ae)
  %spec.select138 = trunc i64 %spec.select138201 to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.1120 = phi i64 [ %.0119211, %bb.i ], [ 0, %bb.k ], [ %i.aq, %bb.j ]
  %.1118 = phi i64 [ %.0117212, %bb.i ], [ 1, %bb.k ], [ %i.ar, %bb.j ]
  %.3 = phi i32 [ %.1115213, %bb.i ], [ %spec.select138, %bb.k ], [ %i.at, %bb.j ]
  %.1112 = phi i64 [ %.0111214, %bb.i ], [ %i.aw, %bb.k ], [ %.0111214, %bb.j ]
  %.1 = phi i64 [ %.0216, %bb.i ], [ %i.as, %bb.k ], [ %i.as, %bb.j ]
  %i.ax = icmp ult ptr %1, %i.ai
  br i1 %i.ax, label %bb.i, label %.preheader203, !llvm.loop !218

.preheader202:                                    ; preds = %.preheader203, %bb.ac
  %.0113223 = phi i32 [ %i.jb, %bb.ac ], [ 0, %.preheader203 ]
  %.0121222 = phi i64 [ %i.jc, %bb.ac ], [ %.1.i, %.preheader203 ]
  %.0122221 = phi ptr [ %.0123220, %bb.ac ], [ %i.k, %.preheader203 ] ; 8 uses
  %.0123220 = phi ptr [ %.0122221, %bb.ac ], [ %i.j, %.preheader203 ] ; 6 uses
  %.0124219 = phi i64 [ %i.ay, %bb.ac ], [ 2, %.preheader203 ] ; 22 uses
  %.0122221287 = ptrtoaddr ptr %.0122221 to i64   ; 2 uses
  %i.ay = shl i64 %.0124219, 1                    ; 13 uses
  %i.az = inttoptr i64 %.0121222 to ptr           ; 4 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 16     ; 4 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 24     ; 2 uses
  %i.bc = icmp sgt i64 %.0124219, 0
  %.not.i.i142 = icmp eq i64 %i.ay, 0
  %i.bd = shl i64 %.0124219, 3
  %i.be = mul i64 %.0124219, -2
  %i.bf = shl i64 %.0124219, 3
  %i.bg = mul i64 %.0124219, -2
  %i.bh = mul i64 %.0124219, -2
  br label %bb.m

.preheader:                                       ; preds = %bb.ac, %.preheader203
  %.0123.lcssa = phi ptr [ %i.j, %.preheader203 ], [ %.0122221, %bb.ac ] ; 2 uses
  %.not224 = icmp eq i64 %4, 0
  br i1 %.not224, label %.critedge, label %.lr.ph226

bb.m:                                             ; preds = %.preheader202, %bary_add.exit
  %indvar = phi i64 [ 0, %.preheader202 ], [ %indvar.next, %bary_add.exit ] ; 6 uses
  %.2217 = phi i64 [ 0, %.preheader202 ], [ %i.iz, %bary_add.exit ] ; 11 uses
  %i.bi = mul i64 %i.bh, %indvar
  %i.bj = add i64 %4, %i.bi
  %umax327 = call i64 @llvm.umax.i64(i64 %.0124219, i64 %i.bj) ; 2 uses
  %i.bk = mul i64 %i.bg, %indvar
  %i.bl = add i64 %4, %i.bk
  %umin322 = call i64 @llvm.umin.i64(i64 %.0124219, i64 %i.bl) ; 4 uses
  %i.bm = mul i64 %i.bf, %indvar
  %i.bn = add i64 %i.bm, %.0122221287
  %i.bo = mul i64 %i.be, %indvar
  %i.bp = add i64 %4, %i.bo                       ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %.0124219, i64 %i.bp)
  %umin = call i64 @llvm.umin.i64(i64 %.0124219, i64 %i.bp)
  %i.bq = mul i64 %i.bd, %indvar
  %i.br = add i64 %i.bq, %.0122221287
  %i.bs = sub nuw i64 %4, %.2217                  ; 10 uses
  %.not136 = icmp ugt i64 %i.ay, %i.bs
  br i1 %.not136, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = getelementptr [4 x i8], ptr %.0122221, i64 %.2217 ; 14 uses
  %i.bu = load i64, ptr %i.az, align 8, !tbaa !13 ; 2 uses
  %i.bv = and i64 %i.bu, 16384
  %.not.i139 = icmp eq i64 %i.bv, 0
  br i1 %.not.i139, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %i.bb, align 8, !tbaa !15
  %i.bx = load i64, ptr %i.ba, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.p:                                             ; preds = %bb.n
  %i.by = lshr i64 %i.bu, 15
  %i.bz = and i64 %i.by, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.o, %bb.p
  %.0.i195 = phi ptr [ %i.ba, %bb.p ], [ %i.bw, %bb.o ]
  %.0.i141 = phi i64 [ %i.bz, %bb.p ], [ %i.bx, %bb.o ]
  %i.ca = getelementptr [4 x i8], ptr %.0123220, i64 %.2217 ; 3 uses
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %.0124219
  call fastcc void @bary_mul(ptr noundef %i.bt, i64 noundef %i.ay, ptr noundef %.0.i195, i64 noundef %.0.i141, ptr noundef %i.cb, i64 noundef %.0124219)
  br i1 %i.bc, label %.lr.ph.i.i.preheader, label %bb.q

bb.q:                                             ; preds = %BIGNUM_LEN.exit
  br i1 %.not.i.i142, label %.preheader72.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %BIGNUM_LEN.exit, %bb.q
  %i.cc = phi ptr [ %.0122221, %bb.q ], [ %.0123220, %BIGNUM_LEN.exit ]
  %.062.i.i266 = phi i64 [ %.0124219, %bb.q ], [ %i.ay, %BIGNUM_LEN.exit ]
  %.063.i.i264 = phi ptr [ %i.ca, %bb.q ], [ %i.bt, %BIGNUM_LEN.exit ] ; 3 uses
  %.064.i.i262 = phi i64 [ %i.ay, %bb.q ], [ %.0124219, %BIGNUM_LEN.exit ] ; 2 uses
  %i.cd = getelementptr [4 x i8], ptr %i.cc, i64 %.2217 ; 2 uses
  br label %.lr.ph.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph.i.i, %bb.q
  %.062.i.i267 = phi i64 [ %.0124219, %bb.q ], [ %.062.i.i266, %.lr.ph.i.i ] ; 12 uses
  %.063.i.i265 = phi ptr [ %i.ca, %bb.q ], [ %.063.i.i264, %.lr.ph.i.i ] ; 9 uses
  %.064.i.i263 = phi i64 [ 0, %bb.q ], [ %.064.i.i262, %.lr.ph.i.i ] ; 3 uses
  %.058.lcssa.i.i = phi i64 [ 0, %bb.q ], [ %i.db, %.lr.ph.i.i ] ; 2 uses
  %.063.i.i265294 = ptrtoaddr ptr %.063.i.i265 to i64
  %i.ce = icmp ult i64 %.064.i.i263, %.062.i.i267
  br i1 %i.ce, label %.lr.ph83.i.i, label %.preheader70.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.05779.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.dc, %.lr.ph.i.i ] ; 5 uses
  %.05878.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.db, %.lr.ph.i.i ]
  %i.cf = getelementptr [4 x i8], ptr %i.cd, i64 %.05779.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr [4 x i8], ptr %.063.i.i264, i64 %.05779.i.i
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7
  %i.ck = zext i32 %i.cj to i64
  %i.cl = add nuw nsw i64 %.05878.i.i, %i.ch
  %i.cm = add nuw nsw i64 %i.cl, %i.ck            ; 2 uses
  %i.cn = trunc i64 %i.cm to i32
  %i.co = getelementptr [4 x i8], ptr %i.bt, i64 %.05779.i.i
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !7
  %i.cp = lshr i64 %i.cm, 32
  %i.cq = or disjoint i64 %.05779.i.i, 1          ; 3 uses
  %i.cr = getelementptr [4 x i8], ptr %i.cd, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr [4 x i8], ptr %.063.i.i264, i64 %i.cq
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.cw = zext i32 %i.cv to i64
  %i.cx = add nuw nsw i64 %i.cp, %i.ct
  %i.cy = add nuw nsw i64 %i.cx, %i.cw            ; 2 uses
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr [4 x i8], ptr %i.bt, i64 %i.cq
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !7
  %i.db = lshr i64 %i.cy, 32                      ; 2 uses
  %i.dc = add nuw i64 %.05779.i.i, 2              ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.dc, %.064.i.i262
  br i1 %exitcond.not.i.i.1, label %.preheader72.i.i, label %.lr.ph.i.i, !llvm.loop !34

.preheader70.i.i:                                 ; preds = %bb.s, %.preheader72.i.i
  %.159.lcssa.i.i = phi i64 [ %.058.lcssa.i.i, %.preheader72.i.i ], [ %i.do, %bb.s ]
  %.1.lcssa.i.i = phi i64 [ %.064.i.i263, %.preheader72.i.i ], [ %.062.i.i267, %bb.s ] ; 4 uses
  %i.dd = icmp ult i64 %.1.lcssa.i.i, %i.ay
  br i1 %i.dd, label %.lr.ph88.preheader.i.i, label %bary_add.exit

.lr.ph88.preheader.i.i:                           ; preds = %.preheader70.i.i
  %i.de = icmp eq i64 %.159.lcssa.i.i, 0
  br i1 %i.de, label %.loopexit71.i.i, label %bb.r

bb.r:                                             ; preds = %.lr.ph88.preheader.i.i
  %i.df = getelementptr [4 x i8], ptr %i.bt, i64 %.1.lcssa.i.i
  store i32 1, ptr %i.df, align 4, !tbaa !7
  %i.dg = add nuw i64 %.1.lcssa.i.i, 1            ; 2 uses
  %exitcond103.peel.not.i.i = icmp eq i64 %i.dg, %i.ay
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit, label %.loopexit71.i.i

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i, %bb.s
  %.182.i.i = phi i64 [ %i.dp, %bb.s ], [ %.064.i.i263, %.preheader72.i.i ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.do, %bb.s ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.dh = icmp eq i64 %.15981.i.i, 0
  br i1 %i.dh, label %.loopexit71.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph83.i.i
  %i.di = getelementptr [4 x i8], ptr %.063.i.i265, i64 %.182.i.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !7
  %i.dk = zext i32 %i.dj to i64
  %i.dl = add nuw nsw i64 %i.dk, 1                ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = getelementptr [4 x i8], ptr %i.bt, i64 %.182.i.i
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !7
  %i.do = lshr i64 %i.dl, 32                      ; 2 uses
  %i.dp = add i64 %.182.i.i, 1                    ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.dp, %.062.i.i267
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !36

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.r, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.dg, %bb.r ], [ %.1.lcssa.i.i, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 6 uses
  %i.dq = icmp eq ptr %.063.i.i265, %i.bt
  %i.dr = icmp eq i64 %.062.i.i267, %i.ay
  %or.cond.i.i = and i1 %i.dq, %i.dr
  br i1 %or.cond.i.i, label %bary_add.exit, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i
  %i.ds = icmp ult i64 %.3.i.i, %.062.i.i267
  br i1 %i.ds, label %.lr.ph91.i.i.preheader, label %.preheader.i.i

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i
  %i.dt = sub nuw i64 %.062.i.i267, %.3.i.i       ; 3 uses
  %min.iters.check297 = icmp ult i64 %i.dt, 8
  %i.du = sub i64 %.063.i.i265294, %i.bn
  %diff.check295 = icmp ugt i64 %i.du, -32
  %or.cond309 = select i1 %min.iters.check297, i1 true, i1 %diff.check295
  br i1 %or.cond309, label %.lr.ph91.i.i.preheader313, label %vector.ph298

vector.ph298:                                     ; preds = %.lr.ph91.i.i.preheader
  %n.vec300 = and i64 %i.dt, -8                   ; 3 uses
  %i.dv = add i64 %.3.i.i, %n.vec300
  br label %vector.body301

vector.body301:                                   ; preds = %vector.body301, %vector.ph298
  %index302 = phi i64 [ 0, %vector.ph298 ], [ %index.next305, %vector.body301 ] ; 2 uses
  %i.dw = add i64 %.3.i.i, %index302              ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %.063.i.i265, i64 %i.dw ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  %wide.load303 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !7
  %wide.load304 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !7
  %i.dz = getelementptr [4 x i8], ptr %i.bt, i64 %i.dw ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  store <4 x i32> %wide.load303, ptr %i.dz, align 4, !tbaa !7
  store <4 x i32> %wide.load304, ptr %i.ea, align 4, !tbaa !7
  %index.next305 = add nuw i64 %index302, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next305, %n.vec300
  br i1 %i.eb, label %middle.block306, label %vector.body301, !llvm.loop !219

middle.block306:                                  ; preds = %vector.body301
  %cmp.n307 = icmp eq i64 %i.dt, %n.vec300
  br i1 %cmp.n307, label %.preheader.i.i, label %.lr.ph91.i.i.preheader313

.lr.ph91.i.i.preheader313:                        ; preds = %.lr.ph91.i.i.preheader, %middle.block306
  %.490.i.i.ph = phi i64 [ %.3.i.i, %.lr.ph91.i.i.preheader ], [ %i.dv, %middle.block306 ] ; 4 uses
  %i.ec = sub i64 %.062.i.i267, %.490.i.i.ph
  %xtraiter = and i64 %i.ec, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader313, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.eg, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader313 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader313 ]
  %i.ed = getelementptr [4 x i8], ptr %.063.i.i265, i64 %.490.i.i.prol
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !7
  %i.ef = getelementptr [4 x i8], ptr %i.bt, i64 %.490.i.i.prol
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !7
  %i.eg = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !220

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader313
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader313 ], [ %i.eg, %.lr.ph91.i.i.prol ]
  %i.eh = sub i64 %.490.i.i.ph, %.062.i.i267
  %i.ei = icmp ugt i64 %i.eh, -4
  br i1 %i.ei, label %.preheader.i.i, label %.lr.ph91.i.i

.preheader.i.i:                                   ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i, %middle.block306, %.preheader69.i.i
  %.4.lcssa.i.i = phi i64 [ %.3.i.i, %.preheader69.i.i ], [ %.062.i.i267, %middle.block306 ], [ %.062.i.i267, %.lr.ph91.i.i ], [ %.062.i.i267, %.lr.ph91.i.i.prol.loopexit ] ; 3 uses
  %i.ej = icmp ult i64 %.4.lcssa.i.i, %i.ay
  br i1 %i.ej, label %.lr.ph94.preheader.i.i, label %bary_add.exit

.lr.ph94.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.ek = shl i64 %.4.lcssa.i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %i.bt, i64 %i.ek
  %i.el = sub nuw i64 %i.ay, %.4.lcssa.i.i
  %i.em = shl i64 %i.el, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.em, i1 false), !tbaa !7
  br label %bary_add.exit

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.fc, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.en = getelementptr [4 x i8], ptr %.063.i.i265, i64 %.490.i.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !7
  %i.ep = getelementptr [4 x i8], ptr %i.bt, i64 %.490.i.i
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !7
  %i.eq = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.er = getelementptr [4 x i8], ptr %.063.i.i265, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !7
  %i.et = getelementptr [4 x i8], ptr %i.bt, i64 %i.eq
  store i32 %i.es, ptr %i.et, align 4, !tbaa !7
  %i.eu = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.ev = getelementptr [4 x i8], ptr %.063.i.i265, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !7
  %i.ex = getelementptr [4 x i8], ptr %i.bt, i64 %i.eu
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !7
  %i.ey = add nuw i64 %.490.i.i, 3                ; 2 uses
  %i.ez = getelementptr [4 x i8], ptr %.063.i.i265, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !7
  %i.fb = getelementptr [4 x i8], ptr %i.bt, i64 %i.ey
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !7
  %i.fc = add nuw i64 %.490.i.i, 4                ; 2 uses
  %exitcond106.not.i.i.3 = icmp eq i64 %i.fc, %.062.i.i267
  br i1 %exitcond106.not.i.i.3, label %.preheader.i.i, label %.lr.ph91.i.i, !llvm.loop !221

bb.t:                                             ; preds = %bb.m
  %.not137 = icmp ugt i64 %.0124219, %i.bs
  br i1 %.not137, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = getelementptr [4 x i8], ptr %.0122221, i64 %.2217 ; 13 uses
  %i.fe = load i64, ptr %i.az, align 8, !tbaa !13 ; 2 uses
  %i.ff = and i64 %i.fe, 16384
  %.not.i144 = icmp eq i64 %i.ff, 0
  br i1 %.not.i144, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fg = load ptr, ptr %i.bb, align 8, !tbaa !15
  %i.fh = load i64, ptr %i.ba, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit149

bb.w:                                             ; preds = %bb.u
  %i.fi = lshr i64 %i.fe, 15
  %i.fj = and i64 %i.fi, 511
  br label %BIGNUM_LEN.exit149

BIGNUM_LEN.exit149:                               ; preds = %bb.v, %bb.w
  %.0.i145198 = phi ptr [ %i.ba, %bb.w ], [ %i.fg, %bb.v ]
  %.0.i148 = phi i64 [ %i.fj, %bb.w ], [ %i.fh, %bb.v ]
  %i.fk = getelementptr [4 x i8], ptr %.0123220, i64 %.2217 ; 2 uses
  %i.fl = getelementptr [4 x i8], ptr %i.fk, i64 %.0124219
  %i.fm = add i64 %.0124219, %.2217
  %i.fn = sub i64 %4, %i.fm
  call fastcc void @bary_mul(ptr noundef %i.fd, i64 noundef %i.bs, ptr noundef %.0.i145198, i64 noundef %.0.i148, ptr noundef %i.fl, i64 noundef %i.fn)
  %i.fo = icmp ugt i64 %i.bs, %.0124219
  br i1 %i.fo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %BIGNUM_LEN.exit149
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %BIGNUM_LEN.exit149
  %.064.i.i150 = phi i64 [ %.0124219, %bb.x ], [ %i.bs, %BIGNUM_LEN.exit149 ] ; 3 uses
  %.063.i.i151 = phi ptr [ %i.fd, %bb.x ], [ %i.fk, %BIGNUM_LEN.exit149 ] ; 12 uses
  %.062.i.i152 = phi i64 [ %i.bs, %bb.x ], [ %.0124219, %BIGNUM_LEN.exit149 ] ; 5 uses
  %i.fp = phi ptr [ %.0123220, %bb.x ], [ %.0122221, %BIGNUM_LEN.exit149 ]
  %.063.i.i151288 = ptrtoaddr ptr %.063.i.i151 to i64
  %.not.i.i154 = icmp eq i64 %.064.i.i150, 0
  br i1 %.not.i.i154, label %.preheader72.i.i159, label %.lr.ph.i.i155.preheader

.lr.ph.i.i155.preheader:                          ; preds = %bb.y
  %i.fq = getelementptr [4 x i8], ptr %i.fp, i64 %.2217 ; 3 uses
  %xtraiter323 = and i64 %umin322, 1
  %i.fr = icmp eq i64 %umin322, 1
  br i1 %i.fr, label %.lr.ph.i.i155.epil.preheader, label %.lr.ph.i.i155.preheader.new

.lr.ph.i.i155.preheader.new:                      ; preds = %.lr.ph.i.i155.preheader
  %unroll_iter = and i64 %umin322, -2
  br label %.lr.ph.i.i155

.preheader72.i.i159.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i155
  %lcmp.mod324.not = icmp eq i64 %xtraiter323, 0
  br i1 %lcmp.mod324.not, label %.preheader72.i.i159, label %.lr.ph.i.i155.epil.preheader

.lr.ph.i.i155.epil.preheader:                     ; preds = %.preheader72.i.i159.loopexit.unr-lcssa, %.lr.ph.i.i155.preheader
  %.05779.i.i156.epil.init = phi i64 [ 0, %.lr.ph.i.i155.preheader ], [ %i.hb, %.preheader72.i.i159.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i157.epil.init = phi i64 [ 0, %.lr.ph.i.i155.preheader ], [ %i.ha, %.preheader72.i.i159.loopexit.unr-lcssa ]
  %lcmp.mod326 = trunc i64 %umin322 to i1
  call void @llvm.assume(i1 %lcmp.mod326)
  %i.fs = getelementptr [4 x i8], ptr %i.fq, i64 %.05779.i.i156.epil.init
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !7
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.05779.i.i156.epil.init
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !7
  %i.fx = zext i32 %i.fw to i64
  %i.fy = add nuw nsw i64 %.05878.i.i157.epil.init, %i.fu
  %i.fz = add nuw nsw i64 %i.fy, %i.fx            ; 2 uses
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = getelementptr [4 x i8], ptr %i.fd, i64 %.05779.i.i156.epil.init
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !7
  %i.gc = lshr i64 %i.fz, 32
  br label %.preheader72.i.i159

.preheader72.i.i159:                              ; preds = %.lr.ph.i.i155.epil.preheader, %.preheader72.i.i159.loopexit.unr-lcssa, %bb.y
  %.058.lcssa.i.i160 = phi i64 [ 0, %bb.y ], [ %i.ha, %.preheader72.i.i159.loopexit.unr-lcssa ], [ %i.gc, %.lr.ph.i.i155.epil.preheader ]
  %i.gd = icmp ult i64 %.064.i.i150, %.062.i.i152
  br i1 %i.gd, label %.lr.ph83.i.i180, label %bary_add.exit

.lr.ph.i.i155:                                    ; preds = %.lr.ph.i.i155, %.lr.ph.i.i155.preheader.new
  %.05779.i.i156 = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %i.hb, %.lr.ph.i.i155 ] ; 5 uses
  %.05878.i.i157 = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %i.ha, %.lr.ph.i.i155 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i155.preheader.new ], [ %niter.next.1, %.lr.ph.i.i155 ]
  %i.ge = getelementptr [4 x i8], ptr %i.fq, i64 %.05779.i.i156
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !7
  %i.gg = zext i32 %i.gf to i64
  %i.gh = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.05779.i.i156
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !7
  %i.gj = zext i32 %i.gi to i64
  %i.gk = add nuw nsw i64 %.05878.i.i157, %i.gg
  %i.gl = add nuw nsw i64 %i.gk, %i.gj            ; 2 uses
  %i.gm = trunc i64 %i.gl to i32
  %i.gn = getelementptr [4 x i8], ptr %i.fd, i64 %.05779.i.i156
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !7
  %i.go = lshr i64 %i.gl, 32
  %i.gp = or disjoint i64 %.05779.i.i156, 1       ; 3 uses
  %i.gq = getelementptr [4 x i8], ptr %i.fq, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !7
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.gp
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !7
  %i.gv = zext i32 %i.gu to i64
  %i.gw = add nuw nsw i64 %i.go, %i.gs
  %i.gx = add nuw nsw i64 %i.gw, %i.gv            ; 2 uses
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = getelementptr [4 x i8], ptr %i.fd, i64 %i.gp
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !7
  %i.ha = lshr i64 %i.gx, 32                      ; 3 uses
  %i.hb = add nuw i64 %.05779.i.i156, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader72.i.i159.loopexit.unr-lcssa, label %.lr.ph.i.i155, !llvm.loop !34

.lr.ph83.i.i180:                                  ; preds = %.preheader72.i.i159, %bb.z
  %indvar289 = phi i64 [ %indvar.next290, %bb.z ], [ 0, %.preheader72.i.i159 ] ; 2 uses
  %.182.i.i181 = phi i64 [ %i.hk, %bb.z ], [ %.064.i.i150, %.preheader72.i.i159 ] ; 7 uses
  %.15981.i.i182 = phi i64 [ %i.hj, %bb.z ], [ %.058.lcssa.i.i160, %.preheader72.i.i159 ]
  %i.hc = icmp eq i64 %.15981.i.i182, 0
  br i1 %i.hc, label %.loopexit71.i.i169, label %bb.z

bb.z:                                             ; preds = %.lr.ph83.i.i180
  %i.hd = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.182.i.i181
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !7
  %i.hf = zext i32 %i.he to i64
  %i.hg = add nuw nsw i64 %i.hf, 1                ; 2 uses
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = getelementptr [4 x i8], ptr %i.fd, i64 %.182.i.i181
  store i32 %i.hh, ptr %i.hi, align 4, !tbaa !7
  %i.hj = lshr i64 %i.hg, 32
  %i.hk = add i64 %.182.i.i181, 1                 ; 2 uses
  %exitcond102.not.i.i183 = icmp eq i64 %i.hk, %.062.i.i152
  %indvar.next290 = add i64 %indvar289, 1
  br i1 %exitcond102.not.i.i183, label %bary_add.exit, label %.lr.ph83.i.i180, !llvm.loop !36

.loopexit71.i.i169:                               ; preds = %.lr.ph83.i.i180
  %i.hl = icmp ne ptr %.063.i.i151, %i.fd
  %i.hm = icmp ne i64 %.062.i.i152, %i.bs
  %or.cond.i.i171.not278 = or i1 %i.hl, %i.hm
  %i.hn = icmp ult i64 %.182.i.i181, %.062.i.i152
  %or.cond = and i1 %or.cond.i.i171.not278, %i.hn
  br i1 %or.cond, label %.lr.ph91.i.i177.preheader, label %bary_add.exit

.lr.ph91.i.i177.preheader:                        ; preds = %.loopexit71.i.i169
  %i.ho = add i64 %umin, %indvar289
  %i.hp = sub i64 %umax, %i.ho                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.hp, 8
  %i.hq = sub i64 %.063.i.i151288, %i.br
  %diff.check = icmp ugt i64 %i.hq, -32
  %or.cond310 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond310, label %.lr.ph91.i.i177.preheader311, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.i.i177.preheader
  %n.vec = and i64 %i.hp, -8                      ; 3 uses
  %i.hr = add i64 %.182.i.i181, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hs = add i64 %.182.i.i181, %index            ; 2 uses
  %i.ht = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.hs ; 2 uses
  %i.hu = getelementptr i8, ptr %i.ht, i64 16
  %wide.load = load <4 x i32>, ptr %i.ht, align 4, !tbaa !7
  %wide.load291 = load <4 x i32>, ptr %i.hu, align 4, !tbaa !7
  %i.hv = getelementptr [4 x i8], ptr %i.fd, i64 %i.hs ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 16
  store <4 x i32> %wide.load, ptr %i.hv, align 4, !tbaa !7
  store <4 x i32> %wide.load291, ptr %i.hw, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hx = icmp eq i64 %index.next, %n.vec
  br i1 %i.hx, label %middle.block, label %vector.body, !llvm.loop !222

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hp, %n.vec
  br i1 %cmp.n, label %bary_add.exit, label %.lr.ph91.i.i177.preheader311

.lr.ph91.i.i177.preheader311:                     ; preds = %.lr.ph91.i.i177.preheader, %middle.block
  %.490.i.i178.ph = phi i64 [ %.182.i.i181, %.lr.ph91.i.i177.preheader ], [ %i.hr, %middle.block ] ; 4 uses
  %i.hy = sub i64 %umax327, %.490.i.i178.ph
  %xtraiter328 = and i64 %i.hy, 3                 ; 2 uses
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329.not, label %.lr.ph91.i.i177.prol.loopexit, label %.lr.ph91.i.i177.prol

.lr.ph91.i.i177.prol:                             ; preds = %.lr.ph91.i.i177.preheader311, %.lr.ph91.i.i177.prol
  %.490.i.i178.prol = phi i64 [ %i.ic, %.lr.ph91.i.i177.prol ], [ %.490.i.i178.ph, %.lr.ph91.i.i177.preheader311 ] ; 3 uses
  %prol.iter330 = phi i64 [ %prol.iter330.next, %.lr.ph91.i.i177.prol ], [ 0, %.lr.ph91.i.i177.preheader311 ]
  %i.hz = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.490.i.i178.prol
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !7
  %i.ib = getelementptr [4 x i8], ptr %i.fd, i64 %.490.i.i178.prol
  store i32 %i.ia, ptr %i.ib, align 4, !tbaa !7
  %i.ic = add nuw i64 %.490.i.i178.prol, 1        ; 2 uses
  %prol.iter330.next = add i64 %prol.iter330, 1   ; 2 uses
  %prol.iter330.cmp.not = icmp eq i64 %prol.iter330.next, %xtraiter328
  br i1 %prol.iter330.cmp.not, label %.lr.ph91.i.i177.prol.loopexit, label %.lr.ph91.i.i177.prol, !llvm.loop !223

.lr.ph91.i.i177.prol.loopexit:                    ; preds = %.lr.ph91.i.i177.prol, %.lr.ph91.i.i177.preheader311
  %.490.i.i178.unr = phi i64 [ %.490.i.i178.ph, %.lr.ph91.i.i177.preheader311 ], [ %i.ic, %.lr.ph91.i.i177.prol ]
  %i.id = sub i64 %.490.i.i178.ph, %umax327
  %i.ie = icmp ugt i64 %i.id, -4
  br i1 %i.ie, label %bary_add.exit, label %.lr.ph91.i.i177

.lr.ph91.i.i177:                                  ; preds = %.lr.ph91.i.i177.prol.loopexit, %.lr.ph91.i.i177
  %.490.i.i178 = phi i64 [ %i.iu, %.lr.ph91.i.i177 ], [ %.490.i.i178.unr, %.lr.ph91.i.i177.prol.loopexit ] ; 6 uses
  %i.if = getelementptr [4 x i8], ptr %.063.i.i151, i64 %.490.i.i178
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !7
  %i.ih = getelementptr [4 x i8], ptr %i.fd, i64 %.490.i.i178
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !7
  %i.ii = add nuw i64 %.490.i.i178, 1             ; 2 uses
  %i.ij = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !7
  %i.il = getelementptr [4 x i8], ptr %i.fd, i64 %i.ii
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !7
  %i.im = add nuw i64 %.490.i.i178, 2             ; 2 uses
  %i.in = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.im
  %i.io = load i32, ptr %i.in, align 4, !tbaa !7
  %i.ip = getelementptr [4 x i8], ptr %i.fd, i64 %i.im
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !7
  %i.iq = add nuw i64 %.490.i.i178, 3             ; 2 uses
  %i.ir = getelementptr [4 x i8], ptr %.063.i.i151, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !7
  %i.it = getelementptr [4 x i8], ptr %i.fd, i64 %i.iq
  store i32 %i.is, ptr %i.it, align 4, !tbaa !7
  %i.iu = add nuw i64 %.490.i.i178, 4             ; 2 uses
  %exitcond106.not.i.i179.3 = icmp eq i64 %i.iu, %.062.i.i152
  br i1 %exitcond106.not.i.i179.3, label %bary_add.exit, label %.lr.ph91.i.i177, !llvm.loop !224

bb.aa:                                            ; preds = %bb.t
  %i.iv = icmp ugt i64 %i.bs, 4611686018427387903
  br i1 %i.iv, label %bb.ab, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.ab:                                            ; preds = %bb.aa
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.bs) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.aa
  %i.iw = getelementptr [4 x i8], ptr %.0123220, i64 %.2217
  %i.ix = getelementptr [4 x i8], ptr %.0122221, i64 %.2217
  %i.iy = shl nuw i64 %i.bs, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ix, ptr noundef nonnull readonly align 1 %i.iw, i64 noundef range(i64 1, 0) %i.iy, i1 noundef false) #23
  br label %bary_add.exit

bary_add.exit:                                    ; preds = %bb.z, %.lr.ph91.i.i177.prol.loopexit, %.lr.ph91.i.i177, %middle.block, %.preheader72.i.i159, %.preheader70.i.i, %bb.r, %rbimpl_size_mul_or_raise.exit, %.loopexit71.i.i169, %.lr.ph94.preheader.i.i, %.preheader.i.i, %.loopexit71.i.i
  %i.iz = add i64 %.2217, %i.ay                   ; 2 uses
  %i.ja = icmp ult i64 %i.iz, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ja, label %bb.m, label %bb.ac, !llvm.loop !225

bb.ac:                                            ; preds = %bary_add.exit
  %i.jb = add i32 %.0113223, 1                    ; 2 uses
  %i.jc = call fastcc i64 @power_cache_get_power(i32 noundef %6, i32 noundef %i.jb, ptr noundef null)
  %i.jd = icmp ult i64 %i.ay, %4
  br i1 %i.jd, label %.preheader202, label %.preheader, !llvm.loop !226

.lr.ph226:                                        ; preds = %.preheader, %bb.ad
  %.0109225 = phi i64 [ %i.ji, %bb.ad ], [ %4, %.preheader ] ; 3 uses
  %i.je = getelementptr [4 x i8], ptr %.0123.lcssa, i64 %.0109225
  %i.jf = getelementptr i8, ptr %i.je, i64 -4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !7
  %i.jh = icmp eq i32 %i.jg, 0
  br i1 %i.jh, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %.lr.ph226
  %i.ji = add i64 %.0109225, -1                   ; 2 uses
  %.not = icmp eq i64 %i.ji, 0
  br i1 %.not, label %.critedge, label %.lr.ph226, !llvm.loop !227

.critedge:                                        ; preds = %.lr.ph226, %bb.ad, %.preheader
  %.0109.lcssa = phi i64 [ 0, %.preheader ], [ 0, %bb.ad ], [ %.0109225, %.lr.ph226 ] ; 5 uses
  %i.jj = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.jk = call fastcc i64 @bignew_1(i64 noundef %i.jj, i64 noundef %.0109.lcssa, i32 noundef %0) ; 2 uses
  %i.jl = inttoptr i64 %i.jk to ptr               ; 3 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !13
  %i.jn = and i64 %i.jm, 16384
  %.not.i187 = icmp eq i64 %i.jn, 0
  br i1 %.not.i187, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.jo = getelementptr i8, ptr %i.jl, i64 16
  br label %BIGNUM_DIGITS.exit189

bb.af:                                            ; preds = %.critedge
  %i.jp = getelementptr i8, ptr %i.jl, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit189

BIGNUM_DIGITS.exit189:                            ; preds = %bb.ae, %bb.af
  %.0.i188 = phi ptr [ %i.jo, %bb.ae ], [ %i.jq, %bb.af ]
  %i.jr = icmp ugt i64 %.0109.lcssa, 4611686018427387903
  br i1 %i.jr, label %bb.ag, label %rbimpl_size_mul_or_raise.exit190, !prof !32

bb.ag:                                            ; preds = %BIGNUM_DIGITS.exit189
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %.0109.lcssa) #25
  unreachable

rbimpl_size_mul_or_raise.exit190:                 ; preds = %BIGNUM_DIGITS.exit189
  %.not.i191 = icmp eq i64 %.0109.lcssa, 0
  br i1 %.not.i191, label %ruby_nonempty_memcpy.exit193, label %bb.ah

bb.ah:                                            ; preds = %rbimpl_size_mul_or_raise.exit190
  %i.js = shl nuw i64 %.0109.lcssa, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0.i188, ptr noundef nonnull readonly align 1 %.0123.lcssa, i64 noundef range(i64 1, 0) %i.js, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit193

ruby_nonempty_memcpy.exit193:                     ; preds = %rbimpl_size_mul_or_raise.exit190, %bb.ah
  %i.jt = load i64, ptr %i.a, align 8, !tbaa !11
  %.not135 = icmp eq i64 %i.jt, 0
  br i1 %.not135, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %ruby_nonempty_memcpy.exit193
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #23
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %ruby_nonempty_memcpy.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i64 %i.jk
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_str_convert_to_inum(i64 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = call i64 @rb_string_value(ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11
  call void @rb_must_asciicompat(i64 noundef %i.d) #23
  %i.e = load i64, ptr %i.a, align 8, !tbaa !11
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = and i64 %i.g, 8192
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = getelementptr i8, ptr %i.f, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ %i.i, %bb.a ]
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !228
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %. = select i1 %.not, ptr %i.b, ptr null
  %i.n = call i64 @rb_int_parse_cstr(ptr noundef %i.k, i64 noundef %i.m, ptr noundef %., ptr noundef null, i32 noundef %1, i32 noundef 7) ; 2 uses
  %i.o = icmp ne i64 %i.n, 4                      ; 2 uses
  %brmerge = or i1 %.not, %i.o
  %.mux = select i1 %i.o, i64 %i.n, i64 1
end_hunk_11
begin_hunk_12_@rb_big_plus:bb.a
bb.s:                                             ; preds = %rb_big2dbl.exit
  %i.ca = inttoptr i64 %1 to ptr
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !265
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.q, %bb.r, %bb.s
  %.0.i28 = phi double [ %i.cc, %bb.s ], [ %i.bz, %bb.r ], [ 0.000000e+00, %bb.q ]
  %i.cd = fadd double %.0.i27, %.0.i28            ; 2 uses
  %i.ce = bitcast double %i.cd to i64             ; 5 uses
  %cond.i = icmp eq i64 %i.ce, 3458764513820540928
  br i1 %cond.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %rb_float_value_inline.exit
  %i.cf = lshr i64 %i.ce, 60
  %i.cg = trunc nuw nsw i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 7
  %i.ci = add nsw i32 %i.ch, -5
  %i.cj = icmp ult i32 %i.ci, -2
  br i1 %i.cj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = tail call noundef i64 @llvm.fshl.i64(i64 range(i64 3458764513820540929, 3458764513820540928) %i.ce, i64 range(i64 3458764513820540929, 3458764513820540928) %i.ce, i64 3)
  %i.cl = and i64 %i.ck, -4
  %i.cm = or disjoint i64 %i.cl, 2
  br label %bignorm.exit

bb.v:                                             ; preds = %bb.t
  %i.cn = icmp eq i64 %i.ce, 0
  br i1 %i.cn, label %bignorm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %rb_float_value_inline.exit
  %i.co = tail call i64 @rb_float_new_in_heap(double noundef %i.cd) #23
  br label %bignorm.exit

RB_FLOAT_TYPE_P.exit.thread35:                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.cp = tail call i64 @rb_num_coerce_bin(i64 noundef %0, i64 noundef %1, i64 noundef 43) #23
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %bb.j, %bb.w, %bb.v, %bb.u, %bb.o, %bb.n, %bb.l, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.f, %RB_FLOAT_TYPE_P.exit.thread35, %bb.d, %bb.c
  %.021 = phi i64 [ %i.h, %bb.c ], [ %i.i, %bb.d ], [ %i.cp, %RB_FLOAT_TYPE_P.exit.thread35 ], [ -9223372036854775806, %bb.v ], [ %i.q, %bb.f ], [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.bp, %bb.n ], [ %i.q, %bb.o ], [ %i.bn, %bb.l ], [ 1, %BIGNUM_DIGITS.exit.i.i ], [ %i.cm, %bb.u ], [ %i.co, %bb.w ], [ 1, %bb.j ]
  ret i64 %.021
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @bigsub_int(i64 noundef %0, i64 noundef range(i64 0, 4611686018427387905) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.c = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 16
  %i.k = lshr i64 %i.d, 15
  %i.l = and i64 %i.k, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i92 = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 6 uses
  %.0.i83 = phi i64 [ %i.l, %bb.c ], [ %i.i, %bb.b ] ; 10 uses
  %.0.i92201 = ptrtoaddr ptr %.0.i92 to i64
  %i.m = icmp eq i64 %.0.i83, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %.neg = mul nsw i64 %1, -2
  %i.n = or disjoint i64 %.neg, 1
  br label %rb_long2num_inline.exit

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.0.i83, i64 2) ; 5 uses
  %i.o = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.p = trunc i64 %i.d to i32
  %i.q = lshr i32 %i.p, 13
  %i.r = and i32 %i.q, 1
  %i.s = tail call fastcc i64 @bignew_1(i64 noundef %i.o, i64 noundef %spec.store.select, i32 noundef %i.r) ; 8 uses
  %i.t = inttoptr i64 %i.s to ptr                 ; 16 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !13   ; 6 uses
  %i.v = and i64 %i.u, 16384
  %.not.i85 = icmp eq i64 %i.v, 0                 ; 3 uses
  br i1 %.not.i85, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.t, i64 16
  br label %BIGNUM_DIGITS.exit87

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.t, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit87

BIGNUM_DIGITS.exit87:                             ; preds = %bb.f, %bb.g
  %.0.i86 = phi ptr [ %i.w, %bb.f ], [ %i.y, %bb.g ] ; 10 uses
  %.0.i86200 = ptrtoaddr ptr %.0.i86 to i64
  %i.z = icmp sgt i64 %.0.i83, 0
  br i1 %i.z, label %.lr.ph, label %.lr.ph123

.preheader96:                                     ; preds = %bb.i, %bb.h
  %.lcssa233 = phi i64 [ %i.ah, %bb.h ], [ %i.ar, %bb.i ] ; 2 uses
  %.lcssa232 = phi i64 [ %i.ai, %bb.h ], [ 0, %bb.i ]
  %i.aa = icmp eq i64 %.0.i83, 1
  br i1 %i.aa, label %.lr.ph123, label %.loopexit97

.lr.ph:                                           ; preds = %BIGNUM_DIGITS.exit87
  %i.ab = icmp eq i64 %1, 0
  br i1 %i.ab, label %.preheader94.preheader, label %bb.h

.preheader94.preheader:                           ; preds = %bb.i, %.lr.ph.1, %.lr.ph
  %.068116.lcssa = phi i64 [ 0, %.lr.ph ], [ 1, %.lr.ph.1 ], [ 2, %bb.i ] ; 3 uses
  %.070115.lcssa = phi i64 [ 0, %.lr.ph ], [ %i.ah, %.lr.ph.1 ], [ %i.ar, %bb.i ]
  br label %.preheader94

bb.h:                                             ; preds = %.lr.ph
  %i.ac = load i32, ptr %.0.i92, align 4, !tbaa !7
  %i.ad = zext i32 %i.ac to i64
  %i.ae = and i64 %1, 4294967295
  %i.af = sub nsw i64 %i.ad, %i.ae                ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %.0.i86, align 4, !tbaa !7
  %i.ah = ashr i64 %i.af, 32                      ; 3 uses
  %i.ai = lshr i64 %1, 32                         ; 3 uses
  %exitcond.not = icmp eq i64 %.0.i83, 1
  br i1 %exitcond.not, label %.preheader96, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.preheader94.preheader, label %bb.i

bb.i:                                             ; preds = %.lr.ph.1
  %i.ak = getelementptr i8, ptr %.0.i92, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = zext i32 %i.al to i64
  %i.an = sub nsw i64 %i.am, %i.ai
  %i.ao = add nsw i64 %i.an, %i.ah                ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr i8, ptr %.0.i86, i64 4
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !7
  %i.ar = ashr i64 %i.ao, 32                      ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.0.i83, 2
  br i1 %exitcond.not.1, label %.preheader96, label %.preheader94.preheader

.lr.ph123:                                        ; preds = %.preheader96, %BIGNUM_DIGITS.exit87
  %.1122.ph = phi i64 [ %1, %BIGNUM_DIGITS.exit87 ], [ %.lcssa232, %.preheader96 ] ; 3 uses
  %.169121.ph = phi i64 [ 0, %BIGNUM_DIGITS.exit87 ], [ %.0.i83, %.preheader96 ] ; 4 uses
  %.171120.ph = phi i64 [ 0, %BIGNUM_DIGITS.exit87 ], [ %.lcssa233, %.preheader96 ] ; 2 uses
  %i.as = icmp eq i64 %.1122.ph, 0
  br i1 %i.as, label %.loopexit98, label %bb.j

bb.j:                                             ; preds = %.lr.ph123
  %i.at = and i64 %.1122.ph, 4294967295
  %i.au = sub nsw i64 %.171120.ph, %i.at          ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr [4 x i8], ptr %.0.i86, i64 %.169121.ph
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !7
  %i.ax = ashr i64 %i.au, 32                      ; 3 uses
  %i.ay = lshr i64 %.1122.ph, 32                  ; 2 uses
  %i.az = add nuw nsw i64 %.169121.ph, 1          ; 3 uses
  %exitcond143.not = icmp eq i64 %i.az, %spec.store.select
  br i1 %exitcond143.not, label %.loopexit97, label %.lr.ph123.1

.lr.ph123.1:                                      ; preds = %bb.j
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %.loopexit98, label %bb.k

bb.k:                                             ; preds = %.lr.ph123.1
  %i.bb = sub nsw i64 %i.ax, %i.ay                ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr [4 x i8], ptr %.0.i86, i64 %i.az
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !7
  %i.be = ashr i64 %i.bb, 32                      ; 2 uses
  %i.bf = or disjoint i64 %.169121.ph, 2          ; 2 uses
  %exitcond143.not.1 = icmp eq i64 %i.bf, %spec.store.select
  br i1 %exitcond143.not.1, label %.loopexit97, label %.loopexit98

.preheader94:                                     ; preds = %.preheader94.preheader, %bb.l
  %indvar = phi i64 [ %indvar.next, %bb.l ], [ 0, %.preheader94.preheader ] ; 3 uses
  %.272 = phi i64 [ %i.bz, %bb.l ], [ %.070115.lcssa, %.preheader94.preheader ]
  %.2 = phi i64 [ %i.ca, %bb.l ], [ %.068116.lcssa, %.preheader94.preheader ] ; 6 uses
  %i.bg = icmp eq i64 %.272, 0
  br i1 %i.bg, label %.preheader.preheader, label %bb.l

.preheader.preheader:                             ; preds = %.preheader94
  %i.bh = add nuw nsw i64 %.068116.lcssa, 1
  %i.bi = add i64 %i.bh, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %.0.i83, i64 %i.bi)
  %i.bj = add i64 %indvar, %.068116.lcssa
  %i.bk = sub i64 %smax, %i.bj                    ; 3 uses
  %min.iters.check203 = icmp ult i64 %i.bk, 8
  %i.bl = sub i64 %.0.i92201, %.0.i86200
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = select i1 %min.iters.check203, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.preheader217, label %vector.ph204

vector.ph204:                                     ; preds = %.preheader.preheader
  %n.vec206 = and i64 %i.bk, -8                   ; 3 uses
  %i.bm = add i64 %.2, %n.vec206                  ; 2 uses
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph204
  %index208 = phi i64 [ 0, %vector.ph204 ], [ %index.next211, %vector.body207 ] ; 2 uses
  %i.bn = add i64 %.2, %index208                  ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %.0.i92, i64 %i.bn ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %wide.load209 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !7
  %wide.load210 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !7
  %i.bq = getelementptr [4 x i8], ptr %.0.i86, i64 %i.bn ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  store <4 x i32> %wide.load209, ptr %i.bq, align 4, !tbaa !7
  store <4 x i32> %wide.load210, ptr %i.br, align 4, !tbaa !7
  %index.next211 = add nuw i64 %index208, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next211, %n.vec206
  br i1 %i.bs, label %middle.block212, label %vector.body207, !llvm.loop !283

middle.block212:                                  ; preds = %vector.body207
  %cmp.n213 = icmp eq i64 %i.bk, %n.vec206
  br i1 %cmp.n213, label %.loopexit, label %.preheader.preheader217

.preheader.preheader217:                          ; preds = %.preheader.preheader, %middle.block212
  %.5.ph = phi i64 [ %.2, %.preheader.preheader ], [ %i.bm, %middle.block212 ]
  br label %.preheader

bb.l:                                             ; preds = %.preheader94
  %i.bt = getelementptr [4 x i8], ptr %.0.i92, i64 %.2
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = zext i32 %i.bu to i64
  %i.bw = add nsw i64 %i.bv, -1                   ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = getelementptr [4 x i8], ptr %.0.i86, i64 %.2
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !7
  %i.bz = ashr i64 %i.bw, 32                      ; 2 uses
  %i.ca = add nuw nsw i64 %.2, 1                  ; 3 uses
  %i.cb = icmp slt i64 %i.ca, %.0.i83
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cb, label %.preheader94, label %.loopexit95

.loopexit95:                                      ; preds = %bb.l, %bb.m
  %.373 = phi i64 [ -1, %bb.m ], [ %i.bz, %bb.l ] ; 2 uses
  %.3 = phi i64 [ %i.cf, %bb.m ], [ %i.ca, %bb.l ] ; 2 uses
  %i.cc = icmp slt i64 %.3, %spec.store.select
  br i1 %i.cc, label %.loopexit98, label %.loopexit97

.loopexit98:                                      ; preds = %.lr.ph123, %.lr.ph123.1, %bb.k, %.loopexit95
  %.474 = phi i64 [ %.373, %.loopexit95 ], [ %.171120.ph, %.lr.ph123 ], [ %i.ax, %.lr.ph123.1 ], [ %i.be, %bb.k ]
  %.4 = phi i64 [ %.3, %.loopexit95 ], [ %.169121.ph, %.lr.ph123 ], [ %i.az, %.lr.ph123.1 ], [ %i.bf, %bb.k ] ; 3 uses
  %i.cd = icmp eq i64 %.474, 0
  br i1 %i.cd, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit98
  %i.ce = getelementptr [4 x i8], ptr %.0.i86, i64 %.4
  store i32 -1, ptr %i.ce, align 4, !tbaa !7
  %i.cf = add nsw i64 %.4, 1
  br label %.loopexit95, !llvm.loop !284

.preheader:                                       ; preds = %.preheader.preheader217, %.preheader
  %.5 = phi i64 [ %i.cj, %.preheader ], [ %.5.ph, %.preheader.preheader217 ] ; 3 uses
  %i.cg = getelementptr [4 x i8], ptr %.0.i92, i64 %.5
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = getelementptr [4 x i8], ptr %.0.i86, i64 %.5
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !7
  %i.cj = add nuw nsw i64 %.5, 1                  ; 3 uses
  %i.ck = icmp slt i64 %i.cj, %.0.i83
  br i1 %i.ck, label %.preheader, label %.loopexit, !llvm.loop !285

.loopexit:                                        ; preds = %.preheader, %middle.block212, %bb.n
  %.6 = phi i64 [ %i.cn, %bb.n ], [ %i.bm, %middle.block212 ], [ %i.cj, %.preheader ] ; 2 uses
  %i.cl = icmp slt i64 %.6, %spec.store.select
  br i1 %i.cl, label %bb.n, label %.loopexit97.thread

bb.n:                                             ; preds = %.loopexit, %.loopexit98
  %.7 = phi i64 [ %.6, %.loopexit ], [ %.4, %.loopexit98 ] ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %.0.i86, i64 %.7
  store i32 0, ptr %i.cm, align 4, !tbaa !7
  %i.cn = add nsw i64 %.7, 1
  br label %.loopexit, !llvm.loop !286

.loopexit97:                                      ; preds = %bb.j, %bb.k, %.preheader96, %.loopexit95
  %.777 = phi i64 [ %.lcssa233, %.preheader96 ], [ %.373, %.loopexit95 ], [ %i.ax, %bb.j ], [ %i.be, %bb.k ]
  %i.co = icmp slt i64 %.777, 0
  br i1 %i.co, label %bb.o, label %.loopexit97.thread

bb.o:                                             ; preds = %.loopexit97
  br i1 %.not.i85, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = lshr i64 %i.u, 15
  %i.cq = and i64 %i.cp, 511
  %i.cr = getelementptr i8, ptr %i.t, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cs = getelementptr i8, ptr %i.t, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !15
  %i.cu = getelementptr i8, ptr %i.t, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.q, %bb.p
  %.0.i8.i = phi i64 [ %i.cq, %bb.p ], [ %i.ct, %bb.q ] ; 5 uses
  %.0.i5.i = phi ptr [ %i.cr, %bb.p ], [ %i.cv, %bb.q ] ; 4 uses
  %.not27.i.i = icmp eq i64 %.0.i8.i, 0
  br i1 %.not27.i.i, label %bary_2comp.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i, %bb.r
  %.023.i.i = phi i64 [ %i.cy, %bb.r ], [ 0, %BIGNUM_DIGITS.exit.i ] ; 5 uses
  %i.cw = getelementptr [4 x i8], ptr %.0.i5.i, i64 %.023.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7  ; 2 uses
  %.not.i6.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i6.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i
  %i.cy = add nuw i64 %.023.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cy, %.0.i8.i
  br i1 %exitcond.not.i.i, label %bary_2comp.exit.i, label %.lr.ph.i.i, !llvm.loop !55

bb.s:                                             ; preds = %.lr.ph.i.i
  %i.cz = getelementptr [4 x i8], ptr %.0.i5.i, i64 %.023.i.i
  %i.da = sub i32 0, %i.cx
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !7
  %.124.i.i = add i64 %.023.i.i, 1                ; 4 uses
  %i.db = icmp ult i64 %.124.i.i, %.0.i8.i
  br i1 %i.db, label %.lr.ph26.i.i.preheader, label %get2comp.exit

.lr.ph26.i.i.preheader:                           ; preds = %bb.s
  %i.dc = xor i64 %.023.i.i, -1
  %i.dd = add i64 %.0.i8.i, %i.dc                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.dd, 8
  br i1 %min.iters.check, label %.lr.ph26.i.i.preheader219, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i.i.preheader
  %n.vec = and i64 %i.dd, -8                      ; 3 uses
  %i.de = add i64 %.124.i.i, %n.vec
  %i.df = getelementptr [4 x i8], ptr %.0.i5.i, i64 %.124.i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %index ; 3 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dg, align 4, !tbaa !7
  %wide.load199 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !7
  %i.di = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.dj = xor <4 x i32> %wide.load199, splat (i32 -1)
  store <4 x i32> %i.di, ptr %i.dg, align 4, !tbaa !7
  store <4 x i32> %i.dj, ptr %i.dh, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !287

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %get2comp.exit, label %.lr.ph26.i.i.preheader219

.lr.ph26.i.i.preheader219:                        ; preds = %.lr.ph26.i.i.preheader, %middle.block
  %.125.i.i.ph = phi i64 [ %.124.i.i, %.lr.ph26.i.i.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph26.i.i

.lr.ph26.i.i:                                     ; preds = %.lr.ph26.i.i.preheader219, %.lr.ph26.i.i
  %.125.i.i = phi i64 [ %.1.i.i, %.lr.ph26.i.i ], [ %.125.i.i.ph, %.lr.ph26.i.i.preheader219 ] ; 2 uses
  %i.dl = getelementptr [4 x i8], ptr %.0.i5.i, i64 %.125.i.i ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !7
  %i.dn = xor i32 %i.dm, -1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !7
  %.1.i.i = add nuw i64 %.125.i.i, 1              ; 2 uses
  %exitcond31.not.i.i = icmp eq i64 %.1.i.i, %.0.i8.i
  br i1 %exitcond31.not.i.i, label %get2comp.exit, label %.lr.ph26.i.i, !llvm.loop !288

bary_2comp.exit.i:                                ; preds = %bb.r, %BIGNUM_DIGITS.exit.i
  br i1 %.not.i85, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bary_2comp.exit.i
  %i.do = getelementptr i8, ptr %i.t, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit.i.i

bb.u:                                             ; preds = %bary_2comp.exit.i
  %i.dq = lshr i64 %i.u, 15
  %i.dr = and i64 %i.dq, 511
  br label %BIGNUM_LEN.exit.i.i

BIGNUM_LEN.exit.i.i:                              ; preds = %bb.u, %bb.t
  %.0.i.i.i = phi i64 [ %i.dr, %bb.u ], [ %i.dp, %bb.t ]
  %i.ds = add i64 %.0.i.i.i, 1
  tail call void @rb_big_resize(i64 noundef %i.s, i64 noundef %i.ds)
  %i.dt = load i64, ptr %i.t, align 8, !tbaa !13  ; 3 uses
  %i.du = and i64 %i.dt, 16384
  %.not.i4.i.i = icmp eq i64 %i.du, 0
  br i1 %.not.i4.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %BIGNUM_LEN.exit.i.i
  %i.dv = getelementptr i8, ptr %i.t, i64 24
end_hunk_12
begin_hunk_13_@bigsub_int:bb.a
  %.neg.i.i = mul nsw i64 %i.fz, -2
  %i.gf = or disjoint i64 %.neg.i.i, 1
  br label %rb_long2num_inline.exit

bb.af:                                            ; preds = %bb.ad, %bb.ab, %.critedge.i.i
  call void @rb_big_resize(i64 noundef %i.s, i64 noundef %.02332.i.i)
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.aa, %bb.af, %bb.ae, %bb.ac, %BIGNUM_DIGITS.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %.loopexit97.thread, %bb.d
  %.0 = phi i64 [ 1, %BIGNUM_DIGITS.exit.i.i ], [ %i.n, %bb.d ], [ %i.gd, %bb.ac ], [ %i.s, %.loopexit97.thread ], [ %i.s, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.gf, %bb.ae ], [ %i.s, %bb.af ], [ 1, %bb.aa ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @bigadd_int(i64 noundef %0, i64 noundef range(i64 0, 4611686018427387905) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.c = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = and i64 %i.d, 16384
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.c, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.c, i64 16
  %i.k = lshr i64 %i.d, 15
  %i.l = and i64 %i.k, 511
  br label %BIGNUM_LEN.exit

BIGNUM_LEN.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i84 = phi ptr [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 6 uses
  %.0.i77 = phi i64 [ %i.l, %bb.c ], [ %i.i, %bb.b ] ; 10 uses
  %.0.i84163 = ptrtoaddr ptr %.0.i84 to i64
  %i.m = icmp eq i64 %.0.i77, 0
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %BIGNUM_LEN.exit
  %i.n = icmp samesign ult i64 %1, 4611686018427387904
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw nsw i64 %1, 1
  %i.p = or disjoint i64 %i.o, 1
  br label %rb_long2num_inline.exit

bb.f:                                             ; preds = %bb.d
  %i.q = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.r = tail call fastcc i64 @bignew_1(i64 noundef %i.q, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = and i64 %i.t, 16384
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %i.s, i64 16
  store i64 4611686018427387904, ptr %i.v, align 8
  %i.w = and i64 %i.t, -16744449
  %i.x = or disjoint i64 %i.w, 65536
  store i64 %i.x, ptr %i.s, align 8, !tbaa !13
  br label %rb_long2num_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.s, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  store i64 4611686018427387904, ptr %i.z, align 4
  %i.aa = getelementptr i8, ptr %i.s, i64 16
  store i64 2, ptr %i.aa, align 8, !tbaa !15
  br label %rb_long2num_inline.exit

bb.i:                                             ; preds = %BIGNUM_LEN.exit
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.0.i77, i64 2) ; 3 uses
  %i.ab = add nuw i64 %spec.store.select, 1       ; 4 uses
  %i.ac = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.ad = trunc i64 %i.d to i32
  %i.ae = lshr i32 %i.ad, 13
  %i.af = and i32 %i.ae, 1
  %i.ag = tail call fastcc i64 @bignew_1(i64 noundef %i.ac, i64 noundef %i.ab, i32 noundef %i.af) ; 7 uses
  %i.ah = inttoptr i64 %i.ag to ptr               ; 7 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13
  %i.aj = and i64 %i.ai, 16384
  %.not.i79 = icmp eq i64 %i.aj, 0
  br i1 %.not.i79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr i8, ptr %i.ah, i64 16
  br label %BIGNUM_DIGITS.exit81

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %i.ah, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit81

BIGNUM_DIGITS.exit81:                             ; preds = %bb.j, %bb.k
  %.0.i80 = phi ptr [ %i.ak, %bb.j ], [ %i.am, %bb.k ] ; 10 uses
  %.0.i80162 = ptrtoaddr ptr %.0.i80 to i64
  %i.an = icmp sgt i64 %.0.i77, 0
  br i1 %i.an, label %.lr.ph, label %.preheader88

.preheader88:                                     ; preds = %bb.l, %bb.m, %BIGNUM_DIGITS.exit81
  %.070.lcssa = phi i64 [ %1, %BIGNUM_DIGITS.exit81 ], [ %i.aw, %bb.l ], [ 0, %bb.m ] ; 3 uses
  %.065.lcssa = phi i64 [ 0, %BIGNUM_DIGITS.exit81 ], [ %i.av, %bb.l ], [ %i.bf, %bb.m ] ; 2 uses
  %.064.lcssa = phi i64 [ 0, %BIGNUM_DIGITS.exit81 ], [ %.0.i77, %bb.m ], [ %.0.i77, %bb.l ] ; 6 uses
  %i.ao = icmp slt i64 %.064.lcssa, %i.ab
  br i1 %i.ao, label %.lr.ph110, label %.loopexit89

.lr.ph:                                           ; preds = %BIGNUM_DIGITS.exit81
  %i.ap = icmp eq i64 %1, 0
  br i1 %i.ap, label %.preheader86.preheader, label %bb.l

.preheader86.preheader:                           ; preds = %bb.m, %.lr.ph.1, %.lr.ph
  %.064104.lcssa = phi i64 [ 0, %.lr.ph ], [ 1, %.lr.ph.1 ], [ 2, %bb.m ] ; 3 uses
  %.065103.lcssa = phi i64 [ 0, %.lr.ph ], [ %i.av, %.lr.ph.1 ], [ %i.bf, %bb.m ]
  br label %.preheader86

bb.l:                                             ; preds = %.lr.ph
  %i.aq = load i32, ptr %.0.i84, align 4, !tbaa !7
  %i.ar = zext i32 %i.aq to i64
  %i.as = and i64 %1, 4294967295
  %i.at = add nuw nsw i64 %i.as, %i.ar            ; 2 uses
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %.0.i80, align 4, !tbaa !7
  %i.av = lshr i64 %i.at, 32                      ; 3 uses
  %i.aw = lshr i64 %1, 32                         ; 3 uses
  %exitcond.not = icmp eq i64 %.0.i77, 1
  br i1 %exitcond.not, label %.preheader88, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.l
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.preheader86.preheader, label %bb.m

bb.m:                                             ; preds = %.lr.ph.1
  %i.ay = getelementptr i8, ptr %.0.i84, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = zext i32 %i.az to i64
  %i.bb = add nuw nsw i64 %i.av, %i.aw
  %i.bc = add nuw nsw i64 %i.bb, %i.ba            ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr i8, ptr %.0.i80, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !7
  %i.bf = lshr i64 %i.bc, 32                      ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.0.i77, 2
  br i1 %exitcond.not.1, label %.preheader88, label %.preheader86.preheader

.lr.ph110:                                        ; preds = %.preheader88
  %i.bg = icmp eq i64 %.070.lcssa, 0
  br i1 %i.bg, label %.loopexit90, label %bb.n

bb.n:                                             ; preds = %.lr.ph110
  %i.bh = and i64 %.070.lcssa, 4294967295
  %i.bi = add nuw nsw i64 %.065.lcssa, %i.bh      ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = getelementptr [4 x i8], ptr %.0.i80, i64 %.064.lcssa
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !7
  %i.bl = lshr i64 %i.bi, 32                      ; 2 uses
  %i.bm = lshr i64 %.070.lcssa, 32                ; 2 uses
  %i.bn = add nuw i64 %.064.lcssa, 1              ; 3 uses
  %exitcond124.not = icmp eq i64 %.064.lcssa, %spec.store.select
  br i1 %exitcond124.not, label %.loopexit89, label %.lr.ph110.1

.lr.ph110.1:                                      ; preds = %bb.n
  %i.bo = icmp eq i64 %i.bm, 0
  br i1 %i.bo, label %.loopexit90, label %bb.o

bb.o:                                             ; preds = %.lr.ph110.1
  %i.bp = add nuw nsw i64 %i.bl, %i.bm            ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  %i.br = getelementptr [4 x i8], ptr %.0.i80, i64 %i.bn
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !7
  %exitcond124.not.1 = icmp eq i64 %i.bn, %spec.store.select
  br i1 %exitcond124.not.1, label %.loopexit89, label %.lr.ph110.2

.lr.ph110.2:                                      ; preds = %bb.o
  %i.bs = lshr i64 %i.bp, 32
  %i.bt = add nuw i64 %.064.lcssa, 2
  br label %.loopexit90

.preheader86:                                     ; preds = %.preheader86.preheader, %bb.p
  %indvar = phi i64 [ %indvar.next, %bb.p ], [ 0, %.preheader86.preheader ] ; 3 uses
  %.267 = phi i64 [ %i.cn, %bb.p ], [ %.065103.lcssa, %.preheader86.preheader ]
  %.2 = phi i64 [ %i.co, %bb.p ], [ %.064104.lcssa, %.preheader86.preheader ] ; 6 uses
  %i.bu = icmp eq i64 %.267, 0
  br i1 %i.bu, label %.preheader.preheader, label %bb.p

.preheader.preheader:                             ; preds = %.preheader86
  %i.bv = add nuw nsw i64 %.064104.lcssa, 1
  %i.bw = add i64 %i.bv, %indvar
  %smax = tail call i64 @llvm.smax.i64(i64 %.0.i77, i64 %i.bw)
  %i.bx = add i64 %indvar, %.064104.lcssa
  %i.by = sub i64 %smax, %i.bx                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.by, 8
  %i.bz = sub i64 %.0.i84163, %.0.i80162
  %diff.check = icmp ugt i64 %i.bz, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.preheader167, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.by, -8                      ; 3 uses
  %i.ca = add i64 %.2, %n.vec                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cb = add i64 %.2, %index                     ; 2 uses
  %i.cc = getelementptr [4 x i8], ptr %.0.i84, i64 %i.cb ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !7
  %wide.load164 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !7
  %i.ce = getelementptr [4 x i8], ptr %.0.i80, i64 %i.cb ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  store <4 x i32> %wide.load, ptr %i.ce, align 4, !tbaa !7
  store <4 x i32> %wide.load164, ptr %i.cf, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader167

.preheader.preheader167:                          ; preds = %.preheader.preheader, %middle.block
  %.5.ph = phi i64 [ %.2, %.preheader.preheader ], [ %i.ca, %middle.block ]
  br label %.preheader

bb.p:                                             ; preds = %.preheader86
  %i.ch = getelementptr [4 x i8], ptr %.0.i84, i64 %.2
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = zext i32 %i.ci to i64
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = getelementptr [4 x i8], ptr %.0.i80, i64 %.2
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !7
  %i.cn = lshr i64 %i.ck, 32                      ; 2 uses
  %i.co = add nuw nsw i64 %.2, 1                  ; 3 uses
  %i.cp = icmp slt i64 %i.co, %.0.i77
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cp, label %.preheader86, label %.loopexit87

.loopexit87:                                      ; preds = %bb.p, %bb.q
  %.368 = phi i64 [ 0, %bb.q ], [ %i.cn, %bb.p ]
  %.3 = phi i64 [ %i.ct, %bb.q ], [ %i.co, %bb.p ] ; 2 uses
  %i.cq = icmp slt i64 %.3, %i.ab
  br i1 %i.cq, label %.loopexit90, label %.loopexit89

.loopexit90:                                      ; preds = %.lr.ph110, %.lr.ph110.1, %.lr.ph110.2, %.loopexit87
  %.469 = phi i64 [ %.368, %.loopexit87 ], [ %.065.lcssa, %.lr.ph110 ], [ %i.bl, %.lr.ph110.1 ], [ %i.bs, %.lr.ph110.2 ]
  %.4 = phi i64 [ %.3, %.loopexit87 ], [ %.064.lcssa, %.lr.ph110 ], [ %i.bn, %.lr.ph110.1 ], [ %i.bt, %.lr.ph110.2 ] ; 3 uses
  %i.cr = icmp eq i64 %.469, 0
  br i1 %i.cr, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit90
  %i.cs = getelementptr [4 x i8], ptr %.0.i80, i64 %.4
  store i32 1, ptr %i.cs, align 4, !tbaa !7
  %i.ct = add nsw i64 %.4, 1
  br label %.loopexit87, !llvm.loop !292

.preheader:                                       ; preds = %.preheader.preheader167, %.preheader
  %.5 = phi i64 [ %i.cx, %.preheader ], [ %.5.ph, %.preheader.preheader167 ] ; 3 uses
  %i.cu = getelementptr [4 x i8], ptr %.0.i84, i64 %.5
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.cw = getelementptr [4 x i8], ptr %.0.i80, i64 %.5
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !7
  %i.cx = add nuw nsw i64 %.5, 1                  ; 3 uses
  %i.cy = icmp slt i64 %i.cx, %.0.i77
  br i1 %i.cy, label %.preheader, label %.loopexit, !llvm.loop !293

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.r
  %.6 = phi i64 [ %i.db, %bb.r ], [ %i.ca, %middle.block ], [ %i.cx, %.preheader ] ; 2 uses
  %i.cz = icmp slt i64 %.6, %i.ab
  br i1 %i.cz, label %bb.r, label %.loopexit89

bb.r:                                             ; preds = %.loopexit, %.loopexit90
  %.7 = phi i64 [ %.6, %.loopexit ], [ %.4, %.loopexit90 ] ; 2 uses
  %i.da = getelementptr [4 x i8], ptr %.0.i80, i64 %.7
  store i32 0, ptr %i.da, align 4, !tbaa !7
  %i.db = add nsw i64 %.7, 1
  br label %.loopexit, !llvm.loop !294

.loopexit89:                                      ; preds = %bb.n, %bb.o, %.preheader88, %.loopexit, %.loopexit87
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !295
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.dd = load volatile i64, ptr %i.dc, align 8, !tbaa !11 ; 0 uses
  %i.de = icmp eq i64 %i.ag, 0
  %i.df = and i64 %i.ag, 7
  %i.dg = icmp ne i64 %i.df, 0
  %i.dh = or i1 %i.de, %i.dg
  br i1 %i.dh, label %rb_long2num_inline.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %.loopexit89
  %i.di = load i64, ptr %i.ah, align 8, !tbaa !13 ; 4 uses
  %i.dj = and i64 %i.di, 31
  %i.dk = icmp eq i64 %i.dj, 10
  br i1 %i.dk, label %bb.s, label %rb_long2num_inline.exit

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.dl = and i64 %i.di, 16384
  %.not.i.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = lshr i64 %i.di, 15
  %i.dn = and i64 %i.dm, 511
  %i.do = getelementptr i8, ptr %i.ah, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.dp = getelementptr i8, ptr %i.ah, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !15
  %i.dr = getelementptr i8, ptr %i.ah, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.u, %bb.t
  %.0.i28.i.i = phi i64 [ %i.dn, %bb.t ], [ %i.dq, %bb.u ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.do, %bb.t ], [ %i.ds, %bb.u ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %rb_long2num_inline.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.v
  %indvar179 = phi i32 [ %indvar.next180, %bb.v ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.dx, %bb.v ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.dt = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.du = getelementptr i8, ptr %i.dt, i64 -4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.v, label %.critedge.i.i

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.dx = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.dx, 0
  %indvar.next180 = add i32 %indvar179, 1
  br i1 %cond.i.i, label %rb_long2num_inline.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.dy = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.dy, label %bb.aa, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.dz = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.ea = trunc i64 %.0.i28.i.i to i32
  %i.eb = sub i32 %indvar179, %i.ea
  %i.ec = icmp ugt i32 %i.eb, -4
  br i1 %i.ec, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.ed, %.lr.ph36.i.i ], [ %i.dz, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.ed = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.ee = add i32 %.035.i.i, -3
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.ei = zext i32 %i.eh to i64
  %i.ej = shl nuw i64 %i.ei, 32
  %i.ek = sext i32 %i.ed to i64
  %i.el = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = zext i32 %i.em to i64
  %i.eo = or disjoint i64 %i.ej, %i.en
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.preheader.i.i
  %.035.i.i.epil.init = phi i32 [ %i.dz, %.lr.ph36.preheader.i.i ], [ %i.ed, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i ], [ %i.eo, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %.035.i.i.epil = phi i32 [ %i.ep, %.lr.ph36.i.i.epil ], [ %.035.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.ev, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %i.ep = add i32 %.035.i.i.epil, -1              ; 2 uses
  %i.eq = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.er = sext i32 %i.ep to i64
  %i.es = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !7
  %i.eu = zext i32 %i.et to i64
  %i.ev = or disjoint i64 %i.eq, %i.eu            ; 4 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %i.dz
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !296

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.ew = icmp ult i64 %i.eq, 4611686018427387904
  %i.ex = and i64 %i.di, 8192
  %.not.i.i = icmp eq i64 %i.ex, 0
end_hunk_13
begin_hunk_14_@bigadd:bb.a
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !13 ; 2 uses
  %i.ai = and i64 %i.ah, 16384
  %.not.i34 = icmp eq i64 %i.ai, 0
  br i1 %.not.i34, label %bb.k, label %bb.l

bb.k:                                             ; preds = %BIGNUM_LEN.exit30
  %i.aj = getelementptr i8, ptr %i.ag, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !15
  %i.al = getelementptr i8, ptr %i.ag, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit38

bb.l:                                             ; preds = %BIGNUM_LEN.exit30
  %i.an = getelementptr i8, ptr %i.ag, i64 16
  %i.ao = lshr i64 %i.ah, 15
  %i.ap = and i64 %i.ao, 511
  br label %BIGNUM_LEN.exit38

BIGNUM_LEN.exit38:                                ; preds = %bb.k, %bb.l
  %.0.i3553 = phi ptr [ %i.an, %bb.l ], [ %i.ak, %bb.k ] ; 14 uses
  %.0.i37 = phi i64 [ %i.ap, %bb.l ], [ %i.am, %bb.k ] ; 5 uses
  %.0.i355374 = ptrtoaddr ptr %.0.i3553 to i64
  %i.aq = load i64, ptr %i.h, align 8, !tbaa !13  ; 2 uses
  %i.ar = and i64 %i.aq, 16384
  %.not.i39 = icmp eq i64 %i.ar, 0
  br i1 %.not.i39, label %bb.m, label %bb.n

bb.m:                                             ; preds = %BIGNUM_LEN.exit38
  %i.as = getelementptr i8, ptr %i.h, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15
  %i.au = getelementptr i8, ptr %i.h, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit44

bb.n:                                             ; preds = %BIGNUM_LEN.exit38
  %i.aw = getelementptr i8, ptr %i.h, i64 16
  %i.ax = lshr i64 %i.aq, 15
  %i.ay = and i64 %i.ax, 511
  br label %BIGNUM_LEN.exit44

BIGNUM_LEN.exit44:                                ; preds = %bb.m, %bb.n
  %.0.i4056 = phi ptr [ %i.aw, %bb.n ], [ %i.at, %bb.m ] ; 2 uses
  %.0.i43 = phi i64 [ %i.ay, %bb.n ], [ %i.av, %bb.m ] ; 3 uses
  %i.az = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.ba = and i64 %i.az, 16384
  %.not.i45 = icmp eq i64 %i.ba, 0
  br i1 %.not.i45, label %bb.o, label %bb.p

bb.o:                                             ; preds = %BIGNUM_LEN.exit44
  %i.bb = getelementptr i8, ptr %i.a, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !15
  %i.bd = getelementptr i8, ptr %i.a, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit50

bb.p:                                             ; preds = %BIGNUM_LEN.exit44
  %i.bf = getelementptr i8, ptr %i.a, i64 16
  %i.bg = lshr i64 %i.az, 15
  %i.bh = and i64 %i.bg, 511
  br label %BIGNUM_LEN.exit50

BIGNUM_LEN.exit50:                                ; preds = %bb.o, %bb.p
  %.0.i4659 = phi ptr [ %i.bf, %bb.p ], [ %i.bc, %bb.o ] ; 2 uses
  %.0.i49 = phi i64 [ %i.bh, %bb.p ], [ %i.be, %bb.o ] ; 3 uses
  %i.bi = icmp ugt i64 %.0.i43, %.0.i49
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %BIGNUM_LEN.exit50
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %BIGNUM_LEN.exit50
  %.064.i.i = phi i64 [ %.0.i49, %bb.q ], [ %.0.i43, %BIGNUM_LEN.exit50 ] ; 8 uses
  %.063.i.i = phi ptr [ %.0.i4056, %bb.q ], [ %.0.i4659, %BIGNUM_LEN.exit50 ] ; 12 uses
  %.062.i.i = phi i64 [ %.0.i43, %bb.q ], [ %.0.i49, %BIGNUM_LEN.exit50 ] ; 12 uses
  %.061.i.i = phi ptr [ %.0.i4659, %bb.q ], [ %.0.i4056, %BIGNUM_LEN.exit50 ] ; 3 uses
  %.063.i.i75 = ptrtoaddr ptr %.063.i.i to i64
  %.not.i.i = icmp eq i64 %.064.i.i, 0
  br i1 %.not.i.i, label %.preheader72.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.r
  %xtraiter = and i64 %.064.i.i, 1
  %i.bj = icmp eq i64 %.064.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %.064.i.i, -2
  br label %.lr.ph.i.i

.preheader72.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader72.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader72.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.05779.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ct, %.preheader72.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.cs, %.preheader72.i.i.loopexit.unr-lcssa ]
  %lcmp.mod81 = trunc i64 %.064.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.bk = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i.epil.init
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i.epil.init
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = zext i32 %i.bo to i64
  %i.bq = add nuw nsw i64 %.05878.i.i.epil.init, %i.bm
  %i.br = add nuw nsw i64 %i.bq, %i.bp            ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr [4 x i8], ptr %.0.i3553, i64 %.05779.i.i.epil.init
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !7
  %i.bu = lshr i64 %i.br, 32
  br label %.preheader72.i.i

.preheader72.i.i:                                 ; preds = %.lr.ph.i.i.epil.preheader, %.preheader72.i.i.loopexit.unr-lcssa, %bb.r
  %.058.lcssa.i.i = phi i64 [ 0, %bb.r ], [ %i.cs, %.preheader72.i.i.loopexit.unr-lcssa ], [ %i.bu, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %i.bv = icmp ult i64 %.064.i.i, %.062.i.i
  br i1 %i.bv, label %.lr.ph83.i.i, label %.preheader70.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.05779.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ct, %.lr.ph.i.i ] ; 5 uses
  %.05878.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.cs, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.bw = getelementptr [4 x i8], ptr %.061.i.i, i64 %.05779.i.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr [4 x i8], ptr %.063.i.i, i64 %.05779.i.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.cb = zext i32 %i.ca to i64
  %i.cc = add nuw nsw i64 %.05878.i.i, %i.by
  %i.cd = add nuw nsw i64 %i.cc, %i.cb            ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = getelementptr [4 x i8], ptr %.0.i3553, i64 %.05779.i.i
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !7
  %i.cg = lshr i64 %i.cd, 32
  %i.ch = or disjoint i64 %.05779.i.i, 1          ; 3 uses
  %i.ci = getelementptr [4 x i8], ptr %.061.i.i, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.ch
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  %i.cn = zext i32 %i.cm to i64
  %i.co = add nuw nsw i64 %i.cg, %i.ck
  %i.cp = add nuw nsw i64 %i.co, %i.cn            ; 2 uses
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = getelementptr [4 x i8], ptr %.0.i3553, i64 %i.ch
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !7
  %i.cs = lshr i64 %i.cp, 32                      ; 3 uses
  %i.ct = add nuw i64 %.05779.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader72.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !34

.preheader70.i.i:                                 ; preds = %bb.t, %.preheader72.i.i
  %.159.lcssa.i.i = phi i64 [ %.058.lcssa.i.i, %.preheader72.i.i ], [ %i.df, %bb.t ]
  %.1.lcssa.i.i = phi i64 [ %.064.i.i, %.preheader72.i.i ], [ %.062.i.i, %bb.t ] ; 4 uses
  %i.cu = icmp ult i64 %.1.lcssa.i.i, %.0.i37
  br i1 %i.cu, label %.lr.ph88.preheader.i.i, label %bary_add.exit

.lr.ph88.preheader.i.i:                           ; preds = %.preheader70.i.i
  %i.cv = icmp eq i64 %.159.lcssa.i.i, 0
  br i1 %i.cv, label %.loopexit71.i.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph88.preheader.i.i
  %i.cw = getelementptr [4 x i8], ptr %.0.i3553, i64 %.1.lcssa.i.i
  store i32 1, ptr %i.cw, align 4, !tbaa !7
  %i.cx = add nuw i64 %.1.lcssa.i.i, 1            ; 2 uses
  %exitcond103.peel.not.i.i = icmp eq i64 %i.cx, %.0.i37
  br i1 %exitcond103.peel.not.i.i, label %bary_add.exit, label %.loopexit71.i.i

.lr.ph83.i.i:                                     ; preds = %.preheader72.i.i, %bb.t
  %.182.i.i = phi i64 [ %i.dg, %bb.t ], [ %.064.i.i, %.preheader72.i.i ] ; 4 uses
  %.15981.i.i = phi i64 [ %i.df, %bb.t ], [ %.058.lcssa.i.i, %.preheader72.i.i ]
  %i.cy = icmp eq i64 %.15981.i.i, 0
  br i1 %i.cy, label %.loopexit71.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph83.i.i
  %i.cz = getelementptr [4 x i8], ptr %.063.i.i, i64 %.182.i.i
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = zext i32 %i.da to i64
  %i.dc = add nuw nsw i64 %i.db, 1                ; 2 uses
  %i.dd = trunc i64 %i.dc to i32
  %i.de = getelementptr [4 x i8], ptr %.0.i3553, i64 %.182.i.i
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !7
  %i.df = lshr i64 %i.dc, 32                      ; 2 uses
  %i.dg = add i64 %.182.i.i, 1                    ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %i.dg, %.062.i.i
  br i1 %exitcond102.not.i.i, label %.preheader70.i.i, label %.lr.ph83.i.i, !llvm.loop !36

.loopexit71.i.i:                                  ; preds = %.lr.ph83.i.i, %bb.s, %.lr.ph88.preheader.i.i
  %.3.i.i = phi i64 [ %i.cx, %bb.s ], [ %.1.lcssa.i.i, %.lr.ph88.preheader.i.i ], [ %.182.i.i, %.lr.ph83.i.i ] ; 6 uses
  %i.dh = icmp eq ptr %.063.i.i, %.0.i3553
  %i.di = icmp eq i64 %.062.i.i, %.0.i37
  %or.cond.i.i = and i1 %i.dh, %i.di
  br i1 %or.cond.i.i, label %bary_add.exit, label %.preheader69.i.i

.preheader69.i.i:                                 ; preds = %.loopexit71.i.i
  %i.dj = icmp ult i64 %.3.i.i, %.062.i.i
  br i1 %i.dj, label %.lr.ph91.i.i.preheader, label %.preheader.i.i

.lr.ph91.i.i.preheader:                           ; preds = %.preheader69.i.i
  %i.dk = sub nuw i64 %.062.i.i, %.3.i.i          ; 3 uses
  %min.iters.check = icmp ult i64 %i.dk, 8
  %i.dl = sub i64 %.063.i.i75, %.0.i355374
  %diff.check = icmp ugt i64 %i.dl, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph91.i.i.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph91.i.i.preheader
  %n.vec = and i64 %i.dk, -8                      ; 3 uses
  %i.dm = add i64 %.3.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dn = add i64 %.3.i.i, %index                 ; 2 uses
  %i.do = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.dn ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %wide.load = load <4 x i32>, ptr %i.do, align 4, !tbaa !7
  %wide.load76 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !7
  %i.dq = getelementptr [4 x i8], ptr %.0.i3553, i64 %i.dn ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 16
  store <4 x i32> %wide.load, ptr %i.dq, align 4, !tbaa !7
  store <4 x i32> %wide.load76, ptr %i.dr, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !297

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dk, %n.vec
  br i1 %cmp.n, label %.preheader.i.i, label %.lr.ph91.i.i.preheader77

.lr.ph91.i.i.preheader77:                         ; preds = %.lr.ph91.i.i.preheader, %middle.block
  %.490.i.i.ph = phi i64 [ %.3.i.i, %.lr.ph91.i.i.preheader ], [ %i.dm, %middle.block ] ; 4 uses
  %i.dt = sub i64 %.062.i.i, %.490.i.i.ph
  %xtraiter82 = and i64 %i.dt, 3                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader77, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.dx, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader77 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader77 ]
  %i.du = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i.prol
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7
  %i.dw = getelementptr [4 x i8], ptr %.0.i3553, i64 %.490.i.i.prol
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !7
  %i.dx = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter82
  br i1 %prol.iter.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !298

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader77
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader77 ], [ %i.dx, %.lr.ph91.i.i.prol ]
  %i.dy = sub i64 %.490.i.i.ph, %.062.i.i
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.preheader.i.i, label %.lr.ph91.i.i

.preheader.i.i:                                   ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i, %middle.block, %.preheader69.i.i
  %.4.lcssa.i.i = phi i64 [ %.3.i.i, %.preheader69.i.i ], [ %.062.i.i, %middle.block ], [ %.062.i.i, %.lr.ph91.i.i ], [ %.062.i.i, %.lr.ph91.i.i.prol.loopexit ] ; 3 uses
  %i.ea = icmp ult i64 %.4.lcssa.i.i, %.0.i37
  br i1 %i.ea, label %.lr.ph94.preheader.i.i, label %bary_add.exit

.lr.ph94.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.eb = shl i64 %.4.lcssa.i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %.0.i3553, i64 %i.eb
  %i.ec = sub nuw i64 %.0.i37, %.4.lcssa.i.i
  %i.ed = shl i64 %i.ec, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.ed, i1 false), !tbaa !7
  br label %bary_add.exit

.lr.ph91.i.i:                                     ; preds = %.lr.ph91.i.i.prol.loopexit, %.lr.ph91.i.i
  %.490.i.i = phi i64 [ %i.et, %.lr.ph91.i.i ], [ %.490.i.i.unr, %.lr.ph91.i.i.prol.loopexit ] ; 6 uses
  %i.ee = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !7
  %i.eg = getelementptr [4 x i8], ptr %.0.i3553, i64 %.490.i.i
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !7
  %i.eh = add nuw i64 %.490.i.i, 1                ; 2 uses
  %i.ei = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.ek = getelementptr [4 x i8], ptr %.0.i3553, i64 %i.eh
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !7
  %i.el = add nuw i64 %.490.i.i, 2                ; 2 uses
  %i.em = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7
  %i.eo = getelementptr [4 x i8], ptr %.0.i3553, i64 %i.el
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !7
  %i.ep = add nuw i64 %.490.i.i, 3                ; 2 uses
  %i.eq = getelementptr [4 x i8], ptr %.063.i.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !7
  %i.es = getelementptr [4 x i8], ptr %.0.i3553, i64 %i.ep
  store i32 %i.er, ptr %i.es, align 4, !tbaa !7
  %i.et = add nuw i64 %.490.i.i, 4                ; 2 uses
  %exitcond106.not.i.i.3 = icmp eq i64 %i.et, %.062.i.i
  br i1 %exitcond106.not.i.i.3, label %.preheader.i.i, label %.lr.ph91.i.i, !llvm.loop !299

bary_add.exit:                                    ; preds = %.preheader70.i.i, %bb.s, %.lr.ph94.preheader.i.i, %.preheader.i.i, %.loopexit71.i.i, %bb.d, %bb.c
  %.023 = phi i64 [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ %i.af, %.lr.ph94.preheader.i.i ], [ %i.af, %.loopexit71.i.i ], [ %i.af, %.preheader.i.i ], [ %i.af, %bb.s ], [ %i.af, %.preheader70.i.i ]
  ret i64 %.023
}

declare i64 @rb_num_coerce_bin(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_minus(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = ashr i64 %1, 1                           ; 2 uses
  %i.c = inttoptr i64 %0 to ptr
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = and i64 %i.d, 8192
  %i.f = icmp ne i64 %i.e, 0
  %i.g = icmp slt i64 %i.b, 1
  %.not = xor i1 %i.g, %i.f
  %spec.select24 = tail call i64 @llvm.abs.i64(i64 %i.b, i1 true) ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc i64 @bigadd_int(i64 noundef %0, i64 noundef %spec.select24)
  br label %bignorm.exit

bb.d:                                             ; preds = %bb.b
  %i.i = tail call fastcc i64 @bigsub_int(i64 noundef %0, i64 noundef %spec.select24)
  br label %bignorm.exit

bb.e:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %1, 0
  %i.k = and i64 %1, 6
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l                         ; 2 uses
  br i1 %i.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.e
  %i.n = inttoptr i64 %1 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = and i64 %i.o, 31
  switch i64 %i.p, label %RB_FLOAT_TYPE_P.exit.thread35 [
    i64 10, label %bb.f
    i64 4, label %RB_FLOAT_TYPE_P.exit.thread
  ]

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.q = tail call fastcc i64 @bigadd(i64 noundef %0, i64 noundef %1, i32 noundef 0) ; 7 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = and i64 %i.q, 7
  %i.t = icmp ne i64 %i.s, 0
  %i.u = or i1 %i.r, %i.t
  br i1 %i.u, label %bignorm.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.f
  %i.v = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13   ; 4 uses
  %i.x = and i64 %i.w, 31
  %i.y = icmp eq i64 %i.x, 10
  br i1 %i.y, label %bb.g, label %bignorm.exit

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.z = and i64 %i.w, 16384
  %.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = lshr i64 %i.w, 15
  %i.ab = and i64 %i.aa, 511
  %i.ac = getelementptr i8, ptr %i.v, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %i.v, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.af = getelementptr i8, ptr %i.v, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.i, %bb.h
  %.0.i28.i.i = phi i64 [ %i.ab, %bb.h ], [ %i.ae, %bb.i ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.ac, %bb.h ], [ %i.ag, %bb.i ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.j
  %indvar = phi i32 [ %indvar.next, %bb.j ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02332.i.i = phi i64 [ %i.al, %bb.j ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.ah = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02332.i.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %.critedge.i.i

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.al = add i64 %.02332.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.al, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit, label %.lr.ph.i.i, !llvm.loop !161

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.am = icmp ugt i64 %.02332.i.i, 2
  br i1 %i.am, label %bb.o, label %.lr.ph36.preheader.i.i

.lr.ph36.preheader.i.i:                           ; preds = %.critedge.i.i
  %i.an = trunc nuw i64 %.02332.i.i to i32        ; 3 uses
  %i.ao = trunc i64 %.0.i28.i.i to i32
  %i.ap = sub i32 %indvar, %i.ao
end_hunk_14
begin_hunk_15_@bigdivrem:bb.a
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
  br i1 %.not119, label %bb.bg, label %bb.q

bb.q:                                             ; preds = %bb.p
  store volatile i64 %0, ptr %3, align 8, !tbaa !11
  br label %bb.bg

bb.r:                                             ; preds = %bb.k, %bb.j
  %i.bd = icmp eq i64 %.0102169, 1
  br i1 %i.bd, label %bb.s, label %bb.ad

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
  br i1 %i.br, label %bb.v, label %bb.w

bb.v:                                             ; preds = %BIGNUM_DIGITS.exit130
  %i.bs = add i32 %i.be, -1
  %i.bt = load i32, ptr %.0.i126, align 4, !tbaa !7
  %i.bu = and i32 %i.bt, %i.bs                    ; 4 uses
  %.not.i.i.i131 = icmp eq i64 %.0101.lcssa, 0
  br i1 %.not.i.i.i131, label %bigdivrem_single.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v
  %i.bv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.be, i1 false)
  %i.bw = sub nsw i32 31, %i.bv
  %i.bx = zext nneg i32 %i.bw to i64              ; 4 uses
  %min.iters.check = icmp ult i64 %.0101.lcssa, 4
  %i.by = sub i64 %.0.i12912, %.0.i12611
  %diff.check = icmp ugt i64 %i.by, -16
  %or.cond14 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond14, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %.0101.lcssa, -4               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph ], [ %i.cd, %vector.body ]
  %i.bz = xor i64 %index, -1
  %i.ca = add i64 %.0101.lcssa, %i.bz             ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %.0.i126, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -12
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cd = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.ce = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.cd, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cf = shl nuw <4 x i64> %i.ce, splat (i64 32)
  %i.cg = or disjoint <4 x i64> %i.cf, %i.cd
  %i.ch = lshr <4 x i64> %i.cg, %broadcast.splat
  %i.ci = trunc <4 x i64> %i.ch to <4 x i32>
  %i.cj = getelementptr [4 x i8], ptr %.0.i129, i64 %i.ca
  %i.ck = getelementptr i8, ptr %i.cj, i64 -12
  %reverse13 = shufflevector <4 x i32> %i.ci, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse13, ptr %i.ck, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.cd, i64 3
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
  %i.cm = xor i64 %.017.i.i.i.ph, -1
  %i.cn = add i64 %.0101.lcssa, %i.cm             ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %.0.i126, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = or disjoint i64 %.014.i.i.i.prol, %i.cq
  %i.cs = lshr i64 %i.cr, %i.bx
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = getelementptr [4 x i8], ptr %.0.i129, i64 %i.cn
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !7
  %i.cv = or disjoint i64 %.017.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.i.i.unr = phi i64 [ %.017.i.i.i.ph, %scalar.ph.preheader ], [ %i.cv, %scalar.ph.prol ]
  %.014.in16.i.i.i.unr = phi i64 [ %.014.in16.i.i.i.ph, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %i.cw = icmp eq i64 %.0101.lcssa, %.neg
  br i1 %i.cw, label %bigdivrem_single.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i.i.i = phi i64 [ %i.do, %scalar.ph ], [ %.017.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i.i.i = phi i64 [ %i.dj, %scalar.ph ], [ %.014.in16.i.i.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i.i.i = shl nuw i64 %.014.in16.i.i.i, 32
  %i.cx = xor i64 %.017.i.i.i, -1
  %i.cy = add i64 %.0101.lcssa, %i.cx             ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %.0.i126, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = or disjoint i64 %.014.i.i.i, %i.db
  %i.dd = lshr i64 %i.dc, %i.bx
  %i.de = trunc i64 %i.dd to i32
  %i.df = getelementptr [4 x i8], ptr %.0.i129, i64 %i.cy
  store i32 %i.de, ptr %i.df, align 4, !tbaa !7
  %.014.i.i.i.1 = shl nuw i64 %i.db, 32
  %reass.sub = sub i64 %.0101.lcssa, %.017.i.i.i
  %i.dg = add i64 %reass.sub, -2                  ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr %.0.i126, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = or disjoint i64 %.014.i.i.i.1, %i.dj
  %i.dl = lshr i64 %i.dk, %i.bx
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = getelementptr [4 x i8], ptr %.0.i129, i64 %i.dg
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !7
  %i.do = add nuw i64 %.017.i.i.i, 2              ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.do, %.0101.lcssa
  br i1 %exitcond.not.i.i.i.1, label %bigdivrem_single.exit, label %scalar.ph, !llvm.loop !311

bb.w:                                             ; preds = %BIGNUM_DIGITS.exit130
  %.not.i.i = icmp eq i64 %.0101.lcssa, 0
  br i1 %.not.i.i, label %bigdivrem_single.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w
  %i.dp = zext i32 %i.be to i64                   ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.i
  %.030.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.ea, %bb.x ]
  %.02629.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.eb, %bb.x ] ; 2 uses
  %i.dq = shl nuw i64 %.030.i.i, 32
  %i.dr = xor i64 %.02629.i.i, -1
  %i.ds = add i64 %.0101.lcssa, %i.dr             ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %.0.i126, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7
  %i.dv = zext i32 %i.du to i64
  %i.dw = or disjoint i64 %i.dq, %i.dv            ; 2 uses
  %i.dx = udiv i64 %i.dw, %i.dp
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = getelementptr [4 x i8], ptr %.0.i129, i64 %i.ds
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !7
  %i.ea = urem i64 %i.dw, %i.dp                   ; 2 uses
  %i.eb = add nuw i64 %.02629.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.eb, %.0101.lcssa
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %bb.x, !llvm.loop !113

._crit_edge.loopexit.i.i:                         ; preds = %bb.x
  %i.ec = trunc nuw i64 %i.ea to i32
  br label %bigdivrem_single.exit

bigdivrem_single.exit:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.v, %bb.w, %._crit_edge.loopexit.i.i
  %.027.i.i = phi i32 [ %i.ec, %._crit_edge.loopexit.i.i ], [ %i.bu, %bb.v ], [ 0, %bb.w ], [ %i.bu, %middle.block ], [ %i.bu, %scalar.ph ], [ %i.bu, %scalar.ph.prol.loopexit ] ; 2 uses
  %.not116 = icmp eq ptr %3, null
  br i1 %.not116, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bigdivrem_single.exit
  %i.ed = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.ee = tail call fastcc i64 @bignew_1(i64 noundef %i.ed, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.ef = inttoptr i64 %i.ee to ptr               ; 6 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !13 ; 2 uses
  %i.eh = and i64 %i.eg, 16384
  %.not.i.i132 = icmp eq i64 %i.eh, 0
  br i1 %.not.i.i132, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = getelementptr i8, ptr %i.ef, i64 16
  store i32 %.027.i.i, ptr %i.ei, align 8, !tbaa !7
  %i.ej = getelementptr i8, ptr %i.ef, i64 20
  store i32 0, ptr %i.ej, align 4, !tbaa !7
  %i.ek = and i64 %i.eg, -16744449
  %i.el = or disjoint i64 %i.ek, 32768
  store i64 %i.el, ptr %i.ef, align 8, !tbaa !13
  br label %rb_uint2big.exit

bb.aa:                                            ; preds = %bb.y
  %i.em = getelementptr i8, ptr %i.ef, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !15 ; 2 uses
  store i32 %.027.i.i, ptr %i.en, align 4, !tbaa !7
  %i.eo = getelementptr i8, ptr %i.en, i64 4
  store i32 0, ptr %i.eo, align 4, !tbaa !7
  %i.ep = getelementptr i8, ptr %i.ef, i64 16
  store i64 1, ptr %i.ep, align 8, !tbaa !15
  br label %rb_uint2big.exit

rb_uint2big.exit:                                 ; preds = %bb.z, %bb.aa
  store volatile i64 %i.ee, ptr %3, align 8, !tbaa !11
  %i.eq = load volatile i64, ptr %3, align 8, !tbaa !11
  %i.er = load i64, ptr %i.a, align 8, !tbaa !13
  %i.es = and i64 %i.er, 8192
  %i.et = inttoptr i64 %i.eq to ptr               ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !13
  %i.ev = and i64 %i.eu, -8193
  %.sink.i = or disjoint i64 %i.ev, %i.es
  store i64 %.sink.i, ptr %i.et, align 8, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %rb_uint2big.exit, %bigdivrem_single.exit
  %.not117 = icmp eq ptr %2, null
  br i1 %.not117, label %bb.bg, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store volatile i64 %i.bj, ptr %2, align 8, !tbaa !11
  br label %bb.bg

bb.ad:                                            ; preds = %bb.r
  %i.ew = icmp eq i64 %.0101.lcssa, 2
  %i.ex = icmp eq i64 %.0102169, 2
  %or.cond = and i1 %i.ex, %i.ew
  br i1 %or.cond, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %bb.ad
  %i.ey = load i64, ptr %.0.i126, align 4         ; 2 uses
  %i.ez = load i64, ptr %.0.i124, align 4         ; 2 uses
  %i.fa = urem i64 %i.ey, %i.ez
  %i.fb = udiv i64 %i.ey, %i.ez
  %.not114 = icmp eq ptr %2, null
  br i1 %.not114, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fc = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.fd = xor i64 %i.i, %i.b
  %i.fe = and i64 %i.fd, 8192
  %.not165 = icmp eq i64 %i.fe, 0
  %i.ff = zext i1 %.not165 to i32
end_hunk_15
begin_hunk_16_@bigsq:bb.a
  %i.p = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.40) #25
  unreachable

bb.e:                                             ; preds = %BIGNUM_LEN.exit
  %i.q = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.r = tail call fastcc i64 @bignew_1(i64 noundef %i.q, i64 noundef %i.l, i32 noundef 1) ; 2 uses
  %i.s = load i64, ptr %i.c, align 8, !tbaa !13
  %i.t = and i64 %i.s, 16384
  %.not.i17 = icmp eq i64 %i.t, 0
  br i1 %.not.i17, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.c, i64 16
  br label %BIGNUM_DIGITS.exit

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %i.c, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.f, %bb.g
  %.0.i18 = phi ptr [ %i.u, %bb.f ], [ %i.w, %bb.g ] ; 3 uses
  %i.x = inttoptr i64 %i.r to ptr                 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13
  %i.z = and i64 %i.y, 16384
  %.not.i19 = icmp eq i64 %i.z, 0
  br i1 %.not.i19, label %bb.i, label %bb.h

bb.h:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.aa = getelementptr i8, ptr %i.x, i64 16
  br label %BIGNUM_DIGITS.exit21

bb.i:                                             ; preds = %BIGNUM_DIGITS.exit
  %i.ab = getelementptr i8, ptr %i.x, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit21

BIGNUM_DIGITS.exit21:                             ; preds = %bb.h, %bb.i
  %.0.i20 = phi ptr [ %i.aa, %bb.h ], [ %i.ac, %bb.i ] ; 2 uses
  %i.ad = icmp slt i64 %.0.i, 70
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %BIGNUM_DIGITS.exit21
  tail call fastcc void @bary_sq_fast(ptr noundef %.0.i20, i64 noundef %i.l, ptr noundef %.0.i18, i64 noundef %.0.i)
  br label %bb.l

bb.k:                                             ; preds = %BIGNUM_DIGITS.exit21
  tail call fastcc void @bary_mul(ptr noundef %.0.i20, i64 noundef %i.l, ptr noundef %.0.i18, i64 noundef %.0.i, ptr noundef %.0.i18, i64 noundef %.0.i)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !20
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !317
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.af = load volatile i64, ptr %i.ae, align 8, !tbaa !11 ; 0 uses
  ret i64 %i.r
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_and(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.c, align 8, !tbaa !11
  store i64 %1, ptr %i.d, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.i = trunc i64 %1 to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %1, 0
  %i.k = and i64 %1, 6
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rb_integer_type_p.exit.thread56, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.b
  %i.n = inttoptr i64 %1 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 10
  br i1 %i.q, label %bb.ac, label %rb_integer_type_p.exit.thread56

rb_integer_type_p.exit.thread56:                  ; preds = %bb.b, %rb_integer_type_p.exit
  %i.r = tail call i64 @rb_num_coerce_bit(i64 noundef %0, i64 noundef %1, i64 noundef 38) #23
  br label %bignorm.exit

bb.c:                                             ; preds = %bb.a
  %i.s = call fastcc i32 @abs2twocomp(ptr noundef %i.c, ptr noundef %i.e) ; 4 uses
  %i.t = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !11   ; 13 uses
  %i.v = ashr i64 %1, 1                           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.a, align 8, !tbaa !11
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bigand_int.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.s, 0
  %spec.select60 = select i1 %.not.i, i64 1, i64 %1
  br label %bigand_int.exit

bb.f:                                             ; preds = %bb.d
  %.lobit.i = ashr i64 %1, 63
  %i.y = trunc nsw i64 %.lobit.i to i32           ; 7 uses
  %i.z = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !13
  %i.ab = and i64 %i.aa, 16384
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %i.z, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.z, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.h, %bb.g
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ %i.ae, %bb.h ] ; 8 uses
  %.0.i.i192 = ptrtoaddr ptr %.0.i.i to i64
  %i.af = icmp eq i32 %i.s, 0                     ; 2 uses
  %i.ag = tail call i64 @llvm.smax.i64(i64 %i.u, i64 2)
  %spec.store.select.i = select i1 %i.af, i64 %i.u, i64 %i.ag ; 6 uses
  %i.ah = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.ai = tail call fastcc i64 @bignew_1(i64 noundef %i.ah, i64 noundef %spec.store.select.i, i32 noundef 0) ; 8 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 16 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !13 ; 4 uses
  %i.al = and i64 %i.ak, 16384
  %.not.i62.i = icmp eq i64 %i.al, 0              ; 3 uses
  br i1 %.not.i62.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %BIGNUM_DIGITS.exit.i
  %i.am = getelementptr i8, ptr %i.aj, i64 16
  br label %BIGNUM_DIGITS.exit64.i

bb.j:                                             ; preds = %BIGNUM_DIGITS.exit.i
  %i.an = getelementptr i8, ptr %i.aj, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit64.i

BIGNUM_DIGITS.exit64.i:                           ; preds = %bb.j, %bb.i
  %.0.i63.i = phi ptr [ %i.am, %bb.i ], [ %i.ao, %bb.j ] ; 11 uses
  %.0.i63.i191 = ptrtoaddr ptr %.0.i63.i to i64
  %i.ap = icmp slt i64 %i.u, 1
  %i.aq = add nsw i64 %i.v, 1                     ; 2 uses
  %or.cond381.i = icmp ult i64 %i.aq, 2
  %or.cond82.i = select i1 %i.ap, i1 true, i1 %or.cond381.i
  br i1 %or.cond82.i, label %.preheader73.i, label %.lr.ph.i

.preheader73.i:                                   ; preds = %.lr.ph.i, %BIGNUM_DIGITS.exit64.i
  %.pre-phi.i = phi i64 [ %i.aq, %BIGNUM_DIGITS.exit64.i ], [ %i.ba, %.lr.ph.i ]
  %.057.lcssa.i = phi i64 [ 0, %BIGNUM_DIGITS.exit64.i ], [ %i.ay, %.lr.ph.i ] ; 3 uses
  %.056.lcssa.i = phi i64 [ %i.v, %BIGNUM_DIGITS.exit64.i ], [ %i.ax, %.lr.ph.i ]
  %i.ar = icmp sge i64 %.057.lcssa.i, %spec.store.select.i
  %or.cond586.i = icmp ult i64 %.pre-phi.i, 2
  %or.cond6187.i = select i1 %i.ar, i1 true, i1 %or.cond586.i
  br i1 %or.cond6187.i, label %.preheader72.i, label %.lr.ph90.i

.lr.ph.i:                                         ; preds = %BIGNUM_DIGITS.exit64.i, %.lr.ph.i
  %.05684.i = phi i64 [ %i.ax, %.lr.ph.i ], [ %i.v, %BIGNUM_DIGITS.exit64.i ] ; 2 uses
  %.05783.i = phi i64 [ %i.ay, %.lr.ph.i ], [ 0, %BIGNUM_DIGITS.exit64.i ] ; 3 uses
  %i.as = getelementptr [4 x i8], ptr %.0.i.i, i64 %.05783.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = trunc i64 %.05684.i to i32
  %i.av = and i32 %i.at, %i.au
  %i.aw = getelementptr [4 x i8], ptr %.0.i63.i, i64 %.05783.i
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !7
  %i.ax = ashr i64 %.05684.i, 32                  ; 3 uses
  %i.ay = add nuw nsw i64 %.05783.i, 1            ; 3 uses
  %i.az = icmp sge i64 %i.ay, %i.u
  %i.ba = add nsw i64 %i.ax, 1                    ; 2 uses
  %or.cond3.i = icmp ult i64 %i.ba, 2
  %or.cond.i = select i1 %i.az, i1 true, i1 %or.cond3.i
  br i1 %or.cond.i, label %.preheader73.i, label %.lr.ph.i, !llvm.loop !318

.preheader72.i:                                   ; preds = %.lr.ph90.i, %.preheader73.i
  %.158.lcssa.i = phi i64 [ %.057.lcssa.i, %.preheader73.i ], [ %i.bz, %.lr.ph90.i ] ; 6 uses
  %i.bb = icmp slt i64 %.158.lcssa.i, %i.u
  br i1 %i.bb, label %.lr.ph93.i.preheader, label %.preheader.i

.lr.ph93.i.preheader:                             ; preds = %.preheader72.i
  %i.bc = sub i64 %i.u, %.158.lcssa.i             ; 3 uses
  %min.iters.check195 = icmp ult i64 %i.bc, 8
  %i.bd = sub i64 %.0.i.i192, %.0.i63.i191
  %diff.check193 = icmp ugt i64 %i.bd, -32
  %or.cond = select i1 %min.iters.check195, i1 true, i1 %diff.check193
  br i1 %or.cond, label %.lr.ph93.i.preheader242, label %vector.ph196

vector.ph196:                                     ; preds = %.lr.ph93.i.preheader
  %n.vec198 = and i64 %i.bc, -8                   ; 3 uses
  %i.be = add i64 %.158.lcssa.i, %n.vec198
  %broadcast.splatinsert199 = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat200 = shufflevector <4 x i32> %broadcast.splatinsert199, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph196
  %index202 = phi i64 [ 0, %vector.ph196 ], [ %index.next205, %vector.body201 ] ; 2 uses
  %i.bf = add i64 %.158.lcssa.i, %index202        ; 2 uses
  %i.bg = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.bf ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %wide.load203 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !7
  %wide.load204 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !7
  %i.bi = and <4 x i32> %wide.load203, %broadcast.splat200
  %i.bj = and <4 x i32> %wide.load204, %broadcast.splat200
  %i.bk = getelementptr [4 x i8], ptr %.0.i63.i, i64 %i.bf ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  store <4 x i32> %i.bi, ptr %i.bk, align 4, !tbaa !7
  store <4 x i32> %i.bj, ptr %i.bl, align 4, !tbaa !7
  %index.next205 = add nuw i64 %index202, 8       ; 2 uses
  %i.bm = icmp eq i64 %index.next205, %n.vec198
  br i1 %i.bm, label %middle.block206, label %vector.body201, !llvm.loop !319

middle.block206:                                  ; preds = %vector.body201
  %cmp.n207 = icmp eq i64 %i.bc, %n.vec198
  br i1 %cmp.n207, label %.preheader.i, label %.lr.ph93.i.preheader242

.lr.ph93.i.preheader242:                          ; preds = %.lr.ph93.i.preheader, %middle.block206
  %.292.i.ph = phi i64 [ %.158.lcssa.i, %.lr.ph93.i.preheader ], [ %i.be, %middle.block206 ] ; 4 uses
  %i.bn = sub i64 %i.u, %.292.i.ph
  %xtraiter265 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  br i1 %lcmp.mod266.not, label %.lr.ph93.i.prol.loopexit, label %.lr.ph93.i.prol

.lr.ph93.i.prol:                                  ; preds = %.lr.ph93.i.preheader242, %.lr.ph93.i.prol
  %.292.i.prol = phi i64 [ %i.bs, %.lr.ph93.i.prol ], [ %.292.i.ph, %.lr.ph93.i.preheader242 ] ; 3 uses
  %prol.iter267 = phi i64 [ %prol.iter267.next, %.lr.ph93.i.prol ], [ 0, %.lr.ph93.i.preheader242 ]
  %i.bo = getelementptr [4 x i8], ptr %.0.i.i, i64 %.292.i.prol
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = and i32 %i.bp, %i.y
  %i.br = getelementptr [4 x i8], ptr %.0.i63.i, i64 %.292.i.prol
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !7
  %i.bs = add nuw nsw i64 %.292.i.prol, 1         ; 2 uses
  %prol.iter267.next = add i64 %prol.iter267, 1   ; 2 uses
  %prol.iter267.cmp.not = icmp eq i64 %prol.iter267.next, %xtraiter265
  br i1 %prol.iter267.cmp.not, label %.lr.ph93.i.prol.loopexit, label %.lr.ph93.i.prol, !llvm.loop !320

.lr.ph93.i.prol.loopexit:                         ; preds = %.lr.ph93.i.prol, %.lr.ph93.i.preheader242
  %.292.i.unr = phi i64 [ %.292.i.ph, %.lr.ph93.i.preheader242 ], [ %i.bs, %.lr.ph93.i.prol ]
  %i.bt = sub i64 %.292.i.ph, %i.u
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %.preheader.i, label %.lr.ph93.i

.lr.ph90.i:                                       ; preds = %.preheader73.i, %.lr.ph90.i
  %.189.i = phi i64 [ %i.by, %.lr.ph90.i ], [ %.056.lcssa.i, %.preheader73.i ] ; 2 uses
  %.15888.i = phi i64 [ %i.bz, %.lr.ph90.i ], [ %.057.lcssa.i, %.preheader73.i ] ; 2 uses
  %i.bv = trunc i64 %.189.i to i32
  %i.bw = and i32 %i.s, %i.bv
  %i.bx = getelementptr [4 x i8], ptr %.0.i63.i, i64 %.15888.i
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !7
  %i.by = ashr i64 %.189.i, 32                    ; 2 uses
  %i.bz = add nuw nsw i64 %.15888.i, 1            ; 3 uses
  %i.ca = icmp sge i64 %i.bz, %spec.store.select.i
  %i.cb = add nsw i64 %i.by, 1
  %or.cond5.i = icmp ult i64 %i.cb, 2
  %or.cond61.i = select i1 %i.ca, i1 true, i1 %or.cond5.i
  br i1 %or.cond61.i, label %.preheader72.i, label %.lr.ph90.i, !llvm.loop !321

.preheader.i:                                     ; preds = %.lr.ph93.i.prol.loopexit, %.lr.ph93.i, %middle.block206, %.preheader72.i
  %.2.lcssa.i = phi i64 [ %.158.lcssa.i, %.preheader72.i ], [ %i.u, %middle.block206 ], [ %i.u, %.lr.ph93.i ], [ %i.u, %.lr.ph93.i.prol.loopexit ] ; 5 uses
  %i.cc = icmp slt i64 %.2.lcssa.i, %spec.store.select.i
  br i1 %i.cc, label %.lr.ph96.i, label %._crit_edge.i

.lr.ph96.i:                                       ; preds = %.preheader.i
  %i.cd = and i32 %i.s, %i.y                      ; 2 uses
  %i.ce = sub i64 %spec.store.select.i, %.2.lcssa.i ; 3 uses
  %min.iters.check210 = icmp ult i64 %i.ce, 8
  br i1 %min.iters.check210, label %scalar.ph209.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %.lr.ph96.i
  %n.vec213 = and i64 %i.ce, -8                   ; 3 uses
  %i.cf = add i64 %.2.lcssa.i, %n.vec213
  %broadcast.splatinsert214 = insertelement <4 x i32> poison, i32 %i.cd, i64 0
  %broadcast.splat215 = shufflevector <4 x i32> %broadcast.splatinsert214, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %.0.i63.i, i64 %.2.lcssa.i
  br label %vector.body216

vector.body216:                                   ; preds = %vector.body216, %vector.ph211
  %index217 = phi i64 [ 0, %vector.ph211 ], [ %index.next218, %vector.body216 ] ; 2 uses
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %index217 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  store <4 x i32> %broadcast.splat215, ptr %i.ch, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat215, ptr %i.ci, align 4, !tbaa !7
  %index.next218 = add nuw i64 %index217, 8       ; 2 uses
  %i.cj = icmp eq i64 %index.next218, %n.vec213
  br i1 %i.cj, label %middle.block219, label %vector.body216, !llvm.loop !322

middle.block219:                                  ; preds = %vector.body216
  %cmp.n220 = icmp eq i64 %i.ce, %n.vec213
  br i1 %cmp.n220, label %._crit_edge.i, label %scalar.ph209.preheader

scalar.ph209.preheader:                           ; preds = %.lr.ph96.i, %middle.block219
  %.395.i.ph = phi i64 [ %.2.lcssa.i, %.lr.ph96.i ], [ %i.cf, %middle.block219 ]
  br label %scalar.ph209

.lr.ph93.i:                                       ; preds = %.lr.ph93.i.prol.loopexit, %.lr.ph93.i
  %.292.i = phi i64 [ %i.dd, %.lr.ph93.i ], [ %.292.i.unr, %.lr.ph93.i.prol.loopexit ] ; 6 uses
  %i.ck = getelementptr [4 x i8], ptr %.0.i.i, i64 %.292.i
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !7
  %i.cm = and i32 %i.cl, %i.y
  %i.cn = getelementptr [4 x i8], ptr %.0.i63.i, i64 %.292.i
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !7
  %i.co = add nuw nsw i64 %.292.i, 1              ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cr = and i32 %i.cq, %i.y
  %i.cs = getelementptr [4 x i8], ptr %.0.i63.i, i64 %i.co
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !7
  %i.ct = add nuw nsw i64 %.292.i, 2              ; 2 uses
  %i.cu = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.cw = and i32 %i.cv, %i.y
  %i.cx = getelementptr [4 x i8], ptr %.0.i63.i, i64 %i.ct
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !7
  %i.cy = add nuw nsw i64 %.292.i, 3              ; 2 uses
  %i.cz = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = and i32 %i.da, %i.y
  %i.dc = getelementptr [4 x i8], ptr %.0.i63.i, i64 %i.cy
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !7
  %i.dd = add nuw nsw i64 %.292.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.dd, %i.u
  br i1 %exitcond.not.i.3, label %.preheader.i, label %.lr.ph93.i, !llvm.loop !323

scalar.ph209:                                     ; preds = %scalar.ph209.preheader, %scalar.ph209
  %.395.i = phi i64 [ %i.df, %scalar.ph209 ], [ %.395.i.ph, %scalar.ph209.preheader ] ; 2 uses
  %i.de = getelementptr [4 x i8], ptr %.0.i63.i, i64 %.395.i
  store i32 %i.cd, ptr %i.de, align 4, !tbaa !7
  %i.df = add nuw nsw i64 %.395.i, 1              ; 2 uses
  %exitcond107.not.i = icmp eq i64 %i.df, %spec.store.select.i
  br i1 %exitcond107.not.i, label %._crit_edge.i, label %scalar.ph209, !llvm.loop !324

._crit_edge.i:                                    ; preds = %scalar.ph209, %middle.block219, %.preheader.i
  %i.dg = icmp sgt i64 %i.v, -1
  %.not71.i = or i1 %i.af, %i.dg                  ; 2 uses
  %i.dh = and i64 %i.ak, -8193
  %masksel.i.i.i = select i1 %.not71.i, i64 8192, i64 0
  %.sink.i.i.i = or disjoint i64 %i.dh, %masksel.i.i.i
  store i64 %.sink.i.i.i, ptr %i.aj, align 8, !tbaa !13
  br i1 %.not71.i, label %twocomp2abs_bang.exit.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  br i1 %.not.i62.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.di = lshr i64 %i.ak, 15
  %i.dj = and i64 %i.di, 511
  %i.dk = getelementptr i8, ptr %i.aj, i64 16
  br label %BIGNUM_DIGITS.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.dl = getelementptr i8, ptr %i.aj, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !15
  %i.dn = getelementptr i8, ptr %i.aj, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i.i

BIGNUM_DIGITS.exit.i.i.i:                         ; preds = %bb.m, %bb.l
  %.0.i8.i.i.i = phi i64 [ %i.dj, %bb.l ], [ %i.dm, %bb.m ] ; 5 uses
  %.0.i5.i.i.i = phi ptr [ %i.dk, %bb.l ], [ %i.do, %bb.m ] ; 4 uses
  %.not27.i.i.i.i = icmp eq i64 %.0.i8.i.i.i, 0
  br i1 %.not27.i.i.i.i, label %bary_2comp.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %BIGNUM_DIGITS.exit.i.i.i, %bb.n
  %.023.i.i.i.i = phi i64 [ %i.dr, %bb.n ], [ 0, %BIGNUM_DIGITS.exit.i.i.i ] ; 5 uses
  %i.dp = getelementptr [4 x i8], ptr %.0.i5.i.i.i, i64 %.023.i.i.i.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !7  ; 2 uses
  %.not.i6.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i6.i.i.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dr = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dr, %.0.i8.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %bary_2comp.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !55

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ds = getelementptr [4 x i8], ptr %.0.i5.i.i.i, i64 %.023.i.i.i.i
  %i.dt = sub i32 0, %i.dq
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !7
  %.124.i.i.i.i = add i64 %.023.i.i.i.i, 1        ; 4 uses
  %i.du = icmp ult i64 %.124.i.i.i.i, %.0.i8.i.i.i
  br i1 %i.du, label %.lr.ph26.i.i.i.i.preheader, label %twocomp2abs_bang.exit.i

.lr.ph26.i.i.i.i.preheader:                       ; preds = %bb.o
  %i.dv = xor i64 %.023.i.i.i.i, -1
  %i.dw = add i64 %.0.i8.i.i.i, %i.dv             ; 3 uses
end_hunk_16
begin_hunk_17_@rb_big_and:bb.a
  %i.fk = getelementptr i8, ptr %i.aj, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !15
  %i.fm = getelementptr i8, ptr %i.aj, i64 24
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i68.i

BIGNUM_DIGITS.exit.i.i68.i:                       ; preds = %bb.v, %bb.u
  %.0.i28.i.i.i = phi i64 [ %i.fi, %bb.u ], [ %i.fl, %bb.v ] ; 3 uses
  %.0.i26.i.i.i = phi ptr [ %i.fj, %bb.u ], [ %i.fn, %bb.v ] ; 4 uses
  %cond31.i.i.i = icmp eq i64 %.0.i28.i.i.i, 0
  br i1 %cond31.i.i.i, label %bigand_int.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %BIGNUM_DIGITS.exit.i.i68.i, %bb.w
  %indvar268 = phi i32 [ %indvar.next269, %bb.w ], [ 0, %BIGNUM_DIGITS.exit.i.i68.i ] ; 2 uses
  %.02332.i.i.i = phi i64 [ %i.fs, %bb.w ], [ %.0.i28.i.i.i, %BIGNUM_DIGITS.exit.i.i68.i ] ; 5 uses
  %i.fo = getelementptr [4 x i8], ptr %.0.i26.i.i.i, i64 %.02332.i.i.i
  %i.fp = getelementptr i8, ptr %i.fo, i64 -4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !7
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %bb.w, label %.critedge.i.i.i

bb.w:                                             ; preds = %.lr.ph.i.i.i
  %i.fs = add i64 %.02332.i.i.i, -1               ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.fs, 0
  %indvar.next269 = add i32 %indvar268, 1
  br i1 %cond.i.i.i, label %bigand_int.exit, label %.lr.ph.i.i.i, !llvm.loop !161

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.ft = icmp ugt i64 %.02332.i.i.i, 2
  br i1 %i.ft, label %bb.ab, label %.lr.ph36.preheader.i.i.i

.lr.ph36.preheader.i.i.i:                         ; preds = %.critedge.i.i.i
  %i.fu = trunc nuw i64 %.02332.i.i.i to i32      ; 3 uses
  %i.fv = trunc i64 %.0.i28.i.i.i to i32
  %i.fw = sub i32 %indvar268, %i.fv
  %i.fx = icmp ugt i32 %i.fw, -4
  br i1 %i.fx, label %.lr.ph36.i.i.i.epil.preheader, label %.lr.ph36.i.i.i

.lr.ph36.i.i.i:                                   ; preds = %.lr.ph36.preheader.i.i.i, %.lr.ph36.i.i.i
  %.035.i.i.i = phi i32 [ %i.fy, %.lr.ph36.i.i.i ], [ %i.fu, %.lr.ph36.preheader.i.i.i ] ; 2 uses
  %niter278 = phi i32 [ %niter278.next.3, %.lr.ph36.i.i.i ], [ 0, %.lr.ph36.preheader.i.i.i ]
  %i.fy = add i32 %.035.i.i.i, -4                 ; 3 uses
  %niter278.next.3 = add i32 %niter278, 4         ; 2 uses
  %niter278.ncmp.3 = icmp eq i32 %niter278.next.3, 0
  br i1 %niter278.ncmp.3, label %._crit_edge.i.i.i.unr-lcssa, label %.lr.ph36.i.i.i, !llvm.loop !162

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %.lr.ph36.i.i.i
  %i.fz = add i32 %.035.i.i.i, -3
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr [4 x i8], ptr %.0.i26.i.i.i, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !7
  %i.gd = zext i32 %i.gc to i64
  %i.ge = shl nuw i64 %i.gd, 32
  %i.gf = sext i32 %i.fy to i64
  %i.gg = getelementptr [4 x i8], ptr %.0.i26.i.i.i, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !7
  %i.gi = zext i32 %i.gh to i64
  %i.gj = or disjoint i64 %i.ge, %i.gi
  br label %.lr.ph36.i.i.i.epil.preheader

.lr.ph36.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.unr-lcssa, %.lr.ph36.preheader.i.i.i
  %.035.i.i.i.epil.init = phi i32 [ %i.fu, %.lr.ph36.preheader.i.i.i ], [ %i.fy, %._crit_edge.i.i.i.unr-lcssa ]
  %.02134.i.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i.i ], [ %i.gj, %._crit_edge.i.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.i.epil

.lr.ph36.i.i.i.epil:                              ; preds = %.lr.ph36.i.i.i.epil, %.lr.ph36.i.i.i.epil.preheader
  %.035.i.i.i.epil = phi i32 [ %i.gk, %.lr.ph36.i.i.i.epil ], [ %.035.i.i.i.epil.init, %.lr.ph36.i.i.i.epil.preheader ]
  %.02134.i.i.i.epil = phi i64 [ %i.gq, %.lr.ph36.i.i.i.epil ], [ %.02134.i.i.i.epil.init, %.lr.ph36.i.i.i.epil.preheader ]
  %epil.iter272 = phi i32 [ %epil.iter272.next, %.lr.ph36.i.i.i.epil ], [ 0, %.lr.ph36.i.i.i.epil.preheader ]
  %i.gk = add i32 %.035.i.i.i.epil, -1            ; 2 uses
  %i.gl = shl i64 %.02134.i.i.i.epil, 32          ; 2 uses
  %i.gm = sext i32 %i.gk to i64
  %i.gn = getelementptr [4 x i8], ptr %.0.i26.i.i.i, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !7
  %i.gp = zext i32 %i.go to i64
  %i.gq = or disjoint i64 %i.gl, %i.gp            ; 4 uses
  %epil.iter272.next = add i32 %epil.iter272, 1   ; 2 uses
  %epil.iter272.cmp.not = icmp eq i32 %epil.iter272.next, %i.fu
  br i1 %epil.iter272.cmp.not, label %._crit_edge.i.i.i.epilog-lcssa, label %.lr.ph36.i.i.i.epil, !llvm.loop !328

._crit_edge.i.i.i.epilog-lcssa:                   ; preds = %.lr.ph36.i.i.i.epil
  %i.gr = icmp ult i64 %i.gl, 4611686018427387904
  %i.gs = and i64 %i.fd, 8192
  %.not.i.i.i = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i.i.i.epilog-lcssa
  br i1 %i.gr, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.gt = shl nuw nsw i64 %i.gq, 1
  %i.gu = or disjoint i64 %i.gt, 1
  br label %bigand_int.exit

bb.z:                                             ; preds = %._crit_edge.i.i.i.epilog-lcssa
  %i.gv = icmp ult i64 %i.gq, 4611686018427387905
  br i1 %i.gv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.neg.i.i.i = mul nsw i64 %i.gq, -2
  %i.gw = or disjoint i64 %.neg.i.i.i, 1
  br label %bigand_int.exit

bb.ab:                                            ; preds = %bb.z, %bb.x, %.critedge.i.i.i
  call void @rb_big_resize(i64 noundef %i.ai, i64 noundef %.02332.i.i.i)
  br label %bigand_int.exit

bigand_int.exit:                                  ; preds = %bb.w, %bb.e, %bb.c, %twocomp2abs_bang.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %BIGNUM_DIGITS.exit.i.i68.i, %bb.y, %bb.aa, %bb.ab
  %.0.i39 = phi i64 [ %spec.select60, %bb.e ], [ 1, %bb.c ], [ 1, %BIGNUM_DIGITS.exit.i.i68.i ], [ %i.ai, %twocomp2abs_bang.exit.i ], [ %i.ai, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %i.gw, %bb.aa ], [ %i.ai, %bb.ab ], [ %i.gu, %bb.y ], [ 1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bignorm.exit

bb.ac:                                            ; preds = %rb_integer_type_p.exit
  %i.gx = call fastcc i32 @abs2twocomp(ptr noundef %i.c, ptr noundef %i.e) ; 2 uses
  %i.gy = call fastcc i32 @abs2twocomp(ptr noundef %i.d, ptr noundef %i.f) ; 2 uses
  %i.gz = load i64, ptr %i.e, align 8, !tbaa !11  ; 3 uses
  %i.ha = load i64, ptr %i.f, align 8, !tbaa !11  ; 3 uses
  %i.hb = icmp sgt i64 %i.gz, %i.ha
  %.pre = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  br i1 %i.hb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hc = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  store i64 %i.hc, ptr %i.c, align 8, !tbaa !11
  store i64 %.pre, ptr %i.d, align 8, !tbaa !11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hd = phi i64 [ %i.hc, %bb.ad ], [ %.pre, %bb.ac ]
  %i.he = phi i64 [ %i.gz, %bb.ad ], [ %i.ha, %bb.ac ]
  %i.hf = phi i64 [ %i.ha, %bb.ad ], [ %i.gz, %bb.ac ] ; 11 uses
  %.038 = phi i32 [ %i.gx, %bb.ad ], [ %i.gy, %bb.ac ]
  %.037 = phi i32 [ %i.gy, %bb.ad ], [ %i.gx, %bb.ac ] ; 7 uses
  %i.hg = inttoptr i64 %i.hd to ptr               ; 3 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !13
  %i.hi = and i64 %i.hh, 16384
  %.not.i40 = icmp eq i64 %i.hi, 0
  br i1 %.not.i40, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hj = getelementptr i8, ptr %i.hg, i64 16
  br label %BIGNUM_DIGITS.exit

bb.ag:                                            ; preds = %bb.ae
  %i.hk = getelementptr i8, ptr %i.hg, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.af, %bb.ag
  %.0.i41 = phi ptr [ %i.hj, %bb.af ], [ %i.hl, %bb.ag ] ; 7 uses
  %.0.i41156 = ptrtoaddr ptr %.0.i41 to i64
  %i.hm = load i64, ptr %i.d, align 8, !tbaa !11
  %i.hn = inttoptr i64 %i.hm to ptr               ; 3 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !13
  %i.hp = and i64 %i.ho, 16384
  %.not.i42 = icmp eq i64 %i.hp, 0
  br i1 %.not.i42, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %BIGNUM_DIGITS.exit
  %i.hq = getelementptr i8, ptr %i.hn, i64 16
  br label %BIGNUM_DIGITS.exit44

bb.ai:                                            ; preds = %BIGNUM_DIGITS.exit
  %i.hr = getelementptr i8, ptr %i.hn, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit44

BIGNUM_DIGITS.exit44:                             ; preds = %bb.ah, %bb.ai
  %.0.i43 = phi ptr [ %i.hq, %bb.ah ], [ %i.hs, %bb.ai ] ; 13 uses
  %.0.i43157 = ptrtoaddr ptr %.0.i43 to i64       ; 2 uses
  %i.ht = icmp eq i32 %.037, 0                    ; 2 uses
  %spec.select = select i1 %i.ht, i64 %i.hf, i64 %i.he ; 6 uses
  %i.hu = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.hv = tail call fastcc i64 @bignew_1(i64 noundef %i.hu, i64 noundef %spec.select, i32 noundef 0) ; 8 uses
  %i.hw = inttoptr i64 %i.hv to ptr               ; 16 uses
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !13 ; 4 uses
  %i.hy = and i64 %i.hx, 16384
  %.not.i45 = icmp eq i64 %i.hy, 0                ; 3 uses
  br i1 %.not.i45, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %BIGNUM_DIGITS.exit44
  %i.hz = getelementptr i8, ptr %i.hw, i64 16
  br label %BIGNUM_DIGITS.exit47

bb.ak:                                            ; preds = %BIGNUM_DIGITS.exit44
  %i.ia = getelementptr i8, ptr %i.hw, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit47

BIGNUM_DIGITS.exit47:                             ; preds = %bb.aj, %bb.ak
  %.0.i46 = phi ptr [ %i.hz, %bb.aj ], [ %i.ib, %bb.ak ] ; 13 uses
  %.0.i46155 = ptrtoaddr ptr %.0.i46 to i64       ; 3 uses
  %i.ic = icmp sgt i64 %i.hf, 0
  br i1 %i.ic, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %BIGNUM_DIGITS.exit47
  %min.iters.check = icmp ult i64 %i.hf, 12
  br i1 %min.iters.check, label %.lr.ph.preheader255, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.id = sub i64 %.0.i41156, %.0.i46155
  %diff.check = icmp ugt i64 %i.id, -32
  %i.ie = sub i64 %.0.i43157, %.0.i46155
  %diff.check158 = icmp ugt i64 %i.ie, -32
  %conflict.rdx = or i1 %diff.check, %diff.check158
  br i1 %conflict.rdx, label %.lr.ph.preheader255, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hf, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.if = getelementptr [4 x i8], ptr %.0.i41, i64 %index ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 16
  %wide.load = load <4 x i32>, ptr %i.if, align 4, !tbaa !7
  %wide.load159 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !7
  %i.ih = getelementptr [4 x i8], ptr %.0.i43, i64 %index ; 2 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 16
  %wide.load160 = load <4 x i32>, ptr %i.ih, align 4, !tbaa !7
  %wide.load161 = load <4 x i32>, ptr %i.ii, align 4, !tbaa !7
  %i.ij = and <4 x i32> %wide.load160, %wide.load
  %i.ik = and <4 x i32> %wide.load161, %wide.load159
  %i.il = getelementptr [4 x i8], ptr %.0.i46, i64 %index ; 2 uses
  %i.im = getelementptr i8, ptr %i.il, i64 16
  store <4 x i32> %i.ij, ptr %i.il, align 4, !tbaa !7
  store <4 x i32> %i.ik, ptr %i.im, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hf, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader255

.lr.ph.preheader255:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03580.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.hf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader255, %.lr.ph.prol
  %.03580.prol = phi i64 [ %i.iu, %.lr.ph.prol ], [ %.03580.ph, %.lr.ph.preheader255 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader255 ]
  %i.io = getelementptr [4 x i8], ptr %.0.i41, i64 %.03580.prol
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !7
  %i.iq = getelementptr [4 x i8], ptr %.0.i43, i64 %.03580.prol
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !7
  %i.is = and i32 %i.ir, %i.ip
  %i.it = getelementptr [4 x i8], ptr %.0.i46, i64 %.03580.prol
  store i32 %i.is, ptr %i.it, align 4, !tbaa !7
  %i.iu = add nuw nsw i64 %.03580.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !330

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader255
  %.03580.unr = phi i64 [ %.03580.ph, %.lr.ph.preheader255 ], [ %i.iu, %.lr.ph.prol ]
  %i.iv = sub nsw i64 %.03580.ph, %i.hf
  %i.iw = icmp ugt i64 %i.iv, -4
  br i1 %i.iw, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %BIGNUM_DIGITS.exit47
  %.035.lcssa = phi i64 [ 0, %BIGNUM_DIGITS.exit47 ], [ %i.hf, %middle.block ], [ %i.hf, %.lr.ph ], [ %i.hf, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ix = icmp slt i64 %.035.lcssa, %spec.select
  br i1 %i.ix, label %.lr.ph82.preheader, label %._crit_edge

.lr.ph82.preheader:                               ; preds = %.preheader
  %i.iy = sub i64 %spec.select, %.035.lcssa       ; 3 uses
  %min.iters.check165 = icmp ult i64 %i.iy, 8
  %i.iz = sub i64 %.0.i43157, %.0.i46155
  %diff.check163 = icmp ugt i64 %i.iz, -32
  %or.cond235 = select i1 %min.iters.check165, i1 true, i1 %diff.check163
  br i1 %or.cond235, label %.lr.ph82.preheader254, label %vector.ph166

vector.ph166:                                     ; preds = %.lr.ph82.preheader
  %n.vec168 = and i64 %i.iy, -8                   ; 3 uses
  %i.ja = add i64 %.035.lcssa, %n.vec168
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.037, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body169

vector.body169:                                   ; preds = %vector.body169, %vector.ph166
  %index170 = phi i64 [ 0, %vector.ph166 ], [ %index.next173, %vector.body169 ] ; 2 uses
  %i.jb = add i64 %.035.lcssa, %index170          ; 2 uses
  %i.jc = getelementptr [4 x i8], ptr %.0.i43, i64 %i.jb ; 2 uses
  %i.jd = getelementptr i8, ptr %i.jc, i64 16
  %wide.load171 = load <4 x i32>, ptr %i.jc, align 4, !tbaa !7
  %wide.load172 = load <4 x i32>, ptr %i.jd, align 4, !tbaa !7
  %i.je = and <4 x i32> %wide.load171, %broadcast.splat
  %i.jf = and <4 x i32> %wide.load172, %broadcast.splat
  %i.jg = getelementptr [4 x i8], ptr %.0.i46, i64 %i.jb ; 2 uses
  %i.jh = getelementptr i8, ptr %i.jg, i64 16
  store <4 x i32> %i.je, ptr %i.jg, align 4, !tbaa !7
  store <4 x i32> %i.jf, ptr %i.jh, align 4, !tbaa !7
  %index.next173 = add nuw i64 %index170, 8       ; 2 uses
  %i.ji = icmp eq i64 %index.next173, %n.vec168
  br i1 %i.ji, label %middle.block174, label %vector.body169, !llvm.loop !331

middle.block174:                                  ; preds = %vector.body169
  %cmp.n175 = icmp eq i64 %i.iy, %n.vec168
  br i1 %cmp.n175, label %._crit_edge, label %.lr.ph82.preheader254

.lr.ph82.preheader254:                            ; preds = %.lr.ph82.preheader, %middle.block174
  %.181.ph = phi i64 [ %.035.lcssa, %.lr.ph82.preheader ], [ %i.ja, %middle.block174 ] ; 4 uses
  %i.jj = sub i64 %spec.select, %.181.ph
  %xtraiter256 = and i64 %i.jj, 3                 ; 2 uses
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  br i1 %lcmp.mod257.not, label %.lr.ph82.prol.loopexit, label %.lr.ph82.prol

.lr.ph82.prol:                                    ; preds = %.lr.ph82.preheader254, %.lr.ph82.prol
  %.181.prol = phi i64 [ %i.jo, %.lr.ph82.prol ], [ %.181.ph, %.lr.ph82.preheader254 ] ; 3 uses
  %prol.iter258 = phi i64 [ %prol.iter258.next, %.lr.ph82.prol ], [ 0, %.lr.ph82.preheader254 ]
  %i.jk = getelementptr [4 x i8], ptr %.0.i43, i64 %.181.prol
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !7
  %i.jm = and i32 %i.jl, %.037
  %i.jn = getelementptr [4 x i8], ptr %.0.i46, i64 %.181.prol
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !7
  %i.jo = add nuw nsw i64 %.181.prol, 1           ; 2 uses
  %prol.iter258.next = add i64 %prol.iter258, 1   ; 2 uses
  %prol.iter258.cmp.not = icmp eq i64 %prol.iter258.next, %xtraiter256
  br i1 %prol.iter258.cmp.not, label %.lr.ph82.prol.loopexit, label %.lr.ph82.prol, !llvm.loop !332

.lr.ph82.prol.loopexit:                           ; preds = %.lr.ph82.prol, %.lr.ph82.preheader254
  %.181.unr = phi i64 [ %.181.ph, %.lr.ph82.preheader254 ], [ %i.jo, %.lr.ph82.prol ]
  %i.jp = sub i64 %.181.ph, %spec.select
  %i.jq = icmp ugt i64 %i.jp, -4
  br i1 %i.jq, label %._crit_edge, label %.lr.ph82

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03580 = phi i64 [ %i.ks, %.lr.ph ], [ %.03580.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.jr = getelementptr [4 x i8], ptr %.0.i41, i64 %.03580
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !7
  %i.jt = getelementptr [4 x i8], ptr %.0.i43, i64 %.03580
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !7
  %i.jv = and i32 %i.ju, %i.js
  %i.jw = getelementptr [4 x i8], ptr %.0.i46, i64 %.03580
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !7
  %i.jx = add nuw nsw i64 %.03580, 1              ; 3 uses
  %i.jy = getelementptr [4 x i8], ptr %.0.i41, i64 %i.jx
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !7
  %i.ka = getelementptr [4 x i8], ptr %.0.i43, i64 %i.jx
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !7
  %i.kc = and i32 %i.kb, %i.jz
  %i.kd = getelementptr [4 x i8], ptr %.0.i46, i64 %i.jx
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !7
  %i.ke = add nuw nsw i64 %.03580, 2              ; 3 uses
  %i.kf = getelementptr [4 x i8], ptr %.0.i41, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !7
  %i.kh = getelementptr [4 x i8], ptr %.0.i43, i64 %i.ke
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !7
  %i.kj = and i32 %i.ki, %i.kg
  %i.kk = getelementptr [4 x i8], ptr %.0.i46, i64 %i.ke
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !7
  %i.kl = add nuw nsw i64 %.03580, 3              ; 3 uses
  %i.km = getelementptr [4 x i8], ptr %.0.i41, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !7
  %i.ko = getelementptr [4 x i8], ptr %.0.i43, i64 %i.kl
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !7
  %i.kq = and i32 %i.kp, %i.kn
  %i.kr = getelementptr [4 x i8], ptr %.0.i46, i64 %i.kl
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !7
  %i.ks = add nuw nsw i64 %.03580, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ks, %i.hf
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !333

.lr.ph82:                                         ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82
  %.181 = phi i64 [ %i.lm, %.lr.ph82 ], [ %.181.unr, %.lr.ph82.prol.loopexit ] ; 6 uses
  %i.kt = getelementptr [4 x i8], ptr %.0.i43, i64 %.181
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !7
  %i.kv = and i32 %i.ku, %.037
  %i.kw = getelementptr [4 x i8], ptr %.0.i46, i64 %.181
  store i32 %i.kv, ptr %i.kw, align 4, !tbaa !7
  %i.kx = add nuw nsw i64 %.181, 1                ; 2 uses
  %i.ky = getelementptr [4 x i8], ptr %.0.i43, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !7
  %i.la = and i32 %i.kz, %.037
  %i.lb = getelementptr [4 x i8], ptr %.0.i46, i64 %i.kx
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !7
  %i.lc = add nuw nsw i64 %.181, 2                ; 2 uses
  %i.ld = getelementptr [4 x i8], ptr %.0.i43, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !7
  %i.lf = and i32 %i.le, %.037
  %i.lg = getelementptr [4 x i8], ptr %.0.i46, i64 %i.lc
  store i32 %i.lf, ptr %i.lg, align 4, !tbaa !7
  %i.lh = add nuw nsw i64 %.181, 3                ; 2 uses
  %i.li = getelementptr [4 x i8], ptr %.0.i43, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !7
  %i.lk = and i32 %i.lj, %.037
  %i.ll = getelementptr [4 x i8], ptr %.0.i46, i64 %i.lh
  store i32 %i.lk, ptr %i.ll, align 4, !tbaa !7
  %i.lm = add nuw nsw i64 %.181, 4                ; 2 uses
  %exitcond101.not.3 = icmp eq i64 %i.lm, %spec.select
  br i1 %exitcond101.not.3, label %._crit_edge, label %.lr.ph82, !llvm.loop !334

._crit_edge:                                      ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82, %middle.block174, %.preheader
  %i.ln = icmp eq i32 %.038, 0
  %.not59 = select i1 %i.ht, i1 true, i1 %i.ln    ; 2 uses
  %i.lo = and i64 %i.hx, -8193
  %masksel.i.i = select i1 %.not59, i64 8192, i64 0
  %.sink.i.i = or disjoint i64 %i.lo, %masksel.i.i
  store i64 %.sink.i.i, ptr %i.hw, align 8, !tbaa !13
  br i1 %.not59, label %twocomp2abs_bang.exit, label %bb.al

bb.al:                                            ; preds = %._crit_edge
  br i1 %.not.i45, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lp = lshr i64 %i.hx, 15
  %i.lq = and i64 %i.lp, 511
  %i.lr = getelementptr i8, ptr %i.hw, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.ls = getelementptr i8, ptr %i.hw, i64 16
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !15
  %i.lu = getelementptr i8, ptr %i.hw, i64 24
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.an, %bb.am
  %.0.i8.i.i = phi i64 [ %i.lq, %bb.am ], [ %i.lt, %bb.an ] ; 5 uses
  %.0.i5.i.i = phi ptr [ %i.lr, %bb.am ], [ %i.lv, %bb.an ] ; 4 uses
  %.not27.i.i.i = icmp eq i64 %.0.i8.i.i, 0
  br i1 %.not27.i.i.i, label %bary_2comp.exit.i.i, label %.lr.ph.i.i.i50

.lr.ph.i.i.i50:                                   ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.ao
  %.023.i.i.i = phi i64 [ %i.ly, %bb.ao ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.lw = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.023.i.i.i
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !7  ; 2 uses
  %.not.i6.i.i = icmp eq i32 %i.lx, 0
  br i1 %.not.i6.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i.i.i50
  %i.ly = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ly, %.0.i8.i.i
  br i1 %exitcond.not.i.i.i, label %bary_2comp.exit.i.i, label %.lr.ph.i.i.i50, !llvm.loop !55

bb.ap:                                            ; preds = %.lr.ph.i.i.i50
  %i.lz = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.023.i.i.i
  %i.ma = sub i32 0, %i.lx
  store i32 %i.ma, ptr %i.lz, align 4, !tbaa !7
  %.124.i.i.i = add i64 %.023.i.i.i, 1            ; 4 uses
  %i.mb = icmp ult i64 %.124.i.i.i, %.0.i8.i.i
  br i1 %i.mb, label %.lr.ph26.i.i.i.preheader, label %twocomp2abs_bang.exit

.lr.ph26.i.i.i.preheader:                         ; preds = %bb.ap
  %i.mc = xor i64 %.023.i.i.i, -1
  %i.md = add i64 %.0.i8.i.i, %i.mc               ; 3 uses
  %min.iters.check178 = icmp ult i64 %i.md, 8
  br i1 %min.iters.check178, label %.lr.ph26.i.i.i.preheader250, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph26.i.i.i.preheader
  %n.vec181 = and i64 %i.md, -8                   ; 3 uses
  %i.me = add i64 %.124.i.i.i, %n.vec181
  %i.mf = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.124.i.i.i
  br label %vector.body182

vector.body182:                                   ; preds = %vector.body182, %vector.ph179
  %index183 = phi i64 [ 0, %vector.ph179 ], [ %index.next186, %vector.body182 ] ; 2 uses
  %i.mg = getelementptr [4 x i8], ptr %i.mf, i64 %index183 ; 3 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 16     ; 2 uses
  %wide.load184 = load <4 x i32>, ptr %i.mg, align 4, !tbaa !7
  %wide.load185 = load <4 x i32>, ptr %i.mh, align 4, !tbaa !7
  %i.mi = xor <4 x i32> %wide.load184, splat (i32 -1)
  %i.mj = xor <4 x i32> %wide.load185, splat (i32 -1)
  store <4 x i32> %i.mi, ptr %i.mg, align 4, !tbaa !7
  store <4 x i32> %i.mj, ptr %i.mh, align 4, !tbaa !7
  %index.next186 = add nuw i64 %index183, 8       ; 2 uses
  %i.mk = icmp eq i64 %index.next186, %n.vec181
  br i1 %i.mk, label %middle.block187, label %vector.body182, !llvm.loop !335

end_hunk_17
begin_hunk_18_@abs2twocomp:bb.a
  %i.az = getelementptr i8, ptr %i.ay, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ay, align 4, !tbaa !7
  %wide.load70 = load <4 x i32>, ptr %i.az, align 4, !tbaa !7
  %i.ba = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.bb = xor <4 x i32> %wide.load70, splat (i32 -1)
  store <4 x i32> %i.ba, ptr %i.ay, align 4, !tbaa !7
  store <4 x i32> %i.bb, ptr %i.az, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !341

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit, label %.lr.ph26.i.preheader71

.lr.ph26.i.preheader71:                           ; preds = %.lr.ph26.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ %.124.i, %.lr.ph26.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader71, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader71 ] ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %.0.i31, i64 %.125.i ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = xor i32 %i.be, -1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !7
  %.1.i = add nuw i64 %.125.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %.1.i, %.044
  br i1 %exitcond31.not.i, label %bary_2comp.exit, label %.lr.ph26.i, !llvm.loop !342

bary_2comp.exit:                                  ; preds = %bb.q, %.lr.ph26.i, %middle.block, %bb.r
  store i64 %i.ab, ptr %0, align 8, !tbaa !11
  br label %.critedge.thread54

.critedge.thread54:                               ; preds = %bb.d, %bary_2comp.exit, %.critedge.thread, %.critedge
  %.045 = phi i64 [ %.044, %bary_2comp.exit ], [ %.046, %.critedge.thread ], [ %.0.i35, %.critedge ], [ 0, %bb.d ]
  %.020 = phi i32 [ -1, %bary_2comp.exit ], [ 0, %.critedge.thread ], [ 0, %.critedge ], [ 0, %bb.d ]
  store i64 %.045, ptr %1, align 8, !tbaa !11
  ret i32 %.020
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_big_or(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.c, align 8, !tbaa !11
  store i64 %1, ptr %i.d, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.i = trunc i64 %1 to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %1, 0
  %i.k = and i64 %1, 6
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rb_integer_type_p.exit.thread56, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.b
  %i.n = inttoptr i64 %1 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 10
  br i1 %i.q, label %bb.af, label %rb_integer_type_p.exit.thread56

rb_integer_type_p.exit.thread56:                  ; preds = %bb.b, %rb_integer_type_p.exit
  %i.r = tail call i64 @rb_num_coerce_bit(i64 noundef %0, i64 noundef %1, i64 noundef 124) #23
  br label %bignorm.exit

bb.c:                                             ; preds = %bb.a
  %i.s = call fastcc i32 @abs2twocomp(ptr noundef %i.c, ptr noundef %i.e) ; 6 uses
  %i.t = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !11   ; 12 uses
  %i.v = ashr i64 %1, 1                           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.a, align 8, !tbaa !11
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bigor_int.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %i.u, 0
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not63.i = icmp eq i32 %i.s, 0
  %spec.select60 = select i1 %.not63.i, i64 %1, i64 -1
  br label %bigor_int.exit

bb.f:                                             ; preds = %bb.d
  %i.y = inttoptr i64 %i.t to ptr                 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !13   ; 2 uses
  %i.aa = and i64 %i.z, 16384
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr i8, ptr %i.y, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !15
  %i.ad = getelementptr i8, ptr %i.y, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit.i

bb.h:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.y, i64 16
  %i.ag = lshr i64 %i.z, 15
  %i.ah = and i64 %i.ag, 511
  br label %BIGNUM_LEN.exit.i

BIGNUM_LEN.exit.i:                                ; preds = %bb.h, %bb.g
  %.0.i74.i = phi ptr [ %i.af, %bb.h ], [ %i.ac, %bb.g ] ; 8 uses
  %.0.i65.i = phi i64 [ %i.ah, %bb.h ], [ %i.ae, %bb.g ]
  %.0.i74.i195 = ptrtoaddr ptr %.0.i74.i to i64
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %.0.i65.i, i64 2) ; 7 uses
  %i.ai = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.aj = tail call fastcc i64 @bignew_1(i64 noundef %i.ai, i64 noundef %spec.store.select.i, i32 noundef 0) ; 8 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 16 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !13 ; 4 uses
  %i.am = and i64 %i.al, 16384
  %.not.i66.i = icmp eq i64 %i.am, 0              ; 3 uses
  br i1 %.not.i66.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %BIGNUM_LEN.exit.i
  %i.an = getelementptr i8, ptr %i.ak, i64 16
  br label %BIGNUM_DIGITS.exit68.i

bb.j:                                             ; preds = %BIGNUM_LEN.exit.i
  %i.ao = getelementptr i8, ptr %i.ak, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit68.i

BIGNUM_DIGITS.exit68.i:                           ; preds = %bb.j, %bb.i
  %.0.i67.i = phi ptr [ %i.an, %bb.i ], [ %i.ap, %bb.j ] ; 11 uses
  %.0.i67.i194 = ptrtoaddr ptr %.0.i67.i to i64
  %i.aq = icmp sgt i64 %i.u, 0
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %BIGNUM_DIGITS.exit68.i, %bb.k
  %.05696.i = phi i64 [ %i.ax, %bb.k ], [ %i.v, %BIGNUM_DIGITS.exit68.i ] ; 3 uses
  %.05795.i = phi i64 [ %i.ay, %bb.k ], [ 0, %BIGNUM_DIGITS.exit68.i ] ; 4 uses
  %i.ar = add nsw i64 %.05696.i, 1
  %or.cond.i = icmp ult i64 %i.ar, 2
  br i1 %or.cond.i, label %.loopexit83.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr [4 x i8], ptr %.0.i74.i, i64 %.05795.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7
  %i.au = trunc i64 %.05696.i to i32
  %i.av = or i32 %i.at, %i.au
  %i.aw = getelementptr [4 x i8], ptr %.0.i67.i, i64 %.05795.i
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !7
  %i.ax = ashr i64 %.05696.i, 32                  ; 2 uses
  %i.ay = add nuw nsw i64 %.05795.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ay, %i.u
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !343

._crit_edge.i:                                    ; preds = %bb.k, %BIGNUM_DIGITS.exit68.i
  %.057.lcssa.i = phi i64 [ 0, %BIGNUM_DIGITS.exit68.i ], [ %i.u, %bb.k ] ; 3 uses
  %.056.lcssa.i = phi i64 [ %i.v, %BIGNUM_DIGITS.exit68.i ], [ %i.ax, %bb.k ]
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %.preheader81.i, label %bb.m

.preheader81.i:                                   ; preds = %._crit_edge.i
  %i.az = icmp samesign ult i64 %.057.lcssa.i, %spec.store.select.i
  br i1 %i.az, label %.lr.ph100.i, label %.loopexit.i

.lr.ph100.i:                                      ; preds = %.preheader81.i, %bb.l
  %.199.i = phi i64 [ %i.bd, %bb.l ], [ %.056.lcssa.i, %.preheader81.i ] ; 3 uses
  %.15898.i = phi i64 [ %i.be, %bb.l ], [ %.057.lcssa.i, %.preheader81.i ] ; 3 uses
  %i.ba = add nsw i64 %.199.i, 1
  %or.cond3.i = icmp ult i64 %i.ba, 2
  br i1 %or.cond3.i, label %.loopexit83.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph100.i
  %i.bb = trunc i64 %.199.i to i32
  %i.bc = getelementptr [4 x i8], ptr %.0.i67.i, i64 %.15898.i
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !7
  %i.bd = ashr i64 %.199.i, 32
  %i.be = add nuw i64 %.15898.i, 1                ; 2 uses
  %exitcond124.not.i = icmp eq i64 %i.be, %spec.store.select.i
  br i1 %exitcond124.not.i, label %.loopexit.i, label %.lr.ph100.i, !llvm.loop !344

.loopexit83.i:                                    ; preds = %.lr.ph.i, %.lr.ph100.i
  %.2.i = phi i64 [ %.15898.i, %.lr.ph100.i ], [ %.05795.i, %.lr.ph.i ] ; 7 uses
  %.not61.i = icmp sgt i64 %i.v, -1
  br i1 %.not61.i, label %.preheader80.i, label %bb.m

.preheader80.i:                                   ; preds = %.loopexit83.i
  %i.bf = icmp slt i64 %.2.i, %i.u
  br i1 %i.bf, label %.lr.ph102.i.preheader, label %._crit_edge103.i

.lr.ph102.i.preheader:                            ; preds = %.preheader80.i
  %i.bg = sub i64 %i.u, %.2.i                     ; 3 uses
  %min.iters.check198 = icmp ult i64 %i.bg, 8
  %i.bh = sub i64 %.0.i74.i195, %.0.i67.i194
  %diff.check196 = icmp ugt i64 %i.bh, -32
  %or.cond = select i1 %min.iters.check198, i1 true, i1 %diff.check196
  br i1 %or.cond, label %.lr.ph102.i.preheader230, label %vector.ph199

vector.ph199:                                     ; preds = %.lr.ph102.i.preheader
  %n.vec201 = and i64 %i.bg, -8                   ; 3 uses
  %i.bi = add i64 %.2.i, %n.vec201
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph199
  %index203 = phi i64 [ 0, %vector.ph199 ], [ %index.next206, %vector.body202 ] ; 2 uses
  %i.bj = add i64 %.2.i, %index203                ; 2 uses
  %i.bk = getelementptr [4 x i8], ptr %.0.i74.i, i64 %i.bj ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  %wide.load204 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !7
  %wide.load205 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !7
  %i.bm = getelementptr [4 x i8], ptr %.0.i67.i, i64 %i.bj ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 16
  store <4 x i32> %wide.load204, ptr %i.bm, align 4, !tbaa !7
  store <4 x i32> %wide.load205, ptr %i.bn, align 4, !tbaa !7
  %index.next206 = add nuw i64 %index203, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next206, %n.vec201
  br i1 %i.bo, label %middle.block207, label %vector.body202, !llvm.loop !345

middle.block207:                                  ; preds = %vector.body202
  %cmp.n208 = icmp eq i64 %i.bg, %n.vec201
  br i1 %cmp.n208, label %._crit_edge103.i, label %.lr.ph102.i.preheader230

.lr.ph102.i.preheader230:                         ; preds = %.lr.ph102.i.preheader, %middle.block207
  %.3101.i.ph = phi i64 [ %.2.i, %.lr.ph102.i.preheader ], [ %i.bi, %middle.block207 ] ; 4 uses
  %i.bp = sub i64 %i.u, %.3101.i.ph
  %xtraiter253 = and i64 %i.bp, 3                 ; 2 uses
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %.lr.ph102.i.prol.loopexit, label %.lr.ph102.i.prol

.lr.ph102.i.prol:                                 ; preds = %.lr.ph102.i.preheader230, %.lr.ph102.i.prol
  %.3101.i.prol = phi i64 [ %i.bt, %.lr.ph102.i.prol ], [ %.3101.i.ph, %.lr.ph102.i.preheader230 ] ; 3 uses
  %prol.iter255 = phi i64 [ %prol.iter255.next, %.lr.ph102.i.prol ], [ 0, %.lr.ph102.i.preheader230 ]
  %i.bq = getelementptr [4 x i8], ptr %.0.i74.i, i64 %.3101.i.prol
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bs = getelementptr [4 x i8], ptr %.0.i67.i, i64 %.3101.i.prol
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !7
  %i.bt = add nsw i64 %.3101.i.prol, 1            ; 2 uses
  %prol.iter255.next = add i64 %prol.iter255, 1   ; 2 uses
  %prol.iter255.cmp.not = icmp eq i64 %prol.iter255.next, %xtraiter253
  br i1 %prol.iter255.cmp.not, label %.lr.ph102.i.prol.loopexit, label %.lr.ph102.i.prol, !llvm.loop !346

.lr.ph102.i.prol.loopexit:                        ; preds = %.lr.ph102.i.prol, %.lr.ph102.i.preheader230
  %.3101.i.unr = phi i64 [ %.3101.i.ph, %.lr.ph102.i.preheader230 ], [ %i.bt, %.lr.ph102.i.prol ]
  %i.bu = sub i64 %.3101.i.ph, %i.u
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %._crit_edge103.i, label %.lr.ph102.i

.lr.ph102.i:                                      ; preds = %.lr.ph102.i.prol.loopexit, %.lr.ph102.i
  %.3101.i = phi i64 [ %i.cl, %.lr.ph102.i ], [ %.3101.i.unr, %.lr.ph102.i.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr [4 x i8], ptr %.0.i74.i, i64 %.3101.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = getelementptr [4 x i8], ptr %.0.i67.i, i64 %.3101.i
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !7
  %i.bz = add nsw i64 %.3101.i, 1                 ; 2 uses
  %i.ca = getelementptr [4 x i8], ptr %.0.i74.i, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cc = getelementptr [4 x i8], ptr %.0.i67.i, i64 %i.bz
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !7
  %i.cd = add nsw i64 %.3101.i, 2                 ; 2 uses
  %i.ce = getelementptr [4 x i8], ptr %.0.i74.i, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = getelementptr [4 x i8], ptr %.0.i67.i, i64 %i.cd
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !7
  %i.ch = add nsw i64 %.3101.i, 3                 ; 2 uses
  %i.ci = getelementptr [4 x i8], ptr %.0.i74.i, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !7
  %i.ck = getelementptr [4 x i8], ptr %.0.i67.i, i64 %i.ch
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !7
  %i.cl = add nsw i64 %.3101.i, 4                 ; 2 uses
  %exitcond126.not.i.3 = icmp eq i64 %i.cl, %i.u
  br i1 %exitcond126.not.i.3, label %._crit_edge103.i, label %.lr.ph102.i, !llvm.loop !347

._crit_edge103.i:                                 ; preds = %.lr.ph102.i.prol.loopexit, %.lr.ph102.i, %middle.block207, %.preheader80.i
  %.3.lcssa.i = phi i64 [ %.2.i, %.preheader80.i ], [ %i.u, %middle.block207 ], [ %i.u, %.lr.ph102.i ], [ %i.u, %.lr.ph102.i.prol.loopexit ] ; 4 uses
  %.not62.i = icmp eq i32 %i.s, 0
  br i1 %.not62.i, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %._crit_edge103.i
  %i.cm = icmp slt i64 %.3.lcssa.i, %spec.store.select.i
  br i1 %i.cm, label %.lr.ph109.preheader.i, label %.loopexit.i

.lr.ph109.preheader.i:                            ; preds = %.preheader.i
  %i.cn = shl i64 %.3.lcssa.i, 2
  %scevgep127.i = getelementptr i8, ptr %.0.i67.i, i64 %i.cn
  %i.co = sub i64 %spec.store.select.i, %.3.lcssa.i
  %i.cp = shl i64 %i.co, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep127.i, i8 0, i64 %i.cp, i1 false), !tbaa !7
  br label %.loopexit.i

bb.m:                                             ; preds = %._crit_edge103.i, %.loopexit83.i, %._crit_edge.i
  %.5.i = phi i64 [ %.2.i, %.loopexit83.i ], [ %.3.lcssa.i, %._crit_edge103.i ], [ %.057.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.cq = icmp slt i64 %.5.i, %spec.store.select.i
  br i1 %i.cq, label %.lr.ph107.preheader.i, label %.loopexit.i

.lr.ph107.preheader.i:                            ; preds = %bb.m
  %i.cr = shl i64 %.5.i, 2
  %scevgep.i = getelementptr i8, ptr %.0.i67.i, i64 %i.cr
  %i.cs = sub i64 %spec.store.select.i, %.5.i
  %i.ct = shl i64 %i.cs, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 -1, i64 %i.ct, i1 false), !tbaa !7
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.l, %.lr.ph107.preheader.i, %bb.m, %.lr.ph109.preheader.i, %.preheader.i, %.preheader81.i
  %i.cu = phi i32 [ 0, %.preheader81.i ], [ %i.s, %.lr.ph107.preheader.i ], [ %i.s, %bb.m ], [ 0, %.lr.ph109.preheader.i ], [ 0, %.preheader.i ], [ %i.s, %bb.l ]
  %i.cv = icmp eq i32 %i.cu, 0
  %i.cw = icmp sgt i64 %i.v, -1
  %.not78.i = and i1 %i.cv, %i.cw                 ; 2 uses
  %i.cx = and i64 %i.al, -8193
  %masksel.i.i.i = select i1 %.not78.i, i64 8192, i64 0
  %.sink.i.i.i = or disjoint i64 %i.cx, %masksel.i.i.i
  store i64 %.sink.i.i.i, ptr %i.ak, align 8, !tbaa !13
  br i1 %.not78.i, label %twocomp2abs_bang.exit.i, label %bb.n

bb.n:                                             ; preds = %.loopexit.i
  br i1 %.not.i66.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = lshr i64 %i.al, 15
  %i.cz = and i64 %i.cy, 511
  %i.da = getelementptr i8, ptr %i.ak, i64 16
  br label %BIGNUM_DIGITS.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.db = getelementptr i8, ptr %i.ak, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !15
  %i.dd = getelementptr i8, ptr %i.ak, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i.i

BIGNUM_DIGITS.exit.i.i.i:                         ; preds = %bb.p, %bb.o
  %.0.i8.i.i.i = phi i64 [ %i.cz, %bb.o ], [ %i.dc, %bb.p ] ; 5 uses
  %.0.i5.i.i.i = phi ptr [ %i.da, %bb.o ], [ %i.de, %bb.p ] ; 4 uses
  %.not27.i.i.i.i = icmp eq i64 %.0.i8.i.i.i, 0
  br i1 %.not27.i.i.i.i, label %bary_2comp.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %BIGNUM_DIGITS.exit.i.i.i, %bb.q
  %.023.i.i.i.i = phi i64 [ %i.dh, %bb.q ], [ 0, %BIGNUM_DIGITS.exit.i.i.i ] ; 5 uses
  %i.df = getelementptr [4 x i8], ptr %.0.i5.i.i.i, i64 %.023.i.i.i.i
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !7  ; 2 uses
  %.not.i6.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i6.i.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dh = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dh, %.0.i8.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %bary_2comp.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !55

bb.r:                                             ; preds = %.lr.ph.i.i.i.i
  %i.di = getelementptr [4 x i8], ptr %.0.i5.i.i.i, i64 %.023.i.i.i.i
  %i.dj = sub i32 0, %i.dg
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !7
  %.124.i.i.i.i = add i64 %.023.i.i.i.i, 1        ; 4 uses
  %i.dk = icmp ult i64 %.124.i.i.i.i, %.0.i8.i.i.i
  br i1 %i.dk, label %.lr.ph26.i.i.i.i.preheader, label %twocomp2abs_bang.exit.i

.lr.ph26.i.i.i.i.preheader:                       ; preds = %bb.r
  %i.dl = xor i64 %.023.i.i.i.i, -1
  %i.dm = add i64 %.0.i8.i.i.i, %i.dl             ; 3 uses
  %min.iters.check211 = icmp ult i64 %i.dm, 8
  br i1 %min.iters.check211, label %.lr.ph26.i.i.i.i.preheader226, label %vector.ph212

vector.ph212:                                     ; preds = %.lr.ph26.i.i.i.i.preheader
  %n.vec214 = and i64 %i.dm, -8                   ; 3 uses
  %i.dn = add i64 %.124.i.i.i.i, %n.vec214
  %i.do = getelementptr [4 x i8], ptr %.0.i5.i.i.i, i64 %.124.i.i.i.i
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph212
  %index216 = phi i64 [ 0, %vector.ph212 ], [ %index.next219, %vector.body215 ] ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.do, i64 %index216 ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 16     ; 2 uses
  %wide.load217 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !7
  %wide.load218 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !7
  %i.dr = xor <4 x i32> %wide.load217, splat (i32 -1)
  %i.ds = xor <4 x i32> %wide.load218, splat (i32 -1)
  store <4 x i32> %i.dr, ptr %i.dp, align 4, !tbaa !7
  store <4 x i32> %i.ds, ptr %i.dq, align 4, !tbaa !7
  %index.next219 = add nuw i64 %index216, 8       ; 2 uses
  %i.dt = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.dt, label %middle.block220, label %vector.body215, !llvm.loop !348

middle.block220:                                  ; preds = %vector.body215
  %cmp.n221 = icmp eq i64 %i.dm, %n.vec214
  br i1 %cmp.n221, label %twocomp2abs_bang.exit.i, label %.lr.ph26.i.i.i.i.preheader226

.lr.ph26.i.i.i.i.preheader226:                    ; preds = %.lr.ph26.i.i.i.i.preheader, %middle.block220
  %.125.i.i.i.i.ph = phi i64 [ %.124.i.i.i.i, %.lr.ph26.i.i.i.i.preheader ], [ %i.dn, %middle.block220 ]
  br label %.lr.ph26.i.i.i.i

.lr.ph26.i.i.i.i:                                 ; preds = %.lr.ph26.i.i.i.i.preheader226, %.lr.ph26.i.i.i.i
  %.125.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph26.i.i.i.i ], [ %.125.i.i.i.i.ph, %.lr.ph26.i.i.i.i.preheader226 ] ; 2 uses
  %i.du = getelementptr [4 x i8], ptr %.0.i5.i.i.i, i64 %.125.i.i.i.i ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7
  %i.dw = xor i32 %i.dv, -1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !7
end_hunk_18
begin_hunk_19_@rb_big_or:bb.a
  %i.fa = getelementptr i8, ptr %i.ak, i64 16
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !15
  %i.fc = getelementptr i8, ptr %i.ak, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i72.i

BIGNUM_DIGITS.exit.i.i72.i:                       ; preds = %bb.y, %bb.x
  %.0.i28.i.i.i = phi i64 [ %i.ey, %bb.x ], [ %i.fb, %bb.y ] ; 3 uses
  %.0.i26.i.i.i = phi ptr [ %i.ez, %bb.x ], [ %i.fd, %bb.y ] ; 4 uses
  %cond31.i.i.i = icmp eq i64 %.0.i28.i.i.i, 0
  br i1 %cond31.i.i.i, label %bigor_int.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %BIGNUM_DIGITS.exit.i.i72.i, %bb.z
  %indvar256 = phi i32 [ %indvar.next257, %bb.z ], [ 0, %BIGNUM_DIGITS.exit.i.i72.i ] ; 2 uses
  %.02332.i.i.i = phi i64 [ %i.fi, %bb.z ], [ %.0.i28.i.i.i, %BIGNUM_DIGITS.exit.i.i72.i ] ; 5 uses
  %i.fe = getelementptr [4 x i8], ptr %.0.i26.i.i.i, i64 %.02332.i.i.i
  %i.ff = getelementptr i8, ptr %i.fe, i64 -4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !7
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.z, label %.critedge.i.i.i

bb.z:                                             ; preds = %.lr.ph.i.i.i
  %i.fi = add i64 %.02332.i.i.i, -1               ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.fi, 0
  %indvar.next257 = add i32 %indvar256, 1
  br i1 %cond.i.i.i, label %bigor_int.exit, label %.lr.ph.i.i.i, !llvm.loop !161

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.fj = icmp ugt i64 %.02332.i.i.i, 2
  br i1 %i.fj, label %bb.ae, label %.lr.ph36.preheader.i.i.i

.lr.ph36.preheader.i.i.i:                         ; preds = %.critedge.i.i.i
  %i.fk = trunc nuw i64 %.02332.i.i.i to i32      ; 3 uses
  %i.fl = trunc i64 %.0.i28.i.i.i to i32
  %i.fm = sub i32 %indvar256, %i.fl
  %i.fn = icmp ugt i32 %i.fm, -4
  br i1 %i.fn, label %.lr.ph36.i.i.i.epil.preheader, label %.lr.ph36.i.i.i

.lr.ph36.i.i.i:                                   ; preds = %.lr.ph36.preheader.i.i.i, %.lr.ph36.i.i.i
  %.035.i.i.i = phi i32 [ %i.fo, %.lr.ph36.i.i.i ], [ %i.fk, %.lr.ph36.preheader.i.i.i ] ; 2 uses
  %niter266 = phi i32 [ %niter266.next.3, %.lr.ph36.i.i.i ], [ 0, %.lr.ph36.preheader.i.i.i ]
  %i.fo = add i32 %.035.i.i.i, -4                 ; 3 uses
  %niter266.next.3 = add i32 %niter266, 4         ; 2 uses
  %niter266.ncmp.3 = icmp eq i32 %niter266.next.3, 0
  br i1 %niter266.ncmp.3, label %._crit_edge.i.i.i.unr-lcssa, label %.lr.ph36.i.i.i, !llvm.loop !162

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %.lr.ph36.i.i.i
  %i.fp = add i32 %.035.i.i.i, -3
  %i.fq = sext i32 %i.fp to i64
  %i.fr = getelementptr [4 x i8], ptr %.0.i26.i.i.i, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !7
  %i.ft = zext i32 %i.fs to i64
  %i.fu = shl nuw i64 %i.ft, 32
  %i.fv = sext i32 %i.fo to i64
  %i.fw = getelementptr [4 x i8], ptr %.0.i26.i.i.i, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !7
  %i.fy = zext i32 %i.fx to i64
  %i.fz = or disjoint i64 %i.fu, %i.fy
  br label %.lr.ph36.i.i.i.epil.preheader

.lr.ph36.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.unr-lcssa, %.lr.ph36.preheader.i.i.i
  %.035.i.i.i.epil.init = phi i32 [ %i.fk, %.lr.ph36.preheader.i.i.i ], [ %i.fo, %._crit_edge.i.i.i.unr-lcssa ]
  %.02134.i.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i.i ], [ %i.fz, %._crit_edge.i.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.i.epil

.lr.ph36.i.i.i.epil:                              ; preds = %.lr.ph36.i.i.i.epil, %.lr.ph36.i.i.i.epil.preheader
  %.035.i.i.i.epil = phi i32 [ %i.ga, %.lr.ph36.i.i.i.epil ], [ %.035.i.i.i.epil.init, %.lr.ph36.i.i.i.epil.preheader ]
  %.02134.i.i.i.epil = phi i64 [ %i.gg, %.lr.ph36.i.i.i.epil ], [ %.02134.i.i.i.epil.init, %.lr.ph36.i.i.i.epil.preheader ]
  %epil.iter260 = phi i32 [ %epil.iter260.next, %.lr.ph36.i.i.i.epil ], [ 0, %.lr.ph36.i.i.i.epil.preheader ]
  %i.ga = add i32 %.035.i.i.i.epil, -1            ; 2 uses
  %i.gb = shl i64 %.02134.i.i.i.epil, 32          ; 2 uses
  %i.gc = sext i32 %i.ga to i64
  %i.gd = getelementptr [4 x i8], ptr %.0.i26.i.i.i, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !7
  %i.gf = zext i32 %i.ge to i64
  %i.gg = or disjoint i64 %i.gb, %i.gf            ; 4 uses
  %epil.iter260.next = add i32 %epil.iter260, 1   ; 2 uses
  %epil.iter260.cmp.not = icmp eq i32 %epil.iter260.next, %i.fk
  br i1 %epil.iter260.cmp.not, label %._crit_edge.i.i.i.epilog-lcssa, label %.lr.ph36.i.i.i.epil, !llvm.loop !351

._crit_edge.i.i.i.epilog-lcssa:                   ; preds = %.lr.ph36.i.i.i.epil
  %i.gh = icmp ult i64 %i.gb, 4611686018427387904
  %i.gi = and i64 %i.et, 8192
  %.not.i.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not.i.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge.i.i.i.epilog-lcssa
  br i1 %i.gh, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.gj = shl nuw nsw i64 %i.gg, 1
  %i.gk = or disjoint i64 %i.gj, 1
  br label %bigor_int.exit

bb.ac:                                            ; preds = %._crit_edge.i.i.i.epilog-lcssa
  %i.gl = icmp ult i64 %i.gg, 4611686018427387905
  br i1 %i.gl, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.neg.i.i.i = mul nsw i64 %i.gg, -2
  %i.gm = or disjoint i64 %.neg.i.i.i, 1
  br label %bigor_int.exit

bb.ae:                                            ; preds = %bb.ac, %bb.aa, %.critedge.i.i.i
  call void @rb_big_resize(i64 noundef %i.aj, i64 noundef %.02332.i.i.i)
  br label %bigor_int.exit

bigor_int.exit:                                   ; preds = %bb.z, %bb.e, %bb.c, %twocomp2abs_bang.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %BIGNUM_DIGITS.exit.i.i72.i, %bb.ab, %bb.ad, %bb.ae
  %.0.i39 = phi i64 [ %spec.select60, %bb.e ], [ -1, %bb.c ], [ 1, %BIGNUM_DIGITS.exit.i.i72.i ], [ %i.aj, %twocomp2abs_bang.exit.i ], [ %i.aj, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %i.gm, %bb.ad ], [ %i.aj, %bb.ae ], [ %i.gk, %bb.ab ], [ 1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bignorm.exit

bb.af:                                            ; preds = %rb_integer_type_p.exit
  %i.gn = call fastcc i32 @abs2twocomp(ptr noundef %i.c, ptr noundef %i.e) ; 2 uses
  %i.go = call fastcc i32 @abs2twocomp(ptr noundef %i.d, ptr noundef %i.f) ; 2 uses
  %i.gp = load i64, ptr %i.e, align 8, !tbaa !11  ; 3 uses
  %i.gq = load i64, ptr %i.f, align 8, !tbaa !11  ; 3 uses
  %i.gr = icmp sgt i64 %i.gp, %i.gq
  %.pre = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  br i1 %i.gr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.gs = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  store i64 %i.gs, ptr %i.c, align 8, !tbaa !11
  store i64 %.pre, ptr %i.d, align 8, !tbaa !11
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.gt = phi i64 [ %i.gs, %bb.ag ], [ %.pre, %bb.af ]
  %i.gu = phi i64 [ %i.gp, %bb.ag ], [ %i.gq, %bb.af ]
  %i.gv = phi i64 [ %i.gq, %bb.ag ], [ %i.gp, %bb.af ] ; 11 uses
  %.038 = phi i32 [ %i.gn, %bb.ag ], [ %i.go, %bb.af ]
  %.037 = phi i32 [ %i.go, %bb.ag ], [ %i.gn, %bb.af ] ; 7 uses
  %i.gw = inttoptr i64 %i.gt to ptr               ; 3 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !13
  %i.gy = and i64 %i.gx, 16384
  %.not.i40 = icmp eq i64 %i.gy, 0
  br i1 %.not.i40, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gz = getelementptr i8, ptr %i.gw, i64 16
  br label %BIGNUM_DIGITS.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ha = getelementptr i8, ptr %i.gw, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.ai, %bb.aj
  %.0.i41 = phi ptr [ %i.gz, %bb.ai ], [ %i.hb, %bb.aj ] ; 7 uses
  %.0.i41159 = ptrtoaddr ptr %.0.i41 to i64
  %i.hc = load i64, ptr %i.d, align 8, !tbaa !11
  %i.hd = inttoptr i64 %i.hc to ptr               ; 3 uses
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !13
  %i.hf = and i64 %i.he, 16384
  %.not.i42 = icmp eq i64 %i.hf, 0
  br i1 %.not.i42, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %BIGNUM_DIGITS.exit
  %i.hg = getelementptr i8, ptr %i.hd, i64 16
  br label %BIGNUM_DIGITS.exit44

bb.al:                                            ; preds = %BIGNUM_DIGITS.exit
  %i.hh = getelementptr i8, ptr %i.hd, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit44

BIGNUM_DIGITS.exit44:                             ; preds = %bb.ak, %bb.al
  %.0.i43 = phi ptr [ %i.hg, %bb.ak ], [ %i.hi, %bb.al ] ; 13 uses
  %.0.i43160 = ptrtoaddr ptr %.0.i43 to i64       ; 2 uses
  %i.hj = icmp eq i32 %.037, 0                    ; 2 uses
  %spec.select = select i1 %i.hj, i64 %i.gu, i64 %i.gv ; 6 uses
  %i.hk = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.hl = tail call fastcc i64 @bignew_1(i64 noundef %i.hk, i64 noundef %spec.select, i32 noundef 0) ; 8 uses
  %i.hm = inttoptr i64 %i.hl to ptr               ; 16 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !13 ; 4 uses
  %i.ho = and i64 %i.hn, 16384
  %.not.i45 = icmp eq i64 %i.ho, 0                ; 3 uses
  br i1 %.not.i45, label %bb.an, label %bb.am

bb.am:                                            ; preds = %BIGNUM_DIGITS.exit44
  %i.hp = getelementptr i8, ptr %i.hm, i64 16
  br label %BIGNUM_DIGITS.exit47

bb.an:                                            ; preds = %BIGNUM_DIGITS.exit44
  %i.hq = getelementptr i8, ptr %i.hm, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit47

BIGNUM_DIGITS.exit47:                             ; preds = %bb.am, %bb.an
  %.0.i46 = phi ptr [ %i.hp, %bb.am ], [ %i.hr, %bb.an ] ; 13 uses
  %.0.i46158 = ptrtoaddr ptr %.0.i46 to i64       ; 3 uses
  %i.hs = icmp sgt i64 %i.gv, 0
  br i1 %i.hs, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %BIGNUM_DIGITS.exit47
  %min.iters.check = icmp ult i64 %i.gv, 12
  br i1 %min.iters.check, label %.lr.ph.preheader243, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.ht = sub i64 %.0.i41159, %.0.i46158
  %diff.check = icmp ugt i64 %i.ht, -32
  %i.hu = sub i64 %.0.i43160, %.0.i46158
  %diff.check161 = icmp ugt i64 %i.hu, -32
  %conflict.rdx = or i1 %diff.check, %diff.check161
  br i1 %conflict.rdx, label %.lr.ph.preheader243, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gv, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.hv = getelementptr [4 x i8], ptr %.0.i41, i64 %index ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hv, i64 16
  %wide.load = load <4 x i32>, ptr %i.hv, align 4, !tbaa !7
  %wide.load162 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !7
  %i.hx = getelementptr [4 x i8], ptr %.0.i43, i64 %index ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 16
  %wide.load163 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !7
  %wide.load164 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !7
  %i.hz = or <4 x i32> %wide.load163, %wide.load
  %i.ia = or <4 x i32> %wide.load164, %wide.load162
  %i.ib = getelementptr [4 x i8], ptr %.0.i46, i64 %index ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 16
  store <4 x i32> %i.hz, ptr %i.ib, align 4, !tbaa !7
  store <4 x i32> %i.ia, ptr %i.ic, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !352

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gv, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader243

.lr.ph.preheader243:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03580.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.gv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader243, %.lr.ph.prol
  %.03580.prol = phi i64 [ %i.ik, %.lr.ph.prol ], [ %.03580.ph, %.lr.ph.preheader243 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader243 ]
  %i.ie = getelementptr [4 x i8], ptr %.0.i41, i64 %.03580.prol
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !7
  %i.ig = getelementptr [4 x i8], ptr %.0.i43, i64 %.03580.prol
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !7
  %i.ii = or i32 %i.ih, %i.if
  %i.ij = getelementptr [4 x i8], ptr %.0.i46, i64 %.03580.prol
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !7
  %i.ik = add nuw nsw i64 %.03580.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !353

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader243
  %.03580.unr = phi i64 [ %.03580.ph, %.lr.ph.preheader243 ], [ %i.ik, %.lr.ph.prol ]
  %i.il = sub nsw i64 %.03580.ph, %i.gv
  %i.im = icmp ugt i64 %i.il, -4
  br i1 %i.im, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %BIGNUM_DIGITS.exit47
  %.035.lcssa = phi i64 [ 0, %BIGNUM_DIGITS.exit47 ], [ %i.gv, %middle.block ], [ %i.gv, %.lr.ph ], [ %i.gv, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.in = icmp slt i64 %.035.lcssa, %spec.select
  br i1 %i.in, label %.lr.ph82.preheader, label %._crit_edge

.lr.ph82.preheader:                               ; preds = %.preheader
  %i.io = sub i64 %spec.select, %.035.lcssa       ; 3 uses
  %min.iters.check168 = icmp ult i64 %i.io, 8
  %i.ip = sub i64 %.0.i43160, %.0.i46158
  %diff.check166 = icmp ugt i64 %i.ip, -32
  %or.cond223 = select i1 %min.iters.check168, i1 true, i1 %diff.check166
  br i1 %or.cond223, label %.lr.ph82.preheader242, label %vector.ph169

vector.ph169:                                     ; preds = %.lr.ph82.preheader
  %n.vec171 = and i64 %i.io, -8                   ; 3 uses
  %i.iq = add i64 %.035.lcssa, %n.vec171
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.037, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph169
  %index173 = phi i64 [ 0, %vector.ph169 ], [ %index.next176, %vector.body172 ] ; 2 uses
  %i.ir = add i64 %.035.lcssa, %index173          ; 2 uses
  %i.is = getelementptr [4 x i8], ptr %.0.i43, i64 %i.ir ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 16
  %wide.load174 = load <4 x i32>, ptr %i.is, align 4, !tbaa !7
  %wide.load175 = load <4 x i32>, ptr %i.it, align 4, !tbaa !7
  %i.iu = or <4 x i32> %wide.load174, %broadcast.splat
  %i.iv = or <4 x i32> %wide.load175, %broadcast.splat
  %i.iw = getelementptr [4 x i8], ptr %.0.i46, i64 %i.ir ; 2 uses
  %i.ix = getelementptr i8, ptr %i.iw, i64 16
  store <4 x i32> %i.iu, ptr %i.iw, align 4, !tbaa !7
  store <4 x i32> %i.iv, ptr %i.ix, align 4, !tbaa !7
  %index.next176 = add nuw i64 %index173, 8       ; 2 uses
  %i.iy = icmp eq i64 %index.next176, %n.vec171
  br i1 %i.iy, label %middle.block177, label %vector.body172, !llvm.loop !354

middle.block177:                                  ; preds = %vector.body172
  %cmp.n178 = icmp eq i64 %i.io, %n.vec171
  br i1 %cmp.n178, label %._crit_edge, label %.lr.ph82.preheader242

.lr.ph82.preheader242:                            ; preds = %.lr.ph82.preheader, %middle.block177
  %.181.ph = phi i64 [ %.035.lcssa, %.lr.ph82.preheader ], [ %i.iq, %middle.block177 ] ; 4 uses
  %i.iz = sub i64 %spec.select, %.181.ph
  %xtraiter244 = and i64 %i.iz, 3                 ; 2 uses
  %lcmp.mod245.not = icmp eq i64 %xtraiter244, 0
  br i1 %lcmp.mod245.not, label %.lr.ph82.prol.loopexit, label %.lr.ph82.prol

.lr.ph82.prol:                                    ; preds = %.lr.ph82.preheader242, %.lr.ph82.prol
  %.181.prol = phi i64 [ %i.je, %.lr.ph82.prol ], [ %.181.ph, %.lr.ph82.preheader242 ] ; 3 uses
  %prol.iter246 = phi i64 [ %prol.iter246.next, %.lr.ph82.prol ], [ 0, %.lr.ph82.preheader242 ]
  %i.ja = getelementptr [4 x i8], ptr %.0.i43, i64 %.181.prol
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !7
  %i.jc = or i32 %i.jb, %.037
  %i.jd = getelementptr [4 x i8], ptr %.0.i46, i64 %.181.prol
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !7
  %i.je = add nuw nsw i64 %.181.prol, 1           ; 2 uses
  %prol.iter246.next = add i64 %prol.iter246, 1   ; 2 uses
  %prol.iter246.cmp.not = icmp eq i64 %prol.iter246.next, %xtraiter244
  br i1 %prol.iter246.cmp.not, label %.lr.ph82.prol.loopexit, label %.lr.ph82.prol, !llvm.loop !355

.lr.ph82.prol.loopexit:                           ; preds = %.lr.ph82.prol, %.lr.ph82.preheader242
  %.181.unr = phi i64 [ %.181.ph, %.lr.ph82.preheader242 ], [ %i.je, %.lr.ph82.prol ]
  %i.jf = sub i64 %.181.ph, %spec.select
  %i.jg = icmp ugt i64 %i.jf, -4
  br i1 %i.jg, label %._crit_edge, label %.lr.ph82

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03580 = phi i64 [ %i.ki, %.lr.ph ], [ %.03580.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.jh = getelementptr [4 x i8], ptr %.0.i41, i64 %.03580
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !7
  %i.jj = getelementptr [4 x i8], ptr %.0.i43, i64 %.03580
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !7
  %i.jl = or i32 %i.jk, %i.ji
  %i.jm = getelementptr [4 x i8], ptr %.0.i46, i64 %.03580
  store i32 %i.jl, ptr %i.jm, align 4, !tbaa !7
  %i.jn = add nuw nsw i64 %.03580, 1              ; 3 uses
  %i.jo = getelementptr [4 x i8], ptr %.0.i41, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !7
  %i.jq = getelementptr [4 x i8], ptr %.0.i43, i64 %i.jn
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !7
  %i.js = or i32 %i.jr, %i.jp
  %i.jt = getelementptr [4 x i8], ptr %.0.i46, i64 %i.jn
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !7
  %i.ju = add nuw nsw i64 %.03580, 2              ; 3 uses
  %i.jv = getelementptr [4 x i8], ptr %.0.i41, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !7
  %i.jx = getelementptr [4 x i8], ptr %.0.i43, i64 %i.ju
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !7
  %i.jz = or i32 %i.jy, %i.jw
  %i.ka = getelementptr [4 x i8], ptr %.0.i46, i64 %i.ju
  store i32 %i.jz, ptr %i.ka, align 4, !tbaa !7
  %i.kb = add nuw nsw i64 %.03580, 3              ; 3 uses
  %i.kc = getelementptr [4 x i8], ptr %.0.i41, i64 %i.kb
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !7
  %i.ke = getelementptr [4 x i8], ptr %.0.i43, i64 %i.kb
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !7
  %i.kg = or i32 %i.kf, %i.kd
  %i.kh = getelementptr [4 x i8], ptr %.0.i46, i64 %i.kb
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !7
  %i.ki = add nuw nsw i64 %.03580, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ki, %i.gv
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !356

.lr.ph82:                                         ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82
  %.181 = phi i64 [ %i.lc, %.lr.ph82 ], [ %.181.unr, %.lr.ph82.prol.loopexit ] ; 6 uses
  %i.kj = getelementptr [4 x i8], ptr %.0.i43, i64 %.181
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !7
  %i.kl = or i32 %i.kk, %.037
  %i.km = getelementptr [4 x i8], ptr %.0.i46, i64 %.181
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !7
  %i.kn = add nuw nsw i64 %.181, 1                ; 2 uses
  %i.ko = getelementptr [4 x i8], ptr %.0.i43, i64 %i.kn
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !7
  %i.kq = or i32 %i.kp, %.037
  %i.kr = getelementptr [4 x i8], ptr %.0.i46, i64 %i.kn
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !7
  %i.ks = add nuw nsw i64 %.181, 2                ; 2 uses
  %i.kt = getelementptr [4 x i8], ptr %.0.i43, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !7
  %i.kv = or i32 %i.ku, %.037
  %i.kw = getelementptr [4 x i8], ptr %.0.i46, i64 %i.ks
  store i32 %i.kv, ptr %i.kw, align 4, !tbaa !7
  %i.kx = add nuw nsw i64 %.181, 3                ; 2 uses
  %i.ky = getelementptr [4 x i8], ptr %.0.i43, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !7
  %i.la = or i32 %i.kz, %.037
  %i.lb = getelementptr [4 x i8], ptr %.0.i46, i64 %i.kx
  store i32 %i.la, ptr %i.lb, align 4, !tbaa !7
  %i.lc = add nuw nsw i64 %.181, 4                ; 2 uses
  %exitcond101.not.3 = icmp eq i64 %i.lc, %spec.select
  br i1 %exitcond101.not.3, label %._crit_edge, label %.lr.ph82, !llvm.loop !357

._crit_edge:                                      ; preds = %.lr.ph82.prol.loopexit, %.lr.ph82, %middle.block177, %.preheader
  %i.ld = icmp eq i32 %.038, 0
  %.not59 = select i1 %i.hj, i1 %i.ld, i1 false   ; 2 uses
  %i.le = and i64 %i.hn, -8193
  %masksel.i.i = select i1 %.not59, i64 8192, i64 0
  %.sink.i.i = or disjoint i64 %i.le, %masksel.i.i
  store i64 %.sink.i.i, ptr %i.hm, align 8, !tbaa !13
  br i1 %.not59, label %twocomp2abs_bang.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  br i1 %.not.i45, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.lf = lshr i64 %i.hn, 15
  %i.lg = and i64 %i.lf, 511
  %i.lh = getelementptr i8, ptr %i.hm, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.li = getelementptr i8, ptr %i.hm, i64 16
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !15
  %i.lk = getelementptr i8, ptr %i.hm, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.aq, %bb.ap
  %.0.i8.i.i = phi i64 [ %i.lg, %bb.ap ], [ %i.lj, %bb.aq ] ; 5 uses
  %.0.i5.i.i = phi ptr [ %i.lh, %bb.ap ], [ %i.ll, %bb.aq ] ; 4 uses
  %.not27.i.i.i = icmp eq i64 %.0.i8.i.i, 0
  br i1 %.not27.i.i.i, label %bary_2comp.exit.i.i, label %.lr.ph.i.i.i50

.lr.ph.i.i.i50:                                   ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.ar
  %.023.i.i.i = phi i64 [ %i.lo, %bb.ar ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.lm = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.023.i.i.i
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !7  ; 2 uses
  %.not.i6.i.i = icmp eq i32 %i.ln, 0
  br i1 %.not.i6.i.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.i.i.i50
  %i.lo = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.lo, %.0.i8.i.i
  br i1 %exitcond.not.i.i.i, label %bary_2comp.exit.i.i, label %.lr.ph.i.i.i50, !llvm.loop !55

bb.as:                                            ; preds = %.lr.ph.i.i.i50
  %i.lp = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.023.i.i.i
  %i.lq = sub i32 0, %i.ln
  store i32 %i.lq, ptr %i.lp, align 4, !tbaa !7
  %.124.i.i.i = add i64 %.023.i.i.i, 1            ; 4 uses
  %i.lr = icmp ult i64 %.124.i.i.i, %.0.i8.i.i
  br i1 %i.lr, label %.lr.ph26.i.i.i.preheader, label %twocomp2abs_bang.exit

.lr.ph26.i.i.i.preheader:                         ; preds = %bb.as
  %i.ls = xor i64 %.023.i.i.i, -1
  %i.lt = add i64 %.0.i8.i.i, %i.ls               ; 3 uses
  %min.iters.check181 = icmp ult i64 %i.lt, 8
  br i1 %min.iters.check181, label %.lr.ph26.i.i.i.preheader238, label %vector.ph182

vector.ph182:                                     ; preds = %.lr.ph26.i.i.i.preheader
  %n.vec184 = and i64 %i.lt, -8                   ; 3 uses
  %i.lu = add i64 %.124.i.i.i, %n.vec184
  %i.lv = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.124.i.i.i
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph182
  %index186 = phi i64 [ 0, %vector.ph182 ], [ %index.next189, %vector.body185 ] ; 2 uses
  %i.lw = getelementptr [4 x i8], ptr %i.lv, i64 %index186 ; 3 uses
  %i.lx = getelementptr i8, ptr %i.lw, i64 16     ; 2 uses
  %wide.load187 = load <4 x i32>, ptr %i.lw, align 4, !tbaa !7
  %wide.load188 = load <4 x i32>, ptr %i.lx, align 4, !tbaa !7
  %i.ly = xor <4 x i32> %wide.load187, splat (i32 -1)
  %i.lz = xor <4 x i32> %wide.load188, splat (i32 -1)
  store <4 x i32> %i.ly, ptr %i.lw, align 4, !tbaa !7
  store <4 x i32> %i.lz, ptr %i.lx, align 4, !tbaa !7
  %index.next189 = add nuw i64 %index186, 8       ; 2 uses
  %i.ma = icmp eq i64 %index.next189, %n.vec184
  br i1 %i.ma, label %middle.block190, label %vector.body185, !llvm.loop !358

end_hunk_19
begin_hunk_20_@rb_big_xor:bb.a
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.c, align 8, !tbaa !11
  store i64 %1, ptr %i.d, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.i = trunc i64 %1 to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %1, 0
  %i.k = and i64 %1, 6
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rb_integer_type_p.exit.thread52, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.b
  %i.n = inttoptr i64 %1 to ptr
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 10
  br i1 %i.q, label %bb.z, label %rb_integer_type_p.exit.thread52

rb_integer_type_p.exit.thread52:                  ; preds = %bb.b, %rb_integer_type_p.exit
  %i.r = tail call i64 @rb_num_coerce_bit(i64 noundef %0, i64 noundef %1, i64 noundef 94) #23
  br label %bignorm.exit

bb.c:                                             ; preds = %bb.a
  %i.s = call fastcc i32 @abs2twocomp(ptr noundef %i.c, ptr noundef %i.e) ; 7 uses
  %i.t = load i64, ptr %i.c, align 8, !tbaa !11   ; 2 uses
  %i.u = load i64, ptr %i.e, align 8, !tbaa !11   ; 16 uses
  %i.v = ashr i64 %1, 1                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.a, align 8, !tbaa !11
  %.lobit.i = ashr i64 %1, 63
  %i.w = trunc nsw i64 %.lobit.i to i32           ; 8 uses
  %i.x = inttoptr i64 %i.t to ptr                 ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13   ; 2 uses
  %i.z = and i64 %i.y, 16384
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.x, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !15
  %i.ac = getelementptr i8, ptr %i.x, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %i.x, i64 16
  %i.af = lshr i64 %i.y, 15
  %i.ag = and i64 %i.af, 511
  br label %BIGNUM_LEN.exit.i

BIGNUM_LEN.exit.i:                                ; preds = %bb.e, %bb.d
  %.0.i52.i = phi ptr [ %i.ae, %bb.e ], [ %i.ab, %bb.d ] ; 12 uses
  %.0.i43.i = phi i64 [ %i.ag, %bb.e ], [ %i.ad, %bb.d ]
  %.0.i52.i175 = ptrtoaddr ptr %.0.i52.i to i64
  %spec.store.select.i = tail call i64 @llvm.smax.i64(i64 %.0.i43.i, i64 2) ; 13 uses
  %i.ah = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.ai = tail call fastcc i64 @bignew_1(i64 noundef %i.ah, i64 noundef %spec.store.select.i, i32 noundef 0) ; 8 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 16 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !13 ; 4 uses
  %i.al = and i64 %i.ak, 16384
  %.not.i44.i = icmp eq i64 %i.al, 0              ; 3 uses
  br i1 %.not.i44.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %BIGNUM_LEN.exit.i
  %i.am = getelementptr i8, ptr %i.aj, i64 16
  br label %BIGNUM_DIGITS.exit46.i

bb.g:                                             ; preds = %BIGNUM_LEN.exit.i
  %i.an = getelementptr i8, ptr %i.aj, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit46.i

BIGNUM_DIGITS.exit46.i:                           ; preds = %bb.g, %bb.f
  %.0.i45.i = phi ptr [ %i.am, %bb.f ], [ %i.ao, %bb.g ] ; 19 uses
  %.0.i45.i174 = ptrtoaddr ptr %.0.i45.i to i64
  %i.ap = icmp sgt i64 %i.u, 0
  br i1 %i.ap, label %.lr.ph.i.preheader, label %.lr.ph68.i.preheader

.lr.ph.i.preheader:                               ; preds = %BIGNUM_DIGITS.exit46.i
  %xtraiter245 = and i64 %i.u, 3                  ; 3 uses
  %i.aq = icmp ult i64 %i.u, 4
  br i1 %i.aq, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter250 = and i64 %i.u, 9223372036854775804
  br label %.lr.ph.i

.lr.ph68.i.preheader:                             ; preds = %.preheader55.i, %BIGNUM_DIGITS.exit46.i
  %.167.i.ph = phi i64 [ %i.v, %BIGNUM_DIGITS.exit46.i ], [ %.lcssa226, %.preheader55.i ] ; 2 uses
  %.14166.i.ph = phi i64 [ 0, %BIGNUM_DIGITS.exit46.i ], [ %i.u, %.preheader55.i ] ; 4 uses
  %i.ar = sub nsw i64 %spec.store.select.i, %.14166.i.ph
  %xtraiter252 = and i64 %i.ar, 3                 ; 2 uses
  %lcmp.mod253.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod253.not, label %.lr.ph68.i.prol.loopexit, label %.lr.ph68.i.prol

.lr.ph68.i.prol:                                  ; preds = %.lr.ph68.i.preheader, %.lr.ph68.i.prol
  %.167.i.prol = phi i64 [ %i.av, %.lr.ph68.i.prol ], [ %.167.i.ph, %.lr.ph68.i.preheader ] ; 2 uses
  %.14166.i.prol = phi i64 [ %i.aw, %.lr.ph68.i.prol ], [ %.14166.i.ph, %.lr.ph68.i.preheader ] ; 2 uses
  %prol.iter254 = phi i64 [ %prol.iter254.next, %.lr.ph68.i.prol ], [ 0, %.lr.ph68.i.preheader ]
  %i.as = trunc i64 %.167.i.prol to i32
  %i.at = xor i32 %i.s, %i.as
  %i.au = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.14166.i.prol
  store i32 %i.at, ptr %i.au, align 4, !tbaa !7
  %i.av = ashr i64 %.167.i.prol, 32               ; 2 uses
  %i.aw = add nuw nsw i64 %.14166.i.prol, 1       ; 2 uses
  %prol.iter254.next = add i64 %prol.iter254, 1   ; 2 uses
  %prol.iter254.cmp.not = icmp eq i64 %prol.iter254.next, %xtraiter252
  br i1 %prol.iter254.cmp.not, label %.lr.ph68.i.prol.loopexit, label %.lr.ph68.i.prol, !llvm.loop !363

.lr.ph68.i.prol.loopexit:                         ; preds = %.lr.ph68.i.prol, %.lr.ph68.i.preheader
  %.167.i.unr = phi i64 [ %.167.i.ph, %.lr.ph68.i.preheader ], [ %i.av, %.lr.ph68.i.prol ]
  %.14166.i.unr = phi i64 [ %.14166.i.ph, %.lr.ph68.i.preheader ], [ %i.aw, %.lr.ph68.i.prol ]
  %i.ax = sub nsw i64 %.14166.i.ph, %spec.store.select.i
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %.preheader54.i, label %.lr.ph68.i

.preheader55.i.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod247.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod247.not, label %.preheader55.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader55.i.unr-lcssa, %.lr.ph.i.preheader
  %.064.i.epil.init = phi i64 [ %i.v, %.lr.ph.i.preheader ], [ %i.bt, %.preheader55.i.unr-lcssa ]
  %.04063.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cg, %.preheader55.i.unr-lcssa ]
  %lcmp.mod249 = icmp ne i64 %xtraiter245, 0
  tail call void @llvm.assume(i1 %lcmp.mod249)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.064.i.epil = phi i64 [ %i.be, %.lr.ph.i.epil ], [ %.064.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.04063.i.epil = phi i64 [ %i.bf, %.lr.ph.i.epil ], [ %.04063.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter246 = phi i64 [ %epil.iter246.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.az = getelementptr [4 x i8], ptr %.0.i52.i, i64 %.04063.i.epil
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bb = trunc i64 %.064.i.epil to i32
  %i.bc = xor i32 %i.ba, %i.bb
  %i.bd = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.04063.i.epil
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !7
  %i.be = ashr i64 %.064.i.epil, 32               ; 2 uses
  %i.bf = add nuw nsw i64 %.04063.i.epil, 1
  %epil.iter246.next = add i64 %epil.iter246, 1   ; 2 uses
  %epil.iter246.cmp.not = icmp eq i64 %epil.iter246.next, %xtraiter245
  br i1 %epil.iter246.cmp.not, label %.preheader55.i, label %.lr.ph.i.epil, !llvm.loop !364

.preheader55.i:                                   ; preds = %.lr.ph.i.epil, %.preheader55.i.unr-lcssa
  %.lcssa226 = phi i64 [ %i.bt, %.preheader55.i.unr-lcssa ], [ %i.be, %.lr.ph.i.epil ]
  %i.bg = icmp samesign ult i64 %i.u, %spec.store.select.i
  br i1 %i.bg, label %.lr.ph68.i.preheader, label %.preheader.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.064.i = phi i64 [ %i.v, %.lr.ph.i.preheader.new ], [ %i.bt, %.lr.ph.i ] ; 3 uses
  %.04063.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cg, %.lr.ph.i ] ; 6 uses
  %niter251 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter251.next.3, %.lr.ph.i ]
  %i.bh = getelementptr [4 x i8], ptr %.0.i52.i, i64 %.04063.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = trunc i64 %.064.i to i32
  %i.bk = xor i32 %i.bi, %i.bj
  %i.bl = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.04063.i
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !7
  %i.bm = lshr i64 %.064.i, 32
  %i.bn = or disjoint i64 %.04063.i, 1            ; 2 uses
  %i.bo = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = trunc nuw i64 %i.bm to i32
  %i.br = xor i32 %i.bp, %i.bq
  %i.bs = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.bn
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !7
  %i.bt = ashr i64 %.064.i, 63                    ; 5 uses
  %i.bu = or disjoint i64 %.04063.i, 2            ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = trunc nsw i64 %i.bt to i32
  %i.by = xor i32 %i.bw, %i.bx
  %i.bz = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.bu
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !7
  %i.ca = or disjoint i64 %.04063.i, 3            ; 2 uses
  %i.cb = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = trunc nsw i64 %i.bt to i32
  %i.ce = xor i32 %i.cc, %i.cd
  %i.cf = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.ca
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !7
  %i.cg = add nuw nsw i64 %.04063.i, 4            ; 2 uses
  %niter251.next.3 = add i64 %niter251, 4         ; 2 uses
  %niter251.ncmp.3 = icmp eq i64 %niter251.next.3, %unroll_iter250
  br i1 %niter251.ncmp.3, label %.preheader55.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !365

.preheader54.i:                                   ; preds = %.lr.ph68.i, %.lr.ph68.i.prol.loopexit
  %i.ch = icmp slt i64 %spec.store.select.i, %i.u
  br i1 %i.ch, label %.lr.ph71.i.preheader, label %._crit_edge.i

.lr.ph71.i.preheader:                             ; preds = %.preheader54.i
  %i.ci = sub i64 %i.u, %spec.store.select.i      ; 3 uses
  %min.iters.check178 = icmp ult i64 %i.ci, 8
  %i.cj = sub i64 %.0.i52.i175, %.0.i45.i174
  %diff.check176 = icmp ugt i64 %i.cj, -32
  %or.cond = select i1 %min.iters.check178, i1 true, i1 %diff.check176
  br i1 %or.cond, label %.lr.ph71.i.preheader225, label %vector.ph179

vector.ph179:                                     ; preds = %.lr.ph71.i.preheader
  %n.vec181 = and i64 %i.ci, -8                   ; 3 uses
  %i.ck = add i64 %spec.store.select.i, %n.vec181
  %broadcast.splatinsert182 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat183 = shufflevector <4 x i32> %broadcast.splatinsert182, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph179
  %index185 = phi i64 [ 0, %vector.ph179 ], [ %index.next188, %vector.body184 ] ; 2 uses
  %i.cl = add i64 %spec.store.select.i, %index185 ; 2 uses
  %i.cm = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.cl ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  %wide.load186 = load <4 x i32>, ptr %i.cm, align 4, !tbaa !7
  %wide.load187 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !7
  %i.co = xor <4 x i32> %wide.load186, %broadcast.splat183
  %i.cp = xor <4 x i32> %wide.load187, %broadcast.splat183
  %i.cq = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.cl ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 16
  store <4 x i32> %i.co, ptr %i.cq, align 4, !tbaa !7
  store <4 x i32> %i.cp, ptr %i.cr, align 4, !tbaa !7
  %index.next188 = add nuw i64 %index185, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next188, %n.vec181
  br i1 %i.cs, label %middle.block189, label %vector.body184, !llvm.loop !366

middle.block189:                                  ; preds = %vector.body184
  %cmp.n190 = icmp eq i64 %i.ci, %n.vec181
  br i1 %cmp.n190, label %.preheader.i, label %.lr.ph71.i.preheader225

.lr.ph71.i.preheader225:                          ; preds = %.lr.ph71.i.preheader, %middle.block189
  %.270.i.ph = phi i64 [ %spec.store.select.i, %.lr.ph71.i.preheader ], [ %i.ck, %middle.block189 ] ; 4 uses
  %i.ct = sub i64 %i.u, %.270.i.ph
  %xtraiter255 = and i64 %i.ct, 3                 ; 2 uses
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %.lr.ph71.i.prol.loopexit, label %.lr.ph71.i.prol

.lr.ph71.i.prol:                                  ; preds = %.lr.ph71.i.preheader225, %.lr.ph71.i.prol
  %.270.i.prol = phi i64 [ %i.cy, %.lr.ph71.i.prol ], [ %.270.i.ph, %.lr.ph71.i.preheader225 ] ; 3 uses
  %prol.iter257 = phi i64 [ %prol.iter257.next, %.lr.ph71.i.prol ], [ 0, %.lr.ph71.i.preheader225 ]
  %i.cu = getelementptr [4 x i8], ptr %.0.i52.i, i64 %.270.i.prol
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.cw = xor i32 %i.cv, %i.w
  %i.cx = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.270.i.prol
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !7
  %i.cy = add nuw nsw i64 %.270.i.prol, 1         ; 2 uses
  %prol.iter257.next = add i64 %prol.iter257, 1   ; 2 uses
  %prol.iter257.cmp.not = icmp eq i64 %prol.iter257.next, %xtraiter255
  br i1 %prol.iter257.cmp.not, label %.lr.ph71.i.prol.loopexit, label %.lr.ph71.i.prol, !llvm.loop !367

.lr.ph71.i.prol.loopexit:                         ; preds = %.lr.ph71.i.prol, %.lr.ph71.i.preheader225
  %.270.i.unr = phi i64 [ %.270.i.ph, %.lr.ph71.i.preheader225 ], [ %i.cy, %.lr.ph71.i.prol ]
  %i.cz = sub i64 %.270.i.ph, %i.u
  %i.da = icmp ugt i64 %i.cz, -4
  br i1 %i.da, label %.preheader.i, label %.lr.ph71.i

.lr.ph68.i:                                       ; preds = %.lr.ph68.i.prol.loopexit, %.lr.ph68.i
  %.167.i = phi i64 [ %i.dj, %.lr.ph68.i ], [ %.167.i.unr, %.lr.ph68.i.prol.loopexit ] ; 3 uses
  %.14166.i = phi i64 [ %i.ds, %.lr.ph68.i ], [ %.14166.i.unr, %.lr.ph68.i.prol.loopexit ] ; 5 uses
  %i.db = trunc i64 %.167.i to i32
  %i.dc = xor i32 %i.s, %i.db
  %i.dd = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.14166.i
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !7
  %i.de = lshr i64 %.167.i, 32
  %i.df = trunc nuw i64 %i.de to i32
  %i.dg = xor i32 %i.s, %i.df
  %i.dh = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.14166.i
  %i.di = getelementptr i8, ptr %i.dh, i64 4
  store i32 %i.dg, ptr %i.di, align 4, !tbaa !7
  %i.dj = ashr i64 %.167.i, 63                    ; 3 uses
  %i.dk = trunc nsw i64 %i.dj to i32
  %i.dl = xor i32 %i.s, %i.dk
  %i.dm = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.14166.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !7
  %i.do = trunc nsw i64 %i.dj to i32
  %i.dp = xor i32 %i.s, %i.do
  %i.dq = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.14166.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 12
  store i32 %i.dp, ptr %i.dr, align 4, !tbaa !7
  %i.ds = add nuw nsw i64 %.14166.i, 4            ; 2 uses
  %exitcond85.not.i.3 = icmp eq i64 %i.ds, %spec.store.select.i
  br i1 %exitcond85.not.i.3, label %.preheader54.i, label %.lr.ph68.i, !llvm.loop !368

.preheader.i:                                     ; preds = %.lr.ph71.i.prol.loopexit, %.lr.ph71.i, %middle.block189, %.preheader55.i
  %i.dt = icmp samesign ult i64 %i.u, %spec.store.select.i
  br i1 %i.dt, label %.lr.ph74.i, label %._crit_edge.i

.lr.ph74.i:                                       ; preds = %.preheader.i
  %i.du = xor i32 %i.s, %i.w                      ; 2 uses
  %i.dv = sub nuw i64 %spec.store.select.i, %i.u  ; 3 uses
  %min.iters.check193 = icmp samesign ult i64 %i.dv, 8
  br i1 %min.iters.check193, label %scalar.ph192.preheader, label %vector.ph194

vector.ph194:                                     ; preds = %.lr.ph74.i
  %n.vec196 = and i64 %i.dv, 9223372036854775800  ; 3 uses
  %i.dw = add i64 %i.u, %n.vec196
  %broadcast.splatinsert197 = insertelement <4 x i32> poison, i32 %i.du, i64 0
  %broadcast.splat198 = shufflevector <4 x i32> %broadcast.splatinsert197, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.u
  br label %vector.body199

vector.body199:                                   ; preds = %vector.body199, %vector.ph194
  %index200 = phi i64 [ 0, %vector.ph194 ], [ %index.next201, %vector.body199 ] ; 2 uses
  %i.dy = getelementptr [4 x i8], ptr %i.dx, i64 %index200 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 16
  store <4 x i32> %broadcast.splat198, ptr %i.dy, align 4, !tbaa !7
  store <4 x i32> %broadcast.splat198, ptr %i.dz, align 4, !tbaa !7
  %index.next201 = add nuw i64 %index200, 8       ; 2 uses
  %i.ea = icmp eq i64 %index.next201, %n.vec196
  br i1 %i.ea, label %middle.block202, label %vector.body199, !llvm.loop !369

middle.block202:                                  ; preds = %vector.body199
  %cmp.n203 = icmp eq i64 %i.dv, %n.vec196
  br i1 %cmp.n203, label %._crit_edge.i, label %scalar.ph192.preheader

scalar.ph192.preheader:                           ; preds = %.lr.ph74.i, %middle.block202
  %.373.i.ph = phi i64 [ %i.u, %.lr.ph74.i ], [ %i.dw, %middle.block202 ]
  br label %scalar.ph192

.lr.ph71.i:                                       ; preds = %.lr.ph71.i.prol.loopexit, %.lr.ph71.i
  %.270.i = phi i64 [ %i.eu, %.lr.ph71.i ], [ %.270.i.unr, %.lr.ph71.i.prol.loopexit ] ; 6 uses
  %i.eb = getelementptr [4 x i8], ptr %.0.i52.i, i64 %.270.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !7
  %i.ed = xor i32 %i.ec, %i.w
  %i.ee = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.270.i
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !7
  %i.ef = add nuw nsw i64 %.270.i, 1              ; 2 uses
  %i.eg = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.ei = xor i32 %i.eh, %i.w
  %i.ej = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.ef
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !7
  %i.ek = add nuw nsw i64 %.270.i, 2              ; 2 uses
  %i.el = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = xor i32 %i.em, %i.w
  %i.eo = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.ek
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !7
  %i.ep = add nuw nsw i64 %.270.i, 3              ; 2 uses
  %i.eq = getelementptr [4 x i8], ptr %.0.i52.i, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !7
  %i.es = xor i32 %i.er, %i.w
  %i.et = getelementptr [4 x i8], ptr %.0.i45.i, i64 %i.ep
  store i32 %i.es, ptr %i.et, align 4, !tbaa !7
  %i.eu = add nuw nsw i64 %.270.i, 4              ; 2 uses
  %exitcond86.not.i.3 = icmp eq i64 %i.eu, %i.u
  br i1 %exitcond86.not.i.3, label %.preheader.i, label %.lr.ph71.i, !llvm.loop !370

scalar.ph192:                                     ; preds = %scalar.ph192.preheader, %scalar.ph192
  %.373.i = phi i64 [ %i.ew, %scalar.ph192 ], [ %.373.i.ph, %scalar.ph192.preheader ] ; 2 uses
  %i.ev = getelementptr [4 x i8], ptr %.0.i45.i, i64 %.373.i
  store i32 %i.du, ptr %i.ev, align 4, !tbaa !7
  %i.ew = add nuw nsw i64 %.373.i, 1              ; 2 uses
  %exitcond87.not.i = icmp eq i64 %i.ew, %spec.store.select.i
  br i1 %exitcond87.not.i, label %._crit_edge.i, label %scalar.ph192, !llvm.loop !371

._crit_edge.i:                                    ; preds = %scalar.ph192, %middle.block202, %.preheader54.i, %.preheader.i
  %.not.i = icmp eq i32 %i.s, %i.w                ; 2 uses
  %i.ex = and i64 %i.ak, -8193
  %masksel.i.i.i = select i1 %.not.i, i64 8192, i64 0
  %.sink.i.i.i = or disjoint i64 %i.ex, %masksel.i.i.i
  store i64 %.sink.i.i.i, ptr %i.aj, align 8, !tbaa !13
  br i1 %.not.i, label %twocomp2abs_bang.exit.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  br i1 %.not.i44.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ey = lshr i64 %i.ak, 15
  %i.ez = and i64 %i.ey, 511
  %i.fa = getelementptr i8, ptr %i.aj, i64 16
  br label %BIGNUM_DIGITS.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.fb = getelementptr i8, ptr %i.aj, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !15
  %i.fd = getelementptr i8, ptr %i.aj, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i.i

BIGNUM_DIGITS.exit.i.i.i:                         ; preds = %bb.j, %bb.i
  %.0.i8.i.i.i = phi i64 [ %i.ez, %bb.i ], [ %i.fc, %bb.j ] ; 5 uses
  %.0.i5.i.i.i = phi ptr [ %i.fa, %bb.i ], [ %i.fe, %bb.j ] ; 4 uses
  %.not27.i.i.i.i = icmp eq i64 %.0.i8.i.i.i, 0
  br i1 %.not27.i.i.i.i, label %bary_2comp.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %BIGNUM_DIGITS.exit.i.i.i, %bb.k
  %.023.i.i.i.i = phi i64 [ %i.fh, %bb.k ], [ 0, %BIGNUM_DIGITS.exit.i.i.i ] ; 5 uses
  %i.ff = getelementptr [4 x i8], ptr %.0.i5.i.i.i, i64 %.023.i.i.i.i
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !7  ; 2 uses
  %.not.i6.i.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not.i6.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.fh = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fh, %.0.i8.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %bary_2comp.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !55

end_hunk_20
begin_hunk_21_@rb_big_xor:bb.a
  br label %BIGNUM_DIGITS.exit.i.i50.i

bb.s:                                             ; preds = %bb.q
  %i.ha = getelementptr i8, ptr %i.aj, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !15
  %i.hc = getelementptr i8, ptr %i.aj, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i50.i

BIGNUM_DIGITS.exit.i.i50.i:                       ; preds = %bb.s, %bb.r
  %.0.i28.i.i.i = phi i64 [ %i.gy, %bb.r ], [ %i.hb, %bb.s ] ; 3 uses
  %.0.i26.i.i.i = phi ptr [ %i.gz, %bb.r ], [ %i.hd, %bb.s ] ; 4 uses
  %cond31.i.i.i = icmp eq i64 %.0.i28.i.i.i, 0
  br i1 %cond31.i.i.i, label %bigxor_int.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %BIGNUM_DIGITS.exit.i.i50.i, %bb.t
  %indvar258 = phi i32 [ %indvar.next259, %bb.t ], [ 0, %BIGNUM_DIGITS.exit.i.i50.i ] ; 2 uses
  %.02332.i.i.i = phi i64 [ %i.hi, %bb.t ], [ %.0.i28.i.i.i, %BIGNUM_DIGITS.exit.i.i50.i ] ; 5 uses
  %i.he = getelementptr [4 x i8], ptr %.0.i26.i.i.i, i64 %.02332.i.i.i
  %i.hf = getelementptr i8, ptr %i.he, i64 -4
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !7
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.t, label %.critedge.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %i.hi = add i64 %.02332.i.i.i, -1               ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.hi, 0
  %indvar.next259 = add i32 %indvar258, 1
  br i1 %cond.i.i.i, label %bigxor_int.exit, label %.lr.ph.i.i.i, !llvm.loop !161

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i.i
  %i.hj = icmp ugt i64 %.02332.i.i.i, 2
  br i1 %i.hj, label %bb.y, label %.lr.ph36.preheader.i.i.i

.lr.ph36.preheader.i.i.i:                         ; preds = %.critedge.i.i.i
  %i.hk = trunc nuw i64 %.02332.i.i.i to i32      ; 3 uses
  %i.hl = trunc i64 %.0.i28.i.i.i to i32
  %i.hm = sub i32 %indvar258, %i.hl
  %i.hn = icmp ugt i32 %i.hm, -4
  br i1 %i.hn, label %.lr.ph36.i.i.i.epil.preheader, label %.lr.ph36.i.i.i

.lr.ph36.i.i.i:                                   ; preds = %.lr.ph36.preheader.i.i.i, %.lr.ph36.i.i.i
  %.035.i.i.i = phi i32 [ %i.ho, %.lr.ph36.i.i.i ], [ %i.hk, %.lr.ph36.preheader.i.i.i ] ; 2 uses
  %niter268 = phi i32 [ %niter268.next.3, %.lr.ph36.i.i.i ], [ 0, %.lr.ph36.preheader.i.i.i ]
  %i.ho = add i32 %.035.i.i.i, -4                 ; 3 uses
  %niter268.next.3 = add i32 %niter268, 4         ; 2 uses
  %niter268.ncmp.3 = icmp eq i32 %niter268.next.3, 0
  br i1 %niter268.ncmp.3, label %._crit_edge.i.i.i.unr-lcssa, label %.lr.ph36.i.i.i, !llvm.loop !162

._crit_edge.i.i.i.unr-lcssa:                      ; preds = %.lr.ph36.i.i.i
  %i.hp = add i32 %.035.i.i.i, -3
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr [4 x i8], ptr %.0.i26.i.i.i, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !7
  %i.ht = zext i32 %i.hs to i64
  %i.hu = shl nuw i64 %i.ht, 32
  %i.hv = sext i32 %i.ho to i64
  %i.hw = getelementptr [4 x i8], ptr %.0.i26.i.i.i, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !7
  %i.hy = zext i32 %i.hx to i64
  %i.hz = or disjoint i64 %i.hu, %i.hy
  br label %.lr.ph36.i.i.i.epil.preheader

.lr.ph36.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.unr-lcssa, %.lr.ph36.preheader.i.i.i
  %.035.i.i.i.epil.init = phi i32 [ %i.hk, %.lr.ph36.preheader.i.i.i ], [ %i.ho, %._crit_edge.i.i.i.unr-lcssa ]
  %.02134.i.i.i.epil.init = phi i64 [ 0, %.lr.ph36.preheader.i.i.i ], [ %i.hz, %._crit_edge.i.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.i.epil

.lr.ph36.i.i.i.epil:                              ; preds = %.lr.ph36.i.i.i.epil, %.lr.ph36.i.i.i.epil.preheader
  %.035.i.i.i.epil = phi i32 [ %i.ia, %.lr.ph36.i.i.i.epil ], [ %.035.i.i.i.epil.init, %.lr.ph36.i.i.i.epil.preheader ]
  %.02134.i.i.i.epil = phi i64 [ %i.ig, %.lr.ph36.i.i.i.epil ], [ %.02134.i.i.i.epil.init, %.lr.ph36.i.i.i.epil.preheader ]
  %epil.iter262 = phi i32 [ %epil.iter262.next, %.lr.ph36.i.i.i.epil ], [ 0, %.lr.ph36.i.i.i.epil.preheader ]
  %i.ia = add i32 %.035.i.i.i.epil, -1            ; 2 uses
  %i.ib = shl i64 %.02134.i.i.i.epil, 32          ; 2 uses
  %i.ic = sext i32 %i.ia to i64
  %i.id = getelementptr [4 x i8], ptr %.0.i26.i.i.i, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !7
  %i.if = zext i32 %i.ie to i64
  %i.ig = or disjoint i64 %i.ib, %i.if            ; 4 uses
  %epil.iter262.next = add i32 %epil.iter262, 1   ; 2 uses
  %epil.iter262.cmp.not = icmp eq i32 %epil.iter262.next, %i.hk
  br i1 %epil.iter262.cmp.not, label %._crit_edge.i.i.i.epilog-lcssa, label %.lr.ph36.i.i.i.epil, !llvm.loop !375

._crit_edge.i.i.i.epilog-lcssa:                   ; preds = %.lr.ph36.i.i.i.epil
  %i.ih = icmp ult i64 %i.ib, 4611686018427387904
  %i.ii = and i64 %i.gt, 8192
  %.not.i.i.i = icmp eq i64 %i.ii, 0
  br i1 %.not.i.i.i, label %bb.w, label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i.i.epilog-lcssa
  br i1 %i.ih, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ij = shl nuw nsw i64 %i.ig, 1
  %i.ik = or disjoint i64 %i.ij, 1
  br label %bigxor_int.exit

bb.w:                                             ; preds = %._crit_edge.i.i.i.epilog-lcssa
  %i.il = icmp ult i64 %i.ig, 4611686018427387905
  br i1 %i.il, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.neg.i.i.i = mul nsw i64 %i.ig, -2
  %i.im = or disjoint i64 %.neg.i.i.i, 1
  br label %bigxor_int.exit

bb.y:                                             ; preds = %bb.w, %bb.u, %.critedge.i.i.i
  call void @rb_big_resize(i64 noundef %i.ai, i64 noundef %.02332.i.i.i)
  br label %bigxor_int.exit

bigxor_int.exit:                                  ; preds = %bb.t, %twocomp2abs_bang.exit.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %BIGNUM_DIGITS.exit.i.i50.i, %bb.v, %bb.x, %bb.y
  %.0.i48.i = phi i64 [ %i.ai, %twocomp2abs_bang.exit.i ], [ %i.ai, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %i.im, %bb.x ], [ %i.ai, %bb.y ], [ %i.ik, %bb.v ], [ 1, %BIGNUM_DIGITS.exit.i.i50.i ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bignorm.exit

bb.z:                                             ; preds = %rb_integer_type_p.exit
  %i.in = call fastcc i32 @abs2twocomp(ptr noundef %i.c, ptr noundef %i.e) ; 2 uses
  %i.io = call fastcc i32 @abs2twocomp(ptr noundef %i.d, ptr noundef %i.f) ; 2 uses
  %i.ip = load i64, ptr %i.e, align 8, !tbaa !11  ; 3 uses
  %i.iq = load i64, ptr %i.f, align 8, !tbaa !11  ; 3 uses
  %i.ir = icmp sgt i64 %i.ip, %i.iq
  %.pre = load i64, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  br i1 %i.ir, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.is = load i64, ptr %i.d, align 8, !tbaa !11  ; 2 uses
  store i64 %i.is, ptr %i.c, align 8, !tbaa !11
  store i64 %.pre, ptr %i.d, align 8, !tbaa !11
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.it = phi i64 [ %i.is, %bb.aa ], [ %.pre, %bb.z ]
  %i.iu = phi i64 [ %i.ip, %bb.aa ], [ %i.iq, %bb.z ] ; 6 uses
  %i.iv = phi i64 [ %i.iq, %bb.aa ], [ %i.ip, %bb.z ] ; 10 uses
  %.034 = phi i32 [ %i.io, %bb.aa ], [ %i.in, %bb.z ] ; 6 uses
  %i.iw = inttoptr i64 %i.it to ptr               ; 3 uses
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !13
  %i.iy = and i64 %i.ix, 16384
  %.not.i36 = icmp eq i64 %i.iy, 0
  br i1 %.not.i36, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.iz = getelementptr i8, ptr %i.iw, i64 16
  br label %BIGNUM_DIGITS.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ja = getelementptr i8, ptr %i.iw, i64 24
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit

BIGNUM_DIGITS.exit:                               ; preds = %bb.ac, %bb.ad
  %.0.i37 = phi ptr [ %i.iz, %bb.ac ], [ %i.jb, %bb.ad ] ; 7 uses
  %.0.i37139 = ptrtoaddr ptr %.0.i37 to i64
  %i.jc = load i64, ptr %i.d, align 8, !tbaa !11
  %i.jd = inttoptr i64 %i.jc to ptr               ; 3 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !13
  %i.jf = and i64 %i.je, 16384
  %.not.i38 = icmp eq i64 %i.jf, 0
  br i1 %.not.i38, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %BIGNUM_DIGITS.exit
  %i.jg = getelementptr i8, ptr %i.jd, i64 16
  br label %BIGNUM_DIGITS.exit40

bb.af:                                            ; preds = %BIGNUM_DIGITS.exit
  %i.jh = getelementptr i8, ptr %i.jd, i64 24
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit40

BIGNUM_DIGITS.exit40:                             ; preds = %bb.ae, %bb.af
  %.0.i39 = phi ptr [ %i.jg, %bb.ae ], [ %i.ji, %bb.af ] ; 13 uses
  %.0.i39140 = ptrtoaddr ptr %.0.i39 to i64       ; 2 uses
  %i.jj = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.jk = tail call fastcc i64 @bignew_1(i64 noundef %i.jj, i64 noundef %i.iu, i32 noundef 0) ; 8 uses
  %i.jl = inttoptr i64 %i.jk to ptr               ; 16 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !13 ; 4 uses
  %i.jn = and i64 %i.jm, 16384
  %.not.i41 = icmp eq i64 %i.jn, 0                ; 3 uses
  br i1 %.not.i41, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %BIGNUM_DIGITS.exit40
  %i.jo = getelementptr i8, ptr %i.jl, i64 16
  br label %BIGNUM_DIGITS.exit43

bb.ah:                                            ; preds = %BIGNUM_DIGITS.exit40
  %i.jp = getelementptr i8, ptr %i.jl, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit43

BIGNUM_DIGITS.exit43:                             ; preds = %bb.ag, %bb.ah
  %.0.i42 = phi ptr [ %i.jo, %bb.ag ], [ %i.jq, %bb.ah ] ; 13 uses
  %.0.i42138 = ptrtoaddr ptr %.0.i42 to i64       ; 3 uses
  %i.jr = icmp sgt i64 %i.iv, 0
  br i1 %i.jr, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %BIGNUM_DIGITS.exit43
  %min.iters.check = icmp ult i64 %i.iv, 12
  br i1 %min.iters.check, label %.lr.ph.preheader235, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.js = sub i64 %.0.i37139, %.0.i42138
  %diff.check = icmp ugt i64 %i.js, -32
  %i.jt = sub i64 %.0.i39140, %.0.i42138
  %diff.check141 = icmp ugt i64 %i.jt, -32
  %conflict.rdx = or i1 %diff.check, %diff.check141
  br i1 %conflict.rdx, label %.lr.ph.preheader235, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.iv, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ju = getelementptr [4 x i8], ptr %.0.i37, i64 %index ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 16
  %wide.load = load <4 x i32>, ptr %i.ju, align 4, !tbaa !7
  %wide.load142 = load <4 x i32>, ptr %i.jv, align 4, !tbaa !7
  %i.jw = getelementptr [4 x i8], ptr %.0.i39, i64 %index ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 16
  %wide.load143 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !7
  %wide.load144 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !7
  %i.jy = xor <4 x i32> %wide.load143, %wide.load
  %i.jz = xor <4 x i32> %wide.load144, %wide.load142
  %i.ka = getelementptr [4 x i8], ptr %.0.i42, i64 %index ; 2 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 16
  store <4 x i32> %i.jy, ptr %i.ka, align 4, !tbaa !7
  store <4 x i32> %i.jz, ptr %i.kb, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kc = icmp eq i64 %index.next, %n.vec
  br i1 %i.kc, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iv, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader235

.lr.ph.preheader235:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.03371.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.iv, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader235, %.lr.ph.prol
  %.03371.prol = phi i64 [ %i.kj, %.lr.ph.prol ], [ %.03371.ph, %.lr.ph.preheader235 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader235 ]
  %i.kd = getelementptr [4 x i8], ptr %.0.i37, i64 %.03371.prol
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !7
  %i.kf = getelementptr [4 x i8], ptr %.0.i39, i64 %.03371.prol
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !7
  %i.kh = xor i32 %i.kg, %i.ke
  %i.ki = getelementptr [4 x i8], ptr %.0.i42, i64 %.03371.prol
  store i32 %i.kh, ptr %i.ki, align 4, !tbaa !7
  %i.kj = add nuw nsw i64 %.03371.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !377

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader235
  %.03371.unr = phi i64 [ %.03371.ph, %.lr.ph.preheader235 ], [ %i.kj, %.lr.ph.prol ]
  %i.kk = sub nsw i64 %.03371.ph, %i.iv
  %i.kl = icmp ugt i64 %i.kk, -4
  br i1 %i.kl, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %BIGNUM_DIGITS.exit43
  %.033.lcssa = phi i64 [ 0, %BIGNUM_DIGITS.exit43 ], [ %i.iv, %middle.block ], [ %i.iv, %.lr.ph ], [ %i.iv, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.km = icmp slt i64 %.033.lcssa, %i.iu
  br i1 %i.km, label %.lr.ph73.preheader, label %._crit_edge

.lr.ph73.preheader:                               ; preds = %.preheader
  %i.kn = sub i64 %i.iu, %.033.lcssa              ; 3 uses
  %min.iters.check148 = icmp ult i64 %i.kn, 8
  %i.ko = sub i64 %.0.i39140, %.0.i42138
  %diff.check146 = icmp ugt i64 %i.ko, -32
  %or.cond218 = select i1 %min.iters.check148, i1 true, i1 %diff.check146
  br i1 %or.cond218, label %.lr.ph73.preheader234, label %vector.ph149

vector.ph149:                                     ; preds = %.lr.ph73.preheader
  %n.vec151 = and i64 %i.kn, -8                   ; 3 uses
  %i.kp = add i64 %.033.lcssa, %n.vec151
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.034, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body152

vector.body152:                                   ; preds = %vector.body152, %vector.ph149
  %index153 = phi i64 [ 0, %vector.ph149 ], [ %index.next156, %vector.body152 ] ; 2 uses
  %i.kq = add i64 %.033.lcssa, %index153          ; 2 uses
  %i.kr = getelementptr [4 x i8], ptr %.0.i39, i64 %i.kq ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 16
  %wide.load154 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !7
  %wide.load155 = load <4 x i32>, ptr %i.ks, align 4, !tbaa !7
  %i.kt = xor <4 x i32> %wide.load154, %broadcast.splat
  %i.ku = xor <4 x i32> %wide.load155, %broadcast.splat
  %i.kv = getelementptr [4 x i8], ptr %.0.i42, i64 %i.kq ; 2 uses
  %i.kw = getelementptr i8, ptr %i.kv, i64 16
  store <4 x i32> %i.kt, ptr %i.kv, align 4, !tbaa !7
  store <4 x i32> %i.ku, ptr %i.kw, align 4, !tbaa !7
  %index.next156 = add nuw i64 %index153, 8       ; 2 uses
  %i.kx = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.kx, label %middle.block157, label %vector.body152, !llvm.loop !378

middle.block157:                                  ; preds = %vector.body152
  %cmp.n158 = icmp eq i64 %i.kn, %n.vec151
  br i1 %cmp.n158, label %._crit_edge, label %.lr.ph73.preheader234

.lr.ph73.preheader234:                            ; preds = %.lr.ph73.preheader, %middle.block157
  %.172.ph = phi i64 [ %.033.lcssa, %.lr.ph73.preheader ], [ %i.kp, %middle.block157 ] ; 4 uses
  %i.ky = sub i64 %i.iu, %.172.ph
  %xtraiter236 = and i64 %i.ky, 3                 ; 2 uses
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol

.lr.ph73.prol:                                    ; preds = %.lr.ph73.preheader234, %.lr.ph73.prol
  %.172.prol = phi i64 [ %i.ld, %.lr.ph73.prol ], [ %.172.ph, %.lr.ph73.preheader234 ] ; 3 uses
  %prol.iter238 = phi i64 [ %prol.iter238.next, %.lr.ph73.prol ], [ 0, %.lr.ph73.preheader234 ]
  %i.kz = getelementptr [4 x i8], ptr %.0.i39, i64 %.172.prol
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !7
  %i.lb = xor i32 %i.la, %.034
  %i.lc = getelementptr [4 x i8], ptr %.0.i42, i64 %.172.prol
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !7
  %i.ld = add nuw nsw i64 %.172.prol, 1           ; 2 uses
  %prol.iter238.next = add i64 %prol.iter238, 1   ; 2 uses
  %prol.iter238.cmp.not = icmp eq i64 %prol.iter238.next, %xtraiter236
  br i1 %prol.iter238.cmp.not, label %.lr.ph73.prol.loopexit, label %.lr.ph73.prol, !llvm.loop !379

.lr.ph73.prol.loopexit:                           ; preds = %.lr.ph73.prol, %.lr.ph73.preheader234
  %.172.unr = phi i64 [ %.172.ph, %.lr.ph73.preheader234 ], [ %i.ld, %.lr.ph73.prol ]
  %i.le = sub i64 %.172.ph, %i.iu
  %i.lf = icmp ugt i64 %i.le, -4
  br i1 %i.lf, label %._crit_edge, label %.lr.ph73

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.03371 = phi i64 [ %i.mh, %.lr.ph ], [ %.03371.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.lg = getelementptr [4 x i8], ptr %.0.i37, i64 %.03371
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !7
  %i.li = getelementptr [4 x i8], ptr %.0.i39, i64 %.03371
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !7
  %i.lk = xor i32 %i.lj, %i.lh
  %i.ll = getelementptr [4 x i8], ptr %.0.i42, i64 %.03371
  store i32 %i.lk, ptr %i.ll, align 4, !tbaa !7
  %i.lm = add nuw nsw i64 %.03371, 1              ; 3 uses
  %i.ln = getelementptr [4 x i8], ptr %.0.i37, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !7
  %i.lp = getelementptr [4 x i8], ptr %.0.i39, i64 %i.lm
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !7
  %i.lr = xor i32 %i.lq, %i.lo
  %i.ls = getelementptr [4 x i8], ptr %.0.i42, i64 %i.lm
  store i32 %i.lr, ptr %i.ls, align 4, !tbaa !7
  %i.lt = add nuw nsw i64 %.03371, 2              ; 3 uses
  %i.lu = getelementptr [4 x i8], ptr %.0.i37, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !7
  %i.lw = getelementptr [4 x i8], ptr %.0.i39, i64 %i.lt
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !7
  %i.ly = xor i32 %i.lx, %i.lv
  %i.lz = getelementptr [4 x i8], ptr %.0.i42, i64 %i.lt
  store i32 %i.ly, ptr %i.lz, align 4, !tbaa !7
  %i.ma = add nuw nsw i64 %.03371, 3              ; 3 uses
  %i.mb = getelementptr [4 x i8], ptr %.0.i37, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !7
  %i.md = getelementptr [4 x i8], ptr %.0.i39, i64 %i.ma
  %i.me = load i32, ptr %i.md, align 4, !tbaa !7
  %i.mf = xor i32 %i.me, %i.mc
  %i.mg = getelementptr [4 x i8], ptr %.0.i42, i64 %i.ma
  store i32 %i.mf, ptr %i.mg, align 4, !tbaa !7
  %i.mh = add nuw nsw i64 %.03371, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.mh, %i.iv
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !380

.lr.ph73:                                         ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73
  %.172 = phi i64 [ %i.nb, %.lr.ph73 ], [ %.172.unr, %.lr.ph73.prol.loopexit ] ; 6 uses
  %i.mi = getelementptr [4 x i8], ptr %.0.i39, i64 %.172
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !7
  %i.mk = xor i32 %i.mj, %.034
  %i.ml = getelementptr [4 x i8], ptr %.0.i42, i64 %.172
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !7
  %i.mm = add nuw nsw i64 %.172, 1                ; 2 uses
  %i.mn = getelementptr [4 x i8], ptr %.0.i39, i64 %i.mm
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !7
  %i.mp = xor i32 %i.mo, %.034
  %i.mq = getelementptr [4 x i8], ptr %.0.i42, i64 %i.mm
  store i32 %i.mp, ptr %i.mq, align 4, !tbaa !7
  %i.mr = add nuw nsw i64 %.172, 2                ; 2 uses
  %i.ms = getelementptr [4 x i8], ptr %.0.i39, i64 %i.mr
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !7
  %i.mu = xor i32 %i.mt, %.034
  %i.mv = getelementptr [4 x i8], ptr %.0.i42, i64 %i.mr
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !7
  %i.mw = add nuw nsw i64 %.172, 3                ; 2 uses
  %i.mx = getelementptr [4 x i8], ptr %.0.i39, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !7
  %i.mz = xor i32 %i.my, %.034
  %i.na = getelementptr [4 x i8], ptr %.0.i42, i64 %i.mw
  store i32 %i.mz, ptr %i.na, align 4, !tbaa !7
  %i.nb = add nuw nsw i64 %.172, 4                ; 2 uses
  %exitcond89.not.3 = icmp eq i64 %i.nb, %i.iu
  br i1 %exitcond89.not.3, label %._crit_edge, label %.lr.ph73, !llvm.loop !381

._crit_edge:                                      ; preds = %.lr.ph73.prol.loopexit, %.lr.ph73, %middle.block157, %.preheader
  %.not = icmp eq i32 %i.io, %i.in                ; 2 uses
  %i.nc = and i64 %i.jm, -8193
  %masksel.i.i = select i1 %.not, i64 8192, i64 0
  %.sink.i.i = or disjoint i64 %i.nc, %masksel.i.i
  store i64 %.sink.i.i, ptr %i.jl, align 8, !tbaa !13
  br i1 %.not, label %twocomp2abs_bang.exit, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  br i1 %.not.i41, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.nd = lshr i64 %i.jm, 15
  %i.ne = and i64 %i.nd, 511
  %i.nf = getelementptr i8, ptr %i.jl, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.ng = getelementptr i8, ptr %i.jl, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !15
  %i.ni = getelementptr i8, ptr %i.jl, i64 24
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.ak, %bb.aj
  %.0.i8.i.i = phi i64 [ %i.ne, %bb.aj ], [ %i.nh, %bb.ak ] ; 5 uses
  %.0.i5.i.i = phi ptr [ %i.nf, %bb.aj ], [ %i.nj, %bb.ak ] ; 4 uses
  %.not27.i.i.i = icmp eq i64 %.0.i8.i.i, 0
  br i1 %.not27.i.i.i, label %bary_2comp.exit.i.i, label %.lr.ph.i.i.i46

.lr.ph.i.i.i46:                                   ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.al
  %.023.i.i.i = phi i64 [ %i.nm, %bb.al ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.nk = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.023.i.i.i
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !7  ; 2 uses
  %.not.i6.i.i = icmp eq i32 %i.nl, 0
  br i1 %.not.i6.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i.i46
  %i.nm = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.nm, %.0.i8.i.i
  br i1 %exitcond.not.i.i.i, label %bary_2comp.exit.i.i, label %.lr.ph.i.i.i46, !llvm.loop !55

bb.am:                                            ; preds = %.lr.ph.i.i.i46
  %i.nn = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.023.i.i.i
  %i.no = sub i32 0, %i.nl
  store i32 %i.no, ptr %i.nn, align 4, !tbaa !7
  %.124.i.i.i = add i64 %.023.i.i.i, 1            ; 4 uses
  %i.np = icmp ult i64 %.124.i.i.i, %.0.i8.i.i
  br i1 %i.np, label %.lr.ph26.i.i.i.preheader, label %twocomp2abs_bang.exit

.lr.ph26.i.i.i.preheader:                         ; preds = %bb.am
  %i.nq = xor i64 %.023.i.i.i, -1
  %i.nr = add i64 %.0.i8.i.i, %i.nq               ; 3 uses
  %min.iters.check161 = icmp ult i64 %i.nr, 8
  br i1 %min.iters.check161, label %.lr.ph26.i.i.i.preheader230, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph26.i.i.i.preheader
  %n.vec164 = and i64 %i.nr, -8                   ; 3 uses
  %i.ns = add i64 %.124.i.i.i, %n.vec164
  %i.nt = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.124.i.i.i
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph162
  %index166 = phi i64 [ 0, %vector.ph162 ], [ %index.next169, %vector.body165 ] ; 2 uses
  %i.nu = getelementptr [4 x i8], ptr %i.nt, i64 %index166 ; 3 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 16     ; 2 uses
  %wide.load167 = load <4 x i32>, ptr %i.nu, align 4, !tbaa !7
  %wide.load168 = load <4 x i32>, ptr %i.nv, align 4, !tbaa !7
  %i.nw = xor <4 x i32> %wide.load167, splat (i32 -1)
  %i.nx = xor <4 x i32> %wide.load168, splat (i32 -1)
  store <4 x i32> %i.nw, ptr %i.nu, align 4, !tbaa !7
  store <4 x i32> %i.nx, ptr %i.nv, align 4, !tbaa !7
  %index.next169 = add nuw i64 %index166, 8       ; 2 uses
  %i.ny = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.ny, label %middle.block170, label %vector.body165, !llvm.loop !382

middle.block170:                                  ; preds = %vector.body165
end_hunk_21
begin_hunk_22_@big_shift3:bb.a
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, %i.ah            ; 2 uses
  %i.av = or i64 %i.au, %i.aq
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr i8, ptr %.01013.i, i64 8
  store i32 %i.aw, ptr %i.ap, align 4, !tbaa !7
  %i.ay = lshr i64 %i.au, 32
  %i.az = getelementptr i8, ptr %.01112.i, i64 12
  %i.ba = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, %i.ah            ; 2 uses
  %i.bd = or i64 %i.bc, %i.ay
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr i8, ptr %.01013.i, i64 12
  store i32 %i.be, ptr %i.ax, align 4, !tbaa !7
  %i.bg = lshr i64 %i.bc, 32
  %i.bh = getelementptr i8, ptr %.01112.i, i64 16 ; 2 uses
  %i.bi = load i32, ptr %i.az, align 4, !tbaa !7
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, %i.ah            ; 2 uses
  %i.bl = or i64 %i.bk, %i.bg
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  store i32 %i.bm, ptr %i.bf, align 4, !tbaa !7
  %i.bo = lshr i64 %i.bk, 32                      ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %bb.l, !llvm.loop !88

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bo, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.bn, %._crit_edge.loopexit.i.unr-lcssa ]
  %.01112.i.epil.init = phi ptr [ %.0.i57, %.lr.ph.i ], [ %i.bh, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod142 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod142)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %.015.i.epil = phi i64 [ %.015.i.epil.init, %.epil.preheader ], [ %i.bw, %bb.m ]
  %.01013.i.epil = phi ptr [ %.01013.i.epil.init, %.epil.preheader ], [ %i.bv, %bb.m ] ; 2 uses
  %.01112.i.epil = phi ptr [ %.01112.i.epil.init, %.epil.preheader ], [ %i.bp, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.bp = getelementptr i8, ptr %.01112.i.epil, i64 4
  %i.bq = load i32, ptr %.01112.i.epil, align 4, !tbaa !7
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, %i.ah            ; 2 uses
  %i.bt = or i64 %i.bs, %.015.i.epil
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = getelementptr i8, ptr %.01013.i.epil, i64 4
  store i32 %i.bu, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.bw = lshr i64 %i.bs, 32                      ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %bb.m, !llvm.loop !389

._crit_edge.loopexit.i:                           ; preds = %bb.m, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa140 = phi i64 [ %i.bo, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.bw, %bb.m ]
  %i.bx = trunc nuw nsw i64 %.lcssa140 to i32
  br label %bary_small_lshift.exit

bary_small_lshift.exit:                           ; preds = %BIGNUM_DIGITS.exit58, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i32 [ 0, %BIGNUM_DIGITS.exit58 ], [ %i.bx, %._crit_edge.loopexit.i ]
  %i.by = getelementptr [4 x i8], ptr %.0.i55, i64 %.0.i
  %i.bz = getelementptr [4 x i8], ptr %i.by, i64 %2
  store i32 %.0.lcssa.i, ptr %i.bz, align 4, !tbaa !7
  br label %bary_zero_p.exit.thread87

bb.n:                                             ; preds = %bb.a
  %.pre = inttoptr i64 %0 to ptr                  ; 6 uses
  br i1 %i.d, label %._crit_edge105, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ca = load i64, ptr %.pre, align 8, !tbaa !13 ; 2 uses
  %i.cb = and i64 %i.ca, 16384
  %.not.i60 = icmp eq i64 %i.cb, 0
  br i1 %.not.i60, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr i8, ptr %.pre, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit62

bb.q:                                             ; preds = %bb.o
  %i.ce = lshr i64 %i.ca, 15
  %i.cf = and i64 %i.ce, 511
  br label %BIGNUM_LEN.exit62

BIGNUM_LEN.exit62:                                ; preds = %bb.p, %bb.q
  %.0.i61 = phi i64 [ %i.cf, %bb.q ], [ %i.cd, %bb.p ]
  %.not49 = icmp ugt i64 %.0.i61, %2
  br i1 %.not49, label %bb.v, label %._crit_edge105

._crit_edge105:                                   ; preds = %bb.n, %BIGNUM_LEN.exit62
  %i.cg = load i64, ptr %.pre, align 8, !tbaa !13 ; 3 uses
  %i.ch = and i64 %i.cg, 8192
  %.not92 = icmp eq i64 %i.ch, 0
  br i1 %.not92, label %bb.r, label %bary_zero_p.exit

bb.r:                                             ; preds = %._crit_edge105
  %i.ci = and i64 %i.cg, 16384
  %.not.i63 = icmp eq i64 %i.ci, 0
  br i1 %.not.i63, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr i8, ptr %.pre, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !15
  %i.cl = getelementptr i8, ptr %.pre, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit68

bb.t:                                             ; preds = %bb.r
  %i.cn = getelementptr i8, ptr %.pre, i64 16
  %i.co = lshr i64 %i.cg, 15
  %i.cp = and i64 %i.co, 511
  br label %BIGNUM_LEN.exit68

BIGNUM_LEN.exit68:                                ; preds = %bb.s, %bb.t
  %.0.i6482 = phi ptr [ %i.cn, %bb.t ], [ %i.ck, %bb.s ]
  %.0.i67 = phi i64 [ %i.cp, %bb.t ], [ %i.cm, %bb.s ] ; 2 uses
  %i.cq = icmp eq i64 %.0.i67, 0
  br i1 %i.cq, label %bary_zero_p.exit, label %.preheader.i

.preheader.i:                                     ; preds = %BIGNUM_LEN.exit68, %bb.u
  %.0.i69 = phi i64 [ %i.cr, %bb.u ], [ %.0.i67, %BIGNUM_LEN.exit68 ]
  %i.cr = add i64 %.0.i69, -1                     ; 3 uses
  %i.cs = getelementptr [4 x i8], ptr %.0.i6482, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !7
  %.not.i70 = icmp eq i32 %i.ct, 0
  br i1 %.not.i70, label %bb.u, label %bary_zero_p.exit

bb.u:                                             ; preds = %.preheader.i
  %.not7.i = icmp eq i64 %i.cr, 0
  br i1 %.not7.i, label %bary_zero_p.exit, label %.preheader.i, !llvm.loop !158

bb.v:                                             ; preds = %BIGNUM_LEN.exit62
  %i.cu = call fastcc i32 @abs2twocomp(ptr noundef %i.a, ptr noundef %i.b) ; 2 uses
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !11
  %i.cw = inttoptr i64 %i.cv to ptr               ; 3 uses
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !13
  %i.cy = and i64 %i.cx, 16384
  %.not.i71 = icmp eq i64 %i.cy, 0
  br i1 %.not.i71, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr i8, ptr %i.cw, i64 16
  br label %BIGNUM_DIGITS.exit73

bb.x:                                             ; preds = %bb.v
  %i.da = getelementptr i8, ptr %i.cw, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit73

BIGNUM_DIGITS.exit73:                             ; preds = %bb.w, %bb.x
  %.0.i72 = phi ptr [ %i.cz, %bb.w ], [ %i.db, %bb.x ] ; 2 uses
  %.0.i72120 = ptrtoaddr ptr %.0.i72 to i64
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !11  ; 4 uses
  %.not50 = icmp sgt i64 %i.dc, %2
  br i1 %.not50, label %bb.z, label %bb.y

bb.y:                                             ; preds = %BIGNUM_DIGITS.exit73
  %.not51 = icmp eq i32 %i.cu, 0
  %i.dd = select i1 %.not51, i64 1, i64 -1
  br label %bary_zero_p.exit

bb.z:                                             ; preds = %BIGNUM_DIGITS.exit73
  %i.de = sub nsw i64 %i.dc, %2                   ; 9 uses
  %i.df = load i64, ptr @rb_cInteger, align 8, !tbaa !11
  %i.dg = tail call fastcc i64 @bignew_1(i64 noundef %i.df, i64 noundef %i.de, i32 noundef 0) ; 7 uses
  %i.dh = inttoptr i64 %i.dg to ptr               ; 12 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !13 ; 4 uses
  %i.dj = and i64 %i.di, 16384
  %.not.i74 = icmp eq i64 %i.dj, 0                ; 3 uses
  br i1 %.not.i74, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = getelementptr i8, ptr %i.dh, i64 16
  br label %BIGNUM_DIGITS.exit76

bb.ab:                                            ; preds = %bb.z
  %i.dl = getelementptr i8, ptr %i.dh, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit76

BIGNUM_DIGITS.exit76:                             ; preds = %bb.aa, %bb.ab
  %.0.i75 = phi ptr [ %i.dk, %bb.aa ], [ %i.dm, %bb.ab ] ; 5 uses
  %i.dn = getelementptr [4 x i8], ptr %.0.i72, i64 %2 ; 4 uses
  %.not91 = icmp eq i32 %i.cu, 0                  ; 3 uses
  %i.do = select i1 %.not91, i64 0, i64 4294967295 ; 3 uses
  %i.dp = zext nneg i32 %3 to i64                 ; 4 uses
  %min.iters.check = icmp ult i64 %i.de, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %BIGNUM_DIGITS.exit76
  %.0.i75121 = ptrtoaddr ptr %.0.i75 to i64
  %i.dq = shl i64 %2, 2
  %i.dr = add i64 %i.dq, %.0.i72120
  %i.ds = sub i64 %.0.i75121, %i.dr
  %diff.check = icmp ugt i64 %i.ds, -16
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.de, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %vector.recur.init = insertelement <4 x i64> poison, i64 %i.do, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ %vector.recur.init, %vector.ph ], [ %i.dx, %vector.body ]
  %i.dt = xor i64 %index, -1
  %i.du = add i64 %i.de, %i.dt                    ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.dn, i64 %i.du
  %i.dw = getelementptr i8, ptr %i.dv, i64 -12
  %wide.load = load <4 x i32>, ptr %i.dw, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.dx = zext <4 x i32> %reverse to <4 x i64>    ; 4 uses
  %i.dy = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.dx, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.dz = shl nuw <4 x i64> %i.dy, splat (i64 32)
  %i.ea = or disjoint <4 x i64> %i.dz, %i.dx
  %i.eb = lshr <4 x i64> %i.ea, %broadcast.splat
  %i.ec = trunc <4 x i64> %i.eb to <4 x i32>
  %i.ed = getelementptr [4 x i8], ptr %.0.i75, i64 %i.du
  %i.ee = getelementptr i8, ptr %i.ed, i64 -12
  %reverse122 = shufflevector <4 x i32> %i.ec, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse122, ptr %i.ee, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !390

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.dx, i64 3
  %cmp.n = icmp eq i64 %i.de, %n.vec
  br i1 %cmp.n, label %bary_small_rshift.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %BIGNUM_DIGITS.exit76, %middle.block
  %.017.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %BIGNUM_DIGITS.exit76 ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.ph = phi i64 [ %i.do, %vector.memcheck ], [ %i.do, %BIGNUM_DIGITS.exit76 ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %i.eg = sub i64 %i.dc, %2
  %i.eh = xor i64 %.017.i.ph, -1
  %i.ei = add i64 %i.dc, %i.eh
  %xtraiter143 = and i64 %i.eg, 1
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.prol = shl nuw i64 %.014.in16.i.ph, 32
  %i.ej = xor i64 %.017.i.ph, -1
  %i.ek = add i64 %i.de, %i.ej                    ; 2 uses
  %i.el = getelementptr [4 x i8], ptr %i.dn, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = or disjoint i64 %.014.i.prol, %i.en
  %i.ep = lshr i64 %i.eo, %i.dp
  %i.eq = trunc i64 %i.ep to i32
  %i.er = getelementptr [4 x i8], ptr %.0.i75, i64 %i.ek
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !7
  %i.es = or disjoint i64 %.017.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.unr = phi i64 [ %.017.i.ph, %scalar.ph.preheader ], [ %i.es, %scalar.ph.prol ]
  %.014.in16.i.unr = phi i64 [ %.014.in16.i.ph, %scalar.ph.preheader ], [ %i.en, %scalar.ph.prol ]
  %i.et = icmp eq i64 %i.ei, %2
  br i1 %i.et, label %bary_small_rshift.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i = phi i64 [ %i.fl, %scalar.ph ], [ %.017.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i = phi i64 [ %i.fg, %scalar.ph ], [ %.014.in16.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i = shl nuw i64 %.014.in16.i, 32
  %i.eu = xor i64 %.017.i, -1
  %i.ev = add i64 %i.de, %i.eu                    ; 2 uses
  %i.ew = getelementptr [4 x i8], ptr %i.dn, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !7
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = or disjoint i64 %.014.i, %i.ey
  %i.fa = lshr i64 %i.ez, %i.dp
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = getelementptr [4 x i8], ptr %.0.i75, i64 %i.ev
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !7
  %.014.i.1 = shl nuw i64 %i.ey, 32
  %reass.sub = sub i64 %i.de, %.017.i
  %i.fd = add i64 %reass.sub, -2                  ; 2 uses
  %i.fe = getelementptr [4 x i8], ptr %i.dn, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !7
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = or disjoint i64 %.014.i.1, %i.fg
  %i.fi = lshr i64 %i.fh, %i.dp
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = getelementptr [4 x i8], ptr %.0.i75, i64 %i.fd
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !7
  %i.fl = add nuw i64 %.017.i, 2                  ; 2 uses
  %exitcond.not.i79.1 = icmp eq i64 %i.fl, %i.de
  br i1 %exitcond.not.i79.1, label %bary_small_rshift.exit, label %scalar.ph, !llvm.loop !391

bary_small_rshift.exit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.fm = and i64 %i.di, -8193
  %masksel.i.i = select i1 %.not91, i64 8192, i64 0
  %.sink.i.i = or disjoint i64 %i.fm, %masksel.i.i
  store i64 %.sink.i.i, ptr %i.dh, align 8, !tbaa !13
  br i1 %.not91, label %bary_zero_p.exit.thread87, label %bb.ac

bb.ac:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not.i74, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fn = lshr i64 %i.di, 15
  %i.fo = and i64 %i.fn, 511
  %i.fp = getelementptr i8, ptr %i.dh, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.fq = getelementptr i8, ptr %i.dh, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !15
  %i.fs = getelementptr i8, ptr %i.dh, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.ae, %bb.ad
  %.0.i8.i.i = phi i64 [ %i.fo, %bb.ad ], [ %i.fr, %bb.ae ] ; 5 uses
  %.0.i5.i.i = phi ptr [ %i.fp, %bb.ad ], [ %i.ft, %bb.ae ] ; 4 uses
  %.not27.i.i.i = icmp eq i64 %.0.i8.i.i, 0
  br i1 %.not27.i.i.i, label %bary_2comp.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.af
  %.023.i.i.i = phi i64 [ %i.fw, %bb.af ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 5 uses
  %i.fu = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.023.i.i.i
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !7  ; 2 uses
  %.not.i6.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i6.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.fw = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.fw, %.0.i8.i.i
  br i1 %exitcond.not.i.i.i, label %bary_2comp.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !55

bb.ag:                                            ; preds = %.lr.ph.i.i.i
  %i.fx = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.023.i.i.i
  %i.fy = sub i32 0, %i.fv
  store i32 %i.fy, ptr %i.fx, align 4, !tbaa !7
  %.124.i.i.i = add i64 %.023.i.i.i, 1            ; 4 uses
  %i.fz = icmp ult i64 %.124.i.i.i, %.0.i8.i.i
  br i1 %i.fz, label %.lr.ph26.i.i.i.preheader, label %bary_zero_p.exit.thread87

.lr.ph26.i.i.i.preheader:                         ; preds = %bb.ag
  %i.ga = xor i64 %.023.i.i.i, -1
  %i.gb = add i64 %.0.i8.i.i, %i.ga               ; 3 uses
  %min.iters.check124 = icmp ult i64 %i.gb, 8
  br i1 %min.iters.check124, label %.lr.ph26.i.i.i.preheader136, label %vector.ph125

vector.ph125:                                     ; preds = %.lr.ph26.i.i.i.preheader
  %n.vec127 = and i64 %i.gb, -8                   ; 3 uses
  %i.gc = add i64 %.124.i.i.i, %n.vec127
  %i.gd = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.124.i.i.i
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph125
  %index129 = phi i64 [ 0, %vector.ph125 ], [ %index.next132, %vector.body128 ] ; 2 uses
  %i.ge = getelementptr [4 x i8], ptr %i.gd, i64 %index129 ; 3 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 16     ; 2 uses
  %wide.load130 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !7
  %wide.load131 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !7
  %i.gg = xor <4 x i32> %wide.load130, splat (i32 -1)
  %i.gh = xor <4 x i32> %wide.load131, splat (i32 -1)
  store <4 x i32> %i.gg, ptr %i.ge, align 4, !tbaa !7
  store <4 x i32> %i.gh, ptr %i.gf, align 4, !tbaa !7
  %index.next132 = add nuw i64 %index129, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next132, %n.vec127
  br i1 %i.gi, label %middle.block133, label %vector.body128, !llvm.loop !392

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.gb, %n.vec127
  br i1 %cmp.n134, label %bary_zero_p.exit.thread87, label %.lr.ph26.i.i.i.preheader136

.lr.ph26.i.i.i.preheader136:                      ; preds = %.lr.ph26.i.i.i.preheader, %middle.block133
  %.125.i.i.i.ph = phi i64 [ %.124.i.i.i, %.lr.ph26.i.i.i.preheader ], [ %i.gc, %middle.block133 ]
  br label %.lr.ph26.i.i.i

.lr.ph26.i.i.i:                                   ; preds = %.lr.ph26.i.i.i.preheader136, %.lr.ph26.i.i.i
  %.125.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph26.i.i.i ], [ %.125.i.i.i.ph, %.lr.ph26.i.i.i.preheader136 ] ; 2 uses
  %i.gj = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.125.i.i.i ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !7
  %i.gl = xor i32 %i.gk, -1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !7
  %.1.i.i.i = add nuw i64 %.125.i.i.i, 1          ; 2 uses
  %exitcond31.not.i.i.i = icmp eq i64 %.1.i.i.i, %.0.i8.i.i
  br i1 %exitcond31.not.i.i.i, label %bary_zero_p.exit.thread87, label %.lr.ph26.i.i.i, !llvm.loop !393

bary_2comp.exit.i.i:                              ; preds = %bb.af, %BIGNUM_DIGITS.exit.i.i
  br i1 %.not.i74, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bary_2comp.exit.i.i
  %i.gm = getelementptr i8, ptr %i.dh, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !15
  br label %BIGNUM_LEN.exit.i.i.i

bb.ai:                                            ; preds = %bary_2comp.exit.i.i
  %i.go = lshr i64 %i.di, 15
end_hunk_22
begin_hunk_23_@bary_mul_karatsuba_branch:bb.a
  %i.cn = getelementptr i8, ptr %0, i64 8
  %i.co = shl i64 %1, 2
  %i.cp = add i64 %i.co, -8
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cn, i8 0, i64 %i.cp, i1 false), !tbaa !7
  br label %bary_short_mul.exit78

bb.n:                                             ; preds = %bb.l
  %.not17.i.i52 = icmp eq i64 %1, 0
  br i1 %.not17.i.i52, label %.preheader.i.i54, label %.lr.ph.preheader.i12.i53

.lr.ph.preheader.i12.i53:                         ; preds = %bb.n
  %i.cq = shl nuw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.cq, i1 false), !tbaa !7
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
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7  ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bary_muladd_1xN.exit.i.i73, label %.lr.ph.i.preheader.i.i60

.lr.ph.i.preheader.i.i60:                         ; preds = %.lr.ph21.split.i.i58
  %i.cx = zext i32 %i.cv to i64                   ; 3 uses
  br i1 %i.cr, label %.lr.ph.i.i.i61.epil.preheader, label %.lr.ph.i.i.i61

.preheader.i.i.i67.unr-lcssa:                     ; preds = %bb.r
  br i1 %lcmp.mod110.not, label %.preheader.i.i.i67, label %.lr.ph.i.i.i61.epil.preheader

.lr.ph.i.i.i61.epil.preheader:                    ; preds = %.preheader.i.i.i67.unr-lcssa, %.lr.ph.i.preheader.i.i60
  %.03036.i.i.i62.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i60 ], [ %i.ei, %.preheader.i.i.i67.unr-lcssa ] ; 2 uses
  %.03135.i.i.i63.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i60 ], [ %.132.i.i.i65.1, %.preheader.i.i.i67.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod112)
  %i.cy = getelementptr [4 x i8], ptr %4, i64 %.03036.i.i.i62.epil.init
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !7
  %i.da = zext i32 %i.cz to i64
  %i.db = mul nuw i64 %i.da, %i.cx
  %i.dc = add nuw i64 %i.db, %.03135.i.i.i63.epil.init ; 2 uses
  %.not.i.i.i64.epil = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i64.epil, label %.preheader.i.i.i67, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i61.epil.preheader
  %i.dd = getelementptr [4 x i8], ptr %i.cs, i64 %.03036.i.i.i62.epil.init ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.df = zext i32 %i.de to i64
  %i.dg = add nuw i64 %i.dc, %i.df                ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !7
  %i.di = lshr i64 %i.dg, 32
  br label %.preheader.i.i.i67

.preheader.i.i.i67:                               ; preds = %.lr.ph.i.i.i61.epil.preheader, %bb.o, %.preheader.i.i.i67.unr-lcssa
  %.132.i.i.i65.lcssa = phi i64 [ %.132.i.i.i65.1, %.preheader.i.i.i67.unr-lcssa ], [ %i.di, %bb.o ], [ 0, %.lr.ph.i.i.i61.epil.preheader ] ; 2 uses
  %i.dj = icmp uge i64 %5, %i.ct
  %i.dk = icmp eq i64 %.132.i.i.i65.lcssa, 0
  %or.cond38.i.i.i68 = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %or.cond38.i.i.i68, label %bary_muladd_1xN.exit.i.i73, label %.lr.ph41.i.i.i69

.lr.ph.i.i.i61:                                   ; preds = %.lr.ph.i.preheader.i.i60, %bb.r
  %.03036.i.i.i62 = phi i64 [ %i.ei, %bb.r ], [ 0, %.lr.ph.i.preheader.i.i60 ] ; 4 uses
  %.03135.i.i.i63 = phi i64 [ %.132.i.i.i65.1, %bb.r ], [ 0, %.lr.ph.i.preheader.i.i60 ]
  %niter114 = phi i64 [ %niter114.next.1, %bb.r ], [ 0, %.lr.ph.i.preheader.i.i60 ]
  %i.dl = getelementptr [4 x i8], ptr %4, i64 %.03036.i.i.i62
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !7
  %i.dn = zext i32 %i.dm to i64
  %i.do = mul nuw i64 %i.dn, %i.cx
  %i.dp = add nuw i64 %i.do, %.03135.i.i.i63      ; 2 uses
  %.not.i.i.i64 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i.i64, label %.lr.ph.i.i.i61.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i61
  %i.dq = getelementptr [4 x i8], ptr %i.cs, i64 %.03036.i.i.i62 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7
  %i.ds = zext i32 %i.dr to i64
  %i.dt = add nuw i64 %i.dp, %i.ds                ; 2 uses
  %i.du = trunc i64 %i.dt to i32
  store i32 %i.du, ptr %i.dq, align 4, !tbaa !7
  %i.dv = lshr i64 %i.dt, 32
  br label %.lr.ph.i.i.i61.1

.lr.ph.i.i.i61.1:                                 ; preds = %bb.p, %.lr.ph.i.i.i61
  %.132.i.i.i65 = phi i64 [ %i.dv, %bb.p ], [ 0, %.lr.ph.i.i.i61 ]
  %i.dw = or disjoint i64 %.03036.i.i.i62, 1      ; 2 uses
  %i.dx = getelementptr [4 x i8], ptr %4, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !7
  %i.dz = zext i32 %i.dy to i64
  %i.ea = mul nuw i64 %i.dz, %i.cx
  %i.eb = add nuw i64 %i.ea, %.132.i.i.i65        ; 2 uses
  %.not.i.i.i64.1 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i64.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i61.1
  %i.ec = getelementptr [4 x i8], ptr %i.cs, i64 %i.dw ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add nuw i64 %i.eb, %i.ee                ; 2 uses
  %i.eg = trunc i64 %i.ef to i32
  store i32 %i.eg, ptr %i.ec, align 4, !tbaa !7
  %i.eh = lshr i64 %i.ef, 32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i.i61.1
  %.132.i.i.i65.1 = phi i64 [ %i.eh, %bb.q ], [ 0, %.lr.ph.i.i.i61.1 ] ; 3 uses
  %i.ei = add nuw i64 %.03036.i.i.i62, 2          ; 2 uses
  %niter114.next.1 = add i64 %niter114, 2         ; 2 uses
  %niter114.ncmp.1 = icmp eq i64 %niter114.next.1, %unroll_iter113
  br i1 %niter114.ncmp.1, label %.preheader.i.i.i67.unr-lcssa, label %.lr.ph.i.i.i61, !llvm.loop !16

.lr.ph41.i.i.i69:                                 ; preds = %.preheader.i.i.i67, %.lr.ph41.i.i.i69
  %.140.i.i.i70 = phi i64 [ %i.ep, %.lr.ph41.i.i.i69 ], [ %5, %.preheader.i.i.i67 ] ; 2 uses
  %.239.i.i.i71 = phi i64 [ %i.eo, %.lr.ph41.i.i.i69 ], [ %.132.i.i.i65.lcssa, %.preheader.i.i.i67 ]
  %i.ej = getelementptr [4 x i8], ptr %i.cs, i64 %.140.i.i.i70 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7
  %i.el = zext i32 %i.ek to i64
  %i.em = add nuw nsw i64 %.239.i.i.i71, %i.el    ; 2 uses
  %i.en = trunc i64 %i.em to i32
  store i32 %i.en, ptr %i.ej, align 4, !tbaa !7
  %i.eo = lshr i64 %i.em, 32                      ; 2 uses
  %i.ep = add nuw i64 %.140.i.i.i70, 1            ; 2 uses
  %i.eq = icmp uge i64 %i.ep, %i.ct
  %i.er = icmp eq i64 %i.eo, 0
  %or.cond.i.i.i72 = select i1 %i.eq, i1 true, i1 %i.er
  br i1 %or.cond.i.i.i72, label %bary_muladd_1xN.exit.i.i73, label %.lr.ph41.i.i.i69, !llvm.loop !18

bary_muladd_1xN.exit.i.i73:                       ; preds = %.lr.ph41.i.i.i69, %.preheader.i.i.i67, %.lr.ph21.split.i.i58
  %i.es = add nuw i64 %.01620.i.i59, 1            ; 2 uses
  %exitcond.not.i.i74 = icmp eq i64 %i.es, %3
  br i1 %exitcond.not.i.i74, label %bary_mul_normal.exit.i75, label %.lr.ph21.split.i.i58, !llvm.loop !19

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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !7    ; 5 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = add i64 %.0, 1                           ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !420

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %i.c, %3
  br i1 %i.d, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr [4 x i8], ptr %0, i64 %3   ; 5 uses
  %i.f = getelementptr [4 x i8], ptr %0, i64 %.0  ; 7 uses
  %i.g = sub i64 %1, %3                           ; 10 uses
  %i.h = getelementptr [4 x i8], ptr %0, i64 %1
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7    ; 3 uses
  %i.k = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.l = icmp samesign ult i32 %i.k, 2
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add i32 %i.b, -1
  %i.n = load i32, ptr %i.f, align 4, !tbaa !7
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
  %5 = shl i64 %i.t, 2
  %6 = add i64 %5, -1
  %diff.check = icmp ult i64 %6, 15
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.s, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %vector.recur.init = insertelement <4 x i64> poison, i64 %i.r, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i64> [ %vector.recur.init, %vector.ph ], [ %i.y, %vector.body ]
  %i.u = xor i64 %index, -1
  %i.v = add i64 %i.g, %i.u                       ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %i.f, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -12
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.y = zext <4 x i32> %reverse to <4 x i64>     ; 4 uses
  %i.z = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.y, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.aa = shl nuw <4 x i64> %i.z, splat (i64 32)
  %i.ab = or disjoint <4 x i64> %i.aa, %i.y
  %i.ac = lshr <4 x i64> %i.ab, %broadcast.splat
  %i.ad = trunc <4 x i64> %i.ac to <4 x i32>
  %i.ae = getelementptr [4 x i8], ptr %i.e, i64 %i.v
  %i.af = getelementptr i8, ptr %i.ae, i64 -12
  %reverse40 = shufflevector <4 x i32> %i.ad, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse40, ptr %i.af, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !421

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %i.y, i64 3
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %bigdivrem_single1.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.017.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %.014.in16.i.i.ph = phi i64 [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.i.i ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %i.ah = sub i64 %1, %3
  %i.ai = xor i64 %.017.i.i.ph, -1
  %i.aj = add i64 %1, %i.ai
  %xtraiter = and i64 %i.ah, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.014.i.i.prol = shl nuw i64 %.014.in16.i.i.ph, 32
  %i.ak = xor i64 %.017.i.i.ph, -1
  %i.al = add i64 %i.g, %i.ak                     ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.f, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = or disjoint i64 %.014.i.i.prol, %i.ao
  %i.aq = lshr i64 %i.ap, %i.s
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr [4 x i8], ptr %i.e, i64 %i.al
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !7
  %i.at = or disjoint i64 %.017.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.017.i.i.unr = phi i64 [ %.017.i.i.ph, %scalar.ph.preheader ], [ %i.at, %scalar.ph.prol ]
  %.014.in16.i.i.unr = phi i64 [ %.014.in16.i.i.ph, %scalar.ph.preheader ], [ %i.ao, %scalar.ph.prol ]
  %i.au = icmp eq i64 %i.aj, %3
  br i1 %i.au, label %bigdivrem_single1.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.017.i.i = phi i64 [ %i.bm, %scalar.ph ], [ %.017.i.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.014.in16.i.i = phi i64 [ %i.bh, %scalar.ph ], [ %.014.in16.i.i.unr, %scalar.ph.prol.loopexit ]
  %.014.i.i = shl nuw i64 %.014.in16.i.i, 32
  %i.av = xor i64 %.017.i.i, -1
  %i.aw = add i64 %i.g, %i.av                     ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.f, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = or disjoint i64 %.014.i.i, %i.az
  %i.bb = lshr i64 %i.ba, %i.s
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr [4 x i8], ptr %i.e, i64 %i.aw
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !7
  %.014.i.i.1 = shl nuw i64 %i.az, 32
  %reass.sub = sub i64 %i.g, %.017.i.i
  %i.be = add i64 %reass.sub, -2                  ; 2 uses
  %i.bf = getelementptr [4 x i8], ptr %i.f, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = or disjoint i64 %.014.i.i.1, %i.bh
  %i.bj = lshr i64 %i.bi, %i.s
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = getelementptr [4 x i8], ptr %i.e, i64 %i.be
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !7
  %i.bm = add nuw i64 %.017.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bm, %i.g
  br i1 %exitcond.not.i.i.1, label %bigdivrem_single1.exit, label %scalar.ph, !llvm.loop !422

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i64 %1, %3
  br i1 %.not.i, label %bigdivrem_single1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.bn = zext i32 %i.j to i64
  %i.bo = zext i32 %i.b to i64                    ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.030.i = phi i64 [ %i.bn, %.lr.ph.i ], [ %i.bz, %bb.g ]
  %.02629.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ca, %bb.g ] ; 2 uses
  %i.bp = shl nuw i64 %.030.i, 32
  %i.bq = xor i64 %.02629.i, -1
  %i.br = add i64 %i.g, %i.bq                     ; 2 uses
  %i.bs = getelementptr [4 x i8], ptr %i.f, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = zext i32 %i.bt to i64
  %i.bv = or disjoint i64 %i.bp, %i.bu            ; 2 uses
  %i.bw = udiv i64 %i.bv, %i.bo
  %i.bx = trunc i64 %i.bw to i32
  %i.by = getelementptr [4 x i8], ptr %i.e, i64 %i.br
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !7
  %i.bz = urem i64 %i.bv, %i.bo                   ; 2 uses
  %i.ca = add nuw i64 %.02629.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ca, %i.g
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !113

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %i.cb = trunc nuw i64 %i.bz to i32
  br label %bigdivrem_single1.exit

bigdivrem_single1.exit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.e, %bb.f, %._crit_edge.loopexit.i
  %.027.i = phi i32 [ %i.cb, %._crit_edge.loopexit.i ], [ %i.o, %bb.e ], [ %i.j, %bb.f ], [ %i.o, %middle.block ], [ %i.o, %scalar.ph ], [ %i.o, %scalar.ph.prol.loopexit ]
  store i32 %.027.i, ptr %i.f, align 4, !tbaa !7
  br label %.loopexit

bb.h:                                             ; preds = %bb.c
  %i.cc = getelementptr [4 x i8], ptr %2, i64 %.0
  %i.cd = sub i64 %3, %.0                         ; 2 uses
  store i64 %i.cd, ptr %4, align 8, !tbaa !423
  %i.ce = getelementptr [4 x i8], ptr %0, i64 %.0
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !425
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.cc, ptr %i.cg, align 8, !tbaa !426
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store volatile i64 0, ptr %i.ch, align 8, !tbaa !427
  %i.ci = sub i64 %1, %.0                         ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !428
  %i.ck = icmp ugt i64 %i.ci, 10000
  %i.cl = icmp ugt i64 %i.cd, 10000
  %or.cond = or i1 %i.ck, %i.cl
  br i1 %or.cond, label %.preheader, label %bb.i

.preheader:                                       ; preds = %bb.h, %.preheader
  store volatile i64 0, ptr %i.ch, align 8, !tbaa !427
  %i.cm = call ptr @rb_nogvl(ptr noundef nonnull @bigdivrem1, ptr noundef nonnull %4, ptr noundef nonnull @rb_big_stop, ptr noundef nonnull %4, i32 noundef 6) #23 ; 0 uses
  %i.cn = load volatile i64, ptr %i.ch, align 8, !tbaa !427
  %i.co = icmp eq i64 %i.cn, 20
  br i1 %i.co, label %.preheader, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.cp = call ptr @bigdivrem1(ptr noundef nonnull %4) ; 0 uses
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
  %.047.us = phi i64 [ %i.ar, %.loopexit.us ], [ %i.c, %bb.a ] ; 3 uses
end_hunk_23
begin_hunk_24_@bigsub:bb.a

.lr.ph.i.i.preheader:                             ; preds = %BIGNUM_DIGITS.exit29
  %xtraiter = and i64 %i.ah, 1
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.ah, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.06278.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bg, %.lr.ph.i.i ] ; 5 uses
  %.06377.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.bf, %.lr.ph.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.aj = getelementptr [4 x i8], ptr %.0.i23, i64 %.06278.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !7
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr [4 x i8], ptr %.0.i25, i64 %.06278.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = zext i32 %i.an to i64
  %i.ap = sub nsw i64 %i.al, %i.ao
  %i.aq = add nsw i64 %i.ap, %.06377.i.i          ; 2 uses
  %i.ar = trunc i64 %i.aq to i32
  %i.as = getelementptr [4 x i8], ptr %.0.i28, i64 %.06278.i.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !7
  %i.at = ashr i64 %i.aq, 32
  %i.au = or disjoint i64 %.06278.i.i, 1          ; 3 uses
  %i.av = getelementptr [4 x i8], ptr %.0.i23, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr [4 x i8], ptr %.0.i25, i64 %i.au
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = zext i32 %i.az to i64
  %i.bb = sub nsw i64 %i.ax, %i.ba
  %i.bc = add nsw i64 %i.bb, %i.at                ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr [4 x i8], ptr %.0.i28, i64 %i.au
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !7
  %i.bf = ashr i64 %i.bc, 32                      ; 3 uses
  %i.bg = add nuw i64 %.06278.i.i, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !48

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.06278.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bg, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.06377.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bf, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod105 = trunc i64 %i.ah to i1
  tail call void @llvm.assume(i1 %lcmp.mod105)
  %i.bh = getelementptr [4 x i8], ptr %.0.i23, i64 %.06278.i.i.epil.init
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr [4 x i8], ptr %.0.i25, i64 %.06278.i.i.epil.init
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !7
  %i.bm = zext i32 %i.bl to i64
  %i.bn = sub nsw i64 %i.bj, %i.bm
  %i.bo = add nsw i64 %i.bn, %.06377.i.i.epil.init ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = getelementptr [4 x i8], ptr %.0.i28, i64 %.06278.i.i.epil.init
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !7
  %i.br = ashr i64 %i.bo, 32
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.epil.preheader, %._crit_edge.i.i.loopexit.unr-lcssa, %BIGNUM_DIGITS.exit29
  %.063.lcssa.i.i = phi i64 [ 0, %BIGNUM_DIGITS.exit29 ], [ %i.bf, %._crit_edge.i.i.loopexit.unr-lcssa ], [ %i.br, %.lr.ph.i.i.epil.preheader ] ; 4 uses
  %.not.i.i = icmp ugt i64 %.0.i20, %.0.i
  br i1 %.not.i.i, label %.lr.ph87.i.i.preheader, label %.preheader72.i.i

.lr.ph87.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.bs = sub i64 %.0.i20, %i.ah
  %xtraiter106 = and i64 %i.bs, 3                 ; 2 uses
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  br i1 %lcmp.mod107.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol

.lr.ph87.i.i.prol:                                ; preds = %.lr.ph87.i.i.preheader, %.lr.ph87.i.i.prol
  %.286.i.i.prol = phi i64 [ %i.ca, %.lr.ph87.i.i.prol ], [ %i.ah, %.lr.ph87.i.i.preheader ] ; 3 uses
  %.26585.i.i.prol = phi i64 [ %i.bz, %.lr.ph87.i.i.prol ], [ %.063.lcssa.i.i, %.lr.ph87.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph87.i.i.prol ], [ 0, %.lr.ph87.i.i.preheader ]
  %i.bt = getelementptr [4 x i8], ptr %.0.i25, i64 %.286.i.i.prol
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %i.bv = zext i32 %i.bu to i64
  %i.bw = sub nsw i64 %.26585.i.i.prol, %i.bv     ; 2 uses
  %i.bx = trunc i64 %i.bw to i32
  %i.by = getelementptr [4 x i8], ptr %.0.i28, i64 %.286.i.i.prol
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !7
  %i.bz = ashr i64 %i.bw, 32                      ; 3 uses
  %i.ca = add nuw i64 %.286.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter106
  br i1 %prol.iter.cmp.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol, !llvm.loop !440

.lr.ph87.i.i.prol.loopexit:                       ; preds = %.lr.ph87.i.i.prol, %.lr.ph87.i.i.preheader
  %.lcssa99.unr = phi i64 [ poison, %.lr.ph87.i.i.preheader ], [ %i.bz, %.lr.ph87.i.i.prol ]
  %.286.i.i.unr = phi i64 [ %i.ah, %.lr.ph87.i.i.preheader ], [ %i.ca, %.lr.ph87.i.i.prol ]
  %.26585.i.i.unr = phi i64 [ %.063.lcssa.i.i, %.lr.ph87.i.i.preheader ], [ %i.bz, %.lr.ph87.i.i.prol ]
  %i.cb = sub i64 %i.ah, %.0.i20
  %i.cc = icmp ugt i64 %i.cb, -4
  br i1 %i.cc, label %.loopexit71.i.i, label %.lr.ph87.i.i

.preheader72.i.i:                                 ; preds = %._crit_edge.i.i
  %i.cd = icmp ult i64 %.0.i20, %.0.i
  br i1 %i.cd, label %.lr.ph82.i.i, label %.loopexit71.i.i

.lr.ph82.i.i:                                     ; preds = %.preheader72.i.i, %bb.l
  %.181.i.i = phi i64 [ %i.cm, %bb.l ], [ %i.ah, %.preheader72.i.i ] ; 4 uses
  %.16480.i.i = phi i64 [ %i.cl, %bb.l ], [ %.063.lcssa.i.i, %.preheader72.i.i ]
  %i.ce = icmp eq i64 %.16480.i.i, 0
  br i1 %i.ce, label %.loopexit74.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph82.i.i
  %i.cf = getelementptr [4 x i8], ptr %.0.i23, i64 %.181.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nsw i64 %i.ch, -1                   ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = getelementptr [4 x i8], ptr %.0.i28, i64 %.181.i.i
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !7
  %i.cl = ashr i64 %i.ci, 32                      ; 2 uses
  %i.cm = add i64 %.181.i.i, 1                    ; 2 uses
  %exitcond107.not.i.i = icmp eq i64 %i.cm, %.0.i
  br i1 %exitcond107.not.i.i, label %.loopexit71.i.i, label %.lr.ph82.i.i, !llvm.loop !50

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i
  %.286.i.i = phi i64 [ %i.ds, %.lr.ph87.i.i ], [ %.286.i.i.unr, %.lr.ph87.i.i.prol.loopexit ] ; 6 uses
  %.26585.i.i = phi i64 [ %i.dr, %.lr.ph87.i.i ], [ %.26585.i.i.unr, %.lr.ph87.i.i.prol.loopexit ]
  %i.cn = getelementptr [4 x i8], ptr %.0.i25, i64 %.286.i.i
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !7
  %i.cp = zext i32 %i.co to i64
  %i.cq = sub nsw i64 %.26585.i.i, %i.cp          ; 2 uses
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = getelementptr [4 x i8], ptr %.0.i28, i64 %.286.i.i
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !7
  %i.ct = ashr i64 %i.cq, 32
  %i.cu = add nuw i64 %.286.i.i, 1                ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %.0.i25, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.cx = zext i32 %i.cw to i64
  %i.cy = sub nsw i64 %i.ct, %i.cx                ; 2 uses
  %i.cz = trunc i64 %i.cy to i32
  %i.da = getelementptr [4 x i8], ptr %.0.i28, i64 %i.cu
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !7
  %i.db = ashr i64 %i.cy, 32
  %i.dc = add nuw i64 %.286.i.i, 2                ; 2 uses
  %i.dd = getelementptr [4 x i8], ptr %.0.i25, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !7
  %i.df = zext i32 %i.de to i64
  %i.dg = sub nsw i64 %i.db, %i.df                ; 2 uses
  %i.dh = trunc i64 %i.dg to i32
  %i.di = getelementptr [4 x i8], ptr %.0.i28, i64 %i.dc
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !7
  %i.dj = ashr i64 %i.dg, 32
  %i.dk = add nuw i64 %.286.i.i, 3                ; 2 uses
  %i.dl = getelementptr [4 x i8], ptr %.0.i25, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !7
  %i.dn = zext i32 %i.dm to i64
  %i.do = sub nsw i64 %i.dj, %i.dn                ; 2 uses
  %i.dp = trunc i64 %i.do to i32
  %i.dq = getelementptr [4 x i8], ptr %.0.i28, i64 %i.dk
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !7
  %i.dr = ashr i64 %i.do, 32                      ; 2 uses
  %i.ds = add nuw i64 %.286.i.i, 4                ; 2 uses
  %exitcond108.not.i.i.3 = icmp eq i64 %i.ds, %.0.i20
  br i1 %exitcond108.not.i.i.3, label %.loopexit71.i.i, label %.lr.ph87.i.i, !llvm.loop !51

.loopexit71.i.i:                                  ; preds = %bb.l, %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i, %.preheader72.i.i
  %.366.i.i = phi i64 [ %.063.lcssa.i.i, %.preheader72.i.i ], [ %i.dr, %.lr.ph87.i.i ], [ %.lcssa99.unr, %.lr.ph87.i.i.prol.loopexit ], [ %i.cl, %bb.l ]
  %.3.i.i = phi i64 [ %i.ah, %.preheader72.i.i ], [ %.0.i20, %.lr.ph87.i.i.prol.loopexit ], [ %.0.i20, %.lr.ph87.i.i ], [ %.0.i, %bb.l ] ; 4 uses
  %i.dt = icmp eq i64 %.366.i.i, 0
  br i1 %i.dt, label %.loopexit74.i.i, label %.preheader68.i.i

.preheader68.i.i:                                 ; preds = %.loopexit71.i.i
  %i.du = icmp ult i64 %.3.i.i, %i.o
  br i1 %i.du, label %bary_sub.exit.thread57, label %bary_sub.exit

bary_sub.exit.thread57:                           ; preds = %.preheader68.i.i
  %i.dv = shl i64 %.3.i.i, 2
  %scevgep.i.i = getelementptr i8, ptr %.0.i28, i64 %i.dv
  %i.dw = sub nuw i64 %i.o, %.3.i.i
  %i.dx = shl i64 %i.dw, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 -1, i64 %i.dx, i1 false), !tbaa !7
  br label %.lr.ph.i.preheader

.loopexit74.i.i:                                  ; preds = %.lr.ph82.i.i, %.loopexit71.i.i
  %.5.i.i = phi i64 [ %.3.i.i, %.loopexit71.i.i ], [ %.181.i.i, %.lr.ph82.i.i ] ; 6 uses
  %i.dy = icmp eq ptr %.0.i23, %.0.i28
  %i.dz = icmp sge i64 %.0.i, %.0.i20
  %or.cond.i.i = and i1 %i.dz, %i.dy
  br i1 %or.cond.i.i, label %bary_sub.exit.thread, label %.preheader67.i.i

.preheader67.i.i:                                 ; preds = %.loopexit74.i.i
  %i.ea = icmp ult i64 %.5.i.i, %.0.i
  br i1 %i.ea, label %.lr.ph93.i.i.preheader, label %.preheader.i.i

.lr.ph93.i.i.preheader:                           ; preds = %.preheader67.i.i
  %i.eb = sub nuw i64 %.0.i, %.5.i.i              ; 3 uses
  %min.iters.check82 = icmp ult i64 %i.eb, 8
  %i.ec = sub i64 %.0.i2380, %.0.i2879
  %diff.check = icmp ugt i64 %i.ec, -32
  %or.cond = select i1 %min.iters.check82, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph93.i.i.preheader94, label %vector.ph83

vector.ph83:                                      ; preds = %.lr.ph93.i.i.preheader
  %n.vec85 = and i64 %i.eb, -8                    ; 3 uses
  %i.ed = add i64 %.5.i.i, %n.vec85
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph83
  %index87 = phi i64 [ 0, %vector.ph83 ], [ %index.next90, %vector.body86 ] ; 2 uses
  %i.ee = add i64 %.5.i.i, %index87               ; 2 uses
  %i.ef = getelementptr [4 x i8], ptr %.0.i23, i64 %i.ee ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 16
  %wide.load88 = load <4 x i32>, ptr %i.ef, align 4, !tbaa !7
  %wide.load89 = load <4 x i32>, ptr %i.eg, align 4, !tbaa !7
  %i.eh = getelementptr [4 x i8], ptr %.0.i28, i64 %i.ee ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  store <4 x i32> %wide.load88, ptr %i.eh, align 4, !tbaa !7
  store <4 x i32> %wide.load89, ptr %i.ei, align 4, !tbaa !7
  %index.next90 = add nuw i64 %index87, 8         ; 2 uses
  %i.ej = icmp eq i64 %index.next90, %n.vec85
  br i1 %i.ej, label %middle.block91, label %vector.body86, !llvm.loop !441

middle.block91:                                   ; preds = %vector.body86
  %cmp.n92 = icmp eq i64 %i.eb, %n.vec85
  br i1 %cmp.n92, label %.preheader.i.i, label %.lr.ph93.i.i.preheader94

.lr.ph93.i.i.preheader94:                         ; preds = %.lr.ph93.i.i.preheader, %middle.block91
  %.692.i.i.ph = phi i64 [ %.5.i.i, %.lr.ph93.i.i.preheader ], [ %i.ed, %middle.block91 ] ; 4 uses
  %i.ek = sub i64 %.0.i, %.692.i.i.ph
  %xtraiter108 = and i64 %i.ek, 3                 ; 2 uses
  %lcmp.mod109.not = icmp eq i64 %xtraiter108, 0
  br i1 %lcmp.mod109.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol

.lr.ph93.i.i.prol:                                ; preds = %.lr.ph93.i.i.preheader94, %.lr.ph93.i.i.prol
  %.692.i.i.prol = phi i64 [ %i.eo, %.lr.ph93.i.i.prol ], [ %.692.i.i.ph, %.lr.ph93.i.i.preheader94 ] ; 3 uses
  %prol.iter110 = phi i64 [ %prol.iter110.next, %.lr.ph93.i.i.prol ], [ 0, %.lr.ph93.i.i.preheader94 ]
  %i.el = getelementptr [4 x i8], ptr %.0.i23, i64 %.692.i.i.prol
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = getelementptr [4 x i8], ptr %.0.i28, i64 %.692.i.i.prol
  store i32 %i.em, ptr %i.en, align 4, !tbaa !7
  %i.eo = add nuw i64 %.692.i.i.prol, 1           ; 2 uses
  %prol.iter110.next = add i64 %prol.iter110, 1   ; 2 uses
  %prol.iter110.cmp.not = icmp eq i64 %prol.iter110.next, %xtraiter108
  br i1 %prol.iter110.cmp.not, label %.lr.ph93.i.i.prol.loopexit, label %.lr.ph93.i.i.prol, !llvm.loop !442

.lr.ph93.i.i.prol.loopexit:                       ; preds = %.lr.ph93.i.i.prol, %.lr.ph93.i.i.preheader94
  %.692.i.i.unr = phi i64 [ %.692.i.i.ph, %.lr.ph93.i.i.preheader94 ], [ %i.eo, %.lr.ph93.i.i.prol ]
  %i.ep = sub i64 %.692.i.i.ph, %.0.i
  %i.eq = icmp ugt i64 %i.ep, -4
  br i1 %i.eq, label %.preheader.i.i, label %.lr.ph93.i.i

.preheader.i.i:                                   ; preds = %.lr.ph93.i.i.prol.loopexit, %.lr.ph93.i.i, %middle.block91, %.preheader67.i.i
  %.6.lcssa.i.i = phi i64 [ %.5.i.i, %.preheader67.i.i ], [ %.0.i, %middle.block91 ], [ %.0.i, %.lr.ph93.i.i ], [ %.0.i, %.lr.ph93.i.i.prol.loopexit ] ; 3 uses
  %i.er = icmp ult i64 %.6.lcssa.i.i, %i.o
  br i1 %i.er, label %.lr.ph96.preheader.i.i, label %bary_sub.exit.thread

.lr.ph96.preheader.i.i:                           ; preds = %.preheader.i.i
  %i.es = shl i64 %.6.lcssa.i.i, 2
  %scevgep112.i.i = getelementptr i8, ptr %.0.i28, i64 %i.es
  %i.et = sub nuw i64 %i.o, %.6.lcssa.i.i
  %i.eu = shl i64 %i.et, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep112.i.i, i8 0, i64 %i.eu, i1 false), !tbaa !7
  br label %bary_sub.exit.thread

.lr.ph93.i.i:                                     ; preds = %.lr.ph93.i.i.prol.loopexit, %.lr.ph93.i.i
  %.692.i.i = phi i64 [ %i.fk, %.lr.ph93.i.i ], [ %.692.i.i.unr, %.lr.ph93.i.i.prol.loopexit ] ; 6 uses
  %i.ev = getelementptr [4 x i8], ptr %.0.i23, i64 %.692.i.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !7
  %i.ex = getelementptr [4 x i8], ptr %.0.i28, i64 %.692.i.i
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !7
  %i.ey = add nuw i64 %.692.i.i, 1                ; 2 uses
  %i.ez = getelementptr [4 x i8], ptr %.0.i23, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !7
  %i.fb = getelementptr [4 x i8], ptr %.0.i28, i64 %i.ey
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !7
  %i.fc = add nuw i64 %.692.i.i, 2                ; 2 uses
  %i.fd = getelementptr [4 x i8], ptr %.0.i23, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !7
  %i.ff = getelementptr [4 x i8], ptr %.0.i28, i64 %i.fc
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !7
  %i.fg = add nuw i64 %.692.i.i, 3                ; 2 uses
  %i.fh = getelementptr [4 x i8], ptr %.0.i23, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !7
  %i.fj = getelementptr [4 x i8], ptr %.0.i28, i64 %i.fg
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !7
  %i.fk = add nuw i64 %.692.i.i, 4                ; 2 uses
  %exitcond111.not.i.i.3 = icmp eq i64 %i.fk, %.0.i
  br i1 %exitcond111.not.i.i.3, label %.preheader.i.i, label %.lr.ph93.i.i, !llvm.loop !443

bary_sub.exit:                                    ; preds = %.preheader68.i.i
  %.not27.i = icmp eq i64 %i.o, 0
  br i1 %.not27.i, label %bary_2comp.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bary_sub.exit.thread57, %bary_sub.exit
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.m
  %.023.i = phi i64 [ %i.fn, %bb.m ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.fl = getelementptr [4 x i8], ptr %.0.i28, i64 %.023.i
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !7  ; 2 uses
  %.not.i30 = icmp eq i32 %i.fm, 0
  br i1 %.not.i30, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i
  %i.fn = add nuw i64 %.023.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fn, %i.o
  br i1 %exitcond.not.i, label %bary_2comp.exit, label %.lr.ph.i, !llvm.loop !55

bb.n:                                             ; preds = %.lr.ph.i
  %i.fo = getelementptr [4 x i8], ptr %.0.i28, i64 %.023.i
  %i.fp = sub i32 0, %i.fm
  store i32 %i.fp, ptr %i.fo, align 4, !tbaa !7
  %.124.i = add i64 %.023.i, 1                    ; 4 uses
  %i.fq = icmp ult i64 %.124.i, %i.o
  br i1 %i.fq, label %.lr.ph26.i.preheader, label %bary_2comp.exit

.lr.ph26.i.preheader:                             ; preds = %bb.n
  %i.fr = xor i64 %.023.i, -1
  %i.fs = add i64 %i.o, %i.fr                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.fs, 8
  br i1 %min.iters.check, label %.lr.ph26.i.preheader95, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.i.preheader
  %n.vec = and i64 %i.fs, -8                      ; 3 uses
  %i.ft = add i64 %.124.i, %n.vec
  %i.fu = getelementptr [4 x i8], ptr %.0.i28, i64 %.124.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fv = getelementptr [4 x i8], ptr %i.fu, i64 %index ; 3 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 16     ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.fv, align 4, !tbaa !7
  %wide.load78 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !7
  %i.fx = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.fy = xor <4 x i32> %wide.load78, splat (i32 -1)
  store <4 x i32> %i.fx, ptr %i.fv, align 4, !tbaa !7
  store <4 x i32> %i.fy, ptr %i.fw, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fz = icmp eq i64 %index.next, %n.vec
  br i1 %i.fz, label %middle.block, label %vector.body, !llvm.loop !444

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fs, %n.vec
  br i1 %cmp.n, label %bary_2comp.exit, label %.lr.ph26.i.preheader95

.lr.ph26.i.preheader95:                           ; preds = %.lr.ph26.i.preheader, %middle.block
  %.125.i.ph = phi i64 [ %.124.i, %.lr.ph26.i.preheader ], [ %i.ft, %middle.block ]
  br label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %.lr.ph26.i.preheader95, %.lr.ph26.i
  %.125.i = phi i64 [ %.1.i, %.lr.ph26.i ], [ %.125.i.ph, %.lr.ph26.i.preheader95 ] ; 2 uses
  %i.ga = getelementptr [4 x i8], ptr %.0.i28, i64 %.125.i ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !7
  %i.gc = xor i32 %i.gb, -1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !7
  %.1.i = add nuw i64 %.125.i, 1                  ; 2 uses
  %exitcond31.not.i = icmp eq i64 %.1.i, %i.o
  br i1 %exitcond31.not.i, label %bary_2comp.exit, label %.lr.ph26.i, !llvm.loop !445

bary_2comp.exit:                                  ; preds = %bb.m, %.lr.ph26.i, %middle.block, %bary_sub.exit, %bb.n
  %i.gd = and i64 %i.ac, -8193
  store i64 %i.gd, ptr %i.ab, align 8, !tbaa !13
  br label %bary_sub.exit.thread

bary_sub.exit.thread:                             ; preds = %.lr.ph96.preheader.i.i, %.loopexit74.i.i, %.preheader.i.i, %bary_2comp.exit
  ret i64 %i.q
}

declare i64 @rb_float_new_in_heap(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #9

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc double @big_fdiv(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = inttoptr i64 %0 to ptr                   ; 9 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 5 uses
  %i.d = and i64 %i.c, 16384
  %.not.i.i = icmp eq i64 %i.d, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 15
  %i.f = and i64 %i.e, 511
  %i.g = getelementptr i8, ptr %i.b, i64 16
  br label %BIGNUM_DIGITS.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
end_hunk_24
