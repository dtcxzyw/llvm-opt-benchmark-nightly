inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 183
begin_hunk_0_@bary_mul_balance_with_mulfunc:bb.a
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
  store i64 %1, ptr %i.b, align 8, !tbaa !11
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %i.g = and i64 %i.f, 16384
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !15
end_hunk_0
begin_hunk_1_@bary_mul_karatsuba:bb.a
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
  %unroll_iter822 = and i64 %i.aj, 9223372036854775806
  br label %.lr.ph.i.i221

.lr.ph.i.i221:                                    ; preds = %.lr.ph.i.i221, %.lr.ph.i.i221.preheader.new
  %.06278.i.i222 = phi i64 [ 0, %.lr.ph.i.i221.preheader.new ], [ %i.hw, %.lr.ph.i.i221 ] ; 5 uses
  %.06377.i.i223 = phi i64 [ 0, %.lr.ph.i.i221.preheader.new ], [ %i.hv, %.lr.ph.i.i221 ]
  %niter823 = phi i64 [ 0, %.lr.ph.i.i221.preheader.new ], [ %niter823.next.1, %.lr.ph.i.i221 ]
  %i.gz = getelementptr [4 x i8], ptr %4, i64 %.06278.i.i222
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !7
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr [4 x i8], ptr %i.at, i64 %.06278.i.i222
end_hunk_1
begin_hunk_2_@bary_mul_karatsuba:bb.a
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
  %niter874.next.1 = add nuw i64 %niter874, 2     ; 2 uses
  %niter874.ncmp.1 = icmp eq i64 %niter874.next.1, %unroll_iter873
  br i1 %niter874.ncmp.1, label %.preheader.i403.unr-lcssa, label %.lr.ph.i400, !llvm.loop !16

.lr.ph41.i:                                       ; preds = %.preheader.i403, %.lr.ph41.i
  %.140.i = phi i64 [ %i.acm, %.lr.ph41.i ], [ %.0, %.preheader.i403 ] ; 2 uses
  %.239.i = phi i64 [ %i.acl, %.lr.ph41.i ], [ %.132.i.lcssa, %.preheader.i403 ]
  %i.acg = getelementptr [4 x i8], ptr %i.aao, i64 %.140.i ; 2 uses
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !7
  %i.aci = zext i32 %i.ach to i64
  %i.acj = add nuw nsw i64 %.239.i, %i.aci        ; 2 uses
  %i.ack = trunc i64 %i.acj to i32
end_hunk_2
begin_hunk_3_@bary_mul_toom3:bb.a
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
  %lcmp.mod3364 = trunc i64 %.064.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod3364)
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
  br i1 %or.cond3219, label %.lr.ph91.i.i.preheader3359, label %vector.ph

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
  br i1 %cmp.n, label %.preheader.i.i, label %.lr.ph91.i.i.preheader3359

.lr.ph91.i.i.preheader3359:                       ; preds = %.lr.ph91.i.i.preheader, %middle.block
  %.490.i.i.ph = phi i64 [ %.3.i.i, %.lr.ph91.i.i.preheader ], [ %i.da, %middle.block ] ; 4 uses
  %i.dh = sub i64 %.062.i.i, %.490.i.i.ph
  %xtraiter3365 = and i64 %i.dh, 3                ; 2 uses
  %lcmp.mod3366.not = icmp eq i64 %xtraiter3365, 0
  br i1 %lcmp.mod3366.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol

.lr.ph91.i.i.prol:                                ; preds = %.lr.ph91.i.i.preheader3359, %.lr.ph91.i.i.prol
  %.490.i.i.prol = phi i64 [ %i.dl, %.lr.ph91.i.i.prol ], [ %.490.i.i.ph, %.lr.ph91.i.i.preheader3359 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph91.i.i.prol ], [ 0, %.lr.ph91.i.i.preheader3359 ]
  %i.di = getelementptr [4 x i8], ptr %.063.i.i, i64 %.490.i.i.prol
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !7
  %i.dk = getelementptr [4 x i8], ptr %.0532, i64 %.490.i.i.prol
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !7
  %i.dl = add nuw i64 %.490.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter3365
  br i1 %prol.iter.cmp.not, label %.lr.ph91.i.i.prol.loopexit, label %.lr.ph91.i.i.prol, !llvm.loop !76

.lr.ph91.i.i.prol.loopexit:                       ; preds = %.lr.ph91.i.i.prol, %.lr.ph91.i.i.preheader3359
  %.490.i.i.unr = phi i64 [ %.490.i.i.ph, %.lr.ph91.i.i.preheader3359 ], [ %i.dl, %.lr.ph91.i.i.prol ]
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
  %xtraiter3367 = and i64 %i.g, 1
  %.off = add i64 %5, -1
  %i.eh = icmp ult i64 %.off, 3
  br i1 %i.eh, label %.lr.ph.i.i600.epil.preheader, label %.lr.ph.i.i600.preheader.new

.lr.ph.i.i600.preheader.new:                      ; preds = %.lr.ph.i.i600.preheader
  %unroll_iter3371 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i600

.lr.ph.i.i600:                                    ; preds = %.lr.ph.i.i600, %.lr.ph.i.i600.preheader.new
  %.06278.i.i = phi i64 [ 0, %.lr.ph.i.i600.preheader.new ], [ %i.ff, %.lr.ph.i.i600 ] ; 5 uses
  %.06377.i.i = phi i64 [ 0, %.lr.ph.i.i600.preheader.new ], [ %i.fe, %.lr.ph.i.i600 ]
  %niter3372 = phi i64 [ 0, %.lr.ph.i.i600.preheader.new ], [ %niter3372.next.1, %.lr.ph.i.i600 ]
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
  %niter3372.next.1 = add i64 %niter3372, 2       ; 2 uses
  %niter3372.ncmp.1 = icmp eq i64 %niter3372.next.1, %unroll_iter3371
  br i1 %niter3372.ncmp.1, label %._crit_edge.i.i602.unr-lcssa, label %.lr.ph.i.i600, !llvm.loop !48

._crit_edge.i.i602.unr-lcssa:                     ; preds = %.lr.ph.i.i600
  %lcmp.mod3368.not = icmp eq i64 %xtraiter3367, 0
  br i1 %lcmp.mod3368.not, label %._crit_edge.i.i602, label %.lr.ph.i.i600.epil.preheader

.lr.ph.i.i600.epil.preheader:                     ; preds = %._crit_edge.i.i602.unr-lcssa, %.lr.ph.i.i600.preheader
  %.06278.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i600.preheader ], [ %i.ff, %._crit_edge.i.i602.unr-lcssa ] ; 3 uses
  %.06377.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i600.preheader ], [ %i.fe, %._crit_edge.i.i602.unr-lcssa ]
  %lcmp.mod3370 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3370)
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
  %.lcssa3358 = phi i64 [ %i.fe, %._crit_edge.i.i602.unr-lcssa ], [ %i.fq, %.lr.ph.i.i600.epil.preheader ]
  %i.fr = icmp eq i64 %.lcssa3358, 0
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

bb.n:                                             ; preds = %.lr.ph.i
  %i.gf = getelementptr [4 x i8], ptr %i.aa, i64 %.023.i
  %i.gg = sub i32 0, %i.gd
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !7
  %.not1992.not = icmp samesign ult i64 %.023.i, %i.g
  br i1 %.not1992.not, label %.lr.ph26.i.preheader, label %bary_2comp.exit

.lr.ph26.i.preheader:                             ; preds = %bb.n
  %i.gh = sub nuw nsw i64 %i.g, %.023.i           ; 3 uses
  %min.iters.check2860 = icmp samesign ult i64 %i.gh, 8
  br i1 %min.iters.check2860, label %.lr.ph26.i.preheader3353, label %vector.ph2861
end_hunk_3
begin_hunk_4_@bary_mul_toom3:bb.a
.preheader72.i.i620:                              ; preds = %.preheader72.i.i620.unr-lcssa, %.lr.ph.i.i616.epil.preheader
  %.lcssa3352 = phi i64 [ %i.hz, %.preheader72.i.i620.unr-lcssa ], [ %i.hd, %.lr.ph.i.i616.epil.preheader ]
  %i.he = icmp eq i64 %.lcssa3352, 0
  br i1 %i.he, label %bary_add.exit645, label %bb.o

.lr.ph.i.i616:                                    ; preds = %.lr.ph.i.i616, %.lr.ph.i.i616.preheader.new
  %.05779.i.i617 = phi i64 [ 0, %.lr.ph.i.i616.preheader.new ], [ %i.ia, %.lr.ph.i.i616 ] ; 4 uses
  %.05878.i.i618 = phi i64 [ 0, %.lr.ph.i.i616.preheader.new ], [ %i.hz, %.lr.ph.i.i616 ]
  %niter3378 = phi i64 [ 0, %.lr.ph.i.i616.preheader.new ], [ %niter3378.next.1, %.lr.ph.i.i616 ]
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
  %niter3378.next.1 = add i64 %niter3378, 2       ; 2 uses
  %niter3378.ncmp.1 = icmp eq i64 %niter3378.next.1, %unroll_iter3377
  br i1 %niter3378.ncmp.1, label %.preheader72.i.i620.unr-lcssa, label %.lr.ph.i.i616, !llvm.loop !34

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
  %xtraiter3400 = and i64 %.064.i.i6462469, 1
  %i.ie = icmp eq i64 %.064.i.i6462469, 1
  br i1 %i.ie, label %.lr.ph.i.i651.epil.preheader, label %.lr.ph.i.i651.preheader.new

.lr.ph.i.i651.preheader.new:                      ; preds = %.lr.ph.i.i651.preheader
  %unroll_iter3405 = and i64 %.064.i.i6462469, -2
  br label %.lr.ph.i.i651

.preheader72.i.i655.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i651
  %lcmp.mod3402.not = icmp eq i64 %xtraiter3400, 0
  br i1 %lcmp.mod3402.not, label %.preheader72.i.i655, label %.lr.ph.i.i651.epil.preheader

.lr.ph.i.i651.epil.preheader:                     ; preds = %.preheader72.i.i655.loopexit.unr-lcssa, %.lr.ph.i.i651.preheader
  %.05779.i.i652.epil.init = phi i64 [ 0, %.lr.ph.i.i651.preheader ], [ %i.jo, %.preheader72.i.i655.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i653.epil.init = phi i64 [ 0, %.lr.ph.i.i651.preheader ], [ %i.jn, %.preheader72.i.i655.loopexit.unr-lcssa ]
  %lcmp.mod3404 = trunc i64 %.064.i.i6462469 to i1
  call void @llvm.assume(i1 %lcmp.mod3404)
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
  %niter3406 = phi i64 [ 0, %.lr.ph.i.i651.preheader.new ], [ %niter3406.next.1, %.lr.ph.i.i651 ]
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
  %niter3406.next.1 = add i64 %niter3406, 2       ; 2 uses
  %niter3406.ncmp.1 = icmp eq i64 %niter3406.next.1, %unroll_iter3405
  br i1 %niter3406.ncmp.1, label %.preheader72.i.i655.loopexit.unr-lcssa, label %.lr.ph.i.i651, !llvm.loop !34

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
  br i1 %min.iters.check2904, label %.lr.ph91.i.i673.preheader3336, label %vector.memcheck2900

vector.memcheck2900:                              ; preds = %.lr.ph91.i.i673.preheader
  %i.kf = shl i64 %i.g, 3
  %i.kg = add i64 %i.kf, %.05322856
  %i.kh = sub i64 %i.kg, %.063.i.i64724722901
  %i.ki = add i64 %i.kh, 7
  %diff.check2902 = icmp ult i64 %i.ki, 31
  br i1 %diff.check2902, label %.lr.ph91.i.i673.preheader3336, label %vector.ph2905

vector.ph2905:                                    ; preds = %vector.memcheck2900
  %n.vec2907 = and i64 %i.ke, -8                  ; 3 uses
  %i.kj = add i64 %.3.i.i666, %n.vec2907
  br label %vector.body2908

vector.body2908:                                  ; preds = %vector.body2908, %vector.ph2905
  %index2909 = phi i64 [ 0, %vector.ph2905 ], [ %index.next2912, %vector.body2908 ] ; 2 uses
  %i.kk = add i64 %.3.i.i666, %index2909          ; 2 uses
  %i.kl = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %i.kk ; 2 uses
  %i.km = getelementptr i8, ptr %i.kl, i64 16
  %wide.load2910 = load <4 x i32>, ptr %i.kl, align 4, !tbaa !7
  %wide.load2911 = load <4 x i32>, ptr %i.km, align 4, !tbaa !7
  %i.kn = getelementptr [4 x i8], ptr %i.ab, i64 %i.kk ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 16
  store <4 x i32> %wide.load2910, ptr %i.kn, align 4, !tbaa !7
  store <4 x i32> %wide.load2911, ptr %i.ko, align 4, !tbaa !7
  %index.next2912 = add nuw i64 %index2909, 8     ; 2 uses
  %i.kp = icmp eq i64 %index.next2912, %n.vec2907
  br i1 %i.kp, label %middle.block2913, label %vector.body2908, !llvm.loop !80

middle.block2913:                                 ; preds = %vector.body2908
  %cmp.n2914 = icmp eq i64 %i.ke, %n.vec2907
  br i1 %cmp.n2914, label %.critedge597, label %.lr.ph91.i.i673.preheader3336

.lr.ph91.i.i673.preheader3336:                    ; preds = %vector.memcheck2900, %.lr.ph91.i.i673.preheader, %middle.block2913
  %.490.i.i674.ph = phi i64 [ %.3.i.i666, %vector.memcheck2900 ], [ %.3.i.i666, %.lr.ph91.i.i673.preheader ], [ %i.kj, %middle.block2913 ] ; 4 uses
  %i.kq = sub i64 %.062.i.i6482474, %.490.i.i674.ph
  %xtraiter3407 = and i64 %i.kq, 3                ; 2 uses
  %lcmp.mod3408.not = icmp eq i64 %xtraiter3407, 0
  br i1 %lcmp.mod3408.not, label %.lr.ph91.i.i673.prol.loopexit, label %.lr.ph91.i.i673.prol

.lr.ph91.i.i673.prol:                             ; preds = %.lr.ph91.i.i673.preheader3336, %.lr.ph91.i.i673.prol
  %.490.i.i674.prol = phi i64 [ %i.ku, %.lr.ph91.i.i673.prol ], [ %.490.i.i674.ph, %.lr.ph91.i.i673.preheader3336 ] ; 3 uses
  %prol.iter3409 = phi i64 [ %prol.iter3409.next, %.lr.ph91.i.i673.prol ], [ 0, %.lr.ph91.i.i673.preheader3336 ]
  %i.kr = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %.490.i.i674.prol
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !7
  %i.kt = getelementptr [4 x i8], ptr %i.ab, i64 %.490.i.i674.prol
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !7
  %i.ku = add nuw i64 %.490.i.i674.prol, 1        ; 2 uses
  %prol.iter3409.next = add i64 %prol.iter3409, 1 ; 2 uses
  %prol.iter3409.cmp.not = icmp eq i64 %prol.iter3409.next, %xtraiter3407
  br i1 %prol.iter3409.cmp.not, label %.lr.ph91.i.i673.prol.loopexit, label %.lr.ph91.i.i673.prol, !llvm.loop !81

.lr.ph91.i.i673.prol.loopexit:                    ; preds = %.lr.ph91.i.i673.prol, %.lr.ph91.i.i673.preheader3336
  %.490.i.i674.unr = phi i64 [ %.490.i.i674.ph, %.lr.ph91.i.i673.preheader3336 ], [ %i.ku, %.lr.ph91.i.i673.prol ]
  %i.kv = sub i64 %.490.i.i674.ph, %.062.i.i6482474
  %i.kw = icmp ugt i64 %i.kv, -4
  br i1 %i.kw, label %.critedge597, label %.lr.ph91.i.i673

.preheader.i.i669:                                ; preds = %.preheader69.i.i668
  %.not1999 = icmp ugt i64 %.3.i.i666, %i.g
  br i1 %.not1999, label %.critedge597, label %.critedge597.sink.split

.lr.ph91.i.i673:                                  ; preds = %.lr.ph91.i.i673.prol.loopexit, %.lr.ph91.i.i673
  %.490.i.i674 = phi i64 [ %i.lm, %.lr.ph91.i.i673 ], [ %.490.i.i674.unr, %.lr.ph91.i.i673.prol.loopexit ] ; 6 uses
  %i.kx = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %.490.i.i674
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !7
  %i.kz = getelementptr [4 x i8], ptr %i.ab, i64 %.490.i.i674
  store i32 %i.ky, ptr %i.kz, align 4, !tbaa !7
  %i.la = add nuw i64 %.490.i.i674, 1             ; 2 uses
  %i.lb = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !7
  %i.ld = getelementptr [4 x i8], ptr %i.ab, i64 %i.la
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !7
  %i.le = add nuw i64 %.490.i.i674, 2             ; 2 uses
  %i.lf = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %i.le
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !7
  %i.lh = getelementptr [4 x i8], ptr %i.ab, i64 %i.le
  store i32 %i.lg, ptr %i.lh, align 4, !tbaa !7
  %i.li = add nuw i64 %.490.i.i674, 3             ; 2 uses
  %i.lj = getelementptr [4 x i8], ptr %.063.i.i6472472, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !7
  %i.ll = getelementptr [4 x i8], ptr %i.ab, i64 %i.li
  store i32 %i.lk, ptr %i.ll, align 4, !tbaa !7
  %i.lm = add nuw i64 %.490.i.i674, 4             ; 2 uses
  %exitcond106.not.i.i675.3 = icmp eq i64 %i.lm, %.062.i.i6482474
  br i1 %exitcond106.not.i.i675.3, label %.critedge597, label %.lr.ph91.i.i673, !llvm.loop !82

bb.t:                                             ; preds = %bb.o, %.preheader72.i.i620.thread, %bary_add.exit645
  %.0547245424582462 = phi i32 [ %.0547, %.preheader72.i.i620.thread ], [ %.05472453, %bary_add.exit645 ], [ %.05472453, %bb.o ] ; 6 uses
  %i.ln = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.h) ; 10 uses
  %.not97.i.i681 = icmp eq i64 %i.ar, 0
  br i1 %.not97.i.i681, label %._crit_edge.i.i686, label %.lr.ph.i.i682.preheader

.lr.ph.i.i682.preheader:                          ; preds = %bb.t
  %xtraiter3379 = and i64 %i.ln, 1
  %i.lo = icmp eq i64 %i.ln, 1
  br i1 %i.lo, label %.lr.ph.i.i682.epil.preheader, label %.lr.ph.i.i682.preheader.new

.lr.ph.i.i682.preheader.new:                      ; preds = %.lr.ph.i.i682.preheader
  %unroll_iter3383 = and i64 %i.ln, 9223372036854775806
  br label %.lr.ph.i.i682

.lr.ph.i.i682:                                    ; preds = %.lr.ph.i.i682, %.lr.ph.i.i682.preheader.new
  %.06278.i.i683 = phi i64 [ 0, %.lr.ph.i.i682.preheader.new ], [ %i.mm, %.lr.ph.i.i682 ] ; 5 uses
  %.06377.i.i684 = phi i64 [ 0, %.lr.ph.i.i682.preheader.new ], [ %i.ml, %.lr.ph.i.i682 ]
  %niter3384 = phi i64 [ 0, %.lr.ph.i.i682.preheader.new ], [ %niter3384.next.1, %.lr.ph.i.i682 ]
  %i.lp = getelementptr [4 x i8], ptr %i.at, i64 %.06278.i.i683
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !7
  %i.lr = zext i32 %i.lq to i64
  %i.ls = getelementptr [4 x i8], ptr %i.aa, i64 %.06278.i.i683
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !7
  %i.lu = zext i32 %i.lt to i64
  %i.lv = sub nsw i64 %i.lr, %i.lu
  %i.lw = add nsw i64 %i.lv, %.06377.i.i684       ; 2 uses
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = getelementptr [4 x i8], ptr %i.ab, i64 %.06278.i.i683
  store i32 %i.lx, ptr %i.ly, align 4, !tbaa !7
  %i.lz = ashr i64 %i.lw, 32
  %i.ma = or disjoint i64 %.06278.i.i683, 1       ; 3 uses
  %i.mb = getelementptr [4 x i8], ptr %i.at, i64 %i.ma
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !7
  %i.md = zext i32 %i.mc to i64
  %i.me = getelementptr [4 x i8], ptr %i.aa, i64 %i.ma
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !7
  %i.mg = zext i32 %i.mf to i64
  %i.mh = sub nsw i64 %i.md, %i.mg
  %i.mi = add nsw i64 %i.mh, %i.lz                ; 2 uses
  %i.mj = trunc i64 %i.mi to i32
  %i.mk = getelementptr [4 x i8], ptr %i.ab, i64 %i.ma
  store i32 %i.mj, ptr %i.mk, align 4, !tbaa !7
  %i.ml = ashr i64 %i.mi, 32                      ; 3 uses
  %i.mm = add nuw i64 %.06278.i.i683, 2           ; 2 uses
  %niter3384.next.1 = add i64 %niter3384, 2       ; 2 uses
  %niter3384.ncmp.1 = icmp eq i64 %niter3384.next.1, %unroll_iter3383
  br i1 %niter3384.ncmp.1, label %._crit_edge.i.i686.loopexit.unr-lcssa, label %.lr.ph.i.i682, !llvm.loop !48

._crit_edge.i.i686.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i682
  %lcmp.mod3380.not = icmp eq i64 %xtraiter3379, 0
  br i1 %lcmp.mod3380.not, label %._crit_edge.i.i686, label %.lr.ph.i.i682.epil.preheader

.lr.ph.i.i682.epil.preheader:                     ; preds = %._crit_edge.i.i686.loopexit.unr-lcssa, %.lr.ph.i.i682.preheader
  %.06278.i.i683.epil.init = phi i64 [ 0, %.lr.ph.i.i682.preheader ], [ %i.mm, %._crit_edge.i.i686.loopexit.unr-lcssa ] ; 3 uses
  %.06377.i.i684.epil.init = phi i64 [ 0, %.lr.ph.i.i682.preheader ], [ %i.ml, %._crit_edge.i.i686.loopexit.unr-lcssa ]
  %lcmp.mod3382 = trunc i64 %i.ln to i1
  call void @llvm.assume(i1 %lcmp.mod3382)
  %i.mn = getelementptr [4 x i8], ptr %i.at, i64 %.06278.i.i683.epil.init
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !7
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr [4 x i8], ptr %i.aa, i64 %.06278.i.i683.epil.init
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !7
  %i.ms = zext i32 %i.mr to i64
  %i.mt = sub nsw i64 %i.mp, %i.ms
  %i.mu = add nsw i64 %i.mt, %.06377.i.i684.epil.init ; 2 uses
  %i.mv = trunc i64 %i.mu to i32
  %i.mw = getelementptr [4 x i8], ptr %i.ab, i64 %.06278.i.i683.epil.init
  store i32 %i.mv, ptr %i.mw, align 4, !tbaa !7
  %i.mx = ashr i64 %i.mu, 32
  br label %._crit_edge.i.i686

._crit_edge.i.i686:                               ; preds = %.lr.ph.i.i682.epil.preheader, %._crit_edge.i.i686.loopexit.unr-lcssa, %bb.t
  %.063.lcssa.i.i687 = phi i64 [ 0, %bb.t ], [ %i.ml, %._crit_edge.i.i686.loopexit.unr-lcssa ], [ %i.mx, %.lr.ph.i.i682.epil.preheader ] ; 4 uses
  %.not.i.i688.not = icmp ult i64 %i.g, %i.ar
  br i1 %.not.i.i688.not, label %.preheader72.i.i689, label %.lr.ph87.i.i.preheader

.lr.ph87.i.i.preheader:                           ; preds = %._crit_edge.i.i686
  %i.my = add nuw nsw i64 %i.g, 1
  %i.mz = sub nuw nsw i64 %i.my, %i.ln
  %i.na = sub nuw nsw i64 %i.g, %i.ln
  %xtraiter3385 = and i64 %i.mz, 3                ; 2 uses
  %lcmp.mod3386.not = icmp eq i64 %xtraiter3385, 0
  br i1 %lcmp.mod3386.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol

.lr.ph87.i.i.prol:                                ; preds = %.lr.ph87.i.i.preheader, %.lr.ph87.i.i.prol
  %.286.i.i.prol = phi i64 [ %i.ni, %.lr.ph87.i.i.prol ], [ %i.ln, %.lr.ph87.i.i.preheader ] ; 3 uses
  %.26585.i.i.prol = phi i64 [ %i.nh, %.lr.ph87.i.i.prol ], [ %.063.lcssa.i.i687, %.lr.ph87.i.i.preheader ]
  %prol.iter3387 = phi i64 [ %prol.iter3387.next, %.lr.ph87.i.i.prol ], [ 0, %.lr.ph87.i.i.preheader ]
  %i.nb = getelementptr [4 x i8], ptr %i.aa, i64 %.286.i.i.prol
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !7
  %i.nd = zext i32 %i.nc to i64
  %i.ne = sub nsw i64 %.26585.i.i.prol, %i.nd     ; 2 uses
  %i.nf = trunc i64 %i.ne to i32
  %i.ng = getelementptr [4 x i8], ptr %i.ab, i64 %.286.i.i.prol
  store i32 %i.nf, ptr %i.ng, align 4, !tbaa !7
  %i.nh = ashr i64 %i.ne, 32                      ; 3 uses
  %i.ni = add nuw i64 %.286.i.i.prol, 1           ; 2 uses
  %prol.iter3387.next = add i64 %prol.iter3387, 1 ; 2 uses
  %prol.iter3387.cmp.not = icmp eq i64 %prol.iter3387.next, %xtraiter3385
  br i1 %prol.iter3387.cmp.not, label %.lr.ph87.i.i.prol.loopexit, label %.lr.ph87.i.i.prol, !llvm.loop !83

.lr.ph87.i.i.prol.loopexit:                       ; preds = %.lr.ph87.i.i.prol, %.lr.ph87.i.i.preheader
  %.lcssa3350.unr = phi i64 [ poison, %.lr.ph87.i.i.preheader ], [ %i.nh, %.lr.ph87.i.i.prol ]
  %.286.i.i.unr = phi i64 [ %i.ln, %.lr.ph87.i.i.preheader ], [ %i.ni, %.lr.ph87.i.i.prol ]
  %.26585.i.i.unr = phi i64 [ %.063.lcssa.i.i687, %.lr.ph87.i.i.preheader ], [ %i.nh, %.lr.ph87.i.i.prol ]
  %i.nj = icmp samesign ult i64 %i.na, 3
  br i1 %i.nj, label %.loopexit71.i.i690, label %.lr.ph87.i.i

.preheader72.i.i689:                              ; preds = %._crit_edge.i.i686
  %i.nk = icmp ult i64 %i.h, %i.ar
  br i1 %i.nk, label %.lr.ph82.i.i707, label %.loopexit71.i.i690

.lr.ph82.i.i707:                                  ; preds = %.preheader72.i.i689, %bb.u
  %.181.i.i708 = phi i64 [ %i.nt, %bb.u ], [ %i.ln, %.preheader72.i.i689 ] ; 4 uses
  %.16480.i.i709 = phi i64 [ %i.ns, %bb.u ], [ %.063.lcssa.i.i687, %.preheader72.i.i689 ]
  %i.nl = icmp eq i64 %.16480.i.i709, 0
  br i1 %i.nl, label %.loopexit74.i.i696, label %bb.u

bb.u:                                             ; preds = %.lr.ph82.i.i707
  %i.nm = getelementptr [4 x i8], ptr %i.at, i64 %.181.i.i708
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !7
  %i.no = zext i32 %i.nn to i64
  %i.np = add nsw i64 %i.no, -1                   ; 2 uses
  %i.nq = trunc i64 %i.np to i32
  %i.nr = getelementptr [4 x i8], ptr %i.ab, i64 %.181.i.i708
  store i32 %i.nq, ptr %i.nr, align 4, !tbaa !7
  %i.ns = ashr i64 %i.np, 32                      ; 2 uses
  %i.nt = add i64 %.181.i.i708, 1                 ; 2 uses
  %exitcond107.not.i.i710 = icmp eq i64 %i.nt, %i.ar
  br i1 %exitcond107.not.i.i710, label %.loopexit71.i.i690, label %.lr.ph82.i.i707, !llvm.loop !50

.lr.ph87.i.i:                                     ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i
  %.286.i.i = phi i64 [ %i.oz, %.lr.ph87.i.i ], [ %.286.i.i.unr, %.lr.ph87.i.i.prol.loopexit ] ; 6 uses
  %.26585.i.i = phi i64 [ %i.oy, %.lr.ph87.i.i ], [ %.26585.i.i.unr, %.lr.ph87.i.i.prol.loopexit ]
  %i.nu = getelementptr [4 x i8], ptr %i.aa, i64 %.286.i.i
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !7
  %i.nw = zext i32 %i.nv to i64
  %i.nx = sub nsw i64 %.26585.i.i, %i.nw          ; 2 uses
  %i.ny = trunc i64 %i.nx to i32
  %i.nz = getelementptr [4 x i8], ptr %i.ab, i64 %.286.i.i
  store i32 %i.ny, ptr %i.nz, align 4, !tbaa !7
  %i.oa = ashr i64 %i.nx, 32
  %i.ob = add nuw i64 %.286.i.i, 1                ; 2 uses
  %i.oc = getelementptr [4 x i8], ptr %i.aa, i64 %i.ob
  %i.od = load i32, ptr %i.oc, align 4, !tbaa !7
  %i.oe = zext i32 %i.od to i64
  %i.of = sub nsw i64 %i.oa, %i.oe                ; 2 uses
  %i.og = trunc i64 %i.of to i32
  %i.oh = getelementptr [4 x i8], ptr %i.ab, i64 %i.ob
  store i32 %i.og, ptr %i.oh, align 4, !tbaa !7
  %i.oi = ashr i64 %i.of, 32
  %i.oj = add nuw i64 %.286.i.i, 2                ; 2 uses
  %i.ok = getelementptr [4 x i8], ptr %i.aa, i64 %i.oj
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !7
  %i.om = zext i32 %i.ol to i64
  %i.on = sub nsw i64 %i.oi, %i.om                ; 2 uses
  %i.oo = trunc i64 %i.on to i32
  %i.op = getelementptr [4 x i8], ptr %i.ab, i64 %i.oj
  store i32 %i.oo, ptr %i.op, align 4, !tbaa !7
  %i.oq = ashr i64 %i.on, 32
  %i.or = add nuw i64 %.286.i.i, 3                ; 3 uses
  %i.os = getelementptr [4 x i8], ptr %i.aa, i64 %i.or
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !7
  %i.ou = zext i32 %i.ot to i64
  %i.ov = sub nsw i64 %i.oq, %i.ou                ; 2 uses
  %i.ow = trunc i64 %i.ov to i32
  %i.ox = getelementptr [4 x i8], ptr %i.ab, i64 %i.or
  store i32 %i.ow, ptr %i.ox, align 4, !tbaa !7
  %i.oy = ashr i64 %i.ov, 32                      ; 2 uses
  %i.oz = add nuw i64 %.286.i.i, 4
  %exitcond108.not.i.i.3 = icmp eq i64 %i.or, %i.g
  br i1 %exitcond108.not.i.i.3, label %.loopexit71.i.i690, label %.lr.ph87.i.i, !llvm.loop !51

.loopexit71.i.i690:                               ; preds = %.lr.ph87.i.i.prol.loopexit, %.lr.ph87.i.i, %bb.u, %.preheader72.i.i689
  %.366.i.i = phi i64 [ %.063.lcssa.i.i687, %.preheader72.i.i689 ], [ %i.ns, %bb.u ], [ %.lcssa3350.unr, %.lr.ph87.i.i.prol.loopexit ], [ %i.oy, %.lr.ph87.i.i ]
  %.3.i.i691 = phi i64 [ %i.ln, %.preheader72.i.i689 ], [ %i.ar, %bb.u ], [ %i.h, %.lr.ph87.i.i ], [ %i.h, %.lr.ph87.i.i.prol.loopexit ] ; 4 uses
  %i.pa = icmp eq i64 %.366.i.i, 0
  br i1 %i.pa, label %.loopexit74.i.i696, label %.preheader68.i.i692

.preheader68.i.i692:                              ; preds = %.loopexit71.i.i690
  %.not1994 = icmp ugt i64 %.3.i.i691, %i.g
  br i1 %.not1994, label %.lr.ph.i712.preheader, label %.lr.ph91.preheader.i.i694

.lr.ph.i712.preheader:                            ; preds = %.lr.ph91.preheader.i.i694, %.preheader68.i.i692
  br label %.lr.ph.i712

.lr.ph91.preheader.i.i694:                        ; preds = %.preheader68.i.i692
  %i.pb = shl i64 %.3.i.i691, 2
  %scevgep.i.i695 = getelementptr i8, ptr %i.ab, i64 %i.pb
  %i.pc = sub nuw nsw i64 %i.h, %.3.i.i691
  %i.pd = shl i64 %i.pc, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i695, i8 -1, i64 %i.pd, i1 false), !tbaa !7
  br label %.lr.ph.i712.preheader

.loopexit74.i.i696:                               ; preds = %.lr.ph82.i.i707, %.loopexit71.i.i690
  %.5.i.i697 = phi i64 [ %.3.i.i691, %.loopexit71.i.i690 ], [ %.181.i.i708, %.lr.ph82.i.i707 ] ; 7 uses
  %i.pe = icmp eq ptr %i.at, %i.ab
  %i.pf = icmp eq i64 %i.ar, %i.h
  %or.cond.i.i698 = and i1 %i.pf, %i.pe
  br i1 %or.cond.i.i698, label %.critedge597, label %.preheader67.i.i699

.preheader67.i.i699:                              ; preds = %.loopexit74.i.i696
  %i.pg = icmp ult i64 %.5.i.i697, %i.ar
  br i1 %i.pg, label %.lr.ph93.i.i704.preheader, label %.preheader.i.i700

.lr.ph93.i.i704.preheader:                        ; preds = %.preheader67.i.i699
  %i.ph = shl nuw i64 %i.g, 1
  %i.pi = add i64 %.5.i.i697, %i.ph
  %i.pj = sub i64 %3, %i.pi                       ; 3 uses
  %min.iters.check2888 = icmp ult i64 %i.pj, 12
  br i1 %min.iters.check2888, label %.lr.ph93.i.i704.preheader3340, label %vector.memcheck2885

vector.memcheck2885:                              ; preds = %.lr.ph93.i.i704.preheader
  %i.pk = sub i64 %.05322856, %i.a
  %i.pl = add i64 %i.pk, 7
  %diff.check2886 = icmp ult i64 %i.pl, 31
  br i1 %diff.check2886, label %.lr.ph93.i.i704.preheader3340, label %vector.ph2889

vector.ph2889:                                    ; preds = %vector.memcheck2885
  %n.vec2891 = and i64 %i.pj, -8                  ; 3 uses
  %i.pm = add i64 %.5.i.i697, %n.vec2891
  br label %vector.body2892

vector.body2892:                                  ; preds = %vector.body2892, %vector.ph2889
  %index2893 = phi i64 [ 0, %vector.ph2889 ], [ %index.next2896, %vector.body2892 ] ; 2 uses
  %i.pn = add i64 %.5.i.i697, %index2893          ; 2 uses
  %i.po = getelementptr [4 x i8], ptr %i.at, i64 %i.pn ; 2 uses
  %i.pp = getelementptr i8, ptr %i.po, i64 16
  %wide.load2894 = load <4 x i32>, ptr %i.po, align 4, !tbaa !7
  %wide.load2895 = load <4 x i32>, ptr %i.pp, align 4, !tbaa !7
  %i.pq = getelementptr [4 x i8], ptr %i.ab, i64 %i.pn ; 2 uses
  %i.pr = getelementptr i8, ptr %i.pq, i64 16
  store <4 x i32> %wide.load2894, ptr %i.pq, align 4, !tbaa !7
  store <4 x i32> %wide.load2895, ptr %i.pr, align 4, !tbaa !7
  %index.next2896 = add nuw i64 %index2893, 8     ; 2 uses
  %i.ps = icmp eq i64 %index.next2896, %n.vec2891
  br i1 %i.ps, label %middle.block2897, label %vector.body2892, !llvm.loop !84

middle.block2897:                                 ; preds = %vector.body2892
  %cmp.n2898 = icmp eq i64 %i.pj, %n.vec2891
  br i1 %cmp.n2898, label %.preheader.i.i700, label %.lr.ph93.i.i704.preheader3340

.lr.ph93.i.i704.preheader3340:                    ; preds = %vector.memcheck2885, %.lr.ph93.i.i704.preheader, %middle.block2897
  %.692.i.i705.ph = phi i64 [ %.5.i.i697, %vector.memcheck2885 ], [ %.5.i.i697, %.lr.ph93.i.i704.preheader ], [ %i.pm, %middle.block2897 ]
  br label %.lr.ph93.i.i704

.preheader.i.i700:                                ; preds = %.lr.ph93.i.i704, %middle.block2897, %.preheader67.i.i699
  %.6.lcssa.i.i701 = phi i64 [ %.5.i.i697, %.preheader67.i.i699 ], [ %i.ar, %middle.block2897 ], [ %i.ar, %.lr.ph93.i.i704 ] ; 2 uses
  %.not1996 = icmp ugt i64 %.6.lcssa.i.i701, %i.g
  br i1 %.not1996, label %.critedge597, label %.critedge597.sink.split

.lr.ph93.i.i704:                                  ; preds = %.lr.ph93.i.i704.preheader3340, %.lr.ph93.i.i704
  %.692.i.i705 = phi i64 [ %i.pw, %.lr.ph93.i.i704 ], [ %.692.i.i705.ph, %.lr.ph93.i.i704.preheader3340 ] ; 3 uses
  %i.pt = getelementptr [4 x i8], ptr %i.at, i64 %.692.i.i705
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !7
  %i.pv = getelementptr [4 x i8], ptr %i.ab, i64 %.692.i.i705
  store i32 %i.pu, ptr %i.pv, align 4, !tbaa !7
  %i.pw = add nuw i64 %.692.i.i705, 1             ; 2 uses
  %exitcond111.not.i.i706 = icmp eq i64 %i.pw, %i.ar
  br i1 %exitcond111.not.i.i706, label %.preheader.i.i700, label %.lr.ph93.i.i704, !llvm.loop !85

.lr.ph.i712:                                      ; preds = %.lr.ph.i712.preheader, %bb.v
  %.023.i713 = phi i64 [ %i.pz, %bb.v ], [ 0, %.lr.ph.i712.preheader ] ; 9 uses
  %i.px = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i713
  %i.py = load i32, ptr %i.px, align 4, !tbaa !7  ; 2 uses
  %.not.i714 = icmp eq i32 %i.py, 0
  br i1 %.not.i714, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i712
  %i.pz = add nuw nsw i64 %.023.i713, 1
  %exitcond.not.i721 = icmp eq i64 %.023.i713, %i.g
  br i1 %exitcond.not.i721, label %bary_2comp.exit722.preheader, label %.lr.ph.i712, !llvm.loop !55

bb.w:                                             ; preds = %.lr.ph.i712
  %i.qa = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i713
  %i.qb = sub i32 0, %i.py
  store i32 %i.qb, ptr %i.qa, align 4, !tbaa !7
  %.not1995.not = icmp samesign ult i64 %.023.i713, %i.g
  br i1 %.not1995.not, label %.lr.ph26.i717.preheader, label %bary_2comp.exit722.preheader

.lr.ph26.i717.preheader:                          ; preds = %bb.w
  %i.qc = sub nuw nsw i64 %i.g, %.023.i713        ; 3 uses
  %min.iters.check2873 = icmp samesign ult i64 %i.qc, 8
  br i1 %min.iters.check2873, label %.lr.ph26.i717.preheader3342, label %vector.ph2874

vector.ph2874:                                    ; preds = %.lr.ph26.i717.preheader
  %n.vec2876 = and i64 %i.qc, 9223372036854775800 ; 3 uses
  %i.qd = add nuw i64 %.023.i713, %n.vec2876
  %i.qe = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i713
  br label %vector.body2877

vector.body2877:                                  ; preds = %vector.body2877, %vector.ph2874
  %index2878 = phi i64 [ 0, %vector.ph2874 ], [ %index.next2881, %vector.body2877 ] ; 2 uses
  %i.qf = getelementptr [4 x i8], ptr %i.qe, i64 %index2878 ; 2 uses
  %i.qg = getelementptr i8, ptr %i.qf, i64 4      ; 2 uses
  %i.qh = getelementptr i8, ptr %i.qf, i64 20     ; 2 uses
  %wide.load2879 = load <4 x i32>, ptr %i.qg, align 4, !tbaa !7
  %wide.load2880 = load <4 x i32>, ptr %i.qh, align 4, !tbaa !7
  %i.qi = xor <4 x i32> %wide.load2879, splat (i32 -1)
  %i.qj = xor <4 x i32> %wide.load2880, splat (i32 -1)
  store <4 x i32> %i.qi, ptr %i.qg, align 4, !tbaa !7
  store <4 x i32> %i.qj, ptr %i.qh, align 4, !tbaa !7
  %index.next2881 = add nuw i64 %index2878, 8     ; 2 uses
  %i.qk = icmp eq i64 %index.next2881, %n.vec2876
  br i1 %i.qk, label %middle.block2882, label %vector.body2877, !llvm.loop !86

middle.block2882:                                 ; preds = %vector.body2877
  %cmp.n2883 = icmp eq i64 %i.qc, %n.vec2876
  br i1 %cmp.n2883, label %bary_2comp.exit722.preheader, label %.lr.ph26.i717.preheader3342

.lr.ph26.i717.preheader3342:                      ; preds = %.lr.ph26.i717.preheader, %middle.block2882
  %.125.i718.in.ph = phi i64 [ %.023.i713, %.lr.ph26.i717.preheader ], [ %i.qd, %middle.block2882 ]
  br label %.lr.ph26.i717

.lr.ph26.i717:                                    ; preds = %.lr.ph26.i717.preheader3342, %.lr.ph26.i717
  %.125.i718.in = phi i64 [ %.125.i718, %.lr.ph26.i717 ], [ %.125.i718.in.ph, %.lr.ph26.i717.preheader3342 ]
  %.125.i718 = add nuw i64 %.125.i718.in, 1       ; 3 uses
  %i.ql = getelementptr [4 x i8], ptr %i.ab, i64 %.125.i718 ; 2 uses
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !7
  %i.qn = xor i32 %i.qm, -1
  store i32 %i.qn, ptr %i.ql, align 4, !tbaa !7
  %exitcond31.not.i720 = icmp eq i64 %.125.i718, %i.g
  br i1 %exitcond31.not.i720, label %bary_2comp.exit722.preheader, label %.lr.ph26.i717, !llvm.loop !87

bary_2comp.exit722.preheader:                     ; preds = %bb.v, %.lr.ph26.i717, %middle.block2882, %bb.w
  %xtraiter3388 = and i64 %i.h, 3                 ; 3 uses
  %i.qo = icmp ult i64 %i.f, 9
  br i1 %i.qo, label %bary_2comp.exit722.epil.preheader, label %bary_2comp.exit722.preheader.new

bary_2comp.exit722.preheader.new:                 ; preds = %bary_2comp.exit722.preheader
  %unroll_iter3391 = and i64 %i.h, 9223372036854775804
  br label %bary_2comp.exit722

bary_2comp.exit722:                               ; preds = %bary_2comp.exit722, %bary_2comp.exit722.preheader.new
  %.015.i = phi i32 [ 0, %bary_2comp.exit722.preheader.new ], [ %i.rc, %bary_2comp.exit722 ]
  %.01013.i = phi ptr [ %i.ab, %bary_2comp.exit722.preheader.new ], [ %i.qz, %bary_2comp.exit722 ] ; 6 uses
  %niter3392 = phi i64 [ 0, %bary_2comp.exit722.preheader.new ], [ %niter3392.next.3, %bary_2comp.exit722 ]
  %i.qp = getelementptr i8, ptr %.01013.i, i64 4  ; 2 uses
  %i.qq = load i32, ptr %.01013.i, align 4, !tbaa !7 ; 2 uses
  %i.qr = shl i32 %i.qq, 1
  %i.qs = or disjoint i32 %i.qr, %.015.i
  store i32 %i.qs, ptr %.01013.i, align 4, !tbaa !7
  %i.qt = getelementptr i8, ptr %.01013.i, i64 8  ; 2 uses
  %i.qu = load i32, ptr %i.qp, align 4, !tbaa !7  ; 2 uses
  %i.qv = call i32 @llvm.fshl.i32(i32 %i.qu, i32 %i.qq, i32 1)
  store i32 %i.qv, ptr %i.qp, align 4, !tbaa !7
  %i.qw = getelementptr i8, ptr %.01013.i, i64 12 ; 2 uses
  %i.qx = load i32, ptr %i.qt, align 4, !tbaa !7  ; 2 uses
  %i.qy = call i32 @llvm.fshl.i32(i32 %i.qx, i32 %i.qu, i32 1)
  store i32 %i.qy, ptr %i.qt, align 4, !tbaa !7
  %i.qz = getelementptr i8, ptr %.01013.i, i64 16 ; 2 uses
  %i.ra = load i32, ptr %i.qw, align 4, !tbaa !7  ; 2 uses
  %i.rb = call i32 @llvm.fshl.i32(i32 %i.ra, i32 %i.qx, i32 1)
  store i32 %i.rb, ptr %i.qw, align 4, !tbaa !7
  %i.rc = lshr i32 %i.ra, 31                      ; 2 uses
  %niter3392.next.3 = add i64 %niter3392, 4       ; 2 uses
  %niter3392.ncmp.3 = icmp eq i64 %niter3392.next.3, %unroll_iter3391
  br i1 %niter3392.ncmp.3, label %bary_small_lshift.exit.unr-lcssa, label %bary_2comp.exit722, !llvm.loop !88

bary_small_lshift.exit.unr-lcssa:                 ; preds = %bary_2comp.exit722
  %lcmp.mod3389.not = icmp eq i64 %xtraiter3388, 0
  br i1 %lcmp.mod3389.not, label %bary_small_lshift.exit, label %bary_2comp.exit722.epil.preheader

bary_2comp.exit722.epil.preheader:                ; preds = %bary_small_lshift.exit.unr-lcssa, %bary_2comp.exit722.preheader
  %.015.i.epil.init = phi i32 [ 0, %bary_2comp.exit722.preheader ], [ %i.rc, %bary_small_lshift.exit.unr-lcssa ]
  %.01013.i.epil.init = phi ptr [ %i.ab, %bary_2comp.exit722.preheader ], [ %i.qz, %bary_small_lshift.exit.unr-lcssa ]
  %lcmp.mod3390 = icmp ne i64 %xtraiter3388, 0
  call void @llvm.assume(i1 %lcmp.mod3390)
  br label %bary_2comp.exit722.epil

bary_2comp.exit722.epil:                          ; preds = %bary_2comp.exit722.epil, %bary_2comp.exit722.epil.preheader
  %.015.i.epil = phi i32 [ %i.rh, %bary_2comp.exit722.epil ], [ %.015.i.epil.init, %bary_2comp.exit722.epil.preheader ]
  %.01013.i.epil = phi ptr [ %i.rd, %bary_2comp.exit722.epil ], [ %.01013.i.epil.init, %bary_2comp.exit722.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bary_2comp.exit722.epil ], [ 0, %bary_2comp.exit722.epil.preheader ]
  %i.rd = getelementptr i8, ptr %.01013.i.epil, i64 4
  %i.re = load i32, ptr %.01013.i.epil, align 4, !tbaa !7 ; 2 uses
  %i.rf = shl i32 %i.re, 1
  %i.rg = or disjoint i32 %i.rf, %.015.i.epil
  store i32 %i.rg, ptr %.01013.i.epil, align 4, !tbaa !7
  %i.rh = lshr i32 %i.re, 31
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3388
  br i1 %epil.iter.cmp.not, label %bary_small_lshift.exit, label %bary_2comp.exit722.epil, !llvm.loop !89

bary_small_lshift.exit:                           ; preds = %bary_2comp.exit722.epil, %bary_small_lshift.exit.unr-lcssa
  br i1 %.not97.i.i, label %bary_add.exit760, label %.lr.ph.i.i731.preheader

.lr.ph.i.i731.preheader:                          ; preds = %bary_small_lshift.exit
  %xtraiter3393 = and i64 %i.g, 1
  %.off3624 = add i64 %5, -1
  %i.ri = icmp ult i64 %.off3624, 3
  br i1 %i.ri, label %.lr.ph.i.i731.epil.preheader, label %.lr.ph.i.i731.preheader.new

.lr.ph.i.i731.preheader.new:                      ; preds = %.lr.ph.i.i731.preheader
  %unroll_iter3398 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i731

.preheader72.i.i735.unr-lcssa:                    ; preds = %.lr.ph.i.i731
  %lcmp.mod3395.not = icmp eq i64 %xtraiter3393, 0
  br i1 %lcmp.mod3395.not, label %.preheader72.i.i735, label %.lr.ph.i.i731.epil.preheader

.lr.ph.i.i731.epil.preheader:                     ; preds = %.preheader72.i.i735.unr-lcssa, %.lr.ph.i.i731.preheader
  %.05779.i.i732.epil.init = phi i64 [ 0, %.lr.ph.i.i731.preheader ], [ %i.sp, %.preheader72.i.i735.unr-lcssa ] ; 2 uses
  %.05878.i.i733.epil.init = phi i64 [ 0, %.lr.ph.i.i731.preheader ], [ %i.so, %.preheader72.i.i735.unr-lcssa ]
  %lcmp.mod3397 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3397)
  %i.rj = getelementptr [4 x i8], ptr %2, i64 %.05779.i.i732.epil.init
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !7
  %i.rl = zext i32 %i.rk to i64
  %i.rm = getelementptr [4 x i8], ptr %i.ab, i64 %.05779.i.i732.epil.init ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !7
  %i.ro = zext i32 %i.rn to i64
  %i.rp = add nuw nsw i64 %.05878.i.i733.epil.init, %i.rl
  %i.rq = add nuw nsw i64 %i.rp, %i.ro            ; 2 uses
  %i.rr = trunc i64 %i.rq to i32
  store i32 %i.rr, ptr %i.rm, align 4, !tbaa !7
  %i.rs = lshr i64 %i.rq, 32
  br label %.preheader72.i.i735

.preheader72.i.i735:                              ; preds = %.preheader72.i.i735.unr-lcssa, %.lr.ph.i.i731.epil.preheader
  %.lcssa3341 = phi i64 [ %i.so, %.preheader72.i.i735.unr-lcssa ], [ %i.rs, %.lr.ph.i.i731.epil.preheader ]
  %i.rt = icmp eq i64 %.lcssa3341, 0
  br i1 %i.rt, label %bary_add.exit760, label %bb.x

.lr.ph.i.i731:                                    ; preds = %.lr.ph.i.i731, %.lr.ph.i.i731.preheader.new
  %.05779.i.i732 = phi i64 [ 0, %.lr.ph.i.i731.preheader.new ], [ %i.sp, %.lr.ph.i.i731 ] ; 4 uses
end_hunk_4
begin_hunk_5_@bary_mul_toom3:bb.a
  br i1 %min.iters.check2917, label %.lr.ph26.i810.preheader3330, label %vector.ph2918

vector.ph2918:                                    ; preds = %.lr.ph26.i810.preheader
  %n.vec2920 = and i64 %i.vj, 9223372036854775800 ; 3 uses
  %i.vk = add nuw i64 %.023.i806, %n.vec2920
  %i.vl = getelementptr [4 x i8], ptr %i.ab, i64 %.023.i806
  br label %vector.body2921

vector.body2921:                                  ; preds = %vector.body2921, %vector.ph2918
  %index2922 = phi i64 [ 0, %vector.ph2918 ], [ %index.next2925, %vector.body2921 ] ; 2 uses
  %i.vm = getelementptr [4 x i8], ptr %i.vl, i64 %index2922 ; 2 uses
  %i.vn = getelementptr i8, ptr %i.vm, i64 4      ; 2 uses
  %i.vo = getelementptr i8, ptr %i.vm, i64 20     ; 2 uses
  %wide.load2923 = load <4 x i32>, ptr %i.vn, align 4, !tbaa !7
  %wide.load2924 = load <4 x i32>, ptr %i.vo, align 4, !tbaa !7
  %i.vp = xor <4 x i32> %wide.load2923, splat (i32 -1)
  %i.vq = xor <4 x i32> %wide.load2924, splat (i32 -1)
  store <4 x i32> %i.vp, ptr %i.vn, align 4, !tbaa !7
  store <4 x i32> %i.vq, ptr %i.vo, align 4, !tbaa !7
  %index.next2925 = add nuw i64 %index2922, 8     ; 2 uses
  %i.vr = icmp eq i64 %index.next2925, %n.vec2920
  br i1 %i.vr, label %middle.block2926, label %vector.body2921, !llvm.loop !91

middle.block2926:                                 ; preds = %vector.body2921
  %cmp.n2927 = icmp eq i64 %i.vj, %n.vec2920
  br i1 %cmp.n2927, label %bary_add.exit760, label %.lr.ph26.i810.preheader3330

.lr.ph26.i810.preheader3330:                      ; preds = %.lr.ph26.i810.preheader, %middle.block2926
  %.125.i811.in.ph = phi i64 [ %.023.i806, %.lr.ph26.i810.preheader ], [ %i.vk, %middle.block2926 ]
  br label %.lr.ph26.i810

.lr.ph26.i810:                                    ; preds = %.lr.ph26.i810.preheader3330, %.lr.ph26.i810
  %.125.i811.in = phi i64 [ %.125.i811, %.lr.ph26.i810 ], [ %.125.i811.in.ph, %.lr.ph26.i810.preheader3330 ]
  %.125.i811 = add nuw i64 %.125.i811.in, 1       ; 3 uses
  %i.vs = getelementptr [4 x i8], ptr %i.ab, i64 %.125.i811 ; 2 uses
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !7
  %i.vu = xor i32 %i.vt, -1
  store i32 %i.vu, ptr %i.vs, align 4, !tbaa !7
  %exitcond31.not.i813 = icmp eq i64 %.125.i811, %i.g
  br i1 %exitcond31.not.i813, label %bary_add.exit760, label %.lr.ph26.i810, !llvm.loop !92

bary_add.exit760:                                 ; preds = %bb.aa, %.lr.ph26.i810, %middle.block2926, %bary_small_lshift.exit768, %bary_small_lshift.exit, %.preheader72.i.i735, %bb.x, %._crit_edge.i.i774, %.loopexit71.i.i778, %bb.ab
  %.0547245424582460 = phi i32 [ %.0547245424582461, %middle.block2926 ], [ %.0547245424582461, %bary_small_lshift.exit768 ], [ %.0547245424582461, %._crit_edge.i.i774 ], [ %.0547245424582461, %bb.ab ], [ %.0547245424582461, %.loopexit71.i.i778 ], [ %.0547245424582462, %bary_small_lshift.exit ], [ %.0547245424582462, %.preheader72.i.i735 ], [ %.0547245424582462, %bb.x ], [ %.0547245424582461, %.lr.ph26.i810 ], [ %.0547245424582461, %bb.aa ] ; 2 uses
  %.1549 = phi i32 [ 0, %middle.block2926 ], [ 1, %bary_small_lshift.exit768 ], [ 1, %._crit_edge.i.i774 ], [ 0, %bb.ab ], [ 1, %.loopexit71.i.i778 ], [ 0, %bary_small_lshift.exit ], [ 0, %.preheader72.i.i735 ], [ 0, %bb.x ], [ 0, %.lr.ph26.i810 ], [ 0, %bb.aa ] ; 2 uses
  br i1 %i.e, label %bary_add.exit1057, label %bb.ac

bb.ac:                                            ; preds = %bary_add.exit760
  %i.vv = icmp ugt i64 %i.g, %.0543
  br i1 %i.vv, label %bb.ad, label %bb.ae

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
  %xtraiter3423 = and i64 %.064.i.i816, 1
  %i.vw = icmp eq i64 %.064.i.i816, 1
  br i1 %i.vw, label %.lr.ph.i.i821.epil.preheader, label %.lr.ph.i.i821.preheader.new

.lr.ph.i.i821.preheader.new:                      ; preds = %.lr.ph.i.i821.preheader
  %unroll_iter3428 = and i64 %.064.i.i816, -2
  br label %.lr.ph.i.i821

.preheader72.i.i825.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i821
  %lcmp.mod3425.not = icmp eq i64 %xtraiter3423, 0
  br i1 %lcmp.mod3425.not, label %.preheader72.i.i825, label %.lr.ph.i.i821.epil.preheader

.lr.ph.i.i821.epil.preheader:                     ; preds = %.preheader72.i.i825.loopexit.unr-lcssa, %.lr.ph.i.i821.preheader
  %.05779.i.i822.epil.init = phi i64 [ 0, %.lr.ph.i.i821.preheader ], [ %i.xg, %.preheader72.i.i825.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i823.epil.init = phi i64 [ 0, %.lr.ph.i.i821.preheader ], [ %i.xf, %.preheader72.i.i825.loopexit.unr-lcssa ]
  %lcmp.mod3427 = trunc i64 %.064.i.i816 to i1
  call void @llvm.assume(i1 %lcmp.mod3427)
  %i.vx = getelementptr [4 x i8], ptr %.061.i.i819, i64 %.05779.i.i822.epil.init
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !7
  %i.vz = zext i32 %i.vy to i64
  %i.wa = getelementptr [4 x i8], ptr %.063.i.i817, i64 %.05779.i.i822.epil.init
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !7
  %i.wc = zext i32 %i.wb to i64
  %i.wd = add nuw nsw i64 %.05878.i.i823.epil.init, %i.vz
  %i.we = add nuw nsw i64 %i.wd, %i.wc            ; 2 uses
  %i.wf = trunc i64 %i.we to i32
  %i.wg = getelementptr [4 x i8], ptr %i.ac, i64 %.05779.i.i822.epil.init
  store i32 %i.wf, ptr %i.wg, align 4, !tbaa !7
  %i.wh = lshr i64 %i.we, 32
  br label %.preheader72.i.i825

.preheader72.i.i825:                              ; preds = %.lr.ph.i.i821.epil.preheader, %.preheader72.i.i825.loopexit.unr-lcssa, %bb.ae
  %.058.lcssa.i.i826 = phi i64 [ 0, %bb.ae ], [ %i.xf, %.preheader72.i.i825.loopexit.unr-lcssa ], [ %i.wh, %.lr.ph.i.i821.epil.preheader ] ; 2 uses
  %i.wi = icmp ult i64 %.064.i.i816, %.062.i.i818
  br i1 %i.wi, label %.lr.ph83.i.i846, label %.lr.ph88.preheader.i.i833

.lr.ph.i.i821:                                    ; preds = %.lr.ph.i.i821, %.lr.ph.i.i821.preheader.new
  %.05779.i.i822 = phi i64 [ 0, %.lr.ph.i.i821.preheader.new ], [ %i.xg, %.lr.ph.i.i821 ] ; 5 uses
  %.05878.i.i823 = phi i64 [ 0, %.lr.ph.i.i821.preheader.new ], [ %i.xf, %.lr.ph.i.i821 ]
  %niter3429 = phi i64 [ 0, %.lr.ph.i.i821.preheader.new ], [ %niter3429.next.1, %.lr.ph.i.i821 ]
  %i.wj = getelementptr [4 x i8], ptr %.061.i.i819, i64 %.05779.i.i822
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !7
  %i.wl = zext i32 %i.wk to i64
  %i.wm = getelementptr [4 x i8], ptr %.063.i.i817, i64 %.05779.i.i822
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !7
  %i.wo = zext i32 %i.wn to i64
  %i.wp = add nuw nsw i64 %.05878.i.i823, %i.wl
  %i.wq = add nuw nsw i64 %i.wp, %i.wo            ; 2 uses
  %i.wr = trunc i64 %i.wq to i32
  %i.ws = getelementptr [4 x i8], ptr %i.ac, i64 %.05779.i.i822
  store i32 %i.wr, ptr %i.ws, align 4, !tbaa !7
  %i.wt = lshr i64 %i.wq, 32
  %i.wu = or disjoint i64 %.05779.i.i822, 1       ; 3 uses
  %i.wv = getelementptr [4 x i8], ptr %.061.i.i819, i64 %i.wu
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !7
  %i.wx = zext i32 %i.ww to i64
  %i.wy = getelementptr [4 x i8], ptr %.063.i.i817, i64 %i.wu
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !7
  %i.xa = zext i32 %i.wz to i64
  %i.xb = add nuw nsw i64 %i.wt, %i.wx
  %i.xc = add nuw nsw i64 %i.xb, %i.xa            ; 2 uses
  %i.xd = trunc i64 %i.xc to i32
  %i.xe = getelementptr [4 x i8], ptr %i.ac, i64 %i.wu
  store i32 %i.xd, ptr %i.xe, align 4, !tbaa !7
  %i.xf = lshr i64 %i.xc, 32                      ; 3 uses
  %i.xg = add nuw nsw i64 %.05779.i.i822, 2       ; 2 uses
  %niter3429.next.1 = add i64 %niter3429, 2       ; 2 uses
  %niter3429.ncmp.1 = icmp eq i64 %niter3429.next.1, %unroll_iter3428
  br i1 %niter3429.ncmp.1, label %.preheader72.i.i825.loopexit.unr-lcssa, label %.lr.ph.i.i821, !llvm.loop !34

.preheader70.i.i827:                              ; preds = %bb.ag
  %.not2001 = icmp ugt i64 %.062.i.i818, %i.g
  br i1 %.not2001, label %bary_add.exit850, label %.lr.ph88.preheader.i.i833

.lr.ph88.preheader.i.i833:                        ; preds = %.preheader72.i.i825, %.preheader70.i.i827
  %.1.lcssa.i.i8291956 = phi i64 [ %.062.i.i818, %.preheader70.i.i827 ], [ %.064.i.i816, %.preheader72.i.i825 ] ; 4 uses
  %.159.lcssa.i.i8281955 = phi i64 [ %i.xr, %.preheader70.i.i827 ], [ %.058.lcssa.i.i826, %.preheader72.i.i825 ]
  %i.xh = icmp eq i64 %.159.lcssa.i.i8281955, 0
  br i1 %i.xh, label %.loopexit71.i.i835, label %bb.af

bb.af:                                            ; preds = %.lr.ph88.preheader.i.i833
  %i.xi = getelementptr [4 x i8], ptr %i.ac, i64 %.1.lcssa.i.i8291956
  store i32 1, ptr %i.xi, align 4, !tbaa !7
  %i.xj = add nuw nsw i64 %.1.lcssa.i.i8291956, 1
  %exitcond103.peel.not.i.i834 = icmp eq i64 %.1.lcssa.i.i8291956, %i.g
  br i1 %exitcond103.peel.not.i.i834, label %bary_add.exit850, label %.loopexit71.i.i835

.lr.ph83.i.i846:                                  ; preds = %.preheader72.i.i825, %bb.ag
  %.182.i.i847 = phi i64 [ %i.xs, %bb.ag ], [ %.064.i.i816, %.preheader72.i.i825 ] ; 4 uses
  %.15981.i.i848 = phi i64 [ %i.xr, %bb.ag ], [ %.058.lcssa.i.i826, %.preheader72.i.i825 ]
  %i.xk = icmp eq i64 %.15981.i.i848, 0
  br i1 %i.xk, label %.loopexit71.i.i835, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph83.i.i846
  %i.xl = getelementptr [4 x i8], ptr %.063.i.i817, i64 %.182.i.i847
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !7
  %i.xn = zext i32 %i.xm to i64
  %i.xo = add nuw nsw i64 %i.xn, 1                ; 2 uses
  %i.xp = trunc i64 %i.xo to i32
  %i.xq = getelementptr [4 x i8], ptr %i.ac, i64 %.182.i.i847
  store i32 %i.xp, ptr %i.xq, align 4, !tbaa !7
  %i.xr = lshr i64 %i.xo, 32                      ; 2 uses
  %i.xs = add i64 %.182.i.i847, 1                 ; 2 uses
  %exitcond102.not.i.i849 = icmp eq i64 %i.xs, %.062.i.i818
  br i1 %exitcond102.not.i.i849, label %.preheader70.i.i827, label %.lr.ph83.i.i846, !llvm.loop !36

.loopexit71.i.i835:                               ; preds = %.lr.ph83.i.i846, %bb.af, %.lr.ph88.preheader.i.i833
  %.3.i.i836 = phi i64 [ %i.xj, %bb.af ], [ %.1.lcssa.i.i8291956, %.lr.ph88.preheader.i.i833 ], [ %.182.i.i847, %.lr.ph83.i.i846 ] ; 7 uses
  %i.xt = icmp eq ptr %.063.i.i817, %i.ac
  %i.xu = icmp eq i64 %.062.i.i818, %i.h
  %or.cond.i.i837 = and i1 %i.xt, %i.xu
  br i1 %or.cond.i.i837, label %bary_add.exit850, label %.preheader69.i.i838

.preheader69.i.i838:                              ; preds = %.loopexit71.i.i835
  %i.xv = icmp ult i64 %.3.i.i836, %.062.i.i818
  br i1 %i.xv, label %.lr.ph91.i.i843.preheader, label %.preheader.i.i839

.lr.ph91.i.i843.preheader:                        ; preds = %.preheader69.i.i838
  %i.xw = sub nuw i64 %.062.i.i818, %.3.i.i836    ; 3 uses
  %min.iters.check2933 = icmp ult i64 %i.xw, 20
  br i1 %min.iters.check2933, label %.lr.ph91.i.i843.preheader3326, label %vector.memcheck2929

vector.memcheck2929:                              ; preds = %.lr.ph91.i.i843.preheader
  %i.xx = mul i64 %i.g, 12
  %i.xy = add i64 %i.xx, %.05322856
  %i.xz = sub i64 %i.xy, %.063.i.i8172930
  %i.ya = add i64 %i.xz, 11
  %diff.check2931 = icmp ult i64 %i.ya, 31
  br i1 %diff.check2931, label %.lr.ph91.i.i843.preheader3326, label %vector.ph2934

vector.ph2934:                                    ; preds = %vector.memcheck2929
  %n.vec2936 = and i64 %i.xw, -8                  ; 3 uses
  %i.yb = add i64 %.3.i.i836, %n.vec2936
  br label %vector.body2937

vector.body2937:                                  ; preds = %vector.body2937, %vector.ph2934
  %index2938 = phi i64 [ 0, %vector.ph2934 ], [ %index.next2941, %vector.body2937 ] ; 2 uses
  %i.yc = add i64 %.3.i.i836, %index2938          ; 2 uses
  %i.yd = getelementptr [4 x i8], ptr %.063.i.i817, i64 %i.yc ; 2 uses
  %i.ye = getelementptr i8, ptr %i.yd, i64 16
  %wide.load2939 = load <4 x i32>, ptr %i.yd, align 4, !tbaa !7
  %wide.load2940 = load <4 x i32>, ptr %i.ye, align 4, !tbaa !7
  %i.yf = getelementptr [4 x i8], ptr %i.ac, i64 %i.yc ; 2 uses
  %i.yg = getelementptr i8, ptr %i.yf, i64 16
  store <4 x i32> %wide.load2939, ptr %i.yf, align 4, !tbaa !7
  store <4 x i32> %wide.load2940, ptr %i.yg, align 4, !tbaa !7
  %index.next2941 = add nuw i64 %index2938, 8     ; 2 uses
  %i.yh = icmp eq i64 %index.next2941, %n.vec2936
  br i1 %i.yh, label %middle.block2942, label %vector.body2937, !llvm.loop !93

middle.block2942:                                 ; preds = %vector.body2937
  %cmp.n2943 = icmp eq i64 %i.xw, %n.vec2936
  br i1 %cmp.n2943, label %.preheader.i.i839, label %.lr.ph91.i.i843.preheader3326

.lr.ph91.i.i843.preheader3326:                    ; preds = %vector.memcheck2929, %.lr.ph91.i.i843.preheader, %middle.block2942
  %.490.i.i844.ph = phi i64 [ %.3.i.i836, %vector.memcheck2929 ], [ %.3.i.i836, %.lr.ph91.i.i843.preheader ], [ %i.yb, %middle.block2942 ] ; 4 uses
  %i.yi = sub i64 %.062.i.i818, %.490.i.i844.ph
  %xtraiter3430 = and i64 %i.yi, 3                ; 2 uses
  %lcmp.mod3431.not = icmp eq i64 %xtraiter3430, 0
  br i1 %lcmp.mod3431.not, label %.lr.ph91.i.i843.prol.loopexit, label %.lr.ph91.i.i843.prol

.lr.ph91.i.i843.prol:                             ; preds = %.lr.ph91.i.i843.preheader3326, %.lr.ph91.i.i843.prol
  %.490.i.i844.prol = phi i64 [ %i.ym, %.lr.ph91.i.i843.prol ], [ %.490.i.i844.ph, %.lr.ph91.i.i843.preheader3326 ] ; 3 uses
  %prol.iter3432 = phi i64 [ %prol.iter3432.next, %.lr.ph91.i.i843.prol ], [ 0, %.lr.ph91.i.i843.preheader3326 ]
  %i.yj = getelementptr [4 x i8], ptr %.063.i.i817, i64 %.490.i.i844.prol
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !7
  %i.yl = getelementptr [4 x i8], ptr %i.ac, i64 %.490.i.i844.prol
  store i32 %i.yk, ptr %i.yl, align 4, !tbaa !7
  %i.ym = add nuw i64 %.490.i.i844.prol, 1        ; 2 uses
  %prol.iter3432.next = add i64 %prol.iter3432, 1 ; 2 uses
  %prol.iter3432.cmp.not = icmp eq i64 %prol.iter3432.next, %xtraiter3430
  br i1 %prol.iter3432.cmp.not, label %.lr.ph91.i.i843.prol.loopexit, label %.lr.ph91.i.i843.prol, !llvm.loop !94

.lr.ph91.i.i843.prol.loopexit:                    ; preds = %.lr.ph91.i.i843.prol, %.lr.ph91.i.i843.preheader3326
  %.490.i.i844.unr = phi i64 [ %.490.i.i844.ph, %.lr.ph91.i.i843.preheader3326 ], [ %i.ym, %.lr.ph91.i.i843.prol ]
  %i.yn = sub i64 %.490.i.i844.ph, %.062.i.i818
  %i.yo = icmp ugt i64 %i.yn, -4
  br i1 %i.yo, label %.preheader.i.i839, label %.lr.ph91.i.i843

.preheader.i.i839:                                ; preds = %.lr.ph91.i.i843.prol.loopexit, %.lr.ph91.i.i843, %middle.block2942, %.preheader69.i.i838
  %.4.lcssa.i.i840 = phi i64 [ %.3.i.i836, %.preheader69.i.i838 ], [ %.062.i.i818, %middle.block2942 ], [ %.062.i.i818, %.lr.ph91.i.i843 ], [ %.062.i.i818, %.lr.ph91.i.i843.prol.loopexit ] ; 3 uses
  %.not2002 = icmp ugt i64 %.4.lcssa.i.i840, %i.g
  br i1 %.not2002, label %bary_add.exit850, label %.lr.ph94.preheader.i.i841

.lr.ph94.preheader.i.i841:                        ; preds = %.preheader.i.i839
  %i.yp = shl i64 %.4.lcssa.i.i840, 2
  %scevgep.i.i842 = getelementptr i8, ptr %i.ac, i64 %i.yp
  %i.yq = sub nuw nsw i64 %i.h, %.4.lcssa.i.i840
  %i.yr = shl i64 %i.yq, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i842, i8 0, i64 %i.yr, i1 false), !tbaa !7
  br label %bary_add.exit850

.lr.ph91.i.i843:                                  ; preds = %.lr.ph91.i.i843.prol.loopexit, %.lr.ph91.i.i843
  %.490.i.i844 = phi i64 [ %i.zh, %.lr.ph91.i.i843 ], [ %.490.i.i844.unr, %.lr.ph91.i.i843.prol.loopexit ] ; 6 uses
  %i.ys = getelementptr [4 x i8], ptr %.063.i.i817, i64 %.490.i.i844
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !7
  %i.yu = getelementptr [4 x i8], ptr %i.ac, i64 %.490.i.i844
  store i32 %i.yt, ptr %i.yu, align 4, !tbaa !7
  %i.yv = add nuw i64 %.490.i.i844, 1             ; 2 uses
  %i.yw = getelementptr [4 x i8], ptr %.063.i.i817, i64 %i.yv
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !7
  %i.yy = getelementptr [4 x i8], ptr %i.ac, i64 %i.yv
  store i32 %i.yx, ptr %i.yy, align 4, !tbaa !7
  %i.yz = add nuw i64 %.490.i.i844, 2             ; 2 uses
  %i.za = getelementptr [4 x i8], ptr %.063.i.i817, i64 %i.yz
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !7
  %i.zc = getelementptr [4 x i8], ptr %i.ac, i64 %i.yz
  store i32 %i.zb, ptr %i.zc, align 4, !tbaa !7
  %i.zd = add nuw i64 %.490.i.i844, 3             ; 2 uses
  %i.ze = getelementptr [4 x i8], ptr %.063.i.i817, i64 %i.zd
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !7
  %i.zg = getelementptr [4 x i8], ptr %i.ac, i64 %i.zd
  store i32 %i.zf, ptr %i.zg, align 4, !tbaa !7
  %i.zh = add nuw i64 %.490.i.i844, 4             ; 2 uses
  %exitcond106.not.i.i845.3 = icmp eq i64 %i.zh, %.062.i.i818
  br i1 %exitcond106.not.i.i845.3, label %.preheader.i.i839, label %.lr.ph91.i.i843, !llvm.loop !95

bary_add.exit850:                                 ; preds = %.preheader70.i.i827, %bb.af, %.loopexit71.i.i835, %.preheader.i.i839, %.lr.ph94.preheader.i.i841
  br i1 %.not97.i.i, label %.loopexit74.i.i867, label %.lr.ph.i.i852.preheader

.lr.ph.i.i852.preheader:                          ; preds = %bary_add.exit850
  %xtraiter3433 = and i64 %i.g, 1
  %.off3626 = add i64 %5, -1
  %i.zi = icmp ult i64 %.off3626, 3
  br i1 %i.zi, label %.lr.ph.i.i852.epil.preheader, label %.lr.ph.i.i852.preheader.new

.lr.ph.i.i852.preheader.new:                      ; preds = %.lr.ph.i.i852.preheader
  %unroll_iter3438 = and i64 %i.g, 9223372036854775806
  br label %.lr.ph.i.i852

.lr.ph.i.i852:                                    ; preds = %.lr.ph.i.i852, %.lr.ph.i.i852.preheader.new
  %.06278.i.i853 = phi i64 [ 0, %.lr.ph.i.i852.preheader.new ], [ %i.aag, %.lr.ph.i.i852 ] ; 5 uses
  %.06377.i.i854 = phi i64 [ 0, %.lr.ph.i.i852.preheader.new ], [ %i.aaf, %.lr.ph.i.i852 ]
  %niter3439 = phi i64 [ 0, %.lr.ph.i.i852.preheader.new ], [ %niter3439.next.1, %.lr.ph.i.i852 ]
  %i.zj = getelementptr [4 x i8], ptr %i.ac, i64 %.06278.i.i853
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !7
  %i.zl = zext i32 %i.zk to i64
  %i.zm = getelementptr [4 x i8], ptr %.0542, i64 %.06278.i.i853
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !7
  %i.zo = zext i32 %i.zn to i64
  %i.zp = sub nsw i64 %i.zl, %i.zo
  %i.zq = add nsw i64 %i.zp, %.06377.i.i854       ; 2 uses
  %i.zr = trunc i64 %i.zq to i32
  %i.zs = getelementptr [4 x i8], ptr %i.ad, i64 %.06278.i.i853
  store i32 %i.zr, ptr %i.zs, align 4, !tbaa !7
  %i.zt = ashr i64 %i.zq, 32
  %i.zu = or disjoint i64 %.06278.i.i853, 1       ; 3 uses
  %i.zv = getelementptr [4 x i8], ptr %i.ac, i64 %i.zu
  %i.zw = load i32, ptr %i.zv, align 4, !tbaa !7
  %i.zx = zext i32 %i.zw to i64
  %i.zy = getelementptr [4 x i8], ptr %.0542, i64 %i.zu
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !7
  %i.aaa = zext i32 %i.zz to i64
  %i.aab = sub nsw i64 %i.zx, %i.aaa
  %i.aac = add nsw i64 %i.aab, %i.zt              ; 2 uses
  %i.aad = trunc i64 %i.aac to i32
  %i.aae = getelementptr [4 x i8], ptr %i.ad, i64 %i.zu
  store i32 %i.aad, ptr %i.aae, align 4, !tbaa !7
  %i.aaf = ashr i64 %i.aac, 32                    ; 3 uses
  %i.aag = add nuw nsw i64 %.06278.i.i853, 2      ; 2 uses
  %niter3439.next.1 = add i64 %niter3439, 2       ; 2 uses
  %niter3439.ncmp.1 = icmp eq i64 %niter3439.next.1, %unroll_iter3438
  br i1 %niter3439.ncmp.1, label %._crit_edge.i.i856.unr-lcssa, label %.lr.ph.i.i852, !llvm.loop !48

._crit_edge.i.i856.unr-lcssa:                     ; preds = %.lr.ph.i.i852
  %lcmp.mod3435.not = icmp eq i64 %xtraiter3433, 0
  br i1 %lcmp.mod3435.not, label %._crit_edge.i.i856, label %.lr.ph.i.i852.epil.preheader

.lr.ph.i.i852.epil.preheader:                     ; preds = %._crit_edge.i.i856.unr-lcssa, %.lr.ph.i.i852.preheader
  %.06278.i.i853.epil.init = phi i64 [ 0, %.lr.ph.i.i852.preheader ], [ %i.aag, %._crit_edge.i.i856.unr-lcssa ] ; 3 uses
  %.06377.i.i854.epil.init = phi i64 [ 0, %.lr.ph.i.i852.preheader ], [ %i.aaf, %._crit_edge.i.i856.unr-lcssa ]
  %lcmp.mod3437 = trunc i64 %i.g to i1
  call void @llvm.assume(i1 %lcmp.mod3437)
  %i.aah = getelementptr [4 x i8], ptr %i.ac, i64 %.06278.i.i853.epil.init
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !7
  %i.aaj = zext i32 %i.aai to i64
  %i.aak = getelementptr [4 x i8], ptr %.0542, i64 %.06278.i.i853.epil.init
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !7
  %i.aam = zext i32 %i.aal to i64
  %i.aan = sub nsw i64 %i.aaj, %i.aam
  %i.aao = add nsw i64 %i.aan, %.06377.i.i854.epil.init ; 2 uses
  %i.aap = trunc i64 %i.aao to i32
  %i.aaq = getelementptr [4 x i8], ptr %i.ad, i64 %.06278.i.i853.epil.init
  store i32 %i.aap, ptr %i.aaq, align 4, !tbaa !7
  %i.aar = ashr i64 %i.aao, 32
  br label %._crit_edge.i.i856

._crit_edge.i.i856:                               ; preds = %._crit_edge.i.i856.unr-lcssa, %.lr.ph.i.i852.epil.preheader
  %.lcssa3325 = phi i64 [ %i.aaf, %._crit_edge.i.i856.unr-lcssa ], [ %i.aar, %.lr.ph.i.i852.epil.preheader ]
  %i.aas = icmp eq i64 %.lcssa3325, 0
  br i1 %i.aas, label %.loopexit74.i.i867, label %.loopexit71.i.i860

.loopexit71.i.i860:                               ; preds = %._crit_edge.i.i856
  %i.aat = getelementptr [4 x i8], ptr %i.ac, i64 %i.g
  %i.aau = load i32, ptr %i.aat, align 4, !tbaa !7
  %i.aav = zext i32 %i.aau to i64
  %i.aaw = add nsw i64 %i.aav, -1                 ; 2 uses
  %i.aax = trunc i64 %i.aaw to i32
  %i.aay = getelementptr [4 x i8], ptr %i.ad, i64 %i.g
  store i32 %i.aax, ptr %i.aay, align 4, !tbaa !7
  %i.aaz = icmp ult i64 %i.aaw, 4294967296
  br i1 %i.aaz, label %.lr.ph.i.i903.preheader, label %.lr.ph.i887

.loopexit74.i.i867:                               ; preds = %bary_add.exit850, %._crit_edge.i.i856
  %.not2736 = icmp eq i64 %.idx1993, 0
  br i1 %.not2736, label %bary_2comp.exit897, label %.lr.ph93.i.i875

.lr.ph93.i.i875:                                  ; preds = %.loopexit74.i.i867
  %i.aba = getelementptr [4 x i8], ptr %i.ac, i64 %i.g
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !7
  %i.abc = getelementptr [4 x i8], ptr %i.ad, i64 %i.g
  store i32 %i.abb, ptr %i.abc, align 4, !tbaa !7
  br label %bary_2comp.exit897

.lr.ph.i887:                                      ; preds = %.loopexit71.i.i860, %bb.ah
  %.023.i888 = phi i64 [ %i.abf, %bb.ah ], [ 0, %.loopexit71.i.i860 ] ; 9 uses
  %i.abd = getelementptr [4 x i8], ptr %i.ad, i64 %.023.i888
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !7 ; 2 uses
  %.not.i889 = icmp eq i32 %i.abe, 0
  br i1 %.not.i889, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i887
  %i.abf = add nuw nsw i64 %.023.i888, 1
  %exitcond.not.i896 = icmp eq i64 %.023.i888, %i.g
  br i1 %exitcond.not.i896, label %bary_2comp.exit897, label %.lr.ph.i887, !llvm.loop !55

bb.ai:                                            ; preds = %.lr.ph.i887
  %i.abg = getelementptr [4 x i8], ptr %i.ad, i64 %.023.i888
  %i.abh = sub i32 0, %i.abe
  store i32 %i.abh, ptr %i.abg, align 4, !tbaa !7
  %.not2003.not = icmp samesign ult i64 %.023.i888, %i.g
  br i1 %.not2003.not, label %.lr.ph26.i892.preheader, label %bary_2comp.exit897

.lr.ph26.i892.preheader:                          ; preds = %bb.ai
  %i.abi = sub nuw nsw i64 %i.g, %.023.i888       ; 3 uses
  %min.iters.check2946 = icmp samesign ult i64 %i.abi, 8
  br i1 %min.iters.check2946, label %.lr.ph26.i892.preheader3320, label %vector.ph2947

end_hunk_5
begin_hunk_6_@bary_mul_toom3:bb.a
.preheader72.i.i907:                              ; preds = %.preheader72.i.i907.unr-lcssa, %.lr.ph.i.i903.epil.preheader
  %.lcssa3319 = phi i64 [ %i.ada, %.preheader72.i.i907.unr-lcssa ], [ %i.ace, %.lr.ph.i.i903.epil.preheader ]
  %i.acf = icmp eq i64 %.lcssa3319, 0
  br i1 %i.acf, label %bary_add.exit932, label %bb.aj

.lr.ph.i.i903:                                    ; preds = %.lr.ph.i.i903, %.lr.ph.i.i903.preheader.new
  %.05779.i.i904 = phi i64 [ 0, %.lr.ph.i.i903.preheader.new ], [ %i.adb, %.lr.ph.i.i903 ] ; 4 uses
  %.05878.i.i905 = phi i64 [ 0, %.lr.ph.i.i903.preheader.new ], [ %i.ada, %.lr.ph.i.i903 ]
  %niter3446 = phi i64 [ 0, %.lr.ph.i.i903.preheader.new ], [ %niter3446.next.1, %.lr.ph.i.i903 ]
  %i.acg = getelementptr [4 x i8], ptr %.0542, i64 %.05779.i.i904
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !7
  %i.aci = zext i32 %i.ach to i64
  %i.acj = getelementptr [4 x i8], ptr %i.ac, i64 %.05779.i.i904 ; 2 uses
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !7
  %i.acl = zext i32 %i.ack to i64
  %i.acm = add nuw nsw i64 %.05878.i.i905, %i.aci
  %i.acn = add nuw nsw i64 %i.acm, %i.acl         ; 2 uses
  %i.aco = trunc i64 %i.acn to i32
  store i32 %i.aco, ptr %i.acj, align 4, !tbaa !7
  %i.acp = lshr i64 %i.acn, 32
  %i.acq = or disjoint i64 %.05779.i.i904, 1      ; 2 uses
  %i.acr = getelementptr [4 x i8], ptr %.0542, i64 %i.acq
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !7
  %i.act = zext i32 %i.acs to i64
  %i.acu = getelementptr [4 x i8], ptr %i.ac, i64 %i.acq ; 2 uses
  %i.acv = load i32, ptr %i.acu, align 4, !tbaa !7
  %i.acw = zext i32 %i.acv to i64
  %i.acx = add nuw nsw i64 %i.acp, %i.act
  %i.acy = add nuw nsw i64 %i.acx, %i.acw         ; 2 uses
  %i.acz = trunc i64 %i.acy to i32
  store i32 %i.acz, ptr %i.acu, align 4, !tbaa !7
  %i.ada = lshr i64 %i.acy, 32                    ; 3 uses
  %i.adb = add nuw nsw i64 %.05779.i.i904, 2      ; 2 uses
  %niter3446.next.1 = add i64 %niter3446, 2       ; 2 uses
  %niter3446.ncmp.1 = icmp eq i64 %niter3446.next.1, %unroll_iter3445
  br i1 %niter3446.ncmp.1, label %.preheader72.i.i907.unr-lcssa, label %.lr.ph.i.i903, !llvm.loop !34

bb.aj:                                            ; preds = %.preheader72.i.i907
  %i.adc = getelementptr [4 x i8], ptr %i.ac, i64 %i.g ; 2 uses
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !7
  %i.ade = add i32 %i.add, 1
  store i32 %i.ade, ptr %i.adc, align 4, !tbaa !7
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
  %xtraiter3473 = and i64 %.064.i.i9332506, 1
  %i.adf = icmp eq i64 %.064.i.i9332506, 1
  br i1 %i.adf, label %.lr.ph.i.i938.epil.preheader, label %.lr.ph.i.i938.preheader.new

.lr.ph.i.i938.preheader.new:                      ; preds = %.lr.ph.i.i938.preheader
  %unroll_iter3478 = and i64 %.064.i.i9332506, -2
  br label %.lr.ph.i.i938

.preheader72.i.i942.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i938
  %lcmp.mod3475.not = icmp eq i64 %xtraiter3473, 0
  br i1 %lcmp.mod3475.not, label %.preheader72.i.i942, label %.lr.ph.i.i938.epil.preheader

.lr.ph.i.i938.epil.preheader:                     ; preds = %.preheader72.i.i942.loopexit.unr-lcssa, %.lr.ph.i.i938.preheader
  %.05779.i.i939.epil.init = phi i64 [ 0, %.lr.ph.i.i938.preheader ], [ %i.aep, %.preheader72.i.i942.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i940.epil.init = phi i64 [ 0, %.lr.ph.i.i938.preheader ], [ %i.aeo, %.preheader72.i.i942.loopexit.unr-lcssa ]
  %lcmp.mod3477 = trunc i64 %.064.i.i9332506 to i1
  call void @llvm.assume(i1 %lcmp.mod3477)
  %i.adg = getelementptr [4 x i8], ptr %.061.i.i9362512, i64 %.05779.i.i939.epil.init
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !7
  %i.adi = zext i32 %i.adh to i64
  %i.adj = getelementptr [4 x i8], ptr %.063.i.i9342508, i64 %.05779.i.i939.epil.init
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !7
  %i.adl = zext i32 %i.adk to i64
  %i.adm = add nuw nsw i64 %.05878.i.i940.epil.init, %i.adi
  %i.adn = add nuw nsw i64 %i.adm, %i.adl         ; 2 uses
  %i.ado = trunc i64 %i.adn to i32
  %i.adp = getelementptr [4 x i8], ptr %i.ae, i64 %.05779.i.i939.epil.init
  store i32 %i.ado, ptr %i.adp, align 4, !tbaa !7
  %i.adq = lshr i64 %i.adn, 32
  br label %.preheader72.i.i942

.preheader72.i.i942:                              ; preds = %.lr.ph.i.i938.epil.preheader, %.preheader72.i.i942.loopexit.unr-lcssa, %bb.al
  %.062.i.i9352511 = phi i64 [ %i.h, %bb.al ], [ %.062.i.i9352510, %.preheader72.i.i942.loopexit.unr-lcssa ], [ %.062.i.i9352510, %.lr.ph.i.i938.epil.preheader ] ; 8 uses
  %.063.i.i9342509 = phi ptr [ %i.ad, %bb.al ], [ %.063.i.i9342508, %.preheader72.i.i942.loopexit.unr-lcssa ], [ %.063.i.i9342508, %.lr.ph.i.i938.epil.preheader ] ; 9 uses
  %.064.i.i9332507 = phi i64 [ 0, %bb.al ], [ %.064.i.i9332506, %.preheader72.i.i942.loopexit.unr-lcssa ], [ %.064.i.i9332506, %.lr.ph.i.i938.epil.preheader ] ; 7 uses
  %.058.lcssa.i.i943 = phi i64 [ 0, %bb.al ], [ %i.aeo, %.preheader72.i.i942.loopexit.unr-lcssa ], [ %i.adq, %.lr.ph.i.i938.epil.preheader ] ; 2 uses
  %.063.i.i93425092988 = ptrtoaddr ptr %.063.i.i9342509 to i64
  %i.adr = icmp ult i64 %.064.i.i9332507, %.062.i.i9352511
  br i1 %i.adr, label %.lr.ph83.i.i963, label %.preheader70.i.i944

.lr.ph.i.i938:                                    ; preds = %.lr.ph.i.i938, %.lr.ph.i.i938.preheader.new
  %.05779.i.i939 = phi i64 [ 0, %.lr.ph.i.i938.preheader.new ], [ %i.aep, %.lr.ph.i.i938 ] ; 5 uses
  %.05878.i.i940 = phi i64 [ 0, %.lr.ph.i.i938.preheader.new ], [ %i.aeo, %.lr.ph.i.i938 ]
  %niter3479 = phi i64 [ 0, %.lr.ph.i.i938.preheader.new ], [ %niter3479.next.1, %.lr.ph.i.i938 ]
  %i.ads = getelementptr [4 x i8], ptr %.061.i.i9362512, i64 %.05779.i.i939
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !7
  %i.adu = zext i32 %i.adt to i64
  %i.adv = getelementptr [4 x i8], ptr %.063.i.i9342508, i64 %.05779.i.i939
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !7
  %i.adx = zext i32 %i.adw to i64
  %i.ady = add nuw nsw i64 %.05878.i.i940, %i.adu
  %i.adz = add nuw nsw i64 %i.ady, %i.adx         ; 2 uses
  %i.aea = trunc i64 %i.adz to i32
  %i.aeb = getelementptr [4 x i8], ptr %i.ae, i64 %.05779.i.i939
  store i32 %i.aea, ptr %i.aeb, align 4, !tbaa !7
  %i.aec = lshr i64 %i.adz, 32
  %i.aed = or disjoint i64 %.05779.i.i939, 1      ; 3 uses
  %i.aee = getelementptr [4 x i8], ptr %.061.i.i9362512, i64 %i.aed
  %i.aef = load i32, ptr %i.aee, align 4, !tbaa !7
  %i.aeg = zext i32 %i.aef to i64
  %i.aeh = getelementptr [4 x i8], ptr %.063.i.i9342508, i64 %i.aed
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !7
  %i.aej = zext i32 %i.aei to i64
  %i.aek = add nuw nsw i64 %i.aec, %i.aeg
  %i.ael = add nuw nsw i64 %i.aek, %i.aej         ; 2 uses
  %i.aem = trunc i64 %i.ael to i32
  %i.aen = getelementptr [4 x i8], ptr %i.ae, i64 %i.aed
  store i32 %i.aem, ptr %i.aen, align 4, !tbaa !7
  %i.aeo = lshr i64 %i.ael, 32                    ; 3 uses
  %i.aep = add nuw i64 %.05779.i.i939, 2          ; 2 uses
  %niter3479.next.1 = add i64 %niter3479, 2       ; 2 uses
  %niter3479.ncmp.1 = icmp eq i64 %niter3479.next.1, %unroll_iter3478
  br i1 %niter3479.ncmp.1, label %.preheader72.i.i942.loopexit.unr-lcssa, label %.lr.ph.i.i938, !llvm.loop !34

.preheader70.i.i944:                              ; preds = %.preheader72.i.i942
  %.not2009 = icmp ugt i64 %.064.i.i9332507, %i.g
  br i1 %.not2009, label %.critedge599, label %.lr.ph88.preheader.i.i950

.lr.ph88.preheader.i.i950:                        ; preds = %.preheader70.i.i944
  %i.aeq = icmp eq i64 %.058.lcssa.i.i943, 0
  br i1 %i.aeq, label %.loopexit71.i.i952, label %bb.am

bb.am:                                            ; preds = %.lr.ph88.preheader.i.i950
  %i.aer = getelementptr [4 x i8], ptr %i.ae, i64 %.064.i.i9332507
  store i32 1, ptr %i.aer, align 4, !tbaa !7
  %i.aes = add nuw nsw i64 %.064.i.i9332507, 1
  %exitcond103.peel.not.i.i951 = icmp eq i64 %.064.i.i9332507, %i.g
  br i1 %exitcond103.peel.not.i.i951, label %.critedge599, label %.loopexit71.i.i952

.lr.ph83.i.i963:                                  ; preds = %.preheader72.i.i942, %bb.an
  %.182.i.i964 = phi i64 [ %i.afb, %bb.an ], [ %.064.i.i9332507, %.preheader72.i.i942 ] ; 4 uses
  %.15981.i.i965 = phi i64 [ %i.afa, %bb.an ], [ %.058.lcssa.i.i943, %.preheader72.i.i942 ]
  %i.aet = icmp eq i64 %.15981.i.i965, 0
  br i1 %i.aet, label %.loopexit71.i.i952, label %bb.an

bb.an:                                            ; preds = %.lr.ph83.i.i963
  %i.aeu = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %.182.i.i964
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !7
  %i.aew = zext i32 %i.aev to i64
  %i.aex = add nuw nsw i64 %i.aew, 1              ; 2 uses
  %i.aey = trunc i64 %i.aex to i32
  %i.aez = getelementptr [4 x i8], ptr %i.ae, i64 %.182.i.i964
  store i32 %i.aey, ptr %i.aez, align 4, !tbaa !7
  %i.afa = lshr i64 %i.aex, 32
  %i.afb = add i64 %.182.i.i964, 1                ; 2 uses
  %exitcond102.not.i.i966 = icmp eq i64 %i.afb, %.062.i.i9352511
  br i1 %exitcond102.not.i.i966, label %.critedge599, label %.lr.ph83.i.i963, !llvm.loop !36

.loopexit71.i.i952:                               ; preds = %.lr.ph83.i.i963, %bb.am, %.lr.ph88.preheader.i.i950
  %.3.i.i953 = phi i64 [ %i.aes, %bb.am ], [ %.064.i.i9332507, %.lr.ph88.preheader.i.i950 ], [ %.182.i.i964, %.lr.ph83.i.i963 ] ; 8 uses
  %i.afc = icmp eq ptr %.063.i.i9342509, %i.ae
  %i.afd = icmp eq i64 %.062.i.i9352511, %i.h
  %or.cond.i.i954 = and i1 %i.afc, %i.afd
  br i1 %or.cond.i.i954, label %.critedge599, label %.preheader69.i.i955

.preheader69.i.i955:                              ; preds = %.loopexit71.i.i952
  %i.afe = icmp ult i64 %.3.i.i953, %.062.i.i9352511
  br i1 %i.afe, label %.lr.ph91.i.i960.preheader, label %.preheader.i.i956

.lr.ph91.i.i960.preheader:                        ; preds = %.preheader69.i.i955
  %i.aff = sub nuw i64 %.062.i.i9352511, %.3.i.i953 ; 3 uses
  %min.iters.check2991 = icmp ult i64 %i.aff, 20
  br i1 %min.iters.check2991, label %.lr.ph91.i.i960.preheader3303, label %vector.memcheck2987

vector.memcheck2987:                              ; preds = %.lr.ph91.i.i960.preheader
  %i.afg = mul i64 %i.g, 20
  %i.afh = add i64 %i.afg, %.05322856
  %i.afi = sub i64 %i.afh, %.063.i.i93425092988
  %i.afj = add i64 %i.afi, 19
  %diff.check2989 = icmp ult i64 %i.afj, 31
  br i1 %diff.check2989, label %.lr.ph91.i.i960.preheader3303, label %vector.ph2992

vector.ph2992:                                    ; preds = %vector.memcheck2987
  %n.vec2994 = and i64 %i.aff, -8                 ; 3 uses
  %i.afk = add i64 %.3.i.i953, %n.vec2994
  br label %vector.body2995

vector.body2995:                                  ; preds = %vector.body2995, %vector.ph2992
  %index2996 = phi i64 [ 0, %vector.ph2992 ], [ %index.next2999, %vector.body2995 ] ; 2 uses
  %i.afl = add i64 %.3.i.i953, %index2996         ; 2 uses
  %i.afm = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %i.afl ; 2 uses
  %i.afn = getelementptr i8, ptr %i.afm, i64 16
  %wide.load2997 = load <4 x i32>, ptr %i.afm, align 4, !tbaa !7
  %wide.load2998 = load <4 x i32>, ptr %i.afn, align 4, !tbaa !7
  %i.afo = getelementptr [4 x i8], ptr %i.ae, i64 %i.afl ; 2 uses
  %i.afp = getelementptr i8, ptr %i.afo, i64 16
  store <4 x i32> %wide.load2997, ptr %i.afo, align 4, !tbaa !7
  store <4 x i32> %wide.load2998, ptr %i.afp, align 4, !tbaa !7
  %index.next2999 = add nuw i64 %index2996, 8     ; 2 uses
  %i.afq = icmp eq i64 %index.next2999, %n.vec2994
  br i1 %i.afq, label %middle.block3000, label %vector.body2995, !llvm.loop !98

middle.block3000:                                 ; preds = %vector.body2995
  %cmp.n3001 = icmp eq i64 %i.aff, %n.vec2994
  br i1 %cmp.n3001, label %.critedge599, label %.lr.ph91.i.i960.preheader3303

.lr.ph91.i.i960.preheader3303:                    ; preds = %vector.memcheck2987, %.lr.ph91.i.i960.preheader, %middle.block3000
  %.490.i.i961.ph = phi i64 [ %.3.i.i953, %vector.memcheck2987 ], [ %.3.i.i953, %.lr.ph91.i.i960.preheader ], [ %i.afk, %middle.block3000 ] ; 4 uses
  %i.afr = sub i64 %.062.i.i9352511, %.490.i.i961.ph
  %xtraiter3480 = and i64 %i.afr, 3               ; 2 uses
  %lcmp.mod3481.not = icmp eq i64 %xtraiter3480, 0
  br i1 %lcmp.mod3481.not, label %.lr.ph91.i.i960.prol.loopexit, label %.lr.ph91.i.i960.prol

.lr.ph91.i.i960.prol:                             ; preds = %.lr.ph91.i.i960.preheader3303, %.lr.ph91.i.i960.prol
  %.490.i.i961.prol = phi i64 [ %i.afv, %.lr.ph91.i.i960.prol ], [ %.490.i.i961.ph, %.lr.ph91.i.i960.preheader3303 ] ; 3 uses
  %prol.iter3482 = phi i64 [ %prol.iter3482.next, %.lr.ph91.i.i960.prol ], [ 0, %.lr.ph91.i.i960.preheader3303 ]
  %i.afs = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %.490.i.i961.prol
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !7
  %i.afu = getelementptr [4 x i8], ptr %i.ae, i64 %.490.i.i961.prol
  store i32 %i.aft, ptr %i.afu, align 4, !tbaa !7
  %i.afv = add nuw i64 %.490.i.i961.prol, 1       ; 2 uses
  %prol.iter3482.next = add i64 %prol.iter3482, 1 ; 2 uses
  %prol.iter3482.cmp.not = icmp eq i64 %prol.iter3482.next, %xtraiter3480
  br i1 %prol.iter3482.cmp.not, label %.lr.ph91.i.i960.prol.loopexit, label %.lr.ph91.i.i960.prol, !llvm.loop !99

.lr.ph91.i.i960.prol.loopexit:                    ; preds = %.lr.ph91.i.i960.prol, %.lr.ph91.i.i960.preheader3303
  %.490.i.i961.unr = phi i64 [ %.490.i.i961.ph, %.lr.ph91.i.i960.preheader3303 ], [ %i.afv, %.lr.ph91.i.i960.prol ]
  %i.afw = sub i64 %.490.i.i961.ph, %.062.i.i9352511
  %i.afx = icmp ugt i64 %i.afw, -4
  br i1 %i.afx, label %.critedge599, label %.lr.ph91.i.i960

.preheader.i.i956:                                ; preds = %.preheader69.i.i955
  %.not2010 = icmp ugt i64 %.3.i.i953, %i.g
  br i1 %.not2010, label %.critedge599, label %.critedge599.sink.split

.lr.ph91.i.i960:                                  ; preds = %.lr.ph91.i.i960.prol.loopexit, %.lr.ph91.i.i960
  %.490.i.i961 = phi i64 [ %i.agn, %.lr.ph91.i.i960 ], [ %.490.i.i961.unr, %.lr.ph91.i.i960.prol.loopexit ] ; 6 uses
  %i.afy = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %.490.i.i961
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !7
  %i.aga = getelementptr [4 x i8], ptr %i.ae, i64 %.490.i.i961
  store i32 %i.afz, ptr %i.aga, align 4, !tbaa !7
  %i.agb = add nuw i64 %.490.i.i961, 1            ; 2 uses
  %i.agc = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %i.agb
  %i.agd = load i32, ptr %i.agc, align 4, !tbaa !7
  %i.age = getelementptr [4 x i8], ptr %i.ae, i64 %i.agb
  store i32 %i.agd, ptr %i.age, align 4, !tbaa !7
  %i.agf = add nuw i64 %.490.i.i961, 2            ; 2 uses
  %i.agg = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %i.agf
  %i.agh = load i32, ptr %i.agg, align 4, !tbaa !7
  %i.agi = getelementptr [4 x i8], ptr %i.ae, i64 %i.agf
  store i32 %i.agh, ptr %i.agi, align 4, !tbaa !7
  %i.agj = add nuw i64 %.490.i.i961, 3            ; 2 uses
  %i.agk = getelementptr [4 x i8], ptr %.063.i.i9342509, i64 %i.agj
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !7
  %i.agm = getelementptr [4 x i8], ptr %i.ae, i64 %i.agj
  store i32 %i.agl, ptr %i.agm, align 4, !tbaa !7
  %i.agn = add nuw i64 %.490.i.i961, 4            ; 2 uses
  %exitcond106.not.i.i962.3 = icmp eq i64 %i.agn, %.062.i.i9352511
  br i1 %exitcond106.not.i.i962.3, label %.critedge599, label %.lr.ph91.i.i960, !llvm.loop !100

bb.ao:                                            ; preds = %bb.aj, %.preheader72.i.i907.thread, %bary_add.exit932
  %.0555249124952498 = phi i32 [ %.0555, %.preheader72.i.i907.thread ], [ %.05552490, %bary_add.exit932 ], [ %.05552490, %bb.aj ] ; 6 uses
  %i.ago = call i64 @llvm.umin.i64(i64 %.0543, i64 %i.h) ; 10 uses
  %.not97.i.i968 = icmp eq i64 %.0543, 0
  br i1 %.not97.i.i968, label %._crit_edge.i.i973, label %.lr.ph.i.i969.preheader

.lr.ph.i.i969.preheader:                          ; preds = %bb.ao
  %xtraiter3447 = and i64 %i.ago, 1
  %i.agp = icmp eq i64 %i.ago, 1
  br i1 %i.agp, label %.lr.ph.i.i969.epil.preheader, label %.lr.ph.i.i969.preheader.new

.lr.ph.i.i969.preheader.new:                      ; preds = %.lr.ph.i.i969.preheader
  %unroll_iter3452 = and i64 %i.ago, 9223372036854775806
  br label %.lr.ph.i.i969

.lr.ph.i.i969:                                    ; preds = %.lr.ph.i.i969, %.lr.ph.i.i969.preheader.new
  %.06278.i.i970 = phi i64 [ 0, %.lr.ph.i.i969.preheader.new ], [ %i.ahn, %.lr.ph.i.i969 ] ; 5 uses
  %.06377.i.i971 = phi i64 [ 0, %.lr.ph.i.i969.preheader.new ], [ %i.ahm, %.lr.ph.i.i969 ]
  %niter3453 = phi i64 [ 0, %.lr.ph.i.i969.preheader.new ], [ %niter3453.next.1, %.lr.ph.i.i969 ]
  %i.agq = getelementptr [4 x i8], ptr %.0546, i64 %.06278.i.i970
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !7
  %i.ags = zext i32 %i.agr to i64
  %i.agt = getelementptr [4 x i8], ptr %i.ad, i64 %.06278.i.i970
  %i.agu = load i32, ptr %i.agt, align 4, !tbaa !7
  %i.agv = zext i32 %i.agu to i64
  %i.agw = sub nsw i64 %i.ags, %i.agv
  %i.agx = add nsw i64 %i.agw, %.06377.i.i971     ; 2 uses
  %i.agy = trunc i64 %i.agx to i32
  %i.agz = getelementptr [4 x i8], ptr %i.ae, i64 %.06278.i.i970
  store i32 %i.agy, ptr %i.agz, align 4, !tbaa !7
  %i.aha = ashr i64 %i.agx, 32
  %i.ahb = or disjoint i64 %.06278.i.i970, 1      ; 3 uses
  %i.ahc = getelementptr [4 x i8], ptr %.0546, i64 %i.ahb
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !7
  %i.ahe = zext i32 %i.ahd to i64
  %i.ahf = getelementptr [4 x i8], ptr %i.ad, i64 %i.ahb
  %i.ahg = load i32, ptr %i.ahf, align 4, !tbaa !7
  %i.ahh = zext i32 %i.ahg to i64
  %i.ahi = sub nsw i64 %i.ahe, %i.ahh
  %i.ahj = add nsw i64 %i.ahi, %i.aha             ; 2 uses
  %i.ahk = trunc i64 %i.ahj to i32
  %i.ahl = getelementptr [4 x i8], ptr %i.ae, i64 %i.ahb
  store i32 %i.ahk, ptr %i.ahl, align 4, !tbaa !7
  %i.ahm = ashr i64 %i.ahj, 32                    ; 3 uses
  %i.ahn = add nuw nsw i64 %.06278.i.i970, 2      ; 2 uses
  %niter3453.next.1 = add i64 %niter3453, 2       ; 2 uses
  %niter3453.ncmp.1 = icmp eq i64 %niter3453.next.1, %unroll_iter3452
  br i1 %niter3453.ncmp.1, label %._crit_edge.i.i973.loopexit.unr-lcssa, label %.lr.ph.i.i969, !llvm.loop !48

._crit_edge.i.i973.loopexit.unr-lcssa:            ; preds = %.lr.ph.i.i969
  %lcmp.mod3449.not = icmp eq i64 %xtraiter3447, 0
  br i1 %lcmp.mod3449.not, label %._crit_edge.i.i973, label %.lr.ph.i.i969.epil.preheader

.lr.ph.i.i969.epil.preheader:                     ; preds = %._crit_edge.i.i973.loopexit.unr-lcssa, %.lr.ph.i.i969.preheader
  %.06278.i.i970.epil.init = phi i64 [ 0, %.lr.ph.i.i969.preheader ], [ %i.ahn, %._crit_edge.i.i973.loopexit.unr-lcssa ] ; 3 uses
  %.06377.i.i971.epil.init = phi i64 [ 0, %.lr.ph.i.i969.preheader ], [ %i.ahm, %._crit_edge.i.i973.loopexit.unr-lcssa ]
  %lcmp.mod3451 = trunc i64 %i.ago to i1
  call void @llvm.assume(i1 %lcmp.mod3451)
  %i.aho = getelementptr [4 x i8], ptr %.0546, i64 %.06278.i.i970.epil.init
  %i.ahp = load i32, ptr %i.aho, align 4, !tbaa !7
  %i.ahq = zext i32 %i.ahp to i64
  %i.ahr = getelementptr [4 x i8], ptr %i.ad, i64 %.06278.i.i970.epil.init
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !7
  %i.aht = zext i32 %i.ahs to i64
  %i.ahu = sub nsw i64 %i.ahq, %i.aht
  %i.ahv = add nsw i64 %i.ahu, %.06377.i.i971.epil.init ; 2 uses
  %i.ahw = trunc i64 %i.ahv to i32
  %i.ahx = getelementptr [4 x i8], ptr %i.ae, i64 %.06278.i.i970.epil.init
  store i32 %i.ahw, ptr %i.ahx, align 4, !tbaa !7
  %i.ahy = ashr i64 %i.ahv, 32
  br label %._crit_edge.i.i973

._crit_edge.i.i973:                               ; preds = %.lr.ph.i.i969.epil.preheader, %._crit_edge.i.i973.loopexit.unr-lcssa, %bb.ao
  %.063.lcssa.i.i974 = phi i64 [ 0, %bb.ao ], [ %i.ahm, %._crit_edge.i.i973.loopexit.unr-lcssa ], [ %i.ahy, %.lr.ph.i.i969.epil.preheader ] ; 4 uses
  %.not.i.i975.not = icmp ult i64 %i.g, %.0543
  br i1 %.not.i.i975.not, label %.preheader72.i.i976, label %.lr.ph87.i.i999.preheader

.lr.ph87.i.i999.preheader:                        ; preds = %._crit_edge.i.i973
  %i.ahz = add nuw nsw i64 %i.g, 1
  %i.aia = sub nuw nsw i64 %i.ahz, %i.ago
  %i.aib = sub nuw nsw i64 %i.g, %i.ago
  %xtraiter3454 = and i64 %i.aia, 3               ; 2 uses
  %lcmp.mod3455.not = icmp eq i64 %xtraiter3454, 0
  br i1 %lcmp.mod3455.not, label %.lr.ph87.i.i999.prol.loopexit, label %.lr.ph87.i.i999.prol

.lr.ph87.i.i999.prol:                             ; preds = %.lr.ph87.i.i999.preheader, %.lr.ph87.i.i999.prol
  %.286.i.i1000.prol = phi i64 [ %i.aij, %.lr.ph87.i.i999.prol ], [ %i.ago, %.lr.ph87.i.i999.preheader ] ; 3 uses
  %.26585.i.i1001.prol = phi i64 [ %i.aii, %.lr.ph87.i.i999.prol ], [ %.063.lcssa.i.i974, %.lr.ph87.i.i999.preheader ]
  %prol.iter3456 = phi i64 [ %prol.iter3456.next, %.lr.ph87.i.i999.prol ], [ 0, %.lr.ph87.i.i999.preheader ]
  %i.aic = getelementptr [4 x i8], ptr %i.ad, i64 %.286.i.i1000.prol
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !7
  %i.aie = zext i32 %i.aid to i64
  %i.aif = sub nsw i64 %.26585.i.i1001.prol, %i.aie ; 2 uses
  %i.aig = trunc i64 %i.aif to i32
  %i.aih = getelementptr [4 x i8], ptr %i.ae, i64 %.286.i.i1000.prol
  store i32 %i.aig, ptr %i.aih, align 4, !tbaa !7
  %i.aii = ashr i64 %i.aif, 32                    ; 3 uses
  %i.aij = add nuw i64 %.286.i.i1000.prol, 1      ; 2 uses
  %prol.iter3456.next = add i64 %prol.iter3456, 1 ; 2 uses
  %prol.iter3456.cmp.not = icmp eq i64 %prol.iter3456.next, %xtraiter3454
  br i1 %prol.iter3456.cmp.not, label %.lr.ph87.i.i999.prol.loopexit, label %.lr.ph87.i.i999.prol, !llvm.loop !101

.lr.ph87.i.i999.prol.loopexit:                    ; preds = %.lr.ph87.i.i999.prol, %.lr.ph87.i.i999.preheader
  %.lcssa3317.unr = phi i64 [ poison, %.lr.ph87.i.i999.preheader ], [ %i.aii, %.lr.ph87.i.i999.prol ]
  %.286.i.i1000.unr = phi i64 [ %i.ago, %.lr.ph87.i.i999.preheader ], [ %i.aij, %.lr.ph87.i.i999.prol ]
  %.26585.i.i1001.unr = phi i64 [ %.063.lcssa.i.i974, %.lr.ph87.i.i999.preheader ], [ %i.aii, %.lr.ph87.i.i999.prol ]
  %i.aik = icmp samesign ult i64 %i.aib, 3
  br i1 %i.aik, label %.loopexit71.i.i977, label %.lr.ph87.i.i999

.preheader72.i.i976:                              ; preds = %._crit_edge.i.i973
  %i.ail = icmp ult i64 %i.h, %.0543
  br i1 %i.ail, label %.lr.ph82.i.i995, label %.loopexit71.i.i977

.lr.ph82.i.i995:                                  ; preds = %.preheader72.i.i976, %bb.ap
  %.181.i.i996 = phi i64 [ %i.aiu, %bb.ap ], [ %i.ago, %.preheader72.i.i976 ] ; 4 uses
  %.16480.i.i997 = phi i64 [ %i.ait, %bb.ap ], [ %.063.lcssa.i.i974, %.preheader72.i.i976 ]
  %i.aim = icmp eq i64 %.16480.i.i997, 0
  br i1 %i.aim, label %.loopexit74.i.i984, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph82.i.i995
  %i.ain = getelementptr [4 x i8], ptr %.0546, i64 %.181.i.i996
  %i.aio = load i32, ptr %i.ain, align 4, !tbaa !7
  %i.aip = zext i32 %i.aio to i64
  %i.aiq = add nsw i64 %i.aip, -1                 ; 2 uses
  %i.air = trunc i64 %i.aiq to i32
  %i.ais = getelementptr [4 x i8], ptr %i.ae, i64 %.181.i.i996
  store i32 %i.air, ptr %i.ais, align 4, !tbaa !7
  %i.ait = ashr i64 %i.aiq, 32                    ; 2 uses
  %i.aiu = add i64 %.181.i.i996, 1                ; 2 uses
  %exitcond107.not.i.i998 = icmp eq i64 %i.aiu, %.0543
  br i1 %exitcond107.not.i.i998, label %.loopexit71.i.i977, label %.lr.ph82.i.i995, !llvm.loop !50

.lr.ph87.i.i999:                                  ; preds = %.lr.ph87.i.i999.prol.loopexit, %.lr.ph87.i.i999
  %.286.i.i1000 = phi i64 [ %i.aka, %.lr.ph87.i.i999 ], [ %.286.i.i1000.unr, %.lr.ph87.i.i999.prol.loopexit ] ; 6 uses
  %.26585.i.i1001 = phi i64 [ %i.ajz, %.lr.ph87.i.i999 ], [ %.26585.i.i1001.unr, %.lr.ph87.i.i999.prol.loopexit ]
  %i.aiv = getelementptr [4 x i8], ptr %i.ad, i64 %.286.i.i1000
  %i.aiw = load i32, ptr %i.aiv, align 4, !tbaa !7
  %i.aix = zext i32 %i.aiw to i64
  %i.aiy = sub nsw i64 %.26585.i.i1001, %i.aix    ; 2 uses
  %i.aiz = trunc i64 %i.aiy to i32
  %i.aja = getelementptr [4 x i8], ptr %i.ae, i64 %.286.i.i1000
  store i32 %i.aiz, ptr %i.aja, align 4, !tbaa !7
  %i.ajb = ashr i64 %i.aiy, 32
  %i.ajc = add nuw i64 %.286.i.i1000, 1           ; 2 uses
  %i.ajd = getelementptr [4 x i8], ptr %i.ad, i64 %i.ajc
  %i.aje = load i32, ptr %i.ajd, align 4, !tbaa !7
  %i.ajf = zext i32 %i.aje to i64
  %i.ajg = sub nsw i64 %i.ajb, %i.ajf             ; 2 uses
  %i.ajh = trunc i64 %i.ajg to i32
  %i.aji = getelementptr [4 x i8], ptr %i.ae, i64 %i.ajc
  store i32 %i.ajh, ptr %i.aji, align 4, !tbaa !7
  %i.ajj = ashr i64 %i.ajg, 32
  %i.ajk = add nuw i64 %.286.i.i1000, 2           ; 2 uses
  %i.ajl = getelementptr [4 x i8], ptr %i.ad, i64 %i.ajk
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !7
  %i.ajn = zext i32 %i.ajm to i64
  %i.ajo = sub nsw i64 %i.ajj, %i.ajn             ; 2 uses
  %i.ajp = trunc i64 %i.ajo to i32
  %i.ajq = getelementptr [4 x i8], ptr %i.ae, i64 %i.ajk
  store i32 %i.ajp, ptr %i.ajq, align 4, !tbaa !7
  %i.ajr = ashr i64 %i.ajo, 32
  %i.ajs = add nuw i64 %.286.i.i1000, 3           ; 3 uses
  %i.ajt = getelementptr [4 x i8], ptr %i.ad, i64 %i.ajs
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !7
  %i.ajv = zext i32 %i.aju to i64
  %i.ajw = sub nsw i64 %i.ajr, %i.ajv             ; 2 uses
  %i.ajx = trunc i64 %i.ajw to i32
  %i.ajy = getelementptr [4 x i8], ptr %i.ae, i64 %i.ajs
  store i32 %i.ajx, ptr %i.ajy, align 4, !tbaa !7
  %i.ajz = ashr i64 %i.ajw, 32                    ; 2 uses
  %i.aka = add nuw i64 %.286.i.i1000, 4
  %exitcond108.not.i.i1002.3 = icmp eq i64 %i.ajs, %i.g
  br i1 %exitcond108.not.i.i1002.3, label %.loopexit71.i.i977, label %.lr.ph87.i.i999, !llvm.loop !51

.loopexit71.i.i977:                               ; preds = %.lr.ph87.i.i999.prol.loopexit, %.lr.ph87.i.i999, %bb.ap, %.preheader72.i.i976
  %.366.i.i978 = phi i64 [ %.063.lcssa.i.i974, %.preheader72.i.i976 ], [ %i.ait, %bb.ap ], [ %.lcssa3317.unr, %.lr.ph87.i.i999.prol.loopexit ], [ %i.ajz, %.lr.ph87.i.i999 ]
  %.3.i.i979 = phi i64 [ %i.ago, %.preheader72.i.i976 ], [ %.0543, %bb.ap ], [ %i.h, %.lr.ph87.i.i999 ], [ %i.h, %.lr.ph87.i.i999.prol.loopexit ] ; 4 uses
  %i.akb = icmp eq i64 %.366.i.i978, 0
  br i1 %i.akb, label %.loopexit74.i.i984, label %.preheader68.i.i980

.preheader68.i.i980:                              ; preds = %.loopexit71.i.i977
  %.not2005 = icmp ugt i64 %.3.i.i979, %i.g
  br i1 %.not2005, label %.lr.ph.i1004.preheader, label %.lr.ph91.preheader.i.i982

.lr.ph.i1004.preheader:                           ; preds = %.lr.ph91.preheader.i.i982, %.preheader68.i.i980
  br label %.lr.ph.i1004

.lr.ph91.preheader.i.i982:                        ; preds = %.preheader68.i.i980
  %i.akc = shl i64 %.3.i.i979, 2
  %scevgep.i.i983 = getelementptr i8, ptr %i.ae, i64 %i.akc
  %i.akd = sub nuw nsw i64 %i.h, %.3.i.i979
  %i.ake = shl i64 %i.akd, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i983, i8 -1, i64 %i.ake, i1 false), !tbaa !7
  br label %.lr.ph.i1004.preheader

.loopexit74.i.i984:                               ; preds = %.lr.ph82.i.i995, %.loopexit71.i.i977
  %.5.i.i985 = phi i64 [ %.3.i.i979, %.loopexit71.i.i977 ], [ %.181.i.i996, %.lr.ph82.i.i995 ] ; 7 uses
  %i.akf = icmp eq ptr %.0546, %i.ae
  %i.akg = icmp eq i64 %.0543, %i.h
  %or.cond.i.i986 = and i1 %i.akf, %i.akg
  br i1 %or.cond.i.i986, label %.critedge599, label %.preheader67.i.i987

.preheader67.i.i987:                              ; preds = %.loopexit74.i.i984
  %i.akh = icmp ult i64 %.5.i.i985, %.0543
  br i1 %i.akh, label %.lr.ph93.i.i992.preheader, label %.preheader.i.i988

.lr.ph93.i.i992.preheader:                        ; preds = %.preheader67.i.i987
  %i.aki = sub nuw i64 %.0543, %.5.i.i985         ; 3 uses
  %min.iters.check2975 = icmp ult i64 %i.aki, 20
  br i1 %min.iters.check2975, label %.lr.ph93.i.i992.preheader3307, label %vector.memcheck2971

vector.memcheck2971:                              ; preds = %.lr.ph93.i.i992.preheader
  %i.akj = mul i64 %i.g, 20
  %i.akk = add i64 %i.akj, %.05322856
  %i.akl = sub i64 %i.akk, %.05462972
  %i.akm = add i64 %i.akl, 19
  %diff.check2973 = icmp ult i64 %i.akm, 31
  br i1 %diff.check2973, label %.lr.ph93.i.i992.preheader3307, label %vector.ph2976

vector.ph2976:                                    ; preds = %vector.memcheck2971
  %n.vec2978 = and i64 %i.aki, -8                 ; 3 uses
  %i.akn = add i64 %.5.i.i985, %n.vec2978
  br label %vector.body2979

vector.body2979:                                  ; preds = %vector.body2979, %vector.ph2976
  %index2980 = phi i64 [ 0, %vector.ph2976 ], [ %index.next2983, %vector.body2979 ] ; 2 uses
  %i.ako = add i64 %.5.i.i985, %index2980         ; 2 uses
  %i.akp = getelementptr [4 x i8], ptr %.0546, i64 %i.ako ; 2 uses
  %i.akq = getelementptr i8, ptr %i.akp, i64 16
  %wide.load2981 = load <4 x i32>, ptr %i.akp, align 4, !tbaa !7
  %wide.load2982 = load <4 x i32>, ptr %i.akq, align 4, !tbaa !7
  %i.akr = getelementptr [4 x i8], ptr %i.ae, i64 %i.ako ; 2 uses
  %i.aks = getelementptr i8, ptr %i.akr, i64 16
  store <4 x i32> %wide.load2981, ptr %i.akr, align 4, !tbaa !7
  store <4 x i32> %wide.load2982, ptr %i.aks, align 4, !tbaa !7
  %index.next2983 = add nuw i64 %index2980, 8     ; 2 uses
  %i.akt = icmp eq i64 %index.next2983, %n.vec2978
  br i1 %i.akt, label %middle.block2984, label %vector.body2979, !llvm.loop !102

middle.block2984:                                 ; preds = %vector.body2979
  %cmp.n2985 = icmp eq i64 %i.aki, %n.vec2978
  br i1 %cmp.n2985, label %.preheader.i.i988, label %.lr.ph93.i.i992.preheader3307

.lr.ph93.i.i992.preheader3307:                    ; preds = %vector.memcheck2971, %.lr.ph93.i.i992.preheader, %middle.block2984
  %.692.i.i993.ph = phi i64 [ %.5.i.i985, %vector.memcheck2971 ], [ %.5.i.i985, %.lr.ph93.i.i992.preheader ], [ %i.akn, %middle.block2984 ] ; 4 uses
  %i.aku = sub i64 %.0543, %.692.i.i993.ph
  %xtraiter3470 = and i64 %i.aku, 3               ; 2 uses
  %lcmp.mod3471.not = icmp eq i64 %xtraiter3470, 0
  br i1 %lcmp.mod3471.not, label %.lr.ph93.i.i992.prol.loopexit, label %.lr.ph93.i.i992.prol

.lr.ph93.i.i992.prol:                             ; preds = %.lr.ph93.i.i992.preheader3307, %.lr.ph93.i.i992.prol
  %.692.i.i993.prol = phi i64 [ %i.aky, %.lr.ph93.i.i992.prol ], [ %.692.i.i993.ph, %.lr.ph93.i.i992.preheader3307 ] ; 3 uses
  %prol.iter3472 = phi i64 [ %prol.iter3472.next, %.lr.ph93.i.i992.prol ], [ 0, %.lr.ph93.i.i992.preheader3307 ]
  %i.akv = getelementptr [4 x i8], ptr %.0546, i64 %.692.i.i993.prol
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !7
  %i.akx = getelementptr [4 x i8], ptr %i.ae, i64 %.692.i.i993.prol
  store i32 %i.akw, ptr %i.akx, align 4, !tbaa !7
  %i.aky = add nuw i64 %.692.i.i993.prol, 1       ; 2 uses
  %prol.iter3472.next = add i64 %prol.iter3472, 1 ; 2 uses
  %prol.iter3472.cmp.not = icmp eq i64 %prol.iter3472.next, %xtraiter3470
  br i1 %prol.iter3472.cmp.not, label %.lr.ph93.i.i992.prol.loopexit, label %.lr.ph93.i.i992.prol, !llvm.loop !103

.lr.ph93.i.i992.prol.loopexit:                    ; preds = %.lr.ph93.i.i992.prol, %.lr.ph93.i.i992.preheader3307
  %.692.i.i993.unr = phi i64 [ %.692.i.i993.ph, %.lr.ph93.i.i992.preheader3307 ], [ %i.aky, %.lr.ph93.i.i992.prol ]
  %i.akz = sub i64 %.692.i.i993.ph, %.0543
  %i.ala = icmp ugt i64 %i.akz, -4
  br i1 %i.ala, label %.preheader.i.i988, label %.lr.ph93.i.i992

.preheader.i.i988:                                ; preds = %.lr.ph93.i.i992.prol.loopexit, %.lr.ph93.i.i992, %middle.block2984, %.preheader67.i.i987
  %.6.lcssa.i.i989 = phi i64 [ %.5.i.i985, %.preheader67.i.i987 ], [ %.0543, %middle.block2984 ], [ %.0543, %.lr.ph93.i.i992 ], [ %.0543, %.lr.ph93.i.i992.prol.loopexit ] ; 2 uses
  %.not2007 = icmp ugt i64 %.6.lcssa.i.i989, %i.g
  br i1 %.not2007, label %.critedge599, label %.critedge599.sink.split

.lr.ph93.i.i992:                                  ; preds = %.lr.ph93.i.i992.prol.loopexit, %.lr.ph93.i.i992
  %.692.i.i993 = phi i64 [ %i.alq, %.lr.ph93.i.i992 ], [ %.692.i.i993.unr, %.lr.ph93.i.i992.prol.loopexit ] ; 6 uses
  %i.alb = getelementptr [4 x i8], ptr %.0546, i64 %.692.i.i993
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !7
  %i.ald = getelementptr [4 x i8], ptr %i.ae, i64 %.692.i.i993
  store i32 %i.alc, ptr %i.ald, align 4, !tbaa !7
  %i.ale = add nuw i64 %.692.i.i993, 1            ; 2 uses
  %i.alf = getelementptr [4 x i8], ptr %.0546, i64 %i.ale
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !7
  %i.alh = getelementptr [4 x i8], ptr %i.ae, i64 %i.ale
  store i32 %i.alg, ptr %i.alh, align 4, !tbaa !7
  %i.ali = add nuw i64 %.692.i.i993, 2            ; 2 uses
  %i.alj = getelementptr [4 x i8], ptr %.0546, i64 %i.ali
  %i.alk = load i32, ptr %i.alj, align 4, !tbaa !7
  %i.all = getelementptr [4 x i8], ptr %i.ae, i64 %i.ali
  store i32 %i.alk, ptr %i.all, align 4, !tbaa !7
  %i.alm = add nuw i64 %.692.i.i993, 3            ; 2 uses
  %i.aln = getelementptr [4 x i8], ptr %.0546, i64 %i.alm
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !7
  %i.alp = getelementptr [4 x i8], ptr %i.ae, i64 %i.alm
  store i32 %i.alo, ptr %i.alp, align 4, !tbaa !7
  %i.alq = add nuw i64 %.692.i.i993, 4            ; 2 uses
  %exitcond111.not.i.i994.3 = icmp eq i64 %i.alq, %.0543
  br i1 %exitcond111.not.i.i994.3, label %.preheader.i.i988, label %.lr.ph93.i.i992, !llvm.loop !104

.lr.ph.i1004:                                     ; preds = %.lr.ph.i1004.preheader, %bb.aq
  %.023.i1005 = phi i64 [ %i.alt, %bb.aq ], [ 0, %.lr.ph.i1004.preheader ] ; 9 uses
  %i.alr = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1005
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !7 ; 2 uses
  %.not.i1006 = icmp eq i32 %i.als, 0
  br i1 %.not.i1006, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i1004
  %i.alt = add nuw nsw i64 %.023.i1005, 1
  %exitcond.not.i1013 = icmp eq i64 %.023.i1005, %i.g
  br i1 %exitcond.not.i1013, label %bary_2comp.exit1014.preheader, label %.lr.ph.i1004, !llvm.loop !55

bb.ar:                                            ; preds = %.lr.ph.i1004
  %i.alu = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1005
  %i.alv = sub i32 0, %i.als
  store i32 %i.alv, ptr %i.alu, align 4, !tbaa !7
  %.not2006.not = icmp samesign ult i64 %.023.i1005, %i.g
  br i1 %.not2006.not, label %.lr.ph26.i1009.preheader, label %bary_2comp.exit1014.preheader

.lr.ph26.i1009.preheader:                         ; preds = %bb.ar
  %i.alw = sub nuw nsw i64 %i.g, %.023.i1005      ; 3 uses
  %min.iters.check2959 = icmp samesign ult i64 %i.alw, 8
  br i1 %min.iters.check2959, label %.lr.ph26.i1009.preheader3309, label %vector.ph2960

vector.ph2960:                                    ; preds = %.lr.ph26.i1009.preheader
  %n.vec2962 = and i64 %i.alw, 9223372036854775800 ; 3 uses
  %i.alx = add nuw i64 %.023.i1005, %n.vec2962
  %i.aly = getelementptr [4 x i8], ptr %i.ae, i64 %.023.i1005
  br label %vector.body2963

vector.body2963:                                  ; preds = %vector.body2963, %vector.ph2960
  %index2964 = phi i64 [ 0, %vector.ph2960 ], [ %index.next2967, %vector.body2963 ] ; 2 uses
  %i.alz = getelementptr [4 x i8], ptr %i.aly, i64 %index2964 ; 2 uses
  %i.ama = getelementptr i8, ptr %i.alz, i64 4    ; 2 uses
  %i.amb = getelementptr i8, ptr %i.alz, i64 20   ; 2 uses
  %wide.load2965 = load <4 x i32>, ptr %i.ama, align 4, !tbaa !7
  %wide.load2966 = load <4 x i32>, ptr %i.amb, align 4, !tbaa !7
  %i.amc = xor <4 x i32> %wide.load2965, splat (i32 -1)
  %i.amd = xor <4 x i32> %wide.load2966, splat (i32 -1)
  store <4 x i32> %i.amc, ptr %i.ama, align 4, !tbaa !7
  store <4 x i32> %i.amd, ptr %i.amb, align 4, !tbaa !7
  %index.next2967 = add nuw i64 %index2964, 8     ; 2 uses
  %i.ame = icmp eq i64 %index.next2967, %n.vec2962
  br i1 %i.ame, label %middle.block2968, label %vector.body2963, !llvm.loop !105

middle.block2968:                                 ; preds = %vector.body2963
  %cmp.n2969 = icmp eq i64 %i.alw, %n.vec2962
  br i1 %cmp.n2969, label %bary_2comp.exit1014.preheader, label %.lr.ph26.i1009.preheader3309

.lr.ph26.i1009.preheader3309:                     ; preds = %.lr.ph26.i1009.preheader, %middle.block2968
  %.125.i1010.in.ph = phi i64 [ %.023.i1005, %.lr.ph26.i1009.preheader ], [ %i.alx, %middle.block2968 ]
  br label %.lr.ph26.i1009

.lr.ph26.i1009:                                   ; preds = %.lr.ph26.i1009.preheader3309, %.lr.ph26.i1009
  %.125.i1010.in = phi i64 [ %.125.i1010, %.lr.ph26.i1009 ], [ %.125.i1010.in.ph, %.lr.ph26.i1009.preheader3309 ]
  %.125.i1010 = add nuw i64 %.125.i1010.in, 1     ; 3 uses
  %i.amf = getelementptr [4 x i8], ptr %i.ae, i64 %.125.i1010 ; 2 uses
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !7
  %i.amh = xor i32 %i.amg, -1
  store i32 %i.amh, ptr %i.amf, align 4, !tbaa !7
  %exitcond31.not.i1012 = icmp eq i64 %.125.i1010, %i.g
  br i1 %exitcond31.not.i1012, label %bary_2comp.exit1014.preheader, label %.lr.ph26.i1009, !llvm.loop !106

bary_2comp.exit1014.preheader:                    ; preds = %bb.aq, %.lr.ph26.i1009, %middle.block2968, %bb.ar
  %xtraiter3457 = and i64 %i.h, 3                 ; 3 uses
  %i.ami = icmp ult i64 %i.f, 9
  br i1 %i.ami, label %bary_2comp.exit1014.epil.preheader, label %bary_2comp.exit1014.preheader.new

bary_2comp.exit1014.preheader.new:                ; preds = %bary_2comp.exit1014.preheader
  %unroll_iter3461 = and i64 %i.h, 9223372036854775804
  br label %bary_2comp.exit1014

bary_2comp.exit1014:                              ; preds = %bary_2comp.exit1014, %bary_2comp.exit1014.preheader.new
  %.015.i1017 = phi i32 [ 0, %bary_2comp.exit1014.preheader.new ], [ %i.amw, %bary_2comp.exit1014 ]
  %.01013.i1019 = phi ptr [ %i.ae, %bary_2comp.exit1014.preheader.new ], [ %i.amt, %bary_2comp.exit1014 ] ; 6 uses
  %niter3462 = phi i64 [ 0, %bary_2comp.exit1014.preheader.new ], [ %niter3462.next.3, %bary_2comp.exit1014 ]
  %i.amj = getelementptr i8, ptr %.01013.i1019, i64 4 ; 2 uses
  %i.amk = load i32, ptr %.01013.i1019, align 4, !tbaa !7 ; 2 uses
  %i.aml = shl i32 %i.amk, 1
  %i.amm = or disjoint i32 %i.aml, %.015.i1017
  store i32 %i.amm, ptr %.01013.i1019, align 4, !tbaa !7
  %i.amn = getelementptr i8, ptr %.01013.i1019, i64 8 ; 2 uses
  %i.amo = load i32, ptr %i.amj, align 4, !tbaa !7 ; 2 uses
  %i.amp = call i32 @llvm.fshl.i32(i32 %i.amo, i32 %i.amk, i32 1)
  store i32 %i.amp, ptr %i.amj, align 4, !tbaa !7
  %i.amq = getelementptr i8, ptr %.01013.i1019, i64 12 ; 2 uses
  %i.amr = load i32, ptr %i.amn, align 4, !tbaa !7 ; 2 uses
  %i.ams = call i32 @llvm.fshl.i32(i32 %i.amr, i32 %i.amo, i32 1)
  store i32 %i.ams, ptr %i.amn, align 4, !tbaa !7
  %i.amt = getelementptr i8, ptr %.01013.i1019, i64 16 ; 2 uses
  %i.amu = load i32, ptr %i.amq, align 4, !tbaa !7 ; 2 uses
  %i.amv = call i32 @llvm.fshl.i32(i32 %i.amu, i32 %i.amr, i32 1)
  store i32 %i.amv, ptr %i.amq, align 4, !tbaa !7
  %i.amw = lshr i32 %i.amu, 31                    ; 2 uses
  %niter3462.next.3 = add i64 %niter3462, 4       ; 2 uses
  %niter3462.ncmp.3 = icmp eq i64 %niter3462.next.3, %unroll_iter3461
  br i1 %niter3462.ncmp.3, label %bary_small_lshift.exit1022.unr-lcssa, label %bary_2comp.exit1014, !llvm.loop !88

bary_small_lshift.exit1022.unr-lcssa:             ; preds = %bary_2comp.exit1014
  %lcmp.mod3459.not = icmp eq i64 %xtraiter3457, 0
  br i1 %lcmp.mod3459.not, label %bary_small_lshift.exit1022, label %bary_2comp.exit1014.epil.preheader

bary_2comp.exit1014.epil.preheader:               ; preds = %bary_small_lshift.exit1022.unr-lcssa, %bary_2comp.exit1014.preheader
  %.015.i1017.epil.init = phi i32 [ 0, %bary_2comp.exit1014.preheader ], [ %i.amw, %bary_small_lshift.exit1022.unr-lcssa ]
  %.01013.i1019.epil.init = phi ptr [ %i.ae, %bary_2comp.exit1014.preheader ], [ %i.amt, %bary_small_lshift.exit1022.unr-lcssa ]
  %lcmp.mod3460 = icmp ne i64 %xtraiter3457, 0
  call void @llvm.assume(i1 %lcmp.mod3460)
  br label %bary_2comp.exit1014.epil

bary_2comp.exit1014.epil:                         ; preds = %bary_2comp.exit1014.epil, %bary_2comp.exit1014.epil.preheader
  %.015.i1017.epil = phi i32 [ %i.anb, %bary_2comp.exit1014.epil ], [ %.015.i1017.epil.init, %bary_2comp.exit1014.epil.preheader ]
  %.01013.i1019.epil = phi ptr [ %i.amx, %bary_2comp.exit1014.epil ], [ %.01013.i1019.epil.init, %bary_2comp.exit1014.epil.preheader ] ; 3 uses
  %epil.iter3458 = phi i64 [ %epil.iter3458.next, %bary_2comp.exit1014.epil ], [ 0, %bary_2comp.exit1014.epil.preheader ]
  %i.amx = getelementptr i8, ptr %.01013.i1019.epil, i64 4
  %i.amy = load i32, ptr %.01013.i1019.epil, align 4, !tbaa !7 ; 2 uses
  %i.amz = shl i32 %i.amy, 1
  %i.ana = or disjoint i32 %i.amz, %.015.i1017.epil
  store i32 %i.ana, ptr %.01013.i1019.epil, align 4, !tbaa !7
  %i.anb = lshr i32 %i.amy, 31
  %epil.iter3458.next = add i64 %epil.iter3458, 1 ; 2 uses
  %epil.iter3458.cmp.not = icmp eq i64 %epil.iter3458.next, %xtraiter3457
  br i1 %epil.iter3458.cmp.not, label %bary_small_lshift.exit1022, label %bary_2comp.exit1014.epil, !llvm.loop !107

bary_small_lshift.exit1022:                       ; preds = %bary_2comp.exit1014.epil, %bary_small_lshift.exit1022.unr-lcssa
  br i1 %.not97.i.i, label %bary_add.exit1057, label %.lr.ph.i.i1028.preheader

.lr.ph.i.i1028.preheader:                         ; preds = %bary_small_lshift.exit1022
  %xtraiter3463 = and i64 %i.g, 1
  %.off3628 = add i64 %5, -1
end_hunk_6
begin_hunk_7_@bary_mul_toom3:bb.a
  %i.axh = load i32, ptr %i.axg, align 4, !tbaa !7
  %i.axi = xor i32 %i.axh, -1
  store i32 %i.axi, ptr %i.axg, align 4, !tbaa !7
  %.1.i1241 = add nuw i64 %.125.i1240, 1
  %exitcond31.not.i1242 = icmp eq i64 %.125.i1240, %i.j
  br i1 %exitcond31.not.i1242, label %bary_2comp.exit1244, label %.lr.ph26.i1239, !llvm.loop !115

.lr.ph.i.i1250:                                   ; preds = %.lr.ph.i.i1250.preheader, %.lr.ph.i.i1250
  %.05779.i.i1251 = phi i64 [ %i.ayg, %.lr.ph.i.i1250 ], [ 0, %.lr.ph.i.i1250.preheader ] ; 5 uses
  %.05878.i.i1252 = phi i64 [ %i.ayf, %.lr.ph.i.i1250 ], [ 0, %.lr.ph.i.i1250.preheader ]
  %niter3515 = phi i64 [ %niter3515.next.1, %.lr.ph.i.i1250 ], [ 0, %.lr.ph.i.i1250.preheader ]
  %i.axj = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1251
  %i.axk = load i32, ptr %i.axj, align 4, !tbaa !7
  %i.axl = zext i32 %i.axk to i64
  %i.axm = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1251
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !7
  %i.axo = zext i32 %i.axn to i64
  %i.axp = add nuw nsw i64 %.05878.i.i1252, %i.axl
  %i.axq = add nuw nsw i64 %i.axp, %i.axo         ; 2 uses
  %i.axr = trunc i64 %i.axq to i32
  %i.axs = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1251
  store i32 %i.axr, ptr %i.axs, align 4, !tbaa !7
  %i.axt = lshr i64 %i.axq, 32
  %i.axu = or disjoint i64 %.05779.i.i1251, 1     ; 3 uses
  %i.axv = getelementptr [4 x i8], ptr %i.ag, i64 %i.axu
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !7
  %i.axx = zext i32 %i.axw to i64
  %i.axy = getelementptr [4 x i8], ptr %i.ah, i64 %i.axu
  %i.axz = load i32, ptr %i.axy, align 4, !tbaa !7
  %i.aya = zext i32 %i.axz to i64
  %i.ayb = add nuw nsw i64 %i.axt, %i.axx
  %i.ayc = add nuw nsw i64 %i.ayb, %i.aya         ; 2 uses
  %i.ayd = trunc i64 %i.ayc to i32
  %i.aye = getelementptr [4 x i8], ptr %i.ak, i64 %i.axu
  store i32 %i.ayd, ptr %i.aye, align 4, !tbaa !7
  %i.ayf = lshr i64 %i.ayc, 32                    ; 2 uses
  %i.ayg = add nuw i64 %.05779.i.i1251, 2         ; 2 uses
  %niter3515.next.1 = add i64 %niter3515, 2       ; 2 uses
  %niter3515.ncmp.1 = icmp eq i64 %niter3515.next.1, %i.j
  br i1 %niter3515.ncmp.1, label %.lr.ph.i.i1250.epil, label %.lr.ph.i.i1250, !llvm.loop !34

.lr.ph.i.i1250.epil:                              ; preds = %.lr.ph.i.i1250.preheader, %.lr.ph.i.i1250
  %.05779.i.i1251.epil.init = phi i64 [ 0, %.lr.ph.i.i1250.preheader ], [ %i.ayg, %.lr.ph.i.i1250 ] ; 3 uses
  %.05878.i.i1252.epil.init = phi i64 [ 0, %.lr.ph.i.i1250.preheader ], [ %i.ayf, %.lr.ph.i.i1250 ]
  %i.ayh = getelementptr [4 x i8], ptr %i.ag, i64 %.05779.i.i1251.epil.init
  %i.ayi = load i32, ptr %i.ayh, align 4, !tbaa !7
  %i.ayj = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1251.epil.init
  %i.ayk = load i32, ptr %i.ayj, align 4, !tbaa !7
  %i.ayl = trunc nuw nsw i64 %.05878.i.i1252.epil.init to i32
  %i.aym = add i32 %i.ayi, %i.ayl
  %i.ayn = add i32 %i.aym, %i.ayk
  %i.ayo = getelementptr [4 x i8], ptr %i.ak, i64 %.05779.i.i1251.epil.init
  store i32 %i.ayn, ptr %i.ayo, align 4, !tbaa !7
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
  %vector.recur = phi <4 x i64> [ <i64 poison, i64 poison, i64 poison, i64 0>, %vector.ph3044 ], [ %i.ayu, %vector.body3047 ]
  %i.ayp = xor i64 %index3048, -1
  %i.ayq = getelementptr [4 x i8], ptr %i.al, i64 %i.ayp ; 2 uses
  %i.ayr = getelementptr i8, ptr %i.ayq, i64 -12  ; 2 uses
  %i.ays = getelementptr i8, ptr %i.ayq, i64 -28  ; 2 uses
  %wide.load3049 = load <4 x i32>, ptr %i.ayr, align 4, !tbaa !7
  %wide.load3050 = load <4 x i32>, ptr %i.ays, align 4, !tbaa !7
  %reverse = shufflevector <4 x i32> %wide.load3049, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3051 = shufflevector <4 x i32> %wide.load3050, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ayt = zext <4 x i32> %reverse to <4 x i64>   ; 3 uses
  %i.ayu = zext <4 x i32> %reverse3051 to <4 x i64> ; 4 uses
  %i.ayv = shufflevector <4 x i64> %vector.recur, <4 x i64> %i.ayt, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ayw = shufflevector <4 x i64> %i.ayt, <4 x i64> %i.ayu, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ayx = shl nuw <4 x i64> %i.ayv, splat (i64 32)
  %i.ayy = shl nuw <4 x i64> %i.ayw, splat (i64 32)
  %i.ayz = or disjoint <4 x i64> %i.ayx, %i.ayt
  %i.aza = or disjoint <4 x i64> %i.ayy, %i.ayu
  %i.azb = lshr <4 x i64> %i.ayz, splat (i64 1)
  %i.azc = lshr <4 x i64> %i.aza, splat (i64 1)
  %i.azd = trunc <4 x i64> %i.azb to <4 x i32>
  %i.aze = trunc <4 x i64> %i.azc to <4 x i32>
  %reverse3052 = shufflevector <4 x i32> %i.azd, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse3053 = shufflevector <4 x i32> %i.aze, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %reverse3052, ptr %i.ayr, align 4, !tbaa !7
  store <4 x i32> %reverse3053, ptr %i.ays, align 4, !tbaa !7
  %index.next3054 = add nuw i64 %index3048, 8     ; 2 uses
  %i.azf = icmp eq i64 %index.next3054, %n.vec3046
  br i1 %i.azf, label %middle.block3055, label %vector.body3047, !llvm.loop !116

middle.block3055:                                 ; preds = %vector.body3047
  %vector.recur.extract = extractelement <4 x i64> %i.ayu, i64 3
  br label %scalar.ph3042.preheader

scalar.ph3042.preheader:                          ; preds = %middle.block3055, %bary_2comp.exit1244
  %.017.i1282.ph = phi i64 [ 0, %bary_2comp.exit1244 ], [ %n.vec3046, %middle.block3055 ]
  %.014.in16.i.ph = phi i64 [ 0, %bary_2comp.exit1244 ], [ %vector.recur.extract, %middle.block3055 ]
  br label %scalar.ph3042

scalar.ph3042:                                    ; preds = %scalar.ph3042.preheader, %scalar.ph3042
  %.017.i1282 = phi i64 [ %i.azn, %scalar.ph3042 ], [ %.017.i1282.ph, %scalar.ph3042.preheader ] ; 3 uses
  %.014.in16.i = phi i64 [ %i.azj, %scalar.ph3042 ], [ %.014.in16.i.ph, %scalar.ph3042.preheader ]
  %.014.i = shl nuw i64 %.014.in16.i, 32
  %i.azg = xor i64 %.017.i1282, -1
  %i.azh = getelementptr [4 x i8], ptr %i.al, i64 %i.azg ; 2 uses
  %i.azi = load i32, ptr %i.azh, align 4, !tbaa !7
  %i.azj = zext i32 %i.azi to i64                 ; 2 uses
  %i.azk = or disjoint i64 %.014.i, %i.azj
  %i.azl = lshr i64 %i.azk, 1
  %i.azm = trunc i64 %i.azl to i32
  store i32 %i.azm, ptr %i.azh, align 4, !tbaa !7
  %i.azn = add nuw i64 %.017.i1282, 1
  %exitcond.not.i1283 = icmp eq i64 %.017.i1282, %i.j
  br i1 %exitcond.not.i1283, label %bary_small_rshift.exit, label %scalar.ph3042, !llvm.loop !117

bary_small_rshift.exit:                           ; preds = %scalar.ph3042
  br i1 %i.arp, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not97.i.i, label %.loopexit74.i.i1300, label %.lr.ph.i.i1285

.lr.ph.i.i1285:                                   ; preds = %bb.bc, %.lr.ph.i.i1285
  %.06278.i.i1286 = phi i64 [ %i.bal, %.lr.ph.i.i1285 ], [ 0, %bb.bc ] ; 5 uses
  %.06377.i.i1287 = phi i64 [ %i.bak, %.lr.ph.i.i1285 ], [ 0, %bb.bc ]
  %i.azo = getelementptr [4 x i8], ptr %i.ah, i64 %.06278.i.i1286
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !7
  %i.azq = zext i32 %i.azp to i64
  %i.azr = getelementptr [4 x i8], ptr %i.af, i64 %.06278.i.i1286
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !7
  %i.azt = zext i32 %i.azs to i64
  %i.azu = sub nsw i64 %i.azq, %i.azt
  %i.azv = add nsw i64 %i.azu, %.06377.i.i1287    ; 2 uses
  %i.azw = trunc i64 %i.azv to i32
  %i.azx = getelementptr [4 x i8], ptr %i.al, i64 %.06278.i.i1286
  store i32 %i.azw, ptr %i.azx, align 4, !tbaa !7
  %i.azy = ashr i64 %i.azv, 32
  %i.azz = or disjoint i64 %.06278.i.i1286, 1     ; 3 uses
  %i.baa = getelementptr [4 x i8], ptr %i.ah, i64 %i.azz
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !7
  %i.bac = zext i32 %i.bab to i64
  %i.bad = getelementptr [4 x i8], ptr %i.af, i64 %i.azz
  %i.bae = load i32, ptr %i.bad, align 4, !tbaa !7
  %i.baf = zext i32 %i.bae to i64
  %i.bag = sub nsw i64 %i.bac, %i.baf
  %i.bah = add nsw i64 %i.bag, %i.azy             ; 2 uses
  %i.bai = trunc i64 %i.bah to i32
  %i.baj = getelementptr [4 x i8], ptr %i.al, i64 %i.azz
  store i32 %i.bai, ptr %i.baj, align 4, !tbaa !7
  %i.bak = ashr i64 %i.bah, 32                    ; 2 uses
  %i.bal = add nuw i64 %.06278.i.i1286, 2         ; 2 uses
  %exitcond.not.i.i1288.1 = icmp eq i64 %i.bal, %i.j
  br i1 %exitcond.not.i.i1288.1, label %._crit_edge.i.i1289, label %.lr.ph.i.i1285, !llvm.loop !48

._crit_edge.i.i1289:                              ; preds = %.lr.ph.i.i1285
  %i.bam = icmp eq i64 %i.bak, 0
  br i1 %i.bam, label %.loopexit74.i.i1300, label %.loopexit71.i.i1293

.loopexit71.i.i1293:                              ; preds = %._crit_edge.i.i1289
  %i.ban = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bao = load i32, ptr %i.ban, align 4, !tbaa !7
  %i.bap = zext i32 %i.bao to i64
  %i.baq = add nsw i64 %i.bap, -1                 ; 2 uses
  %i.bar = trunc i64 %i.baq to i32
  %i.bas = getelementptr [4 x i8], ptr %i.al, i64 %i.j
  store i32 %i.bar, ptr %i.bas, align 4, !tbaa !7
  %i.bat = icmp ult i64 %i.baq, 4294967296
  br i1 %i.bat, label %.loopexit74.i.i1300, label %.lr.ph.i1320

.loopexit74.i.i1300:                              ; preds = %bb.bc, %._crit_edge.i.i1289, %.loopexit71.i.i1293
  %.5.i.i1301 = phi i64 [ %i.l, %.loopexit71.i.i1293 ], [ %i.j, %._crit_edge.i.i1289 ], [ %i.j, %bb.bc ] ; 6 uses
  %i.bau = icmp ne ptr %i.ah, %i.al
  %i.bav = icmp ule i64 %.5.i.i1301, %i.j
  %or.cond1990 = and i1 %i.bau, %i.bav
  br i1 %or.cond1990, label %.lr.ph93.i.i1308.preheader, label %bary_2comp.exit1330

.lr.ph93.i.i1308.preheader:                       ; preds = %.loopexit74.i.i1300
  %i.baw = sub nuw i64 %i.j, %.5.i.i1301
  %i.bax = add i64 %i.baw, 1                      ; 3 uses
  %min.iters.check3074 = icmp ult i64 %i.bax, 12
  br i1 %min.iters.check3074, label %.lr.ph93.i.i1308.preheader3274, label %vector.memcheck3071

vector.memcheck3071:                              ; preds = %.lr.ph93.i.i1308.preheader
  %i.bay = shl i64 %i.g, 5
  %i.baz = or disjoint i64 %i.bay, 19
  %diff.check3072 = icmp ult i64 %i.baz, 31
  br i1 %diff.check3072, label %.lr.ph93.i.i1308.preheader3274, label %vector.ph3075

vector.ph3075:                                    ; preds = %vector.memcheck3071
  %n.vec3077 = and i64 %i.bax, -8                 ; 3 uses
  %i.bba = add i64 %.5.i.i1301, %n.vec3077
  br label %vector.body3078

vector.body3078:                                  ; preds = %vector.body3078, %vector.ph3075
  %index3079 = phi i64 [ 0, %vector.ph3075 ], [ %index.next3082, %vector.body3078 ] ; 2 uses
  %i.bbb = add i64 %.5.i.i1301, %index3079        ; 2 uses
  %i.bbc = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbb ; 2 uses
  %i.bbd = getelementptr i8, ptr %i.bbc, i64 16
  %wide.load3080 = load <4 x i32>, ptr %i.bbc, align 4, !tbaa !7
  %wide.load3081 = load <4 x i32>, ptr %i.bbd, align 4, !tbaa !7
  %i.bbe = getelementptr [4 x i8], ptr %i.al, i64 %i.bbb ; 2 uses
  %i.bbf = getelementptr i8, ptr %i.bbe, i64 16
  store <4 x i32> %wide.load3080, ptr %i.bbe, align 4, !tbaa !7
  store <4 x i32> %wide.load3081, ptr %i.bbf, align 4, !tbaa !7
  %index.next3082 = add nuw i64 %index3079, 8     ; 2 uses
  %i.bbg = icmp eq i64 %index.next3082, %n.vec3077
  br i1 %i.bbg, label %middle.block3083, label %vector.body3078, !llvm.loop !118

middle.block3083:                                 ; preds = %vector.body3078
  %cmp.n3084 = icmp eq i64 %i.bax, %n.vec3077
  br i1 %cmp.n3084, label %bary_2comp.exit1330, label %.lr.ph93.i.i1308.preheader3274

.lr.ph93.i.i1308.preheader3274:                   ; preds = %vector.memcheck3071, %.lr.ph93.i.i1308.preheader, %middle.block3083
  %.692.i.i1309.ph = phi i64 [ %.5.i.i1301, %vector.memcheck3071 ], [ %.5.i.i1301, %.lr.ph93.i.i1308.preheader ], [ %i.bba, %middle.block3083 ] ; 4 uses
  %i.bbh = or disjoint i64 %i.j, 1
  %i.bbi = sub i64 %i.bbh, %.692.i.i1309.ph
  %i.bbj = sub i64 %i.j, %.692.i.i1309.ph
  %xtraiter3523 = and i64 %i.bbi, 3               ; 2 uses
  %lcmp.mod3524.not = icmp eq i64 %xtraiter3523, 0
  br i1 %lcmp.mod3524.not, label %.lr.ph93.i.i1308.prol.loopexit, label %.lr.ph93.i.i1308.prol

.lr.ph93.i.i1308.prol:                            ; preds = %.lr.ph93.i.i1308.preheader3274, %.lr.ph93.i.i1308.prol
  %.692.i.i1309.prol = phi i64 [ %i.bbn, %.lr.ph93.i.i1308.prol ], [ %.692.i.i1309.ph, %.lr.ph93.i.i1308.preheader3274 ] ; 3 uses
  %prol.iter3525 = phi i64 [ %prol.iter3525.next, %.lr.ph93.i.i1308.prol ], [ 0, %.lr.ph93.i.i1308.preheader3274 ]
  %i.bbk = getelementptr [4 x i8], ptr %i.ah, i64 %.692.i.i1309.prol
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !7
  %i.bbm = getelementptr [4 x i8], ptr %i.al, i64 %.692.i.i1309.prol
  store i32 %i.bbl, ptr %i.bbm, align 4, !tbaa !7
  %i.bbn = add nuw i64 %.692.i.i1309.prol, 1      ; 2 uses
  %prol.iter3525.next = add i64 %prol.iter3525, 1 ; 2 uses
  %prol.iter3525.cmp.not = icmp eq i64 %prol.iter3525.next, %xtraiter3523
  br i1 %prol.iter3525.cmp.not, label %.lr.ph93.i.i1308.prol.loopexit, label %.lr.ph93.i.i1308.prol, !llvm.loop !119

.lr.ph93.i.i1308.prol.loopexit:                   ; preds = %.lr.ph93.i.i1308.prol, %.lr.ph93.i.i1308.preheader3274
  %.692.i.i1309.unr = phi i64 [ %.692.i.i1309.ph, %.lr.ph93.i.i1308.preheader3274 ], [ %i.bbn, %.lr.ph93.i.i1308.prol ]
  %i.bbo = icmp ult i64 %i.bbj, 3
  br i1 %i.bbo, label %bary_2comp.exit1330, label %.lr.ph93.i.i1308

.lr.ph93.i.i1308:                                 ; preds = %.lr.ph93.i.i1308.prol.loopexit, %.lr.ph93.i.i1308
  %.692.i.i1309 = phi i64 [ %i.bce, %.lr.ph93.i.i1308 ], [ %.692.i.i1309.unr, %.lr.ph93.i.i1308.prol.loopexit ] ; 6 uses
  %i.bbp = getelementptr [4 x i8], ptr %i.ah, i64 %.692.i.i1309
  %i.bbq = load i32, ptr %i.bbp, align 4, !tbaa !7
  %i.bbr = getelementptr [4 x i8], ptr %i.al, i64 %.692.i.i1309
  store i32 %i.bbq, ptr %i.bbr, align 4, !tbaa !7
  %i.bbs = add nuw i64 %.692.i.i1309, 1           ; 2 uses
  %i.bbt = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbs
  %i.bbu = load i32, ptr %i.bbt, align 4, !tbaa !7
  %i.bbv = getelementptr [4 x i8], ptr %i.al, i64 %i.bbs
  store i32 %i.bbu, ptr %i.bbv, align 4, !tbaa !7
  %i.bbw = add nuw i64 %.692.i.i1309, 2           ; 2 uses
  %i.bbx = getelementptr [4 x i8], ptr %i.ah, i64 %i.bbw
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !7
  %i.bbz = getelementptr [4 x i8], ptr %i.al, i64 %i.bbw
  store i32 %i.bby, ptr %i.bbz, align 4, !tbaa !7
  %i.bca = add nuw i64 %.692.i.i1309, 3           ; 3 uses
  %i.bcb = getelementptr [4 x i8], ptr %i.ah, i64 %i.bca
  %i.bcc = load i32, ptr %i.bcb, align 4, !tbaa !7
  %i.bcd = getelementptr [4 x i8], ptr %i.al, i64 %i.bca
  store i32 %i.bcc, ptr %i.bcd, align 4, !tbaa !7
  %i.bce = add nuw i64 %.692.i.i1309, 4
  %exitcond111.not.i.i1310.3 = icmp eq i64 %i.bca, %i.j
  br i1 %exitcond111.not.i.i1310.3, label %bary_2comp.exit1330, label %.lr.ph93.i.i1308, !llvm.loop !120

.lr.ph.i1320:                                     ; preds = %.loopexit71.i.i1293, %bb.bd
  %.023.i1321 = phi i64 [ %i.bch, %bb.bd ], [ 0, %.loopexit71.i.i1293 ] ; 6 uses
  %i.bcf = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1321
  %i.bcg = load i32, ptr %i.bcf, align 4, !tbaa !7 ; 2 uses
  %.not.i1322 = icmp eq i32 %i.bcg, 0
  br i1 %.not.i1322, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph.i1320
  %i.bch = add nuw i64 %.023.i1321, 1
  %exitcond.not.i1329 = icmp eq i64 %.023.i1321, %i.j
  br i1 %exitcond.not.i1329, label %bary_2comp.exit1330.thr_comm, label %.lr.ph.i1320, !llvm.loop !55

bb.be:                                            ; preds = %.lr.ph.i1320
  %i.bci = getelementptr [4 x i8], ptr %i.al, i64 %.023.i1321
  %i.bcj = sub i32 0, %i.bcg
  store i32 %i.bcj, ptr %i.bci, align 4, !tbaa !7
  %.124.i1323 = add i64 %.023.i1321, 1            ; 4 uses
  %.not2016 = icmp ugt i64 %.124.i1323, %i.j
  br i1 %.not2016, label %bary_2comp.exit1330.thr_comm, label %.lr.ph26.i1325.preheader

.lr.ph26.i1325.preheader:                         ; preds = %bb.be
  %i.bck = sub i64 %i.j, %.023.i1321              ; 3 uses
  %min.iters.check3059 = icmp ult i64 %i.bck, 8
  br i1 %min.iters.check3059, label %.lr.ph26.i1325.preheader3275, label %vector.ph3060

vector.ph3060:                                    ; preds = %.lr.ph26.i1325.preheader
  %n.vec3062 = and i64 %i.bck, -8                 ; 3 uses
  %i.bcl = add i64 %.124.i1323, %n.vec3062
  %i.bcm = getelementptr [4 x i8], ptr %i.al, i64 %.124.i1323
  br label %vector.body3063

vector.body3063:                                  ; preds = %vector.body3063, %vector.ph3060
  %index3064 = phi i64 [ 0, %vector.ph3060 ], [ %index.next3067, %vector.body3063 ] ; 2 uses
  %i.bcn = getelementptr [4 x i8], ptr %i.bcm, i64 %index3064 ; 3 uses
  %i.bco = getelementptr i8, ptr %i.bcn, i64 16   ; 2 uses
  %wide.load3065 = load <4 x i32>, ptr %i.bcn, align 4, !tbaa !7
  %wide.load3066 = load <4 x i32>, ptr %i.bco, align 4, !tbaa !7
  %i.bcp = xor <4 x i32> %wide.load3065, splat (i32 -1)
  %i.bcq = xor <4 x i32> %wide.load3066, splat (i32 -1)
  store <4 x i32> %i.bcp, ptr %i.bcn, align 4, !tbaa !7
  store <4 x i32> %i.bcq, ptr %i.bco, align 4, !tbaa !7
  %index.next3067 = add nuw i64 %index3064, 8     ; 2 uses
  %i.bcr = icmp eq i64 %index.next3067, %n.vec3062
  br i1 %i.bcr, label %middle.block3068, label %vector.body3063, !llvm.loop !121

middle.block3068:                                 ; preds = %vector.body3063
  %cmp.n3069 = icmp eq i64 %i.bck, %n.vec3062
  br i1 %cmp.n3069, label %bary_2comp.exit1330.thr_comm, label %.lr.ph26.i1325.preheader3275

.lr.ph26.i1325.preheader3275:                     ; preds = %.lr.ph26.i1325.preheader, %middle.block3068
  %.125.i1326.ph = phi i64 [ %.124.i1323, %.lr.ph26.i1325.preheader ], [ %i.bcl, %middle.block3068 ]
  br label %.lr.ph26.i1325

.lr.ph26.i1325:                                   ; preds = %.lr.ph26.i1325.preheader3275, %.lr.ph26.i1325
  %.125.i1326 = phi i64 [ %.1.i1327, %.lr.ph26.i1325 ], [ %.125.i1326.ph, %.lr.ph26.i1325.preheader3275 ] ; 3 uses
  %i.bcs = getelementptr [4 x i8], ptr %i.al, i64 %.125.i1326 ; 2 uses
  %i.bct = load i32, ptr %i.bcs, align 4, !tbaa !7
  %i.bcu = xor i32 %i.bct, -1
  store i32 %i.bcu, ptr %i.bcs, align 4, !tbaa !7
  %.1.i1327 = add nuw i64 %.125.i1326, 1
  %exitcond31.not.i1328 = icmp eq i64 %.125.i1326, %i.j
  br i1 %exitcond31.not.i1328, label %bary_2comp.exit1330.thr_comm, label %.lr.ph26.i1325, !llvm.loop !122

bb.bf:                                            ; preds = %bary_small_rshift.exit
  br i1 %.not97.i.i, label %.loopexit71.i.i1350, label %.lr.ph.i.i1336

.preheader72.i.i1340:                             ; preds = %.lr.ph.i.i1336
  %i.bcv = icmp eq i64 %i.bds, 0
  br i1 %i.bcv, label %.loopexit71.i.i1350, label %bary_2comp.exit1330.thr_comm.loopexit2229

.lr.ph.i.i1336:                                   ; preds = %bb.bf, %.lr.ph.i.i1336
  %.05779.i.i1337 = phi i64 [ %i.bdt, %.lr.ph.i.i1336 ], [ 0, %bb.bf ] ; 5 uses
  %.05878.i.i1338 = phi i64 [ %i.bds, %.lr.ph.i.i1336 ], [ 0, %bb.bf ]
  %i.bcw = getelementptr [4 x i8], ptr %i.af, i64 %.05779.i.i1337
  %i.bcx = load i32, ptr %i.bcw, align 4, !tbaa !7
  %i.bcy = zext i32 %i.bcx to i64
  %i.bcz = getelementptr [4 x i8], ptr %i.ah, i64 %.05779.i.i1337
  %i.bda = load i32, ptr %i.bcz, align 4, !tbaa !7
  %i.bdb = zext i32 %i.bda to i64
  %i.bdc = add nuw nsw i64 %.05878.i.i1338, %i.bcy
  %i.bdd = add nuw nsw i64 %i.bdc, %i.bdb         ; 2 uses
  %i.bde = trunc i64 %i.bdd to i32
  %i.bdf = getelementptr [4 x i8], ptr %i.al, i64 %.05779.i.i1337
  store i32 %i.bde, ptr %i.bdf, align 4, !tbaa !7
  %i.bdg = lshr i64 %i.bdd, 32
  %i.bdh = or disjoint i64 %.05779.i.i1337, 1     ; 3 uses
  %i.bdi = getelementptr [4 x i8], ptr %i.af, i64 %i.bdh
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !7
  %i.bdk = zext i32 %i.bdj to i64
  %i.bdl = getelementptr [4 x i8], ptr %i.ah, i64 %i.bdh
  %i.bdm = load i32, ptr %i.bdl, align 4, !tbaa !7
  %i.bdn = zext i32 %i.bdm to i64
  %i.bdo = add nuw nsw i64 %i.bdg, %i.bdk
  %i.bdp = add nuw nsw i64 %i.bdo, %i.bdn         ; 2 uses
  %i.bdq = trunc i64 %i.bdp to i32
  %i.bdr = getelementptr [4 x i8], ptr %i.al, i64 %i.bdh
  store i32 %i.bdq, ptr %i.bdr, align 4, !tbaa !7
  %i.bds = lshr i64 %i.bdp, 32                    ; 2 uses
  %i.bdt = add nuw i64 %.05779.i.i1337, 2         ; 2 uses
  %exitcond.not.i.i1339.1 = icmp eq i64 %i.bdt, %i.j
  br i1 %exitcond.not.i.i1339.1, label %.preheader72.i.i1340, label %.lr.ph.i.i1336, !llvm.loop !34

bary_2comp.exit1330.thr_comm.loopexit2229:        ; preds = %.preheader72.i.i1340
  %i.bdu = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bdv = load i32, ptr %i.bdu, align 4, !tbaa !7
  %i.bdw = add i32 %i.bdv, 1
  br label %bary_2comp.exit1330.thr_comm.sink.split

.loopexit71.i.i1350:                              ; preds = %bb.bf, %.preheader72.i.i1340
  %i.bdx = icmp eq ptr %i.ah, %i.al
  br i1 %i.bdx, label %bary_2comp.exit1330.thr_comm, label %.preheader.i.i1354

.preheader.i.i1354:                               ; preds = %.loopexit71.i.i1350
  %i.bdy = getelementptr [4 x i8], ptr %i.ah, i64 %i.j
  %i.bdz = load i32, ptr %i.bdy, align 4, !tbaa !7
  br label %bary_2comp.exit1330.thr_comm.sink.split

bary_2comp.exit1330.thr_comm.sink.split:          ; preds = %bary_2comp.exit1330.thr_comm.loopexit2229, %.preheader.i.i1354
  %.sink = phi i32 [ %i.bdz, %.preheader.i.i1354 ], [ %i.bdw, %bary_2comp.exit1330.thr_comm.loopexit2229 ]
  %i.bea = getelementptr [4 x i8], ptr %i.al, i64 %i.j
  store i32 %.sink, ptr %i.bea, align 4, !tbaa !7
  br label %bary_2comp.exit1330.thr_comm

bary_2comp.exit1330.thr_comm:                     ; preds = %bb.bd, %.lr.ph26.i1325, %middle.block3068, %bary_2comp.exit1330.thr_comm.sink.split, %.loopexit71.i.i1350, %bb.be
  br i1 %.0536.shrunk, label %bb.bj, label %bb.bg

bary_2comp.exit1330:                              ; preds = %.lr.ph93.i.i1308.prol.loopexit, %.lr.ph93.i.i1308, %middle.block3083, %.loopexit74.i.i1300
  br i1 %.0536.shrunk, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bary_2comp.exit1330.thr_comm, %bary_2comp.exit1330
  %.05391976 = phi i32 [ 0, %bary_2comp.exit1330.thr_comm ], [ 1, %bary_2comp.exit1330 ] ; 3 uses
  %.0539.shrunk1972 = phi i1 [ false, %bary_2comp.exit1330.thr_comm ], [ true, %bary_2comp.exit1330 ] ; 3 uses
  %i.beb = icmp ult i64 %i.f, 3
end_hunk_7
begin_hunk_8_@bary_mul_toom3:bb.a
  %i.bte = add i32 %i.btd, %i.btb
  store i32 %i.bte, ptr %i.bsy, align 4, !tbaa !7
  br label %bary_2comp.exit1683

bary_2comp.exit1683:                              ; preds = %bb.bz, %.lr.ph26.i1678, %.lr.ph.i.i1689.epil, %middle.block3168, %.lr.ph.i.i1638.epil, %bb.ca
  %.1545 = phi i32 [ %.0544, %.lr.ph.i.i1638.epil ], [ %.not587, %middle.block3168 ], [ %.0544, %.lr.ph.i.i1689.epil ], [ %.not587, %bb.ca ], [ %.not587, %.lr.ph26.i1678 ], [ %.not587, %bb.bz ]
  %i.btf = icmp ugt i64 %i.f, 6917529027641081855
  br i1 %i.btf, label %bb.cb, label %rbimpl_size_mul_or_raise.exit, !prof !32

bb.cb:                                            ; preds = %bary_2comp.exit1683
  call void @ruby_malloc_size_overflow(i64 noundef 4, i64 noundef %i.j) #25
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bary_2comp.exit1683
  %i.btg = shl i64 %i.g, 3                        ; 4 uses
  %.not.i1719 = icmp eq i64 %i.btg, 0             ; 2 uses
  br i1 %.not.i1719, label %ruby_nonempty_memcpy.exit, label %bb.cc

bb.cc:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.0532, ptr noundef nonnull readonly align 1 %i.af, i64 noundef range(i64 1, 0) %i.btg, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.cc
  %i.bth = getelementptr [4 x i8], ptr %.0532, i64 %i.j ; 26 uses
  br i1 %.not97.i.i, label %rbimpl_size_mul_or_raise.exit1720, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %ruby_nonempty_memcpy.exit
  call void @llvm.memset.p0.i64(ptr align 4 %i.bth, i8 0, i64 %i.btg, i1 false), !tbaa !7
  br label %rbimpl_size_mul_or_raise.exit1720

rbimpl_size_mul_or_raise.exit1720:                ; preds = %.lr.ph.preheader, %ruby_nonempty_memcpy.exit
  %.idx = shl i64 %i.g, 4
  %i.bti = getelementptr i8, ptr %.0532, i64 %.idx ; 2 uses
  br i1 %.not.i1719, label %ruby_nonempty_memcpy.exit1723, label %bb.cd

bb.cd:                                            ; preds = %rbimpl_size_mul_or_raise.exit1720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bti, ptr noundef nonnull readonly align 1 %i.aj, i64 noundef range(i64 1, 0) %i.btg, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit1723

ruby_nonempty_memcpy.exit1723:                    ; preds = %rbimpl_size_mul_or_raise.exit1720, %bb.cd
  %i.btj = getelementptr [4 x i8], ptr %i.bti, i64 %i.j
  store i32 0, ptr %i.btj, align 4, !tbaa !7
  %.not590 = icmp eq i32 %.1545, 0
  %i.btk = getelementptr [4 x i8], ptr %.0532, i64 %i.g ; 21 uses
  %i.btl = sub i64 %i.aq, %i.g                    ; 16 uses
  br i1 %.not590, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %ruby_nonempty_memcpy.exit1723
  %i.btm = icmp ugt i64 %i.btl, %i.l
  br i1 %i.btm, label %.lr.ph.i.i1729.preheader, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %.not.i.i1728 = icmp eq i64 %i.btl, 0
  br i1 %.not.i.i1728, label %.preheader72.i.i1733, label %.lr.ph.i.i1729.preheader

.lr.ph.i.i1729.preheader:                         ; preds = %bb.ce, %bb.cf
  %.061.i.i17272541 = phi ptr [ %i.btk, %bb.cf ], [ %i.ak, %bb.ce ] ; 3 uses
  %.062.i.i17262539 = phi i64 [ %i.l, %bb.cf ], [ %i.btl, %bb.ce ] ; 2 uses
  %.063.i.i17252537 = phi ptr [ %i.ak, %bb.cf ], [ %i.btk, %bb.ce ] ; 5 uses
  %.064.i.i17242535 = phi i64 [ %i.btl, %bb.cf ], [ %i.l, %bb.ce ] ; 6 uses
  %xtraiter3566 = and i64 %.064.i.i17242535, 1
  %i.btn = icmp eq i64 %.064.i.i17242535, 1
  br i1 %i.btn, label %.lr.ph.i.i1729.epil.preheader, label %.lr.ph.i.i1729.preheader.new

.lr.ph.i.i1729.preheader.new:                     ; preds = %.lr.ph.i.i1729.preheader
  %unroll_iter3571 = and i64 %.064.i.i17242535, -2
  br label %.lr.ph.i.i1729

.preheader72.i.i1733.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i1729
  %lcmp.mod3568.not = icmp eq i64 %xtraiter3566, 0
  br i1 %lcmp.mod3568.not, label %.preheader72.i.i1733, label %.lr.ph.i.i1729.epil.preheader

.lr.ph.i.i1729.epil.preheader:                    ; preds = %.preheader72.i.i1733.loopexit.unr-lcssa, %.lr.ph.i.i1729.preheader
  %.05779.i.i1730.epil.init = phi i64 [ 0, %.lr.ph.i.i1729.preheader ], [ %i.bux, %.preheader72.i.i1733.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i1731.epil.init = phi i64 [ 0, %.lr.ph.i.i1729.preheader ], [ %i.buw, %.preheader72.i.i1733.loopexit.unr-lcssa ]
  %lcmp.mod3570 = trunc i64 %.064.i.i17242535 to i1
  call void @llvm.assume(i1 %lcmp.mod3570)
  %i.bto = getelementptr [4 x i8], ptr %.061.i.i17272541, i64 %.05779.i.i1730.epil.init
  %i.btp = load i32, ptr %i.bto, align 4, !tbaa !7
  %i.btq = zext i32 %i.btp to i64
  %i.btr = getelementptr [4 x i8], ptr %.063.i.i17252537, i64 %.05779.i.i1730.epil.init
  %i.bts = load i32, ptr %i.btr, align 4, !tbaa !7
  %i.btt = zext i32 %i.bts to i64
  %i.btu = add nuw nsw i64 %.05878.i.i1731.epil.init, %i.btq
  %i.btv = add nuw nsw i64 %i.btu, %i.btt         ; 2 uses
  %i.btw = trunc i64 %i.btv to i32
  %i.btx = getelementptr [4 x i8], ptr %i.btk, i64 %.05779.i.i1730.epil.init
  store i32 %i.btw, ptr %i.btx, align 4, !tbaa !7
  %i.bty = lshr i64 %i.btv, 32
  br label %.preheader72.i.i1733

.preheader72.i.i1733:                             ; preds = %.lr.ph.i.i1729.epil.preheader, %.preheader72.i.i1733.loopexit.unr-lcssa, %bb.cf
  %.062.i.i17262540 = phi i64 [ %i.l, %bb.cf ], [ %.062.i.i17262539, %.preheader72.i.i1733.loopexit.unr-lcssa ], [ %.062.i.i17262539, %.lr.ph.i.i1729.epil.preheader ] ; 12 uses
  %.063.i.i17252538 = phi ptr [ %i.ak, %bb.cf ], [ %.063.i.i17252537, %.preheader72.i.i1733.loopexit.unr-lcssa ], [ %.063.i.i17252537, %.lr.ph.i.i1729.epil.preheader ] ; 9 uses
  %.064.i.i17242536 = phi i64 [ 0, %bb.cf ], [ %.064.i.i17242535, %.preheader72.i.i1733.loopexit.unr-lcssa ], [ %.064.i.i17242535, %.lr.ph.i.i1729.epil.preheader ] ; 3 uses
  %.058.lcssa.i.i1734 = phi i64 [ 0, %bb.cf ], [ %i.buw, %.preheader72.i.i1733.loopexit.unr-lcssa ], [ %i.bty, %.lr.ph.i.i1729.epil.preheader ] ; 2 uses
  %.063.i.i172525383172 = ptrtoaddr ptr %.063.i.i17252538 to i64
  %i.btz = icmp ult i64 %.064.i.i17242536, %.062.i.i17262540
  br i1 %i.btz, label %.lr.ph83.i.i1754, label %.preheader70.i.i1735

.lr.ph.i.i1729:                                   ; preds = %.lr.ph.i.i1729, %.lr.ph.i.i1729.preheader.new
  %.05779.i.i1730 = phi i64 [ 0, %.lr.ph.i.i1729.preheader.new ], [ %i.bux, %.lr.ph.i.i1729 ] ; 5 uses
  %.05878.i.i1731 = phi i64 [ 0, %.lr.ph.i.i1729.preheader.new ], [ %i.buw, %.lr.ph.i.i1729 ]
  %niter3572 = phi i64 [ 0, %.lr.ph.i.i1729.preheader.new ], [ %niter3572.next.1, %.lr.ph.i.i1729 ]
  %i.bua = getelementptr [4 x i8], ptr %.061.i.i17272541, i64 %.05779.i.i1730
  %i.bub = load i32, ptr %i.bua, align 4, !tbaa !7
  %i.buc = zext i32 %i.bub to i64
  %i.bud = getelementptr [4 x i8], ptr %.063.i.i17252537, i64 %.05779.i.i1730
  %i.bue = load i32, ptr %i.bud, align 4, !tbaa !7
  %i.buf = zext i32 %i.bue to i64
  %i.bug = add nuw nsw i64 %.05878.i.i1731, %i.buc
  %i.buh = add nuw nsw i64 %i.bug, %i.buf         ; 2 uses
  %i.bui = trunc i64 %i.buh to i32
  %i.buj = getelementptr [4 x i8], ptr %i.btk, i64 %.05779.i.i1730
  store i32 %i.bui, ptr %i.buj, align 4, !tbaa !7
  %i.buk = lshr i64 %i.buh, 32
  %i.bul = or disjoint i64 %.05779.i.i1730, 1     ; 3 uses
  %i.bum = getelementptr [4 x i8], ptr %.061.i.i17272541, i64 %i.bul
  %i.bun = load i32, ptr %i.bum, align 4, !tbaa !7
  %i.buo = zext i32 %i.bun to i64
  %i.bup = getelementptr [4 x i8], ptr %.063.i.i17252537, i64 %i.bul
  %i.buq = load i32, ptr %i.bup, align 4, !tbaa !7
  %i.bur = zext i32 %i.buq to i64
  %i.bus = add nuw nsw i64 %i.buk, %i.buo
  %i.but = add nuw nsw i64 %i.bus, %i.bur         ; 2 uses
  %i.buu = trunc i64 %i.but to i32
  %i.buv = getelementptr [4 x i8], ptr %i.btk, i64 %i.bul
  store i32 %i.buu, ptr %i.buv, align 4, !tbaa !7
  %i.buw = lshr i64 %i.but, 32                    ; 3 uses
  %i.bux = add nuw i64 %.05779.i.i1730, 2         ; 2 uses
  %niter3572.next.1 = add i64 %niter3572, 2       ; 2 uses
  %niter3572.ncmp.1 = icmp eq i64 %niter3572.next.1, %unroll_iter3571
  br i1 %niter3572.ncmp.1, label %.preheader72.i.i1733.loopexit.unr-lcssa, label %.lr.ph.i.i1729, !llvm.loop !34

.preheader70.i.i1735:                             ; preds = %bb.ch, %.preheader72.i.i1733
  %.159.lcssa.i.i1736 = phi i64 [ %.058.lcssa.i.i1734, %.preheader72.i.i1733 ], [ %i.bvj, %bb.ch ]
  %.1.lcssa.i.i1737 = phi i64 [ %.064.i.i17242536, %.preheader72.i.i1733 ], [ %.062.i.i17262540, %bb.ch ] ; 4 uses
  %i.buy = icmp ult i64 %.1.lcssa.i.i1737, %i.btl
  br i1 %i.buy, label %.lr.ph88.preheader.i.i1741, label %bary_add.exit1758

.lr.ph88.preheader.i.i1741:                       ; preds = %.preheader70.i.i1735
  %i.buz = icmp eq i64 %.159.lcssa.i.i1736, 0
  br i1 %i.buz, label %.loopexit71.i.i1743, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph88.preheader.i.i1741
  %i.bva = getelementptr [4 x i8], ptr %i.btk, i64 %.1.lcssa.i.i1737
  store i32 1, ptr %i.bva, align 4, !tbaa !7
  %i.bvb = add nuw i64 %.1.lcssa.i.i1737, 1       ; 2 uses
  %exitcond103.peel.not.i.i1742 = icmp eq i64 %i.bvb, %i.btl
  br i1 %exitcond103.peel.not.i.i1742, label %bary_add.exit1758, label %.loopexit71.i.i1743

.lr.ph83.i.i1754:                                 ; preds = %.preheader72.i.i1733, %bb.ch
  %.182.i.i1755 = phi i64 [ %i.bvk, %bb.ch ], [ %.064.i.i17242536, %.preheader72.i.i1733 ] ; 4 uses
  %.15981.i.i1756 = phi i64 [ %i.bvj, %bb.ch ], [ %.058.lcssa.i.i1734, %.preheader72.i.i1733 ]
  %i.bvc = icmp eq i64 %.15981.i.i1756, 0
  br i1 %i.bvc, label %.loopexit71.i.i1743, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph83.i.i1754
  %i.bvd = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %.182.i.i1755
  %i.bve = load i32, ptr %i.bvd, align 4, !tbaa !7
  %i.bvf = zext i32 %i.bve to i64
  %i.bvg = add nuw nsw i64 %i.bvf, 1              ; 2 uses
  %i.bvh = trunc i64 %i.bvg to i32
  %i.bvi = getelementptr [4 x i8], ptr %i.btk, i64 %.182.i.i1755
  store i32 %i.bvh, ptr %i.bvi, align 4, !tbaa !7
  %i.bvj = lshr i64 %i.bvg, 32                    ; 2 uses
  %i.bvk = add i64 %.182.i.i1755, 1               ; 2 uses
  %exitcond102.not.i.i1757 = icmp eq i64 %i.bvk, %.062.i.i17262540
  br i1 %exitcond102.not.i.i1757, label %.preheader70.i.i1735, label %.lr.ph83.i.i1754, !llvm.loop !36

.loopexit71.i.i1743:                              ; preds = %.lr.ph83.i.i1754, %bb.cg, %.lr.ph88.preheader.i.i1741
  %.3.i.i1744 = phi i64 [ %i.bvb, %bb.cg ], [ %.1.lcssa.i.i1737, %.lr.ph88.preheader.i.i1741 ], [ %.182.i.i1755, %.lr.ph83.i.i1754 ] ; 7 uses
  %i.bvl = icmp eq ptr %.063.i.i17252538, %i.btk
  %i.bvm = icmp eq i64 %.062.i.i17262540, %i.btl
  %or.cond.i.i1745 = and i1 %i.bvl, %i.bvm
  br i1 %or.cond.i.i1745, label %bary_add.exit1758, label %.preheader69.i.i1746

.preheader69.i.i1746:                             ; preds = %.loopexit71.i.i1743
  %i.bvn = icmp ult i64 %.3.i.i1744, %.062.i.i17262540
  br i1 %i.bvn, label %.lr.ph91.i.i1751.preheader, label %.preheader.i.i1747

.lr.ph91.i.i1751.preheader:                       ; preds = %.preheader69.i.i1746
  %i.bvo = sub nuw i64 %.062.i.i17262540, %.3.i.i1744 ; 3 uses
  %min.iters.check3175 = icmp ult i64 %i.bvo, 16
  br i1 %min.iters.check3175, label %.lr.ph91.i.i1751.preheader3234, label %vector.memcheck3171

vector.memcheck3171:                              ; preds = %.lr.ph91.i.i1751.preheader
  %i.bvp = shl nuw i64 %i.g, 2
  %i.bvq = add i64 %i.bvp, %.05322856
  %i.bvr = sub i64 %.063.i.i172525383172, %i.bvq
  %diff.check3173 = icmp ugt i64 %i.bvr, -32
  br i1 %diff.check3173, label %.lr.ph91.i.i1751.preheader3234, label %vector.ph3176

vector.ph3176:                                    ; preds = %vector.memcheck3171
  %n.vec3178 = and i64 %i.bvo, -8                 ; 3 uses
  %i.bvs = add i64 %.3.i.i1744, %n.vec3178
  br label %vector.body3179

vector.body3179:                                  ; preds = %vector.body3179, %vector.ph3176
  %index3180 = phi i64 [ 0, %vector.ph3176 ], [ %index.next3183, %vector.body3179 ] ; 2 uses
  %i.bvt = add i64 %.3.i.i1744, %index3180        ; 2 uses
  %i.bvu = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %i.bvt ; 2 uses
  %i.bvv = getelementptr i8, ptr %i.bvu, i64 16
  %wide.load3181 = load <4 x i32>, ptr %i.bvu, align 4, !tbaa !7
  %wide.load3182 = load <4 x i32>, ptr %i.bvv, align 4, !tbaa !7
  %i.bvw = getelementptr [4 x i8], ptr %i.btk, i64 %i.bvt ; 2 uses
  %i.bvx = getelementptr i8, ptr %i.bvw, i64 16
  store <4 x i32> %wide.load3181, ptr %i.bvw, align 4, !tbaa !7
  store <4 x i32> %wide.load3182, ptr %i.bvx, align 4, !tbaa !7
  %index.next3183 = add nuw i64 %index3180, 8     ; 2 uses
  %i.bvy = icmp eq i64 %index.next3183, %n.vec3178
  br i1 %i.bvy, label %middle.block3184, label %vector.body3179, !llvm.loop !136

middle.block3184:                                 ; preds = %vector.body3179
  %cmp.n3185 = icmp eq i64 %i.bvo, %n.vec3178
  br i1 %cmp.n3185, label %.preheader.i.i1747, label %.lr.ph91.i.i1751.preheader3234

.lr.ph91.i.i1751.preheader3234:                   ; preds = %vector.memcheck3171, %.lr.ph91.i.i1751.preheader, %middle.block3184
  %.490.i.i1752.ph = phi i64 [ %.3.i.i1744, %vector.memcheck3171 ], [ %.3.i.i1744, %.lr.ph91.i.i1751.preheader ], [ %i.bvs, %middle.block3184 ] ; 4 uses
  %i.bvz = sub i64 %.062.i.i17262540, %.490.i.i1752.ph
  %xtraiter3573 = and i64 %i.bvz, 3               ; 2 uses
  %lcmp.mod3574.not = icmp eq i64 %xtraiter3573, 0
  br i1 %lcmp.mod3574.not, label %.lr.ph91.i.i1751.prol.loopexit, label %.lr.ph91.i.i1751.prol

.lr.ph91.i.i1751.prol:                            ; preds = %.lr.ph91.i.i1751.preheader3234, %.lr.ph91.i.i1751.prol
  %.490.i.i1752.prol = phi i64 [ %i.bwd, %.lr.ph91.i.i1751.prol ], [ %.490.i.i1752.ph, %.lr.ph91.i.i1751.preheader3234 ] ; 3 uses
  %prol.iter3575 = phi i64 [ %prol.iter3575.next, %.lr.ph91.i.i1751.prol ], [ 0, %.lr.ph91.i.i1751.preheader3234 ]
  %i.bwa = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %.490.i.i1752.prol
  %i.bwb = load i32, ptr %i.bwa, align 4, !tbaa !7
  %i.bwc = getelementptr [4 x i8], ptr %i.btk, i64 %.490.i.i1752.prol
  store i32 %i.bwb, ptr %i.bwc, align 4, !tbaa !7
  %i.bwd = add nuw i64 %.490.i.i1752.prol, 1      ; 2 uses
  %prol.iter3575.next = add i64 %prol.iter3575, 1 ; 2 uses
  %prol.iter3575.cmp.not = icmp eq i64 %prol.iter3575.next, %xtraiter3573
  br i1 %prol.iter3575.cmp.not, label %.lr.ph91.i.i1751.prol.loopexit, label %.lr.ph91.i.i1751.prol, !llvm.loop !137

.lr.ph91.i.i1751.prol.loopexit:                   ; preds = %.lr.ph91.i.i1751.prol, %.lr.ph91.i.i1751.preheader3234
  %.490.i.i1752.unr = phi i64 [ %.490.i.i1752.ph, %.lr.ph91.i.i1751.preheader3234 ], [ %i.bwd, %.lr.ph91.i.i1751.prol ]
  %i.bwe = sub i64 %.490.i.i1752.ph, %.062.i.i17262540
  %i.bwf = icmp ugt i64 %i.bwe, -4
  br i1 %i.bwf, label %.preheader.i.i1747, label %.lr.ph91.i.i1751

.preheader.i.i1747:                               ; preds = %.lr.ph91.i.i1751.prol.loopexit, %.lr.ph91.i.i1751, %middle.block3184, %.preheader69.i.i1746
  %.4.lcssa.i.i1748 = phi i64 [ %.3.i.i1744, %.preheader69.i.i1746 ], [ %.062.i.i17262540, %middle.block3184 ], [ %.062.i.i17262540, %.lr.ph91.i.i1751 ], [ %.062.i.i17262540, %.lr.ph91.i.i1751.prol.loopexit ] ; 3 uses
  %i.bwg = icmp ult i64 %.4.lcssa.i.i1748, %i.btl
  br i1 %i.bwg, label %.lr.ph94.preheader.i.i1749, label %bary_add.exit1758

.lr.ph94.preheader.i.i1749:                       ; preds = %.preheader.i.i1747
  %i.bwh = shl i64 %.4.lcssa.i.i1748, 2
  %scevgep.i.i1750 = getelementptr i8, ptr %i.btk, i64 %i.bwh
  %i.bwi = sub nuw i64 %i.btl, %.4.lcssa.i.i1748
  %i.bwj = shl i64 %i.bwi, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1750, i8 0, i64 %i.bwj, i1 false), !tbaa !7
  br label %bary_add.exit1758

.lr.ph91.i.i1751:                                 ; preds = %.lr.ph91.i.i1751.prol.loopexit, %.lr.ph91.i.i1751
  %.490.i.i1752 = phi i64 [ %i.bwz, %.lr.ph91.i.i1751 ], [ %.490.i.i1752.unr, %.lr.ph91.i.i1751.prol.loopexit ] ; 6 uses
  %i.bwk = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %.490.i.i1752
  %i.bwl = load i32, ptr %i.bwk, align 4, !tbaa !7
  %i.bwm = getelementptr [4 x i8], ptr %i.btk, i64 %.490.i.i1752
  store i32 %i.bwl, ptr %i.bwm, align 4, !tbaa !7
  %i.bwn = add nuw i64 %.490.i.i1752, 1           ; 2 uses
  %i.bwo = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %i.bwn
  %i.bwp = load i32, ptr %i.bwo, align 4, !tbaa !7
  %i.bwq = getelementptr [4 x i8], ptr %i.btk, i64 %i.bwn
  store i32 %i.bwp, ptr %i.bwq, align 4, !tbaa !7
  %i.bwr = add nuw i64 %.490.i.i1752, 2           ; 2 uses
  %i.bws = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %i.bwr
  %i.bwt = load i32, ptr %i.bws, align 4, !tbaa !7
  %i.bwu = getelementptr [4 x i8], ptr %i.btk, i64 %i.bwr
  store i32 %i.bwt, ptr %i.bwu, align 4, !tbaa !7
  %i.bwv = add nuw i64 %.490.i.i1752, 3           ; 2 uses
  %i.bww = getelementptr [4 x i8], ptr %.063.i.i17252538, i64 %i.bwv
  %i.bwx = load i32, ptr %i.bww, align 4, !tbaa !7
  %i.bwy = getelementptr [4 x i8], ptr %i.btk, i64 %i.bwv
  store i32 %i.bwx, ptr %i.bwy, align 4, !tbaa !7
  %i.bwz = add nuw i64 %.490.i.i1752, 4           ; 2 uses
  %exitcond106.not.i.i1753.3 = icmp eq i64 %i.bwz, %.062.i.i17262540
  br i1 %exitcond106.not.i.i1753.3, label %.preheader.i.i1747, label %.lr.ph91.i.i1751, !llvm.loop !138

bb.ci:                                            ; preds = %ruby_nonempty_memcpy.exit1723
  %i.bxa = call i64 @llvm.umin.i64(i64 %i.btl, i64 %i.l) ; 3 uses
  %.not97.i.i1759 = icmp eq i64 %i.btl, 0
  br i1 %.not97.i.i1759, label %._crit_edge.i.i1764, label %.lr.ph.i.i1760.preheader

.lr.ph.i.i1760.preheader:                         ; preds = %bb.ci
  %i.bxb = mul i64 %i.g, 5
  %i.bxc = add i64 %i.bxb, 1
  %umin = call i64 @llvm.umin.i64(i64 %i.bxc, i64 %i.l) ; 4 uses
  %xtraiter3576 = and i64 %umin, 1
  %i.bxd = icmp eq i64 %umin, 1
  br i1 %i.bxd, label %.lr.ph.i.i1760.epil.preheader, label %.lr.ph.i.i1760.preheader.new

.lr.ph.i.i1760.preheader.new:                     ; preds = %.lr.ph.i.i1760.preheader
  %unroll_iter3581 = and i64 %umin, 9223372036854775806
  br label %.lr.ph.i.i1760

.lr.ph.i.i1760:                                   ; preds = %.lr.ph.i.i1760, %.lr.ph.i.i1760.preheader.new
  %.06278.i.i1761 = phi i64 [ 0, %.lr.ph.i.i1760.preheader.new ], [ %i.bxz, %.lr.ph.i.i1760 ] ; 4 uses
  %.06377.i.i1762 = phi i64 [ 0, %.lr.ph.i.i1760.preheader.new ], [ %i.bxy, %.lr.ph.i.i1760 ]
  %niter3582 = phi i64 [ 0, %.lr.ph.i.i1760.preheader.new ], [ %niter3582.next.1, %.lr.ph.i.i1760 ]
  %i.bxe = getelementptr [4 x i8], ptr %i.btk, i64 %.06278.i.i1761 ; 2 uses
  %i.bxf = load i32, ptr %i.bxe, align 4, !tbaa !7
  %i.bxg = zext i32 %i.bxf to i64
  %i.bxh = getelementptr [4 x i8], ptr %i.ak, i64 %.06278.i.i1761
  %i.bxi = load i32, ptr %i.bxh, align 4, !tbaa !7
  %i.bxj = zext i32 %i.bxi to i64
  %i.bxk = sub nsw i64 %i.bxg, %i.bxj
  %i.bxl = add nsw i64 %i.bxk, %.06377.i.i1762    ; 2 uses
  %i.bxm = trunc i64 %i.bxl to i32
  store i32 %i.bxm, ptr %i.bxe, align 4, !tbaa !7
  %i.bxn = ashr i64 %i.bxl, 32
  %i.bxo = or disjoint i64 %.06278.i.i1761, 1     ; 2 uses
  %i.bxp = getelementptr [4 x i8], ptr %i.btk, i64 %i.bxo ; 2 uses
  %i.bxq = load i32, ptr %i.bxp, align 4, !tbaa !7
  %i.bxr = zext i32 %i.bxq to i64
  %i.bxs = getelementptr [4 x i8], ptr %i.ak, i64 %i.bxo
  %i.bxt = load i32, ptr %i.bxs, align 4, !tbaa !7
  %i.bxu = zext i32 %i.bxt to i64
  %i.bxv = sub nsw i64 %i.bxr, %i.bxu
  %i.bxw = add nsw i64 %i.bxv, %i.bxn             ; 2 uses
  %i.bxx = trunc i64 %i.bxw to i32
  store i32 %i.bxx, ptr %i.bxp, align 4, !tbaa !7
  %i.bxy = ashr i64 %i.bxw, 32                    ; 3 uses
  %i.bxz = add nuw i64 %.06278.i.i1761, 2         ; 2 uses
  %niter3582.next.1 = add i64 %niter3582, 2       ; 2 uses
  %niter3582.ncmp.1 = icmp eq i64 %niter3582.next.1, %unroll_iter3581
  br i1 %niter3582.ncmp.1, label %._crit_edge.i.i1764.loopexit.unr-lcssa, label %.lr.ph.i.i1760, !llvm.loop !48

._crit_edge.i.i1764.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i1760
  %lcmp.mod3578.not = icmp eq i64 %xtraiter3576, 0
  br i1 %lcmp.mod3578.not, label %._crit_edge.i.i1764, label %.lr.ph.i.i1760.epil.preheader

.lr.ph.i.i1760.epil.preheader:                    ; preds = %._crit_edge.i.i1764.loopexit.unr-lcssa, %.lr.ph.i.i1760.preheader
  %.06278.i.i1761.epil.init = phi i64 [ 0, %.lr.ph.i.i1760.preheader ], [ %i.bxz, %._crit_edge.i.i1764.loopexit.unr-lcssa ] ; 2 uses
  %.06377.i.i1762.epil.init = phi i64 [ 0, %.lr.ph.i.i1760.preheader ], [ %i.bxy, %._crit_edge.i.i1764.loopexit.unr-lcssa ]
  %lcmp.mod3580 = trunc i64 %umin to i1
  call void @llvm.assume(i1 %lcmp.mod3580)
  %i.bya = getelementptr [4 x i8], ptr %i.btk, i64 %.06278.i.i1761.epil.init ; 2 uses
  %i.byb = load i32, ptr %i.bya, align 4, !tbaa !7
  %i.byc = zext i32 %i.byb to i64
  %i.byd = getelementptr [4 x i8], ptr %i.ak, i64 %.06278.i.i1761.epil.init
  %i.bye = load i32, ptr %i.byd, align 4, !tbaa !7
  %i.byf = zext i32 %i.bye to i64
  %i.byg = sub nsw i64 %i.byc, %i.byf
  %i.byh = add nsw i64 %i.byg, %.06377.i.i1762.epil.init ; 2 uses
  %i.byi = trunc i64 %i.byh to i32
  store i32 %i.byi, ptr %i.bya, align 4, !tbaa !7
  %i.byj = ashr i64 %i.byh, 32
  br label %._crit_edge.i.i1764

._crit_edge.i.i1764:                              ; preds = %.lr.ph.i.i1760.epil.preheader, %._crit_edge.i.i1764.loopexit.unr-lcssa, %bb.ci
  %.063.lcssa.i.i1765 = phi i64 [ 0, %bb.ci ], [ %i.bxy, %._crit_edge.i.i1764.loopexit.unr-lcssa ], [ %i.byj, %.lr.ph.i.i1760.epil.preheader ] ; 3 uses
  %.not.i.i1766.not = icmp ult i64 %i.j, %i.btl
  br i1 %.not.i.i1766.not, label %.preheader72.i.i1767, label %.lr.ph87.i.i1790

.preheader72.i.i1767:                             ; preds = %._crit_edge.i.i1764
  %i.byk = icmp ult i64 %i.l, %i.btl
  br i1 %i.byk, label %.lr.ph82.i.i1786, label %.loopexit71.i.i1768

.lr.ph82.i.i1786:                                 ; preds = %.preheader72.i.i1767, %bb.cj
  %.181.i.i1787 = phi i64 [ %i.bys, %bb.cj ], [ %i.bxa, %.preheader72.i.i1767 ] ; 2 uses
  %.16480.i.i1788 = phi i64 [ %i.byr, %bb.cj ], [ %.063.lcssa.i.i1765, %.preheader72.i.i1767 ]
  %i.byl = icmp eq i64 %.16480.i.i1788, 0
  br i1 %i.byl, label %bary_add.exit1758, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph82.i.i1786
  %i.bym = getelementptr [4 x i8], ptr %i.btk, i64 %.181.i.i1787 ; 2 uses
  %i.byn = load i32, ptr %i.bym, align 4, !tbaa !7
  %i.byo = zext i32 %i.byn to i64
  %i.byp = add nsw i64 %i.byo, -1                 ; 2 uses
  %i.byq = trunc i64 %i.byp to i32
  store i32 %i.byq, ptr %i.bym, align 4, !tbaa !7
  %i.byr = ashr i64 %i.byp, 32
  %i.bys = add i64 %.181.i.i1787, 1               ; 2 uses
  %exitcond107.not.i.i1789 = icmp eq i64 %i.bys, %i.btl
  br i1 %exitcond107.not.i.i1789, label %bary_add.exit1758, label %.lr.ph82.i.i1786, !llvm.loop !50

.lr.ph87.i.i1790:                                 ; preds = %._crit_edge.i.i1764, %.lr.ph87.i.i1790
  %.286.i.i1791 = phi i64 [ %i.bza, %.lr.ph87.i.i1790 ], [ %i.bxa, %._crit_edge.i.i1764 ] ; 4 uses
  %.26585.i.i1792 = phi i64 [ %i.byz, %.lr.ph87.i.i1790 ], [ %.063.lcssa.i.i1765, %._crit_edge.i.i1764 ]
  %i.byt = getelementptr [4 x i8], ptr %i.ak, i64 %.286.i.i1791
  %i.byu = load i32, ptr %i.byt, align 4, !tbaa !7
  %i.byv = zext i32 %i.byu to i64
  %i.byw = sub nsw i64 %.26585.i.i1792, %i.byv    ; 2 uses
  %i.byx = trunc i64 %i.byw to i32
  %i.byy = getelementptr [4 x i8], ptr %i.btk, i64 %.286.i.i1791
  store i32 %i.byx, ptr %i.byy, align 4, !tbaa !7
  %i.byz = ashr i64 %i.byw, 32                    ; 2 uses
  %i.bza = add nuw i64 %.286.i.i1791, 1
  %exitcond108.not.i.i1793 = icmp eq i64 %.286.i.i1791, %i.j
  br i1 %exitcond108.not.i.i1793, label %.loopexit71.i.i1768, label %.lr.ph87.i.i1790, !llvm.loop !51

.loopexit71.i.i1768:                              ; preds = %.lr.ph87.i.i1790, %.preheader72.i.i1767
  %.366.i.i1769 = phi i64 [ %.063.lcssa.i.i1765, %.preheader72.i.i1767 ], [ %i.byz, %.lr.ph87.i.i1790 ]
  %.3.i.i1770 = phi i64 [ %i.bxa, %.preheader72.i.i1767 ], [ %i.l, %.lr.ph87.i.i1790 ] ; 3 uses
  %i.bzb = icmp ne i64 %.366.i.i1769, 0
  %i.bzc = icmp ult i64 %.3.i.i1770, %i.btl
  %or.cond = and i1 %i.bzb, %i.bzc
  br i1 %or.cond, label %.lr.ph91.preheader.i.i1773, label %bary_add.exit1758

.lr.ph91.preheader.i.i1773:                       ; preds = %.loopexit71.i.i1768
  %i.bzd = shl i64 %.3.i.i1770, 2
  %scevgep.i.i1774 = getelementptr i8, ptr %i.btk, i64 %i.bzd
  %i.bze = sub nuw i64 %i.btl, %.3.i.i1770
  %i.bzf = shl i64 %i.bze, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1774, i8 -1, i64 %i.bzf, i1 false), !tbaa !7
  br label %bary_add.exit1758

bary_add.exit1758:                                ; preds = %bb.cj, %.lr.ph82.i.i1786, %.preheader70.i.i1735, %bb.cg, %.lr.ph91.preheader.i.i1773, %.loopexit71.i.i1768, %.lr.ph94.preheader.i.i1749, %.preheader.i.i1747, %.loopexit71.i.i1743
  %i.bzg = sub i64 %i.aq, %i.j                    ; 14 uses
  br i1 %.not591, label %bb.cp, label %bb.ck

bb.ck:                                            ; preds = %bary_add.exit1758
  %i.bzh = icmp ugt i64 %i.bzg, %i.l
  br i1 %i.bzh, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.064.i.i1795 = phi i64 [ %i.l, %bb.cl ], [ %i.bzg, %bb.ck ] ; 7 uses
  %.063.i.i1796 = phi ptr [ %i.bth, %bb.cl ], [ %i.al, %bb.ck ] ; 12 uses
  %.062.i.i1797 = phi i64 [ %i.bzg, %bb.cl ], [ %i.l, %bb.ck ] ; 9 uses
  %.061.i.i1798 = phi ptr [ %i.al, %bb.cl ], [ %i.bth, %bb.ck ] ; 3 uses
  %.063.i.i17963188 = ptrtoaddr ptr %.063.i.i1796 to i64
  %xtraiter3584 = and i64 %.064.i.i1795, 1
  %i.bzi = icmp eq i64 %.064.i.i1795, 1
  br i1 %i.bzi, label %.lr.ph.i.i1800.epil.preheader, label %.new3583

.new3583:                                         ; preds = %bb.cm
  %unroll_iter3589 = and i64 %.064.i.i1795, -2
  br label %.lr.ph.i.i1800

.preheader72.i.i1804.unr-lcssa:                   ; preds = %.lr.ph.i.i1800
  %lcmp.mod3586.not = icmp eq i64 %xtraiter3584, 0
  br i1 %lcmp.mod3586.not, label %.preheader72.i.i1804, label %.lr.ph.i.i1800.epil.preheader

.lr.ph.i.i1800.epil.preheader:                    ; preds = %.preheader72.i.i1804.unr-lcssa, %bb.cm
  %.05779.i.i1801.epil.init = phi i64 [ 0, %bb.cm ], [ %i.cas, %.preheader72.i.i1804.unr-lcssa ] ; 3 uses
  %.05878.i.i1802.epil.init = phi i64 [ 0, %bb.cm ], [ %i.car, %.preheader72.i.i1804.unr-lcssa ]
  %lcmp.mod3588 = trunc i64 %.064.i.i1795 to i1
  call void @llvm.assume(i1 %lcmp.mod3588)
  %i.bzj = getelementptr [4 x i8], ptr %.061.i.i1798, i64 %.05779.i.i1801.epil.init
  %i.bzk = load i32, ptr %i.bzj, align 4, !tbaa !7
  %i.bzl = zext i32 %i.bzk to i64
  %i.bzm = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %.05779.i.i1801.epil.init
  %i.bzn = load i32, ptr %i.bzm, align 4, !tbaa !7
  %i.bzo = zext i32 %i.bzn to i64
  %i.bzp = add nuw nsw i64 %.05878.i.i1802.epil.init, %i.bzl
  %i.bzq = add nuw nsw i64 %i.bzp, %i.bzo         ; 2 uses
  %i.bzr = trunc i64 %i.bzq to i32
  %i.bzs = getelementptr [4 x i8], ptr %i.bth, i64 %.05779.i.i1801.epil.init
  store i32 %i.bzr, ptr %i.bzs, align 4, !tbaa !7
  %i.bzt = lshr i64 %i.bzq, 32
  br label %.preheader72.i.i1804

.preheader72.i.i1804:                             ; preds = %.preheader72.i.i1804.unr-lcssa, %.lr.ph.i.i1800.epil.preheader
  %.lcssa3231 = phi i64 [ %i.car, %.preheader72.i.i1804.unr-lcssa ], [ %i.bzt, %.lr.ph.i.i1800.epil.preheader ] ; 2 uses
  %i.bzu = icmp ult i64 %.064.i.i1795, %.062.i.i1797
  br i1 %i.bzu, label %.lr.ph83.i.i1825, label %.preheader70.i.i1806

.lr.ph.i.i1800:                                   ; preds = %.lr.ph.i.i1800, %.new3583
  %.05779.i.i1801 = phi i64 [ 0, %.new3583 ], [ %i.cas, %.lr.ph.i.i1800 ] ; 5 uses
  %.05878.i.i1802 = phi i64 [ 0, %.new3583 ], [ %i.car, %.lr.ph.i.i1800 ]
  %niter3590 = phi i64 [ 0, %.new3583 ], [ %niter3590.next.1, %.lr.ph.i.i1800 ]
  %i.bzv = getelementptr [4 x i8], ptr %.061.i.i1798, i64 %.05779.i.i1801
  %i.bzw = load i32, ptr %i.bzv, align 4, !tbaa !7
  %i.bzx = zext i32 %i.bzw to i64
  %i.bzy = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %.05779.i.i1801
  %i.bzz = load i32, ptr %i.bzy, align 4, !tbaa !7
  %i.caa = zext i32 %i.bzz to i64
  %i.cab = add nuw nsw i64 %.05878.i.i1802, %i.bzx
  %i.cac = add nuw nsw i64 %i.cab, %i.caa         ; 2 uses
  %i.cad = trunc i64 %i.cac to i32
  %i.cae = getelementptr [4 x i8], ptr %i.bth, i64 %.05779.i.i1801
  store i32 %i.cad, ptr %i.cae, align 4, !tbaa !7
  %i.caf = lshr i64 %i.cac, 32
  %i.cag = or disjoint i64 %.05779.i.i1801, 1     ; 3 uses
  %i.cah = getelementptr [4 x i8], ptr %.061.i.i1798, i64 %i.cag
  %i.cai = load i32, ptr %i.cah, align 4, !tbaa !7
  %i.caj = zext i32 %i.cai to i64
  %i.cak = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %i.cag
  %i.cal = load i32, ptr %i.cak, align 4, !tbaa !7
  %i.cam = zext i32 %i.cal to i64
  %i.can = add nuw nsw i64 %i.caf, %i.caj
  %i.cao = add nuw nsw i64 %i.can, %i.cam         ; 2 uses
  %i.cap = trunc i64 %i.cao to i32
  %i.caq = getelementptr [4 x i8], ptr %i.bth, i64 %i.cag
  store i32 %i.cap, ptr %i.caq, align 4, !tbaa !7
  %i.car = lshr i64 %i.cao, 32                    ; 3 uses
  %i.cas = add nuw i64 %.05779.i.i1801, 2         ; 2 uses
  %niter3590.next.1 = add i64 %niter3590, 2       ; 2 uses
  %niter3590.ncmp.1 = icmp eq i64 %niter3590.next.1, %unroll_iter3589
  br i1 %niter3590.ncmp.1, label %.preheader72.i.i1804.unr-lcssa, label %.lr.ph.i.i1800, !llvm.loop !34

.preheader70.i.i1806:                             ; preds = %bb.co, %.preheader72.i.i1804
  %.159.lcssa.i.i1807 = phi i64 [ %.lcssa3231, %.preheader72.i.i1804 ], [ %i.cbe, %bb.co ]
  %.1.lcssa.i.i1808 = phi i64 [ %.064.i.i1795, %.preheader72.i.i1804 ], [ %.062.i.i1797, %bb.co ] ; 4 uses
  %i.cat = icmp ult i64 %.1.lcssa.i.i1808, %i.bzg
  br i1 %i.cat, label %.lr.ph88.preheader.i.i1812, label %bary_add.exit1829

.lr.ph88.preheader.i.i1812:                       ; preds = %.preheader70.i.i1806
  %i.cau = icmp eq i64 %.159.lcssa.i.i1807, 0
  br i1 %i.cau, label %.loopexit71.i.i1814, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph88.preheader.i.i1812
  %i.cav = getelementptr [4 x i8], ptr %i.bth, i64 %.1.lcssa.i.i1808
  store i32 1, ptr %i.cav, align 4, !tbaa !7
  %i.caw = add nuw i64 %.1.lcssa.i.i1808, 1       ; 2 uses
  %exitcond103.peel.not.i.i1813 = icmp eq i64 %i.caw, %i.bzg
  br i1 %exitcond103.peel.not.i.i1813, label %bary_add.exit1829, label %.loopexit71.i.i1814

.lr.ph83.i.i1825:                                 ; preds = %.preheader72.i.i1804, %bb.co
  %.182.i.i1826 = phi i64 [ %i.cbf, %bb.co ], [ %.064.i.i1795, %.preheader72.i.i1804 ] ; 4 uses
  %.15981.i.i1827 = phi i64 [ %i.cbe, %bb.co ], [ %.lcssa3231, %.preheader72.i.i1804 ]
  %i.cax = icmp eq i64 %.15981.i.i1827, 0
  br i1 %i.cax, label %.loopexit71.i.i1814, label %bb.co

bb.co:                                            ; preds = %.lr.ph83.i.i1825
  %i.cay = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %.182.i.i1826
  %i.caz = load i32, ptr %i.cay, align 4, !tbaa !7
  %i.cba = zext i32 %i.caz to i64
  %i.cbb = add nuw nsw i64 %i.cba, 1              ; 2 uses
  %i.cbc = trunc i64 %i.cbb to i32
  %i.cbd = getelementptr [4 x i8], ptr %i.bth, i64 %.182.i.i1826
  store i32 %i.cbc, ptr %i.cbd, align 4, !tbaa !7
  %i.cbe = lshr i64 %i.cbb, 32                    ; 2 uses
  %i.cbf = add i64 %.182.i.i1826, 1               ; 2 uses
  %exitcond102.not.i.i1828 = icmp eq i64 %i.cbf, %.062.i.i1797
  br i1 %exitcond102.not.i.i1828, label %.preheader70.i.i1806, label %.lr.ph83.i.i1825, !llvm.loop !36

.loopexit71.i.i1814:                              ; preds = %.lr.ph83.i.i1825, %bb.cn, %.lr.ph88.preheader.i.i1812
  %.3.i.i1815 = phi i64 [ %i.caw, %bb.cn ], [ %.1.lcssa.i.i1808, %.lr.ph88.preheader.i.i1812 ], [ %.182.i.i1826, %.lr.ph83.i.i1825 ] ; 7 uses
  %i.cbg = icmp eq ptr %.063.i.i1796, %i.bth
  %i.cbh = icmp eq i64 %.062.i.i1797, %i.bzg
  %or.cond.i.i1816 = and i1 %i.cbg, %i.cbh
  br i1 %or.cond.i.i1816, label %bary_add.exit1829, label %.preheader69.i.i1817

.preheader69.i.i1817:                             ; preds = %.loopexit71.i.i1814
  %i.cbi = icmp ult i64 %.3.i.i1815, %.062.i.i1797
  br i1 %i.cbi, label %.lr.ph91.i.i1822.preheader, label %.preheader.i.i1818

.lr.ph91.i.i1822.preheader:                       ; preds = %.preheader69.i.i1817
  %i.cbj = shl nuw i64 %i.g, 2
  %i.cbk = or disjoint i64 %i.cbj, 1
  %i.cbl = call i64 @llvm.umax.i64(i64 %i.cbk, i64 %i.l) ; 3 uses
  %i.cbm = sub i64 %i.cbl, %.3.i.i1815            ; 3 uses
  %min.iters.check3191 = icmp ult i64 %i.cbm, 16
  br i1 %min.iters.check3191, label %.lr.ph91.i.i1822.preheader3228, label %vector.memcheck3187

vector.memcheck3187:                              ; preds = %.lr.ph91.i.i1822.preheader
  %i.cbn = shl i64 %i.g, 3
  %i.cbo = add i64 %i.cbn, %.05322856
  %i.cbp = sub i64 %.063.i.i17963188, %i.cbo
  %diff.check3189 = icmp ugt i64 %i.cbp, -32
  br i1 %diff.check3189, label %.lr.ph91.i.i1822.preheader3228, label %vector.ph3192

vector.ph3192:                                    ; preds = %vector.memcheck3187
  %n.vec3194 = and i64 %i.cbm, -8                 ; 3 uses
  %i.cbq = add i64 %.3.i.i1815, %n.vec3194
  br label %vector.body3195

vector.body3195:                                  ; preds = %vector.body3195, %vector.ph3192
  %index3196 = phi i64 [ 0, %vector.ph3192 ], [ %index.next3199, %vector.body3195 ] ; 2 uses
  %i.cbr = add i64 %.3.i.i1815, %index3196        ; 2 uses
  %i.cbs = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %i.cbr ; 2 uses
  %i.cbt = getelementptr i8, ptr %i.cbs, i64 16
  %wide.load3197 = load <4 x i32>, ptr %i.cbs, align 4, !tbaa !7
  %wide.load3198 = load <4 x i32>, ptr %i.cbt, align 4, !tbaa !7
  %i.cbu = getelementptr [4 x i8], ptr %i.bth, i64 %i.cbr ; 2 uses
  %i.cbv = getelementptr i8, ptr %i.cbu, i64 16
  store <4 x i32> %wide.load3197, ptr %i.cbu, align 4, !tbaa !7
  store <4 x i32> %wide.load3198, ptr %i.cbv, align 4, !tbaa !7
  %index.next3199 = add nuw i64 %index3196, 8     ; 2 uses
  %i.cbw = icmp eq i64 %index.next3199, %n.vec3194
  br i1 %i.cbw, label %middle.block3200, label %vector.body3195, !llvm.loop !139

middle.block3200:                                 ; preds = %vector.body3195
  %cmp.n3201 = icmp eq i64 %i.cbm, %n.vec3194
  br i1 %cmp.n3201, label %.preheader.i.i1818, label %.lr.ph91.i.i1822.preheader3228

.lr.ph91.i.i1822.preheader3228:                   ; preds = %vector.memcheck3187, %.lr.ph91.i.i1822.preheader, %middle.block3200
  %.490.i.i1823.ph = phi i64 [ %.3.i.i1815, %vector.memcheck3187 ], [ %.3.i.i1815, %.lr.ph91.i.i1822.preheader ], [ %i.cbq, %middle.block3200 ] ; 4 uses
  %i.cbx = sub i64 %i.cbl, %.490.i.i1823.ph
  %xtraiter3591 = and i64 %i.cbx, 3               ; 2 uses
  %lcmp.mod3592.not = icmp eq i64 %xtraiter3591, 0
  br i1 %lcmp.mod3592.not, label %.lr.ph91.i.i1822.prol.loopexit, label %.lr.ph91.i.i1822.prol

.lr.ph91.i.i1822.prol:                            ; preds = %.lr.ph91.i.i1822.preheader3228, %.lr.ph91.i.i1822.prol
  %.490.i.i1823.prol = phi i64 [ %i.ccb, %.lr.ph91.i.i1822.prol ], [ %.490.i.i1823.ph, %.lr.ph91.i.i1822.preheader3228 ] ; 3 uses
  %prol.iter3593 = phi i64 [ %prol.iter3593.next, %.lr.ph91.i.i1822.prol ], [ 0, %.lr.ph91.i.i1822.preheader3228 ]
  %i.cby = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %.490.i.i1823.prol
  %i.cbz = load i32, ptr %i.cby, align 4, !tbaa !7
  %i.cca = getelementptr [4 x i8], ptr %i.bth, i64 %.490.i.i1823.prol
  store i32 %i.cbz, ptr %i.cca, align 4, !tbaa !7
  %i.ccb = add nuw i64 %.490.i.i1823.prol, 1      ; 2 uses
  %prol.iter3593.next = add i64 %prol.iter3593, 1 ; 2 uses
  %prol.iter3593.cmp.not = icmp eq i64 %prol.iter3593.next, %xtraiter3591
  br i1 %prol.iter3593.cmp.not, label %.lr.ph91.i.i1822.prol.loopexit, label %.lr.ph91.i.i1822.prol, !llvm.loop !140

.lr.ph91.i.i1822.prol.loopexit:                   ; preds = %.lr.ph91.i.i1822.prol, %.lr.ph91.i.i1822.preheader3228
  %.490.i.i1823.unr = phi i64 [ %.490.i.i1823.ph, %.lr.ph91.i.i1822.preheader3228 ], [ %i.ccb, %.lr.ph91.i.i1822.prol ]
  %i.ccc = sub i64 %.490.i.i1823.ph, %i.cbl
  %i.ccd = icmp ugt i64 %i.ccc, -4
  br i1 %i.ccd, label %.preheader.i.i1818, label %.lr.ph91.i.i1822

.preheader.i.i1818:                               ; preds = %.lr.ph91.i.i1822.prol.loopexit, %.lr.ph91.i.i1822, %middle.block3200, %.preheader69.i.i1817
  %.4.lcssa.i.i1819 = phi i64 [ %.3.i.i1815, %.preheader69.i.i1817 ], [ %.062.i.i1797, %middle.block3200 ], [ %.062.i.i1797, %.lr.ph91.i.i1822 ], [ %.062.i.i1797, %.lr.ph91.i.i1822.prol.loopexit ] ; 3 uses
  %i.cce = icmp ult i64 %.4.lcssa.i.i1819, %i.bzg
  br i1 %i.cce, label %.lr.ph94.preheader.i.i1820, label %bary_add.exit1829

.lr.ph94.preheader.i.i1820:                       ; preds = %.preheader.i.i1818
  %i.ccf = shl i64 %.4.lcssa.i.i1819, 2
  %scevgep.i.i1821 = getelementptr i8, ptr %i.bth, i64 %i.ccf
  %i.ccg = sub nuw i64 %i.bzg, %.4.lcssa.i.i1819
  %i.cch = shl i64 %i.ccg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1821, i8 0, i64 %i.cch, i1 false), !tbaa !7
  br label %bary_add.exit1829

.lr.ph91.i.i1822:                                 ; preds = %.lr.ph91.i.i1822.prol.loopexit, %.lr.ph91.i.i1822
  %.490.i.i1823 = phi i64 [ %i.ccx, %.lr.ph91.i.i1822 ], [ %.490.i.i1823.unr, %.lr.ph91.i.i1822.prol.loopexit ] ; 6 uses
  %i.cci = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %.490.i.i1823
  %i.ccj = load i32, ptr %i.cci, align 4, !tbaa !7
  %i.cck = getelementptr [4 x i8], ptr %i.bth, i64 %.490.i.i1823
  store i32 %i.ccj, ptr %i.cck, align 4, !tbaa !7
  %i.ccl = add nuw i64 %.490.i.i1823, 1           ; 2 uses
  %i.ccm = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %i.ccl
  %i.ccn = load i32, ptr %i.ccm, align 4, !tbaa !7
  %i.cco = getelementptr [4 x i8], ptr %i.bth, i64 %i.ccl
  store i32 %i.ccn, ptr %i.cco, align 4, !tbaa !7
  %i.ccp = add nuw i64 %.490.i.i1823, 2           ; 2 uses
  %i.ccq = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %i.ccp
  %i.ccr = load i32, ptr %i.ccq, align 4, !tbaa !7
  %i.ccs = getelementptr [4 x i8], ptr %i.bth, i64 %i.ccp
  store i32 %i.ccr, ptr %i.ccs, align 4, !tbaa !7
  %i.cct = add nuw i64 %.490.i.i1823, 3           ; 2 uses
  %i.ccu = getelementptr [4 x i8], ptr %.063.i.i1796, i64 %i.cct
  %i.ccv = load i32, ptr %i.ccu, align 4, !tbaa !7
  %i.ccw = getelementptr [4 x i8], ptr %i.bth, i64 %i.cct
  store i32 %i.ccv, ptr %i.ccw, align 4, !tbaa !7
  %i.ccx = add nuw i64 %.490.i.i1823, 4           ; 2 uses
  %exitcond106.not.i.i1824.3 = icmp eq i64 %i.ccx, %.062.i.i1797
  br i1 %exitcond106.not.i.i1824.3, label %.preheader.i.i1818, label %.lr.ph91.i.i1822, !llvm.loop !141

bb.cp:                                            ; preds = %bary_add.exit1758
  %i.ccy = call i64 @llvm.umin.i64(i64 %i.bzg, i64 %i.l) ; 8 uses
  %i.ccz = icmp eq i64 %i.ccy, 1
  br i1 %i.ccz, label %.lr.ph.i.i1831.epil, label %.new3594

.new3594:                                         ; preds = %bb.cp
  %i.cda = add nsw i64 %i.ccy, -3
  br label %.lr.ph.i.i1831

.lr.ph.i.i1831:                                   ; preds = %.lr.ph.i.i1831, %.new3594
  %.06278.i.i1832 = phi i64 [ 0, %.new3594 ], [ %i.cdw, %.lr.ph.i.i1831 ] ; 4 uses
  %.06377.i.i1833 = phi i64 [ 0, %.new3594 ], [ %i.cdv, %.lr.ph.i.i1831 ]
  %niter3601 = phi i64 [ 0, %.new3594 ], [ %niter3601.next.1, %.lr.ph.i.i1831 ] ; 2 uses
  %i.cdb = getelementptr [4 x i8], ptr %i.bth, i64 %.06278.i.i1832 ; 2 uses
  %i.cdc = load i32, ptr %i.cdb, align 4, !tbaa !7
  %i.cdd = zext i32 %i.cdc to i64
  %i.cde = getelementptr [4 x i8], ptr %i.al, i64 %.06278.i.i1832
  %i.cdf = load i32, ptr %i.cde, align 4, !tbaa !7
  %i.cdg = zext i32 %i.cdf to i64
  %i.cdh = sub nsw i64 %i.cdd, %i.cdg
  %i.cdi = add nsw i64 %i.cdh, %.06377.i.i1833    ; 2 uses
  %i.cdj = trunc i64 %i.cdi to i32
  store i32 %i.cdj, ptr %i.cdb, align 4, !tbaa !7
  %i.cdk = ashr i64 %i.cdi, 32
  %i.cdl = or disjoint i64 %.06278.i.i1832, 1     ; 2 uses
  %i.cdm = getelementptr [4 x i8], ptr %i.bth, i64 %i.cdl ; 2 uses
  %i.cdn = load i32, ptr %i.cdm, align 4, !tbaa !7
  %i.cdo = zext i32 %i.cdn to i64
  %i.cdp = getelementptr [4 x i8], ptr %i.al, i64 %i.cdl
  %i.cdq = load i32, ptr %i.cdp, align 4, !tbaa !7
  %i.cdr = zext i32 %i.cdq to i64
  %i.cds = sub nsw i64 %i.cdo, %i.cdr
  %i.cdt = add nsw i64 %i.cds, %i.cdk             ; 2 uses
  %i.cdu = trunc i64 %i.cdt to i32
  store i32 %i.cdu, ptr %i.cdm, align 4, !tbaa !7
  %i.cdv = ashr i64 %i.cdt, 32                    ; 2 uses
  %i.cdw = add nuw i64 %.06278.i.i1832, 2         ; 2 uses
  %niter3601.next.1 = add i64 %niter3601, 2
  %niter3601.ncmp.1 = icmp eq i64 %niter3601, %i.cda
  br i1 %niter3601.ncmp.1, label %.lr.ph.i.i1831.epil, label %.lr.ph.i.i1831, !llvm.loop !48

.lr.ph.i.i1831.epil:                              ; preds = %bb.cp, %.lr.ph.i.i1831
  %.06278.i.i1832.epil.init = phi i64 [ 0, %bb.cp ], [ %i.cdw, %.lr.ph.i.i1831 ] ; 2 uses
  %.06377.i.i1833.epil.init = phi i64 [ 0, %bb.cp ], [ %i.cdv, %.lr.ph.i.i1831 ]
  %i.cdx = getelementptr [4 x i8], ptr %i.bth, i64 %.06278.i.i1832.epil.init ; 2 uses
  %i.cdy = load i32, ptr %i.cdx, align 4, !tbaa !7
  %i.cdz = zext i32 %i.cdy to i64
  %i.cea = getelementptr [4 x i8], ptr %i.al, i64 %.06278.i.i1832.epil.init
  %i.ceb = load i32, ptr %i.cea, align 4, !tbaa !7
  %i.cec = zext i32 %i.ceb to i64
  %i.ced = sub nsw i64 %i.cdz, %i.cec
  %i.cee = add nsw i64 %i.ced, %.06377.i.i1833.epil.init ; 2 uses
  %i.cef = trunc i64 %i.cee to i32
  store i32 %i.cef, ptr %i.cdx, align 4, !tbaa !7
  %i.ceg = ashr i64 %i.cee, 32                    ; 4 uses
  %.not.i.i1837.not = icmp ult i64 %i.j, %i.bzg
  br i1 %.not.i.i1837.not, label %.preheader72.i.i1838, label %.lr.ph87.i.i1861.preheader

.lr.ph87.i.i1861.preheader:                       ; preds = %.lr.ph.i.i1831.epil
  %i.ceh = or disjoint i64 %i.j, 1
  %i.cei = sub nuw nsw i64 %i.ceh, %i.ccy
  %i.cej = sub nuw nsw i64 %i.j, %i.ccy
  %xtraiter3602 = and i64 %i.cei, 2               ; 2 uses
  %lcmp.mod3603.not = icmp eq i64 %xtraiter3602, 0
  br i1 %lcmp.mod3603.not, label %.lr.ph87.i.i1861.prol.loopexit, label %.lr.ph87.i.i1861.prol

.lr.ph87.i.i1861.prol:                            ; preds = %.lr.ph87.i.i1861.preheader, %.lr.ph87.i.i1861.prol
  %.286.i.i1862.prol = phi i64 [ %i.cer, %.lr.ph87.i.i1861.prol ], [ %i.ccy, %.lr.ph87.i.i1861.preheader ] ; 3 uses
  %.26585.i.i1863.prol = phi i64 [ %i.ceq, %.lr.ph87.i.i1861.prol ], [ %i.ceg, %.lr.ph87.i.i1861.preheader ]
  %prol.iter3604 = phi i64 [ %prol.iter3604.next, %.lr.ph87.i.i1861.prol ], [ 0, %.lr.ph87.i.i1861.preheader ]
  %i.cek = getelementptr [4 x i8], ptr %i.al, i64 %.286.i.i1862.prol
  %i.cel = load i32, ptr %i.cek, align 4, !tbaa !7
  %i.cem = zext i32 %i.cel to i64
  %i.cen = sub nsw i64 %.26585.i.i1863.prol, %i.cem ; 2 uses
  %i.ceo = trunc i64 %i.cen to i32
  %i.cep = getelementptr [4 x i8], ptr %i.bth, i64 %.286.i.i1862.prol
  store i32 %i.ceo, ptr %i.cep, align 4, !tbaa !7
  %i.ceq = ashr i64 %i.cen, 32                    ; 3 uses
  %i.cer = add nuw i64 %.286.i.i1862.prol, 1      ; 2 uses
  %prol.iter3604.next = add i64 %prol.iter3604, 1 ; 2 uses
  %prol.iter3604.cmp.not = icmp eq i64 %prol.iter3604.next, %xtraiter3602
  br i1 %prol.iter3604.cmp.not, label %.lr.ph87.i.i1861.prol.loopexit, label %.lr.ph87.i.i1861.prol, !llvm.loop !142

.lr.ph87.i.i1861.prol.loopexit:                   ; preds = %.lr.ph87.i.i1861.prol, %.lr.ph87.i.i1861.preheader
  %.lcssa3226.unr = phi i64 [ poison, %.lr.ph87.i.i1861.preheader ], [ %i.ceq, %.lr.ph87.i.i1861.prol ]
  %.286.i.i1862.unr = phi i64 [ %i.ccy, %.lr.ph87.i.i1861.preheader ], [ %i.cer, %.lr.ph87.i.i1861.prol ]
  %.26585.i.i1863.unr = phi i64 [ %i.ceg, %.lr.ph87.i.i1861.preheader ], [ %i.ceq, %.lr.ph87.i.i1861.prol ]
  %i.ces = icmp ult i64 %i.cej, 3
  br i1 %i.ces, label %.loopexit71.i.i1839, label %.lr.ph87.i.i1861

.preheader72.i.i1838:                             ; preds = %.lr.ph.i.i1831.epil
  %i.cet = icmp ult i64 %i.l, %i.bzg
  br i1 %i.cet, label %.lr.ph82.i.i1857, label %.loopexit71.i.i1839

.lr.ph82.i.i1857:                                 ; preds = %.preheader72.i.i1838, %bb.cq
  %.181.i.i1858 = phi i64 [ %i.cfb, %bb.cq ], [ %i.ccy, %.preheader72.i.i1838 ] ; 2 uses
  %.16480.i.i1859 = phi i64 [ %i.cfa, %bb.cq ], [ %i.ceg, %.preheader72.i.i1838 ]
  %i.ceu = icmp eq i64 %.16480.i.i1859, 0
  br i1 %i.ceu, label %bary_add.exit1829, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph82.i.i1857
  %i.cev = getelementptr [4 x i8], ptr %i.bth, i64 %.181.i.i1858 ; 2 uses
  %i.cew = load i32, ptr %i.cev, align 4, !tbaa !7
  %i.cex = zext i32 %i.cew to i64
  %i.cey = add nsw i64 %i.cex, -1                 ; 2 uses
  %i.cez = trunc i64 %i.cey to i32
  store i32 %i.cez, ptr %i.cev, align 4, !tbaa !7
  %i.cfa = ashr i64 %i.cey, 32
  %i.cfb = add i64 %.181.i.i1858, 1               ; 2 uses
  %exitcond107.not.i.i1860 = icmp eq i64 %i.cfb, %i.bzg
  br i1 %exitcond107.not.i.i1860, label %bary_add.exit1829, label %.lr.ph82.i.i1857, !llvm.loop !50

.lr.ph87.i.i1861:                                 ; preds = %.lr.ph87.i.i1861.prol.loopexit, %.lr.ph87.i.i1861
  %.286.i.i1862 = phi i64 [ %i.cgh, %.lr.ph87.i.i1861 ], [ %.286.i.i1862.unr, %.lr.ph87.i.i1861.prol.loopexit ] ; 6 uses
  %.26585.i.i1863 = phi i64 [ %i.cgg, %.lr.ph87.i.i1861 ], [ %.26585.i.i1863.unr, %.lr.ph87.i.i1861.prol.loopexit ]
  %i.cfc = getelementptr [4 x i8], ptr %i.al, i64 %.286.i.i1862
  %i.cfd = load i32, ptr %i.cfc, align 4, !tbaa !7
  %i.cfe = zext i32 %i.cfd to i64
  %i.cff = sub nsw i64 %.26585.i.i1863, %i.cfe    ; 2 uses
  %i.cfg = trunc i64 %i.cff to i32
  %i.cfh = getelementptr [4 x i8], ptr %i.bth, i64 %.286.i.i1862
end_hunk_8
begin_hunk_9_@bary_mul_toom3:bb.a
  %i.cfp = getelementptr [4 x i8], ptr %i.bth, i64 %i.cfj
  store i32 %i.cfo, ptr %i.cfp, align 4, !tbaa !7
  %i.cfq = ashr i64 %i.cfn, 32
  %i.cfr = add nuw i64 %.286.i.i1862, 2           ; 2 uses
  %i.cfs = getelementptr [4 x i8], ptr %i.al, i64 %i.cfr
  %i.cft = load i32, ptr %i.cfs, align 4, !tbaa !7
  %i.cfu = zext i32 %i.cft to i64
  %i.cfv = sub nsw i64 %i.cfq, %i.cfu             ; 2 uses
  %i.cfw = trunc i64 %i.cfv to i32
  %i.cfx = getelementptr [4 x i8], ptr %i.bth, i64 %i.cfr
  store i32 %i.cfw, ptr %i.cfx, align 4, !tbaa !7
  %i.cfy = ashr i64 %i.cfv, 32
  %i.cfz = add nuw i64 %.286.i.i1862, 3           ; 3 uses
  %i.cga = getelementptr [4 x i8], ptr %i.al, i64 %i.cfz
  %i.cgb = load i32, ptr %i.cga, align 4, !tbaa !7
  %i.cgc = zext i32 %i.cgb to i64
  %i.cgd = sub nsw i64 %i.cfy, %i.cgc             ; 2 uses
  %i.cge = trunc i64 %i.cgd to i32
  %i.cgf = getelementptr [4 x i8], ptr %i.bth, i64 %i.cfz
  store i32 %i.cge, ptr %i.cgf, align 4, !tbaa !7
  %i.cgg = ashr i64 %i.cgd, 32                    ; 2 uses
  %i.cgh = add nuw i64 %.286.i.i1862, 4
  %exitcond108.not.i.i1864.3 = icmp eq i64 %i.cfz, %i.j
  br i1 %exitcond108.not.i.i1864.3, label %.loopexit71.i.i1839, label %.lr.ph87.i.i1861, !llvm.loop !51

.loopexit71.i.i1839:                              ; preds = %.lr.ph87.i.i1861.prol.loopexit, %.lr.ph87.i.i1861, %.preheader72.i.i1838
  %.366.i.i1840 = phi i64 [ %i.ceg, %.preheader72.i.i1838 ], [ %.lcssa3226.unr, %.lr.ph87.i.i1861.prol.loopexit ], [ %i.cgg, %.lr.ph87.i.i1861 ]
  %.3.i.i1841 = phi i64 [ %i.ccy, %.preheader72.i.i1838 ], [ %i.l, %.lr.ph87.i.i1861 ], [ %i.l, %.lr.ph87.i.i1861.prol.loopexit ] ; 3 uses
  %i.cgi = icmp ne i64 %.366.i.i1840, 0
  %i.cgj = icmp ult i64 %.3.i.i1841, %i.bzg
  %or.cond1986 = and i1 %i.cgi, %i.cgj
  br i1 %or.cond1986, label %.lr.ph91.preheader.i.i1844, label %bary_add.exit1829

.lr.ph91.preheader.i.i1844:                       ; preds = %.loopexit71.i.i1839
  %i.cgk = shl i64 %.3.i.i1841, 2
  %scevgep.i.i1845 = getelementptr i8, ptr %i.bth, i64 %i.cgk
  %i.cgl = sub nuw i64 %i.bzg, %.3.i.i1841
  %i.cgm = shl i64 %i.cgl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1845, i8 -1, i64 %i.cgm, i1 false), !tbaa !7
  br label %bary_add.exit1829

bary_add.exit1829:                                ; preds = %bb.cq, %.lr.ph82.i.i1857, %.preheader70.i.i1806, %bb.cn, %.lr.ph91.preheader.i.i1844, %.loopexit71.i.i1839, %.lr.ph94.preheader.i.i1820, %.preheader.i.i1818, %.loopexit71.i.i1814
  %i.cgn = mul nuw i64 %i.g, 3                    ; 3 uses
  %i.cgo = getelementptr [4 x i8], ptr %.0532, i64 %i.cgn ; 21 uses
  %i.cgp = sub i64 %i.aq, %i.cgn                  ; 16 uses
  br i1 %.not592, label %bb.cv, label %bb.cr

bb.cr:                                            ; preds = %bary_add.exit1829
  %i.cgq = icmp ugt i64 %i.cgp, %i.l
  br i1 %i.cgq, label %.lr.ph.i.i1871.preheader, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.not.i.i1870 = icmp eq i64 %i.cgp, 0
  br i1 %.not.i.i1870, label %.preheader72.i.i1875, label %.lr.ph.i.i1871.preheader

.lr.ph.i.i1871.preheader:                         ; preds = %bb.cr, %bb.cs
  %.061.i.i18692560 = phi ptr [ %i.cgo, %bb.cs ], [ %i.am, %bb.cr ] ; 3 uses
  %.062.i.i18682558 = phi i64 [ %i.l, %bb.cs ], [ %i.cgp, %bb.cr ] ; 2 uses
  %.063.i.i18672556 = phi ptr [ %i.am, %bb.cs ], [ %i.cgo, %bb.cr ] ; 5 uses
  %.064.i.i18662554 = phi i64 [ %i.cgp, %bb.cs ], [ %i.l, %bb.cr ] ; 6 uses
  %xtraiter3605 = and i64 %.064.i.i18662554, 1
  %i.cgr = icmp eq i64 %.064.i.i18662554, 1
  br i1 %i.cgr, label %.lr.ph.i.i1871.epil.preheader, label %.lr.ph.i.i1871.preheader.new

.lr.ph.i.i1871.preheader.new:                     ; preds = %.lr.ph.i.i1871.preheader
  %unroll_iter3610 = and i64 %.064.i.i18662554, -2
  br label %.lr.ph.i.i1871

.preheader72.i.i1875.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i1871
  %lcmp.mod3607.not = icmp eq i64 %xtraiter3605, 0
  br i1 %lcmp.mod3607.not, label %.preheader72.i.i1875, label %.lr.ph.i.i1871.epil.preheader

.lr.ph.i.i1871.epil.preheader:                    ; preds = %.preheader72.i.i1875.loopexit.unr-lcssa, %.lr.ph.i.i1871.preheader
  %.05779.i.i1872.epil.init = phi i64 [ 0, %.lr.ph.i.i1871.preheader ], [ %i.cib, %.preheader72.i.i1875.loopexit.unr-lcssa ] ; 3 uses
  %.05878.i.i1873.epil.init = phi i64 [ 0, %.lr.ph.i.i1871.preheader ], [ %i.cia, %.preheader72.i.i1875.loopexit.unr-lcssa ]
  %lcmp.mod3609 = trunc i64 %.064.i.i18662554 to i1
  call void @llvm.assume(i1 %lcmp.mod3609)
  %i.cgs = getelementptr [4 x i8], ptr %.061.i.i18692560, i64 %.05779.i.i1872.epil.init
  %i.cgt = load i32, ptr %i.cgs, align 4, !tbaa !7
  %i.cgu = zext i32 %i.cgt to i64
  %i.cgv = getelementptr [4 x i8], ptr %.063.i.i18672556, i64 %.05779.i.i1872.epil.init
  %i.cgw = load i32, ptr %i.cgv, align 4, !tbaa !7
  %i.cgx = zext i32 %i.cgw to i64
  %i.cgy = add nuw nsw i64 %.05878.i.i1873.epil.init, %i.cgu
  %i.cgz = add nuw nsw i64 %i.cgy, %i.cgx         ; 2 uses
  %i.cha = trunc i64 %i.cgz to i32
  %i.chb = getelementptr [4 x i8], ptr %i.cgo, i64 %.05779.i.i1872.epil.init
  store i32 %i.cha, ptr %i.chb, align 4, !tbaa !7
  %i.chc = lshr i64 %i.cgz, 32
  br label %.preheader72.i.i1875

.preheader72.i.i1875:                             ; preds = %.lr.ph.i.i1871.epil.preheader, %.preheader72.i.i1875.loopexit.unr-lcssa, %bb.cs
  %.062.i.i18682559 = phi i64 [ %i.l, %bb.cs ], [ %.062.i.i18682558, %.preheader72.i.i1875.loopexit.unr-lcssa ], [ %.062.i.i18682558, %.lr.ph.i.i1871.epil.preheader ] ; 12 uses
  %.063.i.i18672557 = phi ptr [ %i.am, %bb.cs ], [ %.063.i.i18672556, %.preheader72.i.i1875.loopexit.unr-lcssa ], [ %.063.i.i18672556, %.lr.ph.i.i1871.epil.preheader ] ; 9 uses
  %.064.i.i18662555 = phi i64 [ 0, %bb.cs ], [ %.064.i.i18662554, %.preheader72.i.i1875.loopexit.unr-lcssa ], [ %.064.i.i18662554, %.lr.ph.i.i1871.epil.preheader ] ; 3 uses
  %.058.lcssa.i.i1876 = phi i64 [ 0, %bb.cs ], [ %i.cia, %.preheader72.i.i1875.loopexit.unr-lcssa ], [ %i.chc, %.lr.ph.i.i1871.epil.preheader ] ; 2 uses
  %.063.i.i186725573204 = ptrtoaddr ptr %.063.i.i18672557 to i64
  %i.chd = icmp ult i64 %.064.i.i18662555, %.062.i.i18682559
  br i1 %i.chd, label %.lr.ph83.i.i1896, label %.preheader70.i.i1877

.lr.ph.i.i1871:                                   ; preds = %.lr.ph.i.i1871, %.lr.ph.i.i1871.preheader.new
  %.05779.i.i1872 = phi i64 [ 0, %.lr.ph.i.i1871.preheader.new ], [ %i.cib, %.lr.ph.i.i1871 ] ; 5 uses
  %.05878.i.i1873 = phi i64 [ 0, %.lr.ph.i.i1871.preheader.new ], [ %i.cia, %.lr.ph.i.i1871 ]
  %niter3611 = phi i64 [ 0, %.lr.ph.i.i1871.preheader.new ], [ %niter3611.next.1, %.lr.ph.i.i1871 ]
  %i.che = getelementptr [4 x i8], ptr %.061.i.i18692560, i64 %.05779.i.i1872
  %i.chf = load i32, ptr %i.che, align 4, !tbaa !7
  %i.chg = zext i32 %i.chf to i64
  %i.chh = getelementptr [4 x i8], ptr %.063.i.i18672556, i64 %.05779.i.i1872
  %i.chi = load i32, ptr %i.chh, align 4, !tbaa !7
  %i.chj = zext i32 %i.chi to i64
  %i.chk = add nuw nsw i64 %.05878.i.i1873, %i.chg
  %i.chl = add nuw nsw i64 %i.chk, %i.chj         ; 2 uses
  %i.chm = trunc i64 %i.chl to i32
  %i.chn = getelementptr [4 x i8], ptr %i.cgo, i64 %.05779.i.i1872
  store i32 %i.chm, ptr %i.chn, align 4, !tbaa !7
  %i.cho = lshr i64 %i.chl, 32
  %i.chp = or disjoint i64 %.05779.i.i1872, 1     ; 3 uses
  %i.chq = getelementptr [4 x i8], ptr %.061.i.i18692560, i64 %i.chp
  %i.chr = load i32, ptr %i.chq, align 4, !tbaa !7
  %i.chs = zext i32 %i.chr to i64
  %i.cht = getelementptr [4 x i8], ptr %.063.i.i18672556, i64 %i.chp
  %i.chu = load i32, ptr %i.cht, align 4, !tbaa !7
  %i.chv = zext i32 %i.chu to i64
  %i.chw = add nuw nsw i64 %i.cho, %i.chs
  %i.chx = add nuw nsw i64 %i.chw, %i.chv         ; 2 uses
  %i.chy = trunc i64 %i.chx to i32
  %i.chz = getelementptr [4 x i8], ptr %i.cgo, i64 %i.chp
  store i32 %i.chy, ptr %i.chz, align 4, !tbaa !7
  %i.cia = lshr i64 %i.chx, 32                    ; 3 uses
  %i.cib = add nuw i64 %.05779.i.i1872, 2         ; 2 uses
  %niter3611.next.1 = add i64 %niter3611, 2       ; 2 uses
  %niter3611.ncmp.1 = icmp eq i64 %niter3611.next.1, %unroll_iter3610
  br i1 %niter3611.ncmp.1, label %.preheader72.i.i1875.loopexit.unr-lcssa, label %.lr.ph.i.i1871, !llvm.loop !34

.preheader70.i.i1877:                             ; preds = %bb.cu, %.preheader72.i.i1875
  %.159.lcssa.i.i1878 = phi i64 [ %.058.lcssa.i.i1876, %.preheader72.i.i1875 ], [ %i.cin, %bb.cu ]
  %.1.lcssa.i.i1879 = phi i64 [ %.064.i.i18662555, %.preheader72.i.i1875 ], [ %.062.i.i18682559, %bb.cu ] ; 4 uses
  %i.cic = icmp ult i64 %.1.lcssa.i.i1879, %i.cgp
  br i1 %i.cic, label %.lr.ph88.preheader.i.i1883, label %bary_add.exit1900.preheader

.lr.ph88.preheader.i.i1883:                       ; preds = %.preheader70.i.i1877
  %i.cid = icmp eq i64 %.159.lcssa.i.i1878, 0
  br i1 %i.cid, label %.loopexit71.i.i1885, label %bb.ct

bb.ct:                                            ; preds = %.lr.ph88.preheader.i.i1883
  %i.cie = getelementptr [4 x i8], ptr %i.cgo, i64 %.1.lcssa.i.i1879
  store i32 1, ptr %i.cie, align 4, !tbaa !7
  %i.cif = add nuw i64 %.1.lcssa.i.i1879, 1       ; 2 uses
  %exitcond103.peel.not.i.i1884 = icmp eq i64 %i.cif, %i.cgp
  br i1 %exitcond103.peel.not.i.i1884, label %bary_add.exit1900.preheader, label %.loopexit71.i.i1885

.lr.ph83.i.i1896:                                 ; preds = %.preheader72.i.i1875, %bb.cu
  %.182.i.i1897 = phi i64 [ %i.cio, %bb.cu ], [ %.064.i.i18662555, %.preheader72.i.i1875 ] ; 4 uses
  %.15981.i.i1898 = phi i64 [ %i.cin, %bb.cu ], [ %.058.lcssa.i.i1876, %.preheader72.i.i1875 ]
  %i.cig = icmp eq i64 %.15981.i.i1898, 0
  br i1 %i.cig, label %.loopexit71.i.i1885, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph83.i.i1896
  %i.cih = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %.182.i.i1897
  %i.cii = load i32, ptr %i.cih, align 4, !tbaa !7
  %i.cij = zext i32 %i.cii to i64
  %i.cik = add nuw nsw i64 %i.cij, 1              ; 2 uses
  %i.cil = trunc i64 %i.cik to i32
  %i.cim = getelementptr [4 x i8], ptr %i.cgo, i64 %.182.i.i1897
  store i32 %i.cil, ptr %i.cim, align 4, !tbaa !7
  %i.cin = lshr i64 %i.cik, 32                    ; 2 uses
  %i.cio = add i64 %.182.i.i1897, 1               ; 2 uses
  %exitcond102.not.i.i1899 = icmp eq i64 %i.cio, %.062.i.i18682559
  br i1 %exitcond102.not.i.i1899, label %.preheader70.i.i1877, label %.lr.ph83.i.i1896, !llvm.loop !36

.loopexit71.i.i1885:                              ; preds = %.lr.ph83.i.i1896, %bb.ct, %.lr.ph88.preheader.i.i1883
  %.3.i.i1886 = phi i64 [ %i.cif, %bb.ct ], [ %.1.lcssa.i.i1879, %.lr.ph88.preheader.i.i1883 ], [ %.182.i.i1897, %.lr.ph83.i.i1896 ] ; 7 uses
  %i.cip = icmp eq ptr %.063.i.i18672557, %i.cgo
  %i.ciq = icmp eq i64 %.062.i.i18682559, %i.cgp
  %or.cond.i.i1887 = and i1 %i.cip, %i.ciq
  br i1 %or.cond.i.i1887, label %bary_add.exit1900.preheader, label %.preheader69.i.i1888

.preheader69.i.i1888:                             ; preds = %.loopexit71.i.i1885
  %i.cir = icmp ult i64 %.3.i.i1886, %.062.i.i18682559
  br i1 %i.cir, label %.lr.ph91.i.i1893.preheader, label %.preheader.i.i1889

.lr.ph91.i.i1893.preheader:                       ; preds = %.preheader69.i.i1888
  %i.cis = sub nuw i64 %.062.i.i18682559, %.3.i.i1886 ; 3 uses
  %min.iters.check3207 = icmp ult i64 %i.cis, 16
  br i1 %min.iters.check3207, label %.lr.ph91.i.i1893.preheader3222, label %vector.memcheck3203

vector.memcheck3203:                              ; preds = %.lr.ph91.i.i1893.preheader
  %i.cit = mul i64 %i.g, 12
  %i.ciu = add i64 %i.cit, %.05322856
  %i.civ = sub i64 %.063.i.i186725573204, %i.ciu
  %diff.check3205 = icmp ugt i64 %i.civ, -32
  br i1 %diff.check3205, label %.lr.ph91.i.i1893.preheader3222, label %vector.ph3208

vector.ph3208:                                    ; preds = %vector.memcheck3203
  %n.vec3210 = and i64 %i.cis, -8                 ; 3 uses
  %i.ciw = add i64 %.3.i.i1886, %n.vec3210
  br label %vector.body3211

vector.body3211:                                  ; preds = %vector.body3211, %vector.ph3208
  %index3212 = phi i64 [ 0, %vector.ph3208 ], [ %index.next3215, %vector.body3211 ] ; 2 uses
  %i.cix = add i64 %.3.i.i1886, %index3212        ; 2 uses
  %i.ciy = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %i.cix ; 2 uses
  %i.ciz = getelementptr i8, ptr %i.ciy, i64 16
  %wide.load3213 = load <4 x i32>, ptr %i.ciy, align 4, !tbaa !7
  %wide.load3214 = load <4 x i32>, ptr %i.ciz, align 4, !tbaa !7
  %i.cja = getelementptr [4 x i8], ptr %i.cgo, i64 %i.cix ; 2 uses
  %i.cjb = getelementptr i8, ptr %i.cja, i64 16
  store <4 x i32> %wide.load3213, ptr %i.cja, align 4, !tbaa !7
  store <4 x i32> %wide.load3214, ptr %i.cjb, align 4, !tbaa !7
  %index.next3215 = add nuw i64 %index3212, 8     ; 2 uses
  %i.cjc = icmp eq i64 %index.next3215, %n.vec3210
  br i1 %i.cjc, label %middle.block3216, label %vector.body3211, !llvm.loop !143

middle.block3216:                                 ; preds = %vector.body3211
  %cmp.n3217 = icmp eq i64 %i.cis, %n.vec3210
  br i1 %cmp.n3217, label %.preheader.i.i1889, label %.lr.ph91.i.i1893.preheader3222

.lr.ph91.i.i1893.preheader3222:                   ; preds = %vector.memcheck3203, %.lr.ph91.i.i1893.preheader, %middle.block3216
  %.490.i.i1894.ph = phi i64 [ %.3.i.i1886, %vector.memcheck3203 ], [ %.3.i.i1886, %.lr.ph91.i.i1893.preheader ], [ %i.ciw, %middle.block3216 ] ; 4 uses
  %i.cjd = sub i64 %.062.i.i18682559, %.490.i.i1894.ph
  %xtraiter3612 = and i64 %i.cjd, 3               ; 2 uses
  %lcmp.mod3613.not = icmp eq i64 %xtraiter3612, 0
  br i1 %lcmp.mod3613.not, label %.lr.ph91.i.i1893.prol.loopexit, label %.lr.ph91.i.i1893.prol

.lr.ph91.i.i1893.prol:                            ; preds = %.lr.ph91.i.i1893.preheader3222, %.lr.ph91.i.i1893.prol
  %.490.i.i1894.prol = phi i64 [ %i.cjh, %.lr.ph91.i.i1893.prol ], [ %.490.i.i1894.ph, %.lr.ph91.i.i1893.preheader3222 ] ; 3 uses
  %prol.iter3614 = phi i64 [ %prol.iter3614.next, %.lr.ph91.i.i1893.prol ], [ 0, %.lr.ph91.i.i1893.preheader3222 ]
  %i.cje = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %.490.i.i1894.prol
  %i.cjf = load i32, ptr %i.cje, align 4, !tbaa !7
  %i.cjg = getelementptr [4 x i8], ptr %i.cgo, i64 %.490.i.i1894.prol
  store i32 %i.cjf, ptr %i.cjg, align 4, !tbaa !7
  %i.cjh = add nuw i64 %.490.i.i1894.prol, 1      ; 2 uses
  %prol.iter3614.next = add i64 %prol.iter3614, 1 ; 2 uses
  %prol.iter3614.cmp.not = icmp eq i64 %prol.iter3614.next, %xtraiter3612
  br i1 %prol.iter3614.cmp.not, label %.lr.ph91.i.i1893.prol.loopexit, label %.lr.ph91.i.i1893.prol, !llvm.loop !144

.lr.ph91.i.i1893.prol.loopexit:                   ; preds = %.lr.ph91.i.i1893.prol, %.lr.ph91.i.i1893.preheader3222
  %.490.i.i1894.unr = phi i64 [ %.490.i.i1894.ph, %.lr.ph91.i.i1893.preheader3222 ], [ %i.cjh, %.lr.ph91.i.i1893.prol ]
  %i.cji = sub i64 %.490.i.i1894.ph, %.062.i.i18682559
  %i.cjj = icmp ugt i64 %i.cji, -4
  br i1 %i.cjj, label %.preheader.i.i1889, label %.lr.ph91.i.i1893

.preheader.i.i1889:                               ; preds = %.lr.ph91.i.i1893.prol.loopexit, %.lr.ph91.i.i1893, %middle.block3216, %.preheader69.i.i1888
  %.4.lcssa.i.i1890 = phi i64 [ %.3.i.i1886, %.preheader69.i.i1888 ], [ %.062.i.i18682559, %middle.block3216 ], [ %.062.i.i18682559, %.lr.ph91.i.i1893 ], [ %.062.i.i18682559, %.lr.ph91.i.i1893.prol.loopexit ] ; 3 uses
  %i.cjk = icmp ult i64 %.4.lcssa.i.i1890, %i.cgp
  br i1 %i.cjk, label %.lr.ph94.preheader.i.i1891, label %bary_add.exit1900.preheader

.lr.ph94.preheader.i.i1891:                       ; preds = %.preheader.i.i1889
  %i.cjl = shl i64 %.4.lcssa.i.i1890, 2
  %scevgep.i.i1892 = getelementptr i8, ptr %i.cgo, i64 %i.cjl
  %i.cjm = sub nuw i64 %i.cgp, %.4.lcssa.i.i1890
  %i.cjn = shl i64 %i.cjm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i1892, i8 0, i64 %i.cjn, i1 false), !tbaa !7
  br label %bary_add.exit1900.preheader

.lr.ph91.i.i1893:                                 ; preds = %.lr.ph91.i.i1893.prol.loopexit, %.lr.ph91.i.i1893
  %.490.i.i1894 = phi i64 [ %i.ckd, %.lr.ph91.i.i1893 ], [ %.490.i.i1894.unr, %.lr.ph91.i.i1893.prol.loopexit ] ; 6 uses
  %i.cjo = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %.490.i.i1894
  %i.cjp = load i32, ptr %i.cjo, align 4, !tbaa !7
  %i.cjq = getelementptr [4 x i8], ptr %i.cgo, i64 %.490.i.i1894
  store i32 %i.cjp, ptr %i.cjq, align 4, !tbaa !7
  %i.cjr = add nuw i64 %.490.i.i1894, 1           ; 2 uses
  %i.cjs = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %i.cjr
  %i.cjt = load i32, ptr %i.cjs, align 4, !tbaa !7
  %i.cju = getelementptr [4 x i8], ptr %i.cgo, i64 %i.cjr
  store i32 %i.cjt, ptr %i.cju, align 4, !tbaa !7
  %i.cjv = add nuw i64 %.490.i.i1894, 2           ; 2 uses
  %i.cjw = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %i.cjv
  %i.cjx = load i32, ptr %i.cjw, align 4, !tbaa !7
  %i.cjy = getelementptr [4 x i8], ptr %i.cgo, i64 %i.cjv
  store i32 %i.cjx, ptr %i.cjy, align 4, !tbaa !7
  %i.cjz = add nuw i64 %.490.i.i1894, 3           ; 2 uses
  %i.cka = getelementptr [4 x i8], ptr %.063.i.i18672557, i64 %i.cjz
  %i.ckb = load i32, ptr %i.cka, align 4, !tbaa !7
  %i.ckc = getelementptr [4 x i8], ptr %i.cgo, i64 %i.cjz
  store i32 %i.ckb, ptr %i.ckc, align 4, !tbaa !7
  %i.ckd = add nuw i64 %.490.i.i1894, 4           ; 2 uses
  %exitcond106.not.i.i1895.3 = icmp eq i64 %i.ckd, %.062.i.i18682559
  br i1 %exitcond106.not.i.i1895.3, label %.preheader.i.i1889, label %.lr.ph91.i.i1893, !llvm.loop !145

bb.cv:                                            ; preds = %bary_add.exit1829
  %i.cke = call i64 @llvm.umin.i64(i64 %i.cgp, i64 %i.l) ; 3 uses
  %.not97.i.i1901 = icmp eq i64 %i.cgp, 0
  br i1 %.not97.i.i1901, label %._crit_edge.i.i1906, label %.lr.ph.i.i1902.preheader

.lr.ph.i.i1902.preheader:                         ; preds = %bb.cv
  %i.ckf = add i64 %i.cgn, 1
  %umin3615 = call i64 @llvm.umin.i64(i64 %i.ckf, i64 %i.l) ; 4 uses
  %xtraiter3616 = and i64 %umin3615, 1
  %i.ckg = icmp eq i64 %umin3615, 1
  br i1 %i.ckg, label %.lr.ph.i.i1902.epil.preheader, label %.lr.ph.i.i1902.preheader.new

.lr.ph.i.i1902.preheader.new:                     ; preds = %.lr.ph.i.i1902.preheader
  %unroll_iter3621 = and i64 %umin3615, 9223372036854775806
  br label %.lr.ph.i.i1902

.lr.ph.i.i1902:                                   ; preds = %.lr.ph.i.i1902, %.lr.ph.i.i1902.preheader.new
  %.06278.i.i1903 = phi i64 [ 0, %.lr.ph.i.i1902.preheader.new ], [ %i.clc, %.lr.ph.i.i1902 ] ; 4 uses
  %.06377.i.i1904 = phi i64 [ 0, %.lr.ph.i.i1902.preheader.new ], [ %i.clb, %.lr.ph.i.i1902 ]
  %niter3622 = phi i64 [ 0, %.lr.ph.i.i1902.preheader.new ], [ %niter3622.next.1, %.lr.ph.i.i1902 ]
  %i.ckh = getelementptr [4 x i8], ptr %i.cgo, i64 %.06278.i.i1903 ; 2 uses
  %i.cki = load i32, ptr %i.ckh, align 4, !tbaa !7
  %i.ckj = zext i32 %i.cki to i64
  %i.ckk = getelementptr [4 x i8], ptr %i.am, i64 %.06278.i.i1903
  %i.ckl = load i32, ptr %i.ckk, align 4, !tbaa !7
  %i.ckm = zext i32 %i.ckl to i64
  %i.ckn = sub nsw i64 %i.ckj, %i.ckm
  %i.cko = add nsw i64 %i.ckn, %.06377.i.i1904    ; 2 uses
  %i.ckp = trunc i64 %i.cko to i32
  store i32 %i.ckp, ptr %i.ckh, align 4, !tbaa !7
  %i.ckq = ashr i64 %i.cko, 32
  %i.ckr = or disjoint i64 %.06278.i.i1903, 1     ; 2 uses
  %i.cks = getelementptr [4 x i8], ptr %i.cgo, i64 %i.ckr ; 2 uses
  %i.ckt = load i32, ptr %i.cks, align 4, !tbaa !7
  %i.cku = zext i32 %i.ckt to i64
  %i.ckv = getelementptr [4 x i8], ptr %i.am, i64 %i.ckr
  %i.ckw = load i32, ptr %i.ckv, align 4, !tbaa !7
  %i.ckx = zext i32 %i.ckw to i64
  %i.cky = sub nsw i64 %i.cku, %i.ckx
  %i.ckz = add nsw i64 %i.cky, %i.ckq             ; 2 uses
  %i.cla = trunc i64 %i.ckz to i32
  store i32 %i.cla, ptr %i.cks, align 4, !tbaa !7
  %i.clb = ashr i64 %i.ckz, 32                    ; 3 uses
  %i.clc = add nuw i64 %.06278.i.i1903, 2         ; 2 uses
  %niter3622.next.1 = add i64 %niter3622, 2       ; 2 uses
  %niter3622.ncmp.1 = icmp eq i64 %niter3622.next.1, %unroll_iter3621
  br i1 %niter3622.ncmp.1, label %._crit_edge.i.i1906.loopexit.unr-lcssa, label %.lr.ph.i.i1902, !llvm.loop !48

._crit_edge.i.i1906.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i1902
  %lcmp.mod3618.not = icmp eq i64 %xtraiter3616, 0
  br i1 %lcmp.mod3618.not, label %._crit_edge.i.i1906, label %.lr.ph.i.i1902.epil.preheader

.lr.ph.i.i1902.epil.preheader:                    ; preds = %._crit_edge.i.i1906.loopexit.unr-lcssa, %.lr.ph.i.i1902.preheader
  %.06278.i.i1903.epil.init = phi i64 [ 0, %.lr.ph.i.i1902.preheader ], [ %i.clc, %._crit_edge.i.i1906.loopexit.unr-lcssa ] ; 2 uses
  %.06377.i.i1904.epil.init = phi i64 [ 0, %.lr.ph.i.i1902.preheader ], [ %i.clb, %._crit_edge.i.i1906.loopexit.unr-lcssa ]
  %lcmp.mod3620 = trunc i64 %umin3615 to i1
  call void @llvm.assume(i1 %lcmp.mod3620)
  %i.cld = getelementptr [4 x i8], ptr %i.cgo, i64 %.06278.i.i1903.epil.init ; 2 uses
  %i.cle = load i32, ptr %i.cld, align 4, !tbaa !7
  %i.clf = zext i32 %i.cle to i64
  %i.clg = getelementptr [4 x i8], ptr %i.am, i64 %.06278.i.i1903.epil.init
  %i.clh = load i32, ptr %i.clg, align 4, !tbaa !7
  %i.cli = zext i32 %i.clh to i64
  %i.clj = sub nsw i64 %i.clf, %i.cli
  %i.clk = add nsw i64 %i.clj, %.06377.i.i1904.epil.init ; 2 uses
  %i.cll = trunc i64 %i.clk to i32
  store i32 %i.cll, ptr %i.cld, align 4, !tbaa !7
  %i.clm = ashr i64 %i.clk, 32
  br label %._crit_edge.i.i1906

._crit_edge.i.i1906:                              ; preds = %.lr.ph.i.i1902.epil.preheader, %._crit_edge.i.i1906.loopexit.unr-lcssa, %bb.cv
  %.063.lcssa.i.i1907 = phi i64 [ 0, %bb.cv ], [ %i.clb, %._crit_edge.i.i1906.loopexit.unr-lcssa ], [ %i.clm, %.lr.ph.i.i1902.epil.preheader ] ; 3 uses
  %.not.i.i1908.not = icmp ult i64 %i.j, %i.cgp
  br i1 %.not.i.i1908.not, label %.preheader72.i.i1909, label %.lr.ph87.i.i1932

.preheader72.i.i1909:                             ; preds = %._crit_edge.i.i1906
  %i.cln = icmp ult i64 %i.l, %i.cgp
  br i1 %i.cln, label %.lr.ph82.i.i1928, label %.loopexit71.i.i1910

.lr.ph82.i.i1928:                                 ; preds = %.preheader72.i.i1909, %bb.cw
  %.181.i.i1929 = phi i64 [ %i.clv, %bb.cw ], [ %i.cke, %.preheader72.i.i1909 ] ; 2 uses
  %.16480.i.i1930 = phi i64 [ %i.clu, %bb.cw ], [ %.063.lcssa.i.i1907, %.preheader72.i.i1909 ]
  %i.clo = icmp eq i64 %.16480.i.i1930, 0
  br i1 %i.clo, label %bary_add.exit1900.preheader, label %bb.cw

bb.cw:                                            ; preds = %.lr.ph82.i.i1928
  %i.clp = getelementptr [4 x i8], ptr %i.cgo, i64 %.181.i.i1929 ; 2 uses
  %i.clq = load i32, ptr %i.clp, align 4, !tbaa !7
  %i.clr = zext i32 %i.clq to i64
  %i.cls = add nsw i64 %i.clr, -1                 ; 2 uses
  %i.clt = trunc i64 %i.cls to i32
  store i32 %i.clt, ptr %i.clp, align 4, !tbaa !7
  %i.clu = ashr i64 %i.cls, 32
  %i.clv = add i64 %.181.i.i1929, 1               ; 2 uses
  %exitcond107.not.i.i1931 = icmp eq i64 %i.clv, %i.cgp
  br i1 %exitcond107.not.i.i1931, label %bary_add.exit1900.preheader, label %.lr.ph82.i.i1928, !llvm.loop !50

.lr.ph87.i.i1932:                                 ; preds = %._crit_edge.i.i1906, %.lr.ph87.i.i1932
  %.286.i.i1933 = phi i64 [ %i.cmd, %.lr.ph87.i.i1932 ], [ %i.cke, %._crit_edge.i.i1906 ] ; 4 uses
  %.26585.i.i1934 = phi i64 [ %i.cmc, %.lr.ph87.i.i1932 ], [ %.063.lcssa.i.i1907, %._crit_edge.i.i1906 ]
  %i.clw = getelementptr [4 x i8], ptr %i.am, i64 %.286.i.i1933
  %i.clx = load i32, ptr %i.clw, align 4, !tbaa !7
  %i.cly = zext i32 %i.clx to i64
  %i.clz = sub nsw i64 %.26585.i.i1934, %i.cly    ; 2 uses
  %i.cma = trunc i64 %i.clz to i32
  %i.cmb = getelementptr [4 x i8], ptr %i.cgo, i64 %.286.i.i1933
  store i32 %i.cma, ptr %i.cmb, align 4, !tbaa !7
  %i.cmc = ashr i64 %i.clz, 32                    ; 2 uses
  %i.cmd = add nuw i64 %.286.i.i1933, 1
  %exitcond108.not.i.i1935 = icmp eq i64 %.286.i.i1933, %i.j
  br i1 %exitcond108.not.i.i1935, label %.loopexit71.i.i1910, label %.lr.ph87.i.i1932, !llvm.loop !51

.loopexit71.i.i1910:                              ; preds = %.lr.ph87.i.i1932, %.preheader72.i.i1909
  %.366.i.i1911 = phi i64 [ %.063.lcssa.i.i1907, %.preheader72.i.i1909 ], [ %i.cmc, %.lr.ph87.i.i1932 ]
  %.3.i.i1912 = phi i64 [ %i.cke, %.preheader72.i.i1909 ], [ %i.l, %.lr.ph87.i.i1932 ] ; 3 uses
  %i.cme = icmp ne i64 %.366.i.i1911, 0
  %i.cmf = icmp ult i64 %.3.i.i1912, %i.cgp
  %or.cond1987 = and i1 %i.cme, %i.cmf
  br i1 %or.cond1987, label %.lr.ph91.preheader.i.i1915, label %bary_add.exit1900.preheader

.lr.ph91.preheader.i.i1915:                       ; preds = %.loopexit71.i.i1910
end_hunk_9
begin_hunk_10_@str2big_karatsuba:bb.a
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
  br i1 %brmerge, label %bb.e, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %.not9 = icmp eq i32 %3, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.a, align 8, !tbaa !11
  call fastcc void @invalid_integer(i64 noundef %i.p) #28
  unreachable

end_hunk_10
begin_hunk_11_@rb_big_plus:bb.a

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
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !15
  %i.dx = getelementptr i8, ptr %i.t, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !15
  br label %big_extend_carry.exit.i

bb.w:                                             ; preds = %BIGNUM_LEN.exit.i.i
  %i.dz = getelementptr i8, ptr %i.t, i64 16
  %i.ea = lshr i64 %i.dt, 15
  %i.eb = and i64 %i.ea, 511
  br label %big_extend_carry.exit.i

end_hunk_11
begin_hunk_12_@bigsub_int:bb.a

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
  br i1 %.not.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.ew, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ey = shl nuw nsw i64 %i.ev, 1
  %i.ez = or disjoint i64 %i.ey, 1
  br label %rb_long2num_inline.exit

bb.y:                                             ; preds = %._crit_edge.i.i.epilog-lcssa
end_hunk_12
begin_hunk_13_@bigadd:bb.a
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
  %i.aq = icmp ugt i32 %i.ap, -4
  br i1 %i.aq, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.preheader.i.i, %.lr.ph36.i.i
  %.035.i.i = phi i32 [ %i.ar, %.lr.ph36.i.i ], [ %i.an, %.lr.ph36.preheader.i.i ] ; 2 uses
  %niter = phi i32 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.preheader.i.i ]
  %i.ar = add i32 %.035.i.i, -4                   ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !162

end_hunk_13
begin_hunk_14_@bigsq:bb.a
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
  %min.iters.check223 = icmp ult i64 %i.dw, 8
  br i1 %min.iters.check223, label %.lr.ph26.i.i.i.i.preheader238, label %vector.ph224

vector.ph224:                                     ; preds = %.lr.ph26.i.i.i.i.preheader
  %n.vec226 = and i64 %i.dw, -8                   ; 3 uses
  %i.dx = add i64 %.124.i.i.i.i, %n.vec226
  %i.dy = getelementptr [4 x i8], ptr %.0.i5.i.i.i, i64 %.124.i.i.i.i
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph224
  %index228 = phi i64 [ 0, %vector.ph224 ], [ %index.next231, %vector.body227 ] ; 2 uses
  %i.dz = getelementptr [4 x i8], ptr %i.dy, i64 %index228 ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16     ; 2 uses
end_hunk_14
begin_hunk_15_@rb_big_and:bb.a
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

middle.block187:                                  ; preds = %vector.body182
  %cmp.n188 = icmp eq i64 %i.md, %n.vec181
  br i1 %cmp.n188, label %twocomp2abs_bang.exit, label %.lr.ph26.i.i.i.preheader250

.lr.ph26.i.i.i.preheader250:                      ; preds = %.lr.ph26.i.i.i.preheader, %middle.block187
  %.125.i.i.i.ph = phi i64 [ %.124.i.i.i, %.lr.ph26.i.i.i.preheader ], [ %i.me, %middle.block187 ]
  br label %.lr.ph26.i.i.i

.lr.ph26.i.i.i:                                   ; preds = %.lr.ph26.i.i.i.preheader250, %.lr.ph26.i.i.i
  %.125.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph26.i.i.i ], [ %.125.i.i.i.ph, %.lr.ph26.i.i.i.preheader250 ] ; 2 uses
  %i.ml = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.125.i.i.i ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !7
  %i.mn = xor i32 %i.mm, -1
end_hunk_15
begin_hunk_16_@rb_big_or:bb.a
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

middle.block190:                                  ; preds = %vector.body185
  %cmp.n191 = icmp eq i64 %i.lt, %n.vec184
  br i1 %cmp.n191, label %twocomp2abs_bang.exit, label %.lr.ph26.i.i.i.preheader238

.lr.ph26.i.i.i.preheader238:                      ; preds = %.lr.ph26.i.i.i.preheader, %middle.block190
  %.125.i.i.i.ph = phi i64 [ %.124.i.i.i, %.lr.ph26.i.i.i.preheader ], [ %i.lu, %middle.block190 ]
  br label %.lr.ph26.i.i.i

.lr.ph26.i.i.i:                                   ; preds = %.lr.ph26.i.i.i.preheader238, %.lr.ph26.i.i.i
  %.125.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph26.i.i.i ], [ %.125.i.i.i.ph, %.lr.ph26.i.i.i.preheader238 ] ; 2 uses
  %i.mb = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.125.i.i.i ; 2 uses
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !7
  %i.md = xor i32 %i.mc, -1
end_hunk_16
begin_hunk_17_@rb_big_xor:bb.a
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
  %niter251.next.3 = add nuw nsw i64 %niter251, 4 ; 2 uses
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

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.fi = getelementptr [4 x i8], ptr %.0.i5.i.i.i, i64 %.023.i.i.i.i
  %i.fj = sub i32 0, %i.fg
  store i32 %i.fj, ptr %i.fi, align 4, !tbaa !7
  %.124.i.i.i.i = add i64 %.023.i.i.i.i, 1        ; 4 uses
  %i.fk = icmp ult i64 %.124.i.i.i.i, %.0.i8.i.i.i
  br i1 %i.fk, label %.lr.ph26.i.i.i.i.preheader, label %twocomp2abs_bang.exit.i

.lr.ph26.i.i.i.i.preheader:                       ; preds = %bb.l
  %i.fl = xor i64 %.023.i.i.i.i, -1
  %i.fm = add i64 %.0.i8.i.i.i, %i.fl             ; 3 uses
  %min.iters.check206 = icmp ult i64 %i.fm, 8
  br i1 %min.iters.check206, label %.lr.ph26.i.i.i.i.preheader221, label %vector.ph207
end_hunk_17
begin_hunk_18_@rb_big_xor:bb.a
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
  %cmp.n171 = icmp eq i64 %i.nr, %n.vec164
  br i1 %cmp.n171, label %twocomp2abs_bang.exit, label %.lr.ph26.i.i.i.preheader230

.lr.ph26.i.i.i.preheader230:                      ; preds = %.lr.ph26.i.i.i.preheader, %middle.block170
  %.125.i.i.i.ph = phi i64 [ %.124.i.i.i, %.lr.ph26.i.i.i.preheader ], [ %i.ns, %middle.block170 ]
  br label %.lr.ph26.i.i.i

.lr.ph26.i.i.i:                                   ; preds = %.lr.ph26.i.i.i.preheader230, %.lr.ph26.i.i.i
  %.125.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph26.i.i.i ], [ %.125.i.i.i.ph, %.lr.ph26.i.i.i.preheader230 ] ; 2 uses
  %i.nz = getelementptr [4 x i8], ptr %.0.i5.i.i, i64 %.125.i.i.i ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !7
  %i.ob = xor i32 %i.oa, -1
  store i32 %i.ob, ptr %i.nz, align 4, !tbaa !7
end_hunk_18
begin_hunk_19_@bigsub:bb.a
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
  %i.j = getelementptr i8, ptr %i.b, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15
  br label %BIGNUM_DIGITS.exit.i

BIGNUM_DIGITS.exit.i:                             ; preds = %bb.c, %bb.b
  %.0.i21.i = phi i64 [ %i.f, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  %.0.i16.i = phi ptr [ %i.g, %bb.b ], [ %i.k, %bb.c ]
  %i.l = icmp eq i64 %.0.i21.i, 0
  br i1 %i.l, label %bigtrunc.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %BIGNUM_DIGITS.exit.i
end_hunk_19
