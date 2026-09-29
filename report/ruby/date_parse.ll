Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/date_parse?download=true
inline.NumInlined: 734
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 87
begin_hunk_0_@date__parse:bb.a
  %i.bc = zext nneg i16 %i.bb to i32
  %.234.us.i.3 = or i32 %.234.us.i.2, %i.bc       ; 3 uses
  %i.bd = add nuw nsw i64 %.043.us.i, 4           ; 2 uses
  %niter914.next.3 = add nuw nsw i64 %niter914, 4 ; 2 uses
  %niter914.ncmp.3 = icmp eq i64 %niter914.next.3, %unroll_iter913
  br i1 %niter914.ncmp.3, label %check_class.exit.loopexit.unr-lcssa, label %RSTRING_PTR.exit26.thread.us.i, !llvm.loop !1

.lr.ph.split.i:                                   ; preds = %.lr.ph.i145
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !18  ; 5 uses
  %xtraiter = and i64 %i.q, 3                     ; 3 uses
  %i.bf = icmp ult i64 %i.q, 4
  br i1 %i.bf, label %RSTRING_PTR.exit28.i.epil.preheader, label %.lr.ph.split.i.new

.lr.ph.split.i.new:                               ; preds = %.lr.ph.split.i
  %unroll_iter = and i64 %i.q, 9223372036854775804
  br label %RSTRING_PTR.exit28.i

RSTRING_PTR.exit28.i:                             ; preds = %RSTRING_PTR.exit28.i, %.lr.ph.split.i.new
  %.043.i = phi i64 [ 0, %.lr.ph.split.i.new ], [ %i.cl, %RSTRING_PTR.exit28.i ] ; 5 uses
  %.01942.i = phi i32 [ 0, %.lr.ph.split.i.new ], [ %.2.i.3, %RSTRING_PTR.exit28.i ]
  %niter = phi i64 [ 0, %.lr.ph.split.i.new ], [ %niter.next.3, %RSTRING_PTR.exit28.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.043.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !18
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !23
  %i.bl = lshr i16 %i.bk, 10
  %i.bm = zext nneg i16 %i.bl to i32
  %.2.i = or i32 %.01942.i, %i.bm
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 %.043.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !18
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !23
  %i.bt = lshr i16 %i.bs, 10
  %i.bu = zext nneg i16 %i.bt to i32
  %.2.i.1 = or i32 %.2.i, %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 %.043.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !18
  %i.by = zext i8 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !23
  %i.cb = lshr i16 %i.ca, 10
  %i.cc = zext nneg i16 %i.cb to i32
  %.2.i.2 = or i32 %.2.i.1, %i.cc
  %i.cd = getelementptr inbounds nuw i8, ptr %i.be, i64 %.043.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !18
  %i.cg = zext i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !23
  %i.cj = lshr i16 %i.ci, 10
  %i.ck = zext nneg i16 %i.cj to i32
  %.2.i.3 = or i32 %.2.i.2, %i.ck                 ; 3 uses
  %i.cl = add nuw nsw i64 %.043.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %check_class.exit.loopexit903.unr-lcssa, label %RSTRING_PTR.exit28.i, !llvm.loop !1

check_class.exit.loopexit.unr-lcssa:              ; preds = %RSTRING_PTR.exit26.thread.us.i
  %lcmp.mod910.not = icmp eq i64 %xtraiter908, 0
  br i1 %lcmp.mod910.not, label %check_class.exit, label %RSTRING_PTR.exit26.thread.us.i.epil.preheader

RSTRING_PTR.exit26.thread.us.i.epil.preheader:    ; preds = %check_class.exit.loopexit.unr-lcssa, %RSTRING_PTR.exit26.thread.us.i.preheader
  %.043.us.i.epil.init = phi i64 [ 0, %RSTRING_PTR.exit26.thread.us.i.preheader ], [ %i.bd, %check_class.exit.loopexit.unr-lcssa ]
  %.01942.us.i.epil.init = phi i32 [ 0, %RSTRING_PTR.exit26.thread.us.i.preheader ], [ %.234.us.i.3, %check_class.exit.loopexit.unr-lcssa ]
  %lcmp.mod912 = icmp ne i64 %xtraiter908, 0
  tail call void @llvm.assume(i1 %lcmp.mod912)
  br label %RSTRING_PTR.exit26.thread.us.i.epil

RSTRING_PTR.exit26.thread.us.i.epil:              ; preds = %RSTRING_PTR.exit26.thread.us.i.epil, %RSTRING_PTR.exit26.thread.us.i.epil.preheader
  %.043.us.i.epil = phi i64 [ %i.ct, %RSTRING_PTR.exit26.thread.us.i.epil ], [ %.043.us.i.epil.init, %RSTRING_PTR.exit26.thread.us.i.epil.preheader ] ; 2 uses
  %.01942.us.i.epil = phi i32 [ %.234.us.i.epil, %RSTRING_PTR.exit26.thread.us.i.epil ], [ %.01942.us.i.epil.init, %RSTRING_PTR.exit26.thread.us.i.epil.preheader ]
  %epil.iter909 = phi i64 [ %epil.iter909.next, %RSTRING_PTR.exit26.thread.us.i.epil ], [ 0, %RSTRING_PTR.exit26.thread.us.i.epil.preheader ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.w, i64 %.043.us.i.epil
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !18
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !23
  %i.cr = lshr i16 %i.cq, 10
  %i.cs = zext nneg i16 %i.cr to i32
  %.234.us.i.epil = or i32 %.01942.us.i.epil, %i.cs ; 2 uses
  %i.ct = add nuw nsw i64 %.043.us.i.epil, 1
  %epil.iter909.next = add i64 %epil.iter909, 1   ; 2 uses
  %epil.iter909.cmp.not = icmp eq i64 %epil.iter909.next, %xtraiter908
  br i1 %epil.iter909.cmp.not, label %check_class.exit, label %RSTRING_PTR.exit26.thread.us.i.epil, !llvm.loop !37

check_class.exit.loopexit903.unr-lcssa:           ; preds = %RSTRING_PTR.exit28.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %check_class.exit, label %RSTRING_PTR.exit28.i.epil.preheader

RSTRING_PTR.exit28.i.epil.preheader:              ; preds = %check_class.exit.loopexit903.unr-lcssa, %.lr.ph.split.i
  %.043.i.epil.init = phi i64 [ 0, %.lr.ph.split.i ], [ %i.cl, %check_class.exit.loopexit903.unr-lcssa ]
  %.01942.i.epil.init = phi i32 [ 0, %.lr.ph.split.i ], [ %.2.i.3, %check_class.exit.loopexit903.unr-lcssa ]
  %lcmp.mod907 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod907)
  br label %RSTRING_PTR.exit28.i.epil

RSTRING_PTR.exit28.i.epil:                        ; preds = %RSTRING_PTR.exit28.i.epil, %RSTRING_PTR.exit28.i.epil.preheader
  %.043.i.epil = phi i64 [ %.043.i.epil.init, %RSTRING_PTR.exit28.i.epil.preheader ], [ %i.db, %RSTRING_PTR.exit28.i.epil ] ; 2 uses
  %.01942.i.epil = phi i32 [ %.01942.i.epil.init, %RSTRING_PTR.exit28.i.epil.preheader ], [ %.2.i.epil, %RSTRING_PTR.exit28.i.epil ]
  %epil.iter = phi i64 [ 0, %RSTRING_PTR.exit28.i.epil.preheader ], [ %epil.iter.next, %RSTRING_PTR.exit28.i.epil ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.be, i64 %.043.i.epil
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !18
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !23
  %i.cz = lshr i16 %i.cy, 10
  %i.da = zext nneg i16 %i.cz to i32
  %.2.i.epil = or i32 %.01942.i.epil, %i.da       ; 2 uses
  %i.db = add nuw nsw i64 %.043.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %check_class.exit, label %RSTRING_PTR.exit28.i.epil, !llvm.loop !38

check_class.exit:                                 ; preds = %check_class.exit.loopexit903.unr-lcssa, %RSTRING_PTR.exit28.i.epil, %check_class.exit.loopexit.unr-lcssa, %RSTRING_PTR.exit26.thread.us.i.epil
  %.019.lcssa.i = phi i32 [ %.234.us.i.epil, %RSTRING_PTR.exit26.thread.us.i.epil ], [ %.234.us.i.3, %check_class.exit.loopexit.unr-lcssa ], [ %.2.i.3, %check_class.exit.loopexit903.unr-lcssa ], [ %.2.i.epil, %RSTRING_PTR.exit28.i.epil ]
  %i.dc = and i32 %.019.lcssa.i, 1
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %.lr.ph.i147, label %bb.d

bb.d:                                             ; preds = %check_class.exit
  %i.dd = load i64, ptr @parse_day.pat, align 8, !tbaa !13
  %i.de = icmp eq i64 %i.dd, 4
  br i1 %i.de, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.df = tail call i64 @rb_reg_new(ptr noundef nonnull @parse_day.pat_source, i64 noundef 41, i32 noundef 1) #14 ; 3 uses
  %i.dg = tail call i64 @rb_obj_freeze(i64 noundef %i.df) #14 ; 0 uses
  tail call void @rb_gc_register_mark_object(i64 noundef %i.df) #14
  store i64 %i.df, ptr @parse_day.pat, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dh = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.7, i64 noundef 1) #14
  %i.di = load i64, ptr @parse_day.pat, align 8, !tbaa !13
  %i.dj = tail call fastcc range(i32 0, 2) i32 @subx(i64 noundef %i.f, i64 noundef %i.dh, i64 noundef %i.di, i64 noundef %i.k, ptr noundef nonnull @parse_day_cb) ; 0 uses
  %.pr.pre = load i64, ptr %i.p, align 8, !tbaa !16 ; 2 uses
  %i.dk = icmp sgt i64 %.pr.pre, 0
  br i1 %i.dk, label %.lr.ph.i147, label %check_class.exit379.thread

.lr.ph.i147:                                      ; preds = %check_class.exit, %bb.f
  %.pr755 = phi i64 [ %.pr.pre, %bb.f ], [ %i.q, %check_class.exit ] ; 7 uses
  %i.dl = load ptr, ptr %i.s, align 8, !tbaa !21  ; 10 uses
  %i.dm = load i64, ptr %i.o, align 8, !tbaa !17
  %i.dn = and i64 %i.dm, 8192
  %.not.i.i148 = icmp eq i64 %i.dn, 0
  br i1 %.not.i.i148, label %RSTRING_PTR.exit26.thread.us.i158.preheader, label %.lr.ph.split.i149

RSTRING_PTR.exit26.thread.us.i158.preheader:      ; preds = %.lr.ph.i147
  %xtraiter922 = and i64 %.pr755, 3               ; 3 uses
  %i.do = icmp ult i64 %.pr755, 4
  br i1 %i.do, label %RSTRING_PTR.exit26.thread.us.i158.epil.preheader, label %RSTRING_PTR.exit26.thread.us.i158.preheader.new

RSTRING_PTR.exit26.thread.us.i158.preheader.new:  ; preds = %RSTRING_PTR.exit26.thread.us.i158.preheader
  %unroll_iter927 = and i64 %.pr755, 9223372036854775804
  br label %RSTRING_PTR.exit26.thread.us.i158

RSTRING_PTR.exit26.thread.us.i158:                ; preds = %RSTRING_PTR.exit26.thread.us.i158, %RSTRING_PTR.exit26.thread.us.i158.preheader.new
  %.043.us.i159 = phi i64 [ 0, %RSTRING_PTR.exit26.thread.us.i158.preheader.new ], [ %i.eu, %RSTRING_PTR.exit26.thread.us.i158 ] ; 5 uses
  %.01942.us.i160 = phi i32 [ 0, %RSTRING_PTR.exit26.thread.us.i158.preheader.new ], [ %.234.us.i161.3, %RSTRING_PTR.exit26.thread.us.i158 ]
  %niter928 = phi i64 [ 0, %RSTRING_PTR.exit26.thread.us.i158.preheader.new ], [ %niter928.next.3, %RSTRING_PTR.exit26.thread.us.i158 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.w, i64 %.043.us.i159
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !18
  %i.dr = zext i8 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !23
  %i.du = lshr i16 %i.dt, 10
  %i.dv = zext nneg i16 %i.du to i32
  %.234.us.i161 = or i32 %.01942.us.i160, %i.dv
  %i.dw = getelementptr inbounds nuw i8, ptr %i.w, i64 %.043.us.i159
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !18
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.dz
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !23
  %i.ec = lshr i16 %i.eb, 10
  %i.ed = zext nneg i16 %i.ec to i32
  %.234.us.i161.1 = or i32 %.234.us.i161, %i.ed
  %i.ee = getelementptr inbounds nuw i8, ptr %i.w, i64 %.043.us.i159
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !18
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !23
  %i.ek = lshr i16 %i.ej, 10
  %i.el = zext nneg i16 %i.ek to i32
  %.234.us.i161.2 = or i32 %.234.us.i161.1, %i.el
  %i.em = getelementptr inbounds nuw i8, ptr %i.w, i64 %.043.us.i159
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 3
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !18
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !23
  %i.es = lshr i16 %i.er, 10
  %i.et = zext nneg i16 %i.es to i32
  %.234.us.i161.3 = or i32 %.234.us.i161.2, %i.et ; 3 uses
  %i.eu = add nuw nsw i64 %.043.us.i159, 4        ; 2 uses
  %niter928.next.3 = add nuw nsw i64 %niter928, 4 ; 2 uses
  %niter928.ncmp.3 = icmp eq i64 %niter928.next.3, %unroll_iter927
  br i1 %niter928.ncmp.3, label %check_class.exit166.loopexit.unr-lcssa, label %RSTRING_PTR.exit26.thread.us.i158, !llvm.loop !1

.lr.ph.split.i149:                                ; preds = %.lr.ph.i147
  %i.ev = load ptr, ptr %i.w, align 8, !tbaa !18  ; 5 uses
  %xtraiter915 = and i64 %.pr755, 3               ; 3 uses
  %i.ew = icmp ult i64 %.pr755, 4
  br i1 %i.ew, label %RSTRING_PTR.exit28.i150.epil.preheader, label %.lr.ph.split.i149.new

.lr.ph.split.i149.new:                            ; preds = %.lr.ph.split.i149
  %unroll_iter920 = and i64 %.pr755, 9223372036854775804
  br label %RSTRING_PTR.exit28.i150

RSTRING_PTR.exit28.i150:                          ; preds = %RSTRING_PTR.exit28.i150, %.lr.ph.split.i149.new
  %.043.i151 = phi i64 [ 0, %.lr.ph.split.i149.new ], [ %i.gc, %RSTRING_PTR.exit28.i150 ] ; 5 uses
  %.01942.i152 = phi i32 [ 0, %.lr.ph.split.i149.new ], [ %.2.i153.3, %RSTRING_PTR.exit28.i150 ]
  %niter921 = phi i64 [ 0, %.lr.ph.split.i149.new ], [ %niter921.next.3, %RSTRING_PTR.exit28.i150 ]
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.043.i151
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !18
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !23
  %i.fc = lshr i16 %i.fb, 10
  %i.fd = zext nneg i16 %i.fc to i32
  %.2.i153 = or i32 %.01942.i152, %i.fd
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.043.i151
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 1
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !18
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !23
  %i.fk = lshr i16 %i.fj, 10
  %i.fl = zext nneg i16 %i.fk to i32
  %.2.i153.1 = or i32 %.2.i153, %i.fl
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.043.i151
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !18
  %i.fp = zext i8 %i.fo to i64
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.fp
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !23
  %i.fs = lshr i16 %i.fr, 10
  %i.ft = zext nneg i16 %i.fs to i32
  %.2.i153.2 = or i32 %.2.i153.1, %i.ft
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.043.i151
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 3
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !18
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !23
  %i.ga = lshr i16 %i.fz, 10
  %i.gb = zext nneg i16 %i.ga to i32
  %.2.i153.3 = or i32 %.2.i153.2, %i.gb           ; 3 uses
  %i.gc = add nuw nsw i64 %.043.i151, 4           ; 2 uses
  %niter921.next.3 = add nuw nsw i64 %niter921, 4 ; 2 uses
  %niter921.ncmp.3 = icmp eq i64 %niter921.next.3, %unroll_iter920
  br i1 %niter921.ncmp.3, label %check_class.exit166.loopexit902.unr-lcssa, label %RSTRING_PTR.exit28.i150, !llvm.loop !1

check_class.exit166.loopexit.unr-lcssa:           ; preds = %RSTRING_PTR.exit26.thread.us.i158
  %lcmp.mod924.not = icmp eq i64 %xtraiter922, 0
  br i1 %lcmp.mod924.not, label %check_class.exit166, label %RSTRING_PTR.exit26.thread.us.i158.epil.preheader

RSTRING_PTR.exit26.thread.us.i158.epil.preheader: ; preds = %check_class.exit166.loopexit.unr-lcssa, %RSTRING_PTR.exit26.thread.us.i158.preheader
  %.043.us.i159.epil.init = phi i64 [ 0, %RSTRING_PTR.exit26.thread.us.i158.preheader ], [ %i.eu, %check_class.exit166.loopexit.unr-lcssa ]
  %.01942.us.i160.epil.init = phi i32 [ 0, %RSTRING_PTR.exit26.thread.us.i158.preheader ], [ %.234.us.i161.3, %check_class.exit166.loopexit.unr-lcssa ]
  %lcmp.mod926 = icmp ne i64 %xtraiter922, 0
  tail call void @llvm.assume(i1 %lcmp.mod926)
  br label %RSTRING_PTR.exit26.thread.us.i158.epil

RSTRING_PTR.exit26.thread.us.i158.epil:           ; preds = %RSTRING_PTR.exit26.thread.us.i158.epil, %RSTRING_PTR.exit26.thread.us.i158.epil.preheader
  %.043.us.i159.epil = phi i64 [ %i.gk, %RSTRING_PTR.exit26.thread.us.i158.epil ], [ %.043.us.i159.epil.init, %RSTRING_PTR.exit26.thread.us.i158.epil.preheader ] ; 2 uses
  %.01942.us.i160.epil = phi i32 [ %.234.us.i161.epil, %RSTRING_PTR.exit26.thread.us.i158.epil ], [ %.01942.us.i160.epil.init, %RSTRING_PTR.exit26.thread.us.i158.epil.preheader ]
  %epil.iter923 = phi i64 [ %epil.iter923.next, %RSTRING_PTR.exit26.thread.us.i158.epil ], [ 0, %RSTRING_PTR.exit26.thread.us.i158.epil.preheader ]
  %i.gd = getelementptr inbounds nuw i8, ptr %i.w, i64 %.043.us.i159.epil
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !18
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.gf
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !23
  %i.gi = lshr i16 %i.gh, 10
  %i.gj = zext nneg i16 %i.gi to i32
  %.234.us.i161.epil = or i32 %.01942.us.i160.epil, %i.gj ; 2 uses
  %i.gk = add nuw nsw i64 %.043.us.i159.epil, 1
  %epil.iter923.next = add i64 %epil.iter923, 1   ; 2 uses
  %epil.iter923.cmp.not = icmp eq i64 %epil.iter923.next, %xtraiter922
  br i1 %epil.iter923.cmp.not, label %check_class.exit166, label %RSTRING_PTR.exit26.thread.us.i158.epil, !llvm.loop !39

check_class.exit166.loopexit902.unr-lcssa:        ; preds = %RSTRING_PTR.exit28.i150
  %lcmp.mod917.not = icmp eq i64 %xtraiter915, 0
  br i1 %lcmp.mod917.not, label %check_class.exit166, label %RSTRING_PTR.exit28.i150.epil.preheader

RSTRING_PTR.exit28.i150.epil.preheader:           ; preds = %check_class.exit166.loopexit902.unr-lcssa, %.lr.ph.split.i149
  %.043.i151.epil.init = phi i64 [ 0, %.lr.ph.split.i149 ], [ %i.gc, %check_class.exit166.loopexit902.unr-lcssa ]
  %.01942.i152.epil.init = phi i32 [ 0, %.lr.ph.split.i149 ], [ %.2.i153.3, %check_class.exit166.loopexit902.unr-lcssa ]
  %lcmp.mod919 = icmp ne i64 %xtraiter915, 0
  tail call void @llvm.assume(i1 %lcmp.mod919)
  br label %RSTRING_PTR.exit28.i150.epil

RSTRING_PTR.exit28.i150.epil:                     ; preds = %RSTRING_PTR.exit28.i150.epil, %RSTRING_PTR.exit28.i150.epil.preheader
  %.043.i151.epil = phi i64 [ %.043.i151.epil.init, %RSTRING_PTR.exit28.i150.epil.preheader ], [ %i.gs, %RSTRING_PTR.exit28.i150.epil ] ; 2 uses
  %.01942.i152.epil = phi i32 [ %.01942.i152.epil.init, %RSTRING_PTR.exit28.i150.epil.preheader ], [ %.2.i153.epil, %RSTRING_PTR.exit28.i150.epil ]
  %epil.iter916 = phi i64 [ 0, %RSTRING_PTR.exit28.i150.epil.preheader ], [ %epil.iter916.next, %RSTRING_PTR.exit28.i150.epil ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.043.i151.epil
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !18
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.dl, i64 %i.gn
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !23
  %i.gq = lshr i16 %i.gp, 10
  %i.gr = zext nneg i16 %i.gq to i32
  %.2.i153.epil = or i32 %.01942.i152.epil, %i.gr ; 2 uses
  %i.gs = add nuw nsw i64 %.043.i151.epil, 1
  %epil.iter916.next = add i64 %epil.iter916, 1   ; 2 uses
  %epil.iter916.cmp.not = icmp eq i64 %epil.iter916.next, %xtraiter915
  br i1 %epil.iter916.cmp.not, label %check_class.exit166, label %RSTRING_PTR.exit28.i150.epil, !llvm.loop !40

check_class.exit166:                              ; preds = %check_class.exit166.loopexit902.unr-lcssa, %RSTRING_PTR.exit28.i150.epil, %check_class.exit166.loopexit.unr-lcssa, %RSTRING_PTR.exit26.thread.us.i158.epil
  %.019.lcssa.i146 = phi i32 [ %.234.us.i161.epil, %RSTRING_PTR.exit26.thread.us.i158.epil ], [ %.234.us.i161.3, %check_class.exit166.loopexit.unr-lcssa ], [ %.2.i153.3, %check_class.exit166.loopexit902.unr-lcssa ], [ %.2.i153.epil, %RSTRING_PTR.exit28.i150.epil ]
  %i.gt = and i32 %.019.lcssa.i146, 2
  %.not114 = icmp eq i32 %i.gt, 0
  br i1 %.not114, label %.lr.ph.i168, label %bb.g

bb.g:                                             ; preds = %check_class.exit166
  %i.gu = load i64, ptr @parse_time.pat, align 8, !tbaa !13
  %i.gv = icmp eq i64 %i.gu, 4
  br i1 %i.gv, label %bb.h, label %check_class.exit166.thread

bb.h:                                             ; preds = %bb.g
  %i.gw = tail call i64 @rb_reg_new(ptr noundef nonnull @parse_time.pat_source, i64 noundef 262, i32 noundef 1) #14 ; 3 uses
  %i.gx = tail call i64 @rb_obj_freeze(i64 noundef %i.gw) #14 ; 0 uses
  tail call void @rb_gc_register_mark_object(i64 noundef %i.gw) #14
  store i64 %i.gw, ptr @parse_time.pat, align 8, !tbaa !13
  br label %check_class.exit166.thread

check_class.exit166.thread:                       ; preds = %bb.h, %bb.g
  %i.gy = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.7, i64 noundef 1) #14
  %i.gz = load i64, ptr @parse_time.pat, align 8, !tbaa !13
  %i.ha = tail call fastcc range(i32 0, 2) i32 @subx(i64 noundef %i.f, i64 noundef %i.gy, i64 noundef %i.gz, i64 noundef %i.k, ptr noundef nonnull @parse_time_cb) ; 0 uses
  %.pr604.pre = load i64, ptr %i.p, align 8, !tbaa !16 ; 2 uses
  %i.hb = icmp sgt i64 %.pr604.pre, 0
  br i1 %i.hb, label %.lr.ph.i168, label %check_class.exit379.thread

.lr.ph.i168:                                      ; preds = %check_class.exit166, %check_class.exit166.thread
  %.pr604757 = phi i64 [ %.pr604.pre, %check_class.exit166.thread ], [ %.pr755, %check_class.exit166 ] ; 7 uses
  %i.hc = load ptr, ptr %i.s, align 8, !tbaa !21  ; 10 uses
  %i.hd = load i64, ptr %i.o, align 8, !tbaa !17
  %i.he = and i64 %i.hd, 8192
  %.not.i.i169 = icmp eq i64 %i.he, 0
  br i1 %.not.i.i169, label %RSTRING_PTR.exit26.thread.us.i179.preheader, label %.lr.ph.split.i170

RSTRING_PTR.exit26.thread.us.i179.preheader:      ; preds = %.lr.ph.i168
  %i.hf = add i64 %.pr604757, -1
  %xtraiter936 = and i64 %.pr604757, 3            ; 3 uses
  %i.hg = icmp ult i64 %i.hf, 3
  br i1 %i.hg, label %RSTRING_PTR.exit26.thread.us.i179.epil.preheader, label %RSTRING_PTR.exit26.thread.us.i179.preheader.new

RSTRING_PTR.exit26.thread.us.i179.preheader.new:  ; preds = %RSTRING_PTR.exit26.thread.us.i179.preheader
  %unroll_iter941 = and i64 %.pr604757, -4
  br label %RSTRING_PTR.exit26.thread.us.i179

RSTRING_PTR.exit26.thread.us.i179:                ; preds = %RSTRING_PTR.exit26.thread.us.i179, %RSTRING_PTR.exit26.thread.us.i179.preheader.new
  %.043.us.i180 = phi i64 [ 0, %RSTRING_PTR.exit26.thread.us.i179.preheader.new ], [ %i.im, %RSTRING_PTR.exit26.thread.us.i179 ] ; 5 uses
  %.01942.us.i181 = phi i32 [ 0, %RSTRING_PTR.exit26.thread.us.i179.preheader.new ], [ %.234.us.i182.3, %RSTRING_PTR.exit26.thread.us.i179 ]
  %niter942 = phi i64 [ 0, %RSTRING_PTR.exit26.thread.us.i179.preheader.new ], [ %niter942.next.3, %RSTRING_PTR.exit26.thread.us.i179 ]
  %i.hh = getelementptr inbounds nuw i8, ptr %i.w, i64 %.043.us.i180
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !18
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !23
  %i.hm = lshr i16 %i.hl, 10
  %i.hn = zext nneg i16 %i.hm to i32
  %.234.us.i182 = or i32 %.01942.us.i181, %i.hn
  %i.ho = getelementptr inbounds nuw i8, ptr %i.w, i64 %.043.us.i180
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !18
  %i.hr = zext i8 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2, !tbaa !23
  %i.hu = lshr i16 %i.ht, 10
  %i.hv = zext nneg i16 %i.hu to i32
  %.234.us.i182.1 = or i32 %.234.us.i182, %i.hv
  %i.hw = getelementptr inbounds nuw i8, ptr %i.w, i64 %.043.us.i180
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !18
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.hz
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !23
  %i.ic = lshr i16 %i.ib, 10
  %i.id = zext nneg i16 %i.ic to i32
  %.234.us.i182.2 = or i32 %.234.us.i182.1, %i.id
  %i.ie = getelementptr inbounds nuw i8, ptr %i.w, i64 %.043.us.i180
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 3
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !18
  %i.ih = zext i8 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.ih
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !23
  %i.ik = lshr i16 %i.ij, 10
  %i.il = zext nneg i16 %i.ik to i32
  %.234.us.i182.3 = or i32 %.234.us.i182.2, %i.il ; 3 uses
  %i.im = add nuw nsw i64 %.043.us.i180, 4        ; 2 uses
  %niter942.next.3 = add i64 %niter942, 4         ; 2 uses
  %niter942.ncmp.3 = icmp eq i64 %niter942.next.3, %unroll_iter941
  br i1 %niter942.ncmp.3, label %check_class.exit187.loopexit.unr-lcssa, label %RSTRING_PTR.exit26.thread.us.i179, !llvm.loop !1

.lr.ph.split.i170:                                ; preds = %.lr.ph.i168
  %i.in = load ptr, ptr %i.w, align 8, !tbaa !18  ; 5 uses
  %i.io = add i64 %.pr604757, -1
  %xtraiter929 = and i64 %.pr604757, 3            ; 3 uses
  %i.ip = icmp ult i64 %i.io, 3
  br i1 %i.ip, label %RSTRING_PTR.exit28.i171.epil.preheader, label %.lr.ph.split.i170.new

.lr.ph.split.i170.new:                            ; preds = %.lr.ph.split.i170
  %unroll_iter934 = and i64 %.pr604757, -4
  br label %RSTRING_PTR.exit28.i171

RSTRING_PTR.exit28.i171:                          ; preds = %RSTRING_PTR.exit28.i171, %.lr.ph.split.i170.new
  %.043.i172 = phi i64 [ 0, %.lr.ph.split.i170.new ], [ %i.jv, %RSTRING_PTR.exit28.i171 ] ; 5 uses
  %.01942.i173 = phi i32 [ 0, %.lr.ph.split.i170.new ], [ %.2.i174.3, %RSTRING_PTR.exit28.i171 ]
  %niter935 = phi i64 [ 0, %.lr.ph.split.i170.new ], [ %niter935.next.3, %RSTRING_PTR.exit28.i171 ]
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 %.043.i172
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !18
  %i.is = zext i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.is
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !23
  %i.iv = lshr i16 %i.iu, 10
  %i.iw = zext nneg i16 %i.iv to i32
  %.2.i174 = or i32 %.01942.i173, %i.iw
  %i.ix = getelementptr inbounds nuw i8, ptr %i.in, i64 %.043.i172
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !18
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !23
  %i.jd = lshr i16 %i.jc, 10
  %i.je = zext nneg i16 %i.jd to i32
  %.2.i174.1 = or i32 %.2.i174, %i.je
  %i.jf = getelementptr inbounds nuw i8, ptr %i.in, i64 %.043.i172
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 2
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !18
  %i.ji = zext i8 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.ji
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !23
  %i.jl = lshr i16 %i.jk, 10
  %i.jm = zext nneg i16 %i.jl to i32
  %.2.i174.2 = or i32 %.2.i174.1, %i.jm
  %i.jn = getelementptr inbounds nuw i8, ptr %i.in, i64 %.043.i172
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 3
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !18
  %i.jq = zext i8 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.hc, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !23
  %i.jt = lshr i16 %i.js, 10
  %i.ju = zext nneg i16 %i.jt to i32
  %.2.i174.3 = or i32 %.2.i174.2, %i.ju           ; 3 uses
  %i.jv = add nuw nsw i64 %.043.i172, 4           ; 2 uses
  %niter935.next.3 = add i64 %niter935, 4         ; 2 uses
  %niter935.ncmp.3 = icmp eq i64 %niter935.next.3, %unroll_iter934
end_hunk_0
begin_hunk_1_@date__parse:bb.a
  %i.arw = zext nneg i16 %i.arv to i32
  %.234.us.i395.3 = or i32 %.234.us.i395.2, %i.arw ; 3 uses
  %i.arx = add nuw nsw i64 %.043.us.i393, 4       ; 2 uses
  %niter1082.next.3 = add nuw nsw i64 %niter1082, 4 ; 2 uses
  %niter1082.ncmp.3 = icmp eq i64 %niter1082.next.3, %unroll_iter1081
  br i1 %niter1082.ncmp.3, label %check_class.exit400.loopexit.unr-lcssa, label %RSTRING_PTR.exit26.thread.us.i392, !llvm.loop !1

.lr.ph.split.i383:                                ; preds = %.lr.ph.i381
  %i.ary = load ptr, ptr %i.aqq, align 8, !tbaa !18 ; 5 uses
  %xtraiter1069 = and i64 %i.aqk, 3               ; 3 uses
  %i.arz = icmp ult i64 %i.aqk, 4
  br i1 %i.arz, label %RSTRING_PTR.exit28.i384.epil.preheader, label %.lr.ph.split.i383.new

.lr.ph.split.i383.new:                            ; preds = %.lr.ph.split.i383
  %unroll_iter1074 = and i64 %i.aqk, 9223372036854775804
  br label %RSTRING_PTR.exit28.i384

RSTRING_PTR.exit28.i384:                          ; preds = %RSTRING_PTR.exit28.i384, %.lr.ph.split.i383.new
  %.043.i385 = phi i64 [ 0, %.lr.ph.split.i383.new ], [ %i.atf, %RSTRING_PTR.exit28.i384 ] ; 5 uses
  %.01942.i386 = phi i32 [ 0, %.lr.ph.split.i383.new ], [ %.2.i387.3, %RSTRING_PTR.exit28.i384 ]
  %niter1075 = phi i64 [ 0, %.lr.ph.split.i383.new ], [ %niter1075.next.3, %RSTRING_PTR.exit28.i384 ]
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ary, i64 %.043.i385
  %i.asb = load i8, ptr %i.asa, align 1, !tbaa !18
  %i.asc = zext i8 %i.asb to i64
  %i.asd = getelementptr inbounds nuw [2 x i8], ptr %i.aqn, i64 %i.asc
  %i.ase = load i16, ptr %i.asd, align 2, !tbaa !23
  %i.asf = lshr i16 %i.ase, 10
  %i.asg = zext nneg i16 %i.asf to i32
  %.2.i387 = or i32 %.01942.i386, %i.asg
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ary, i64 %.043.i385
  %i.asi = getelementptr inbounds nuw i8, ptr %i.ash, i64 1
  %i.asj = load i8, ptr %i.asi, align 1, !tbaa !18
  %i.ask = zext i8 %i.asj to i64
  %i.asl = getelementptr inbounds nuw [2 x i8], ptr %i.aqn, i64 %i.ask
  %i.asm = load i16, ptr %i.asl, align 2, !tbaa !23
  %i.asn = lshr i16 %i.asm, 10
  %i.aso = zext nneg i16 %i.asn to i32
  %.2.i387.1 = or i32 %.2.i387, %i.aso
  %i.asp = getelementptr inbounds nuw i8, ptr %i.ary, i64 %.043.i385
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 2
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !18
  %i.ass = zext i8 %i.asr to i64
  %i.ast = getelementptr inbounds nuw [2 x i8], ptr %i.aqn, i64 %i.ass
  %i.asu = load i16, ptr %i.ast, align 2, !tbaa !23
  %i.asv = lshr i16 %i.asu, 10
  %i.asw = zext nneg i16 %i.asv to i32
  %.2.i387.2 = or i32 %.2.i387.1, %i.asw
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ary, i64 %.043.i385
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 3
  %i.asz = load i8, ptr %i.asy, align 1, !tbaa !18
  %i.ata = zext i8 %i.asz to i64
  %i.atb = getelementptr inbounds nuw [2 x i8], ptr %i.aqn, i64 %i.ata
  %i.atc = load i16, ptr %i.atb, align 2, !tbaa !23
  %i.atd = lshr i16 %i.atc, 10
  %i.ate = zext nneg i16 %i.atd to i32
  %.2.i387.3 = or i32 %.2.i387.2, %i.ate          ; 3 uses
  %i.atf = add nuw nsw i64 %.043.i385, 4          ; 2 uses
  %niter1075.next.3 = add nuw nsw i64 %niter1075, 4 ; 2 uses
  %niter1075.ncmp.3 = icmp eq i64 %niter1075.next.3, %unroll_iter1074
  br i1 %niter1075.ncmp.3, label %check_class.exit400.loopexit891.unr-lcssa, label %RSTRING_PTR.exit28.i384, !llvm.loop !1

check_class.exit400.loopexit.unr-lcssa:           ; preds = %RSTRING_PTR.exit26.thread.us.i392
  %lcmp.mod1078.not = icmp eq i64 %xtraiter1076, 0
  br i1 %lcmp.mod1078.not, label %check_class.exit400, label %RSTRING_PTR.exit26.thread.us.i392.epil.preheader

RSTRING_PTR.exit26.thread.us.i392.epil.preheader: ; preds = %check_class.exit400.loopexit.unr-lcssa, %RSTRING_PTR.exit26.thread.us.i392.preheader
  %.043.us.i393.epil.init = phi i64 [ 0, %RSTRING_PTR.exit26.thread.us.i392.preheader ], [ %i.arx, %check_class.exit400.loopexit.unr-lcssa ]
  %.01942.us.i394.epil.init = phi i32 [ 0, %RSTRING_PTR.exit26.thread.us.i392.preheader ], [ %.234.us.i395.3, %check_class.exit400.loopexit.unr-lcssa ]
  %lcmp.mod1080 = icmp ne i64 %xtraiter1076, 0
  tail call void @llvm.assume(i1 %lcmp.mod1080)
  br label %RSTRING_PTR.exit26.thread.us.i392.epil

RSTRING_PTR.exit26.thread.us.i392.epil:           ; preds = %RSTRING_PTR.exit26.thread.us.i392.epil, %RSTRING_PTR.exit26.thread.us.i392.epil.preheader
  %.043.us.i393.epil = phi i64 [ %i.atn, %RSTRING_PTR.exit26.thread.us.i392.epil ], [ %.043.us.i393.epil.init, %RSTRING_PTR.exit26.thread.us.i392.epil.preheader ] ; 2 uses
  %.01942.us.i394.epil = phi i32 [ %.234.us.i395.epil, %RSTRING_PTR.exit26.thread.us.i392.epil ], [ %.01942.us.i394.epil.init, %RSTRING_PTR.exit26.thread.us.i392.epil.preheader ]
  %epil.iter1077 = phi i64 [ %epil.iter1077.next, %RSTRING_PTR.exit26.thread.us.i392.epil ], [ 0, %RSTRING_PTR.exit26.thread.us.i392.epil.preheader ]
  %i.atg = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %.043.us.i393.epil
  %i.ath = load i8, ptr %i.atg, align 1, !tbaa !18
  %i.ati = zext i8 %i.ath to i64
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr %i.aqn, i64 %i.ati
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !23
  %i.atl = lshr i16 %i.atk, 10
  %i.atm = zext nneg i16 %i.atl to i32
  %.234.us.i395.epil = or i32 %.01942.us.i394.epil, %i.atm ; 2 uses
  %i.atn = add nuw nsw i64 %.043.us.i393.epil, 1
  %epil.iter1077.next = add i64 %epil.iter1077, 1 ; 2 uses
  %epil.iter1077.cmp.not = icmp eq i64 %epil.iter1077.next, %xtraiter1076
  br i1 %epil.iter1077.cmp.not, label %check_class.exit400, label %RSTRING_PTR.exit26.thread.us.i392.epil, !llvm.loop !51

check_class.exit400.loopexit891.unr-lcssa:        ; preds = %RSTRING_PTR.exit28.i384
  %lcmp.mod1071.not = icmp eq i64 %xtraiter1069, 0
  br i1 %lcmp.mod1071.not, label %check_class.exit400, label %RSTRING_PTR.exit28.i384.epil.preheader

RSTRING_PTR.exit28.i384.epil.preheader:           ; preds = %check_class.exit400.loopexit891.unr-lcssa, %.lr.ph.split.i383
  %.043.i385.epil.init = phi i64 [ 0, %.lr.ph.split.i383 ], [ %i.atf, %check_class.exit400.loopexit891.unr-lcssa ]
  %.01942.i386.epil.init = phi i32 [ 0, %.lr.ph.split.i383 ], [ %.2.i387.3, %check_class.exit400.loopexit891.unr-lcssa ]
  %lcmp.mod1073 = icmp ne i64 %xtraiter1069, 0
  tail call void @llvm.assume(i1 %lcmp.mod1073)
  br label %RSTRING_PTR.exit28.i384.epil

RSTRING_PTR.exit28.i384.epil:                     ; preds = %RSTRING_PTR.exit28.i384.epil, %RSTRING_PTR.exit28.i384.epil.preheader
  %.043.i385.epil = phi i64 [ %.043.i385.epil.init, %RSTRING_PTR.exit28.i384.epil.preheader ], [ %i.atv, %RSTRING_PTR.exit28.i384.epil ] ; 2 uses
  %.01942.i386.epil = phi i32 [ %.01942.i386.epil.init, %RSTRING_PTR.exit28.i384.epil.preheader ], [ %.2.i387.epil, %RSTRING_PTR.exit28.i384.epil ]
  %epil.iter1070 = phi i64 [ 0, %RSTRING_PTR.exit28.i384.epil.preheader ], [ %epil.iter1070.next, %RSTRING_PTR.exit28.i384.epil ]
  %i.ato = getelementptr inbounds nuw i8, ptr %i.ary, i64 %.043.i385.epil
  %i.atp = load i8, ptr %i.ato, align 1, !tbaa !18
  %i.atq = zext i8 %i.atp to i64
  %i.atr = getelementptr inbounds nuw [2 x i8], ptr %i.aqn, i64 %i.atq
  %i.ats = load i16, ptr %i.atr, align 2, !tbaa !23
  %i.att = lshr i16 %i.ats, 10
  %i.atu = zext nneg i16 %i.att to i32
  %.2.i387.epil = or i32 %.01942.i386.epil, %i.atu ; 2 uses
  %i.atv = add nuw nsw i64 %.043.i385.epil, 1
  %epil.iter1070.next = add i64 %epil.iter1070, 1 ; 2 uses
  %epil.iter1070.cmp.not = icmp eq i64 %epil.iter1070.next, %xtraiter1069
  br i1 %epil.iter1070.cmp.not, label %check_class.exit400, label %RSTRING_PTR.exit28.i384.epil, !llvm.loop !52

check_class.exit400:                              ; preds = %check_class.exit400.loopexit891.unr-lcssa, %RSTRING_PTR.exit28.i384.epil, %check_class.exit400.loopexit.unr-lcssa, %RSTRING_PTR.exit26.thread.us.i392.epil
  %.019.lcssa.i380 = phi i32 [ %.234.us.i395.epil, %RSTRING_PTR.exit26.thread.us.i392.epil ], [ %.234.us.i395.3, %check_class.exit400.loopexit.unr-lcssa ], [ %.2.i387.3, %check_class.exit400.loopexit891.unr-lcssa ], [ %.2.i387.epil, %RSTRING_PTR.exit28.i384.epil ]
  %i.atw = and i32 %.019.lcssa.i380, 1
  %.not131 = icmp eq i32 %i.atw, 0
  br i1 %.not131, label %.lr.ph.i402, label %bb.as

bb.as:                                            ; preds = %check_class.exit400
  %i.atx = load i64, ptr @parse_bc.pat, align 8, !tbaa !13
  %i.aty = icmp eq i64 %i.atx, 4
  br i1 %i.aty, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.atz = tail call i64 @rb_reg_new(ptr noundef nonnull @parse_bc.pat_source, i64 noundef 31, i32 noundef 1) #14 ; 3 uses
  %i.aua = tail call i64 @rb_obj_freeze(i64 noundef %i.atz) #14 ; 0 uses
  tail call void @rb_gc_register_mark_object(i64 noundef %i.atz) #14
  store i64 %i.atz, ptr @parse_bc.pat, align 8, !tbaa !13
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.aub = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.7, i64 noundef 1) #14
  %i.auc = load i64, ptr @parse_bc.pat, align 8, !tbaa !13
  %i.aud = tail call fastcc range(i32 0, 2) i32 @subx(i64 noundef %i.f, i64 noundef %i.aub, i64 noundef %i.auc, i64 noundef %i.k, ptr noundef nonnull @parse_bc_cb) ; 0 uses
  %.pr600.pre = load i64, ptr %i.p, align 8, !tbaa !16 ; 2 uses
  %i.aue = icmp sgt i64 %.pr600.pre, 0
  br i1 %i.aue, label %.lr.ph.i402, label %check_class.exit421.thread

.lr.ph.i402:                                      ; preds = %check_class.exit400, %bb.au
  %.pr600782 = phi i64 [ %.pr600.pre, %bb.au ], [ %i.aqk, %check_class.exit400 ] ; 6 uses
  %i.auf = load ptr, ptr %i.aqm, align 8, !tbaa !21 ; 10 uses
  %i.aug = load i64, ptr %i.o, align 8, !tbaa !17
  %i.auh = and i64 %i.aug, 8192
  %.not.i.i403 = icmp eq i64 %i.auh, 0
  br i1 %.not.i.i403, label %RSTRING_PTR.exit26.thread.us.i413.preheader, label %.lr.ph.split.i404

RSTRING_PTR.exit26.thread.us.i413.preheader:      ; preds = %.lr.ph.i402
  %xtraiter1090 = and i64 %.pr600782, 3           ; 3 uses
  %i.aui = icmp ult i64 %.pr600782, 4
  br i1 %i.aui, label %RSTRING_PTR.exit26.thread.us.i413.epil.preheader, label %RSTRING_PTR.exit26.thread.us.i413.preheader.new

RSTRING_PTR.exit26.thread.us.i413.preheader.new:  ; preds = %RSTRING_PTR.exit26.thread.us.i413.preheader
  %unroll_iter1095 = and i64 %.pr600782, 9223372036854775804
  br label %RSTRING_PTR.exit26.thread.us.i413

RSTRING_PTR.exit26.thread.us.i413:                ; preds = %RSTRING_PTR.exit26.thread.us.i413, %RSTRING_PTR.exit26.thread.us.i413.preheader.new
  %.043.us.i414 = phi i64 [ 0, %RSTRING_PTR.exit26.thread.us.i413.preheader.new ], [ %i.avo, %RSTRING_PTR.exit26.thread.us.i413 ] ; 5 uses
  %.01942.us.i415 = phi i32 [ 0, %RSTRING_PTR.exit26.thread.us.i413.preheader.new ], [ %.234.us.i416.3, %RSTRING_PTR.exit26.thread.us.i413 ]
  %niter1096 = phi i64 [ 0, %RSTRING_PTR.exit26.thread.us.i413.preheader.new ], [ %niter1096.next.3, %RSTRING_PTR.exit26.thread.us.i413 ]
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %.043.us.i414
  %i.auk = load i8, ptr %i.auj, align 1, !tbaa !18
  %i.aul = zext i8 %i.auk to i64
  %i.aum = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %i.aul
  %i.aun = load i16, ptr %i.aum, align 2, !tbaa !23
  %i.auo = lshr i16 %i.aun, 10
  %i.aup = zext nneg i16 %i.auo to i32
  %.234.us.i416 = or i32 %.01942.us.i415, %i.aup
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %.043.us.i414
  %i.aur = getelementptr inbounds nuw i8, ptr %i.auq, i64 1
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !18
  %i.aut = zext i8 %i.aus to i64
  %i.auu = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %i.aut
  %i.auv = load i16, ptr %i.auu, align 2, !tbaa !23
  %i.auw = lshr i16 %i.auv, 10
  %i.aux = zext nneg i16 %i.auw to i32
  %.234.us.i416.1 = or i32 %.234.us.i416, %i.aux
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %.043.us.i414
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 2
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !18
  %i.avb = zext i8 %i.ava to i64
  %i.avc = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %i.avb
  %i.avd = load i16, ptr %i.avc, align 2, !tbaa !23
  %i.ave = lshr i16 %i.avd, 10
  %i.avf = zext nneg i16 %i.ave to i32
  %.234.us.i416.2 = or i32 %.234.us.i416.1, %i.avf
  %i.avg = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %.043.us.i414
  %i.avh = getelementptr inbounds nuw i8, ptr %i.avg, i64 3
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !18
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %i.avj
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !23
  %i.avm = lshr i16 %i.avl, 10
  %i.avn = zext nneg i16 %i.avm to i32
  %.234.us.i416.3 = or i32 %.234.us.i416.2, %i.avn ; 3 uses
  %i.avo = add nuw nsw i64 %.043.us.i414, 4       ; 2 uses
  %niter1096.next.3 = add nuw nsw i64 %niter1096, 4 ; 2 uses
  %niter1096.ncmp.3 = icmp eq i64 %niter1096.next.3, %unroll_iter1095
  br i1 %niter1096.ncmp.3, label %check_class.exit421.loopexit.unr-lcssa, label %RSTRING_PTR.exit26.thread.us.i413, !llvm.loop !1

.lr.ph.split.i404:                                ; preds = %.lr.ph.i402
  %i.avp = load ptr, ptr %i.aqq, align 8, !tbaa !18 ; 5 uses
  %xtraiter1083 = and i64 %.pr600782, 3           ; 3 uses
  %i.avq = icmp ult i64 %.pr600782, 4
  br i1 %i.avq, label %RSTRING_PTR.exit28.i405.epil.preheader, label %.lr.ph.split.i404.new

.lr.ph.split.i404.new:                            ; preds = %.lr.ph.split.i404
  %unroll_iter1088 = and i64 %.pr600782, 9223372036854775804
  br label %RSTRING_PTR.exit28.i405

RSTRING_PTR.exit28.i405:                          ; preds = %RSTRING_PTR.exit28.i405, %.lr.ph.split.i404.new
  %.043.i406 = phi i64 [ 0, %.lr.ph.split.i404.new ], [ %i.aww, %RSTRING_PTR.exit28.i405 ] ; 5 uses
  %.01942.i407 = phi i32 [ 0, %.lr.ph.split.i404.new ], [ %.2.i408.3, %RSTRING_PTR.exit28.i405 ]
  %niter1089 = phi i64 [ 0, %.lr.ph.split.i404.new ], [ %niter1089.next.3, %RSTRING_PTR.exit28.i405 ]
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avp, i64 %.043.i406
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !18
  %i.avt = zext i8 %i.avs to i64
  %i.avu = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %i.avt
  %i.avv = load i16, ptr %i.avu, align 2, !tbaa !23
  %i.avw = lshr i16 %i.avv, 10
  %i.avx = zext nneg i16 %i.avw to i32
  %.2.i408 = or i32 %.01942.i407, %i.avx
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avp, i64 %.043.i406
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 1
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !18
  %i.awb = zext i8 %i.awa to i64
  %i.awc = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %i.awb
  %i.awd = load i16, ptr %i.awc, align 2, !tbaa !23
  %i.awe = lshr i16 %i.awd, 10
  %i.awf = zext nneg i16 %i.awe to i32
  %.2.i408.1 = or i32 %.2.i408, %i.awf
  %i.awg = getelementptr inbounds nuw i8, ptr %i.avp, i64 %.043.i406
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 2
  %i.awi = load i8, ptr %i.awh, align 1, !tbaa !18
  %i.awj = zext i8 %i.awi to i64
  %i.awk = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %i.awj
  %i.awl = load i16, ptr %i.awk, align 2, !tbaa !23
  %i.awm = lshr i16 %i.awl, 10
  %i.awn = zext nneg i16 %i.awm to i32
  %.2.i408.2 = or i32 %.2.i408.1, %i.awn
  %i.awo = getelementptr inbounds nuw i8, ptr %i.avp, i64 %.043.i406
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 3
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !18
  %i.awr = zext i8 %i.awq to i64
  %i.aws = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %i.awr
  %i.awt = load i16, ptr %i.aws, align 2, !tbaa !23
  %i.awu = lshr i16 %i.awt, 10
  %i.awv = zext nneg i16 %i.awu to i32
  %.2.i408.3 = or i32 %.2.i408.2, %i.awv          ; 3 uses
  %i.aww = add nuw nsw i64 %.043.i406, 4          ; 2 uses
  %niter1089.next.3 = add nuw nsw i64 %niter1089, 4 ; 2 uses
  %niter1089.ncmp.3 = icmp eq i64 %niter1089.next.3, %unroll_iter1088
  br i1 %niter1089.ncmp.3, label %check_class.exit421.loopexit890.unr-lcssa, label %RSTRING_PTR.exit28.i405, !llvm.loop !1

check_class.exit421.loopexit.unr-lcssa:           ; preds = %RSTRING_PTR.exit26.thread.us.i413
  %lcmp.mod1092.not = icmp eq i64 %xtraiter1090, 0
  br i1 %lcmp.mod1092.not, label %check_class.exit421, label %RSTRING_PTR.exit26.thread.us.i413.epil.preheader

RSTRING_PTR.exit26.thread.us.i413.epil.preheader: ; preds = %check_class.exit421.loopexit.unr-lcssa, %RSTRING_PTR.exit26.thread.us.i413.preheader
  %.043.us.i414.epil.init = phi i64 [ 0, %RSTRING_PTR.exit26.thread.us.i413.preheader ], [ %i.avo, %check_class.exit421.loopexit.unr-lcssa ]
  %.01942.us.i415.epil.init = phi i32 [ 0, %RSTRING_PTR.exit26.thread.us.i413.preheader ], [ %.234.us.i416.3, %check_class.exit421.loopexit.unr-lcssa ]
  %lcmp.mod1094 = icmp ne i64 %xtraiter1090, 0
  tail call void @llvm.assume(i1 %lcmp.mod1094)
  br label %RSTRING_PTR.exit26.thread.us.i413.epil

RSTRING_PTR.exit26.thread.us.i413.epil:           ; preds = %RSTRING_PTR.exit26.thread.us.i413.epil, %RSTRING_PTR.exit26.thread.us.i413.epil.preheader
  %.043.us.i414.epil = phi i64 [ %i.axe, %RSTRING_PTR.exit26.thread.us.i413.epil ], [ %.043.us.i414.epil.init, %RSTRING_PTR.exit26.thread.us.i413.epil.preheader ] ; 2 uses
  %.01942.us.i415.epil = phi i32 [ %.234.us.i416.epil, %RSTRING_PTR.exit26.thread.us.i413.epil ], [ %.01942.us.i415.epil.init, %RSTRING_PTR.exit26.thread.us.i413.epil.preheader ]
  %epil.iter1091 = phi i64 [ %epil.iter1091.next, %RSTRING_PTR.exit26.thread.us.i413.epil ], [ 0, %RSTRING_PTR.exit26.thread.us.i413.epil.preheader ]
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %.043.us.i414.epil
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !18
  %i.awz = zext i8 %i.awy to i64
  %i.axa = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %i.awz
  %i.axb = load i16, ptr %i.axa, align 2, !tbaa !23
  %i.axc = lshr i16 %i.axb, 10
  %i.axd = zext nneg i16 %i.axc to i32
  %.234.us.i416.epil = or i32 %.01942.us.i415.epil, %i.axd ; 2 uses
  %i.axe = add nuw nsw i64 %.043.us.i414.epil, 1
  %epil.iter1091.next = add i64 %epil.iter1091, 1 ; 2 uses
  %epil.iter1091.cmp.not = icmp eq i64 %epil.iter1091.next, %xtraiter1090
  br i1 %epil.iter1091.cmp.not, label %check_class.exit421, label %RSTRING_PTR.exit26.thread.us.i413.epil, !llvm.loop !53

check_class.exit421.loopexit890.unr-lcssa:        ; preds = %RSTRING_PTR.exit28.i405
  %lcmp.mod1085.not = icmp eq i64 %xtraiter1083, 0
  br i1 %lcmp.mod1085.not, label %check_class.exit421, label %RSTRING_PTR.exit28.i405.epil.preheader

RSTRING_PTR.exit28.i405.epil.preheader:           ; preds = %check_class.exit421.loopexit890.unr-lcssa, %.lr.ph.split.i404
  %.043.i406.epil.init = phi i64 [ 0, %.lr.ph.split.i404 ], [ %i.aww, %check_class.exit421.loopexit890.unr-lcssa ]
  %.01942.i407.epil.init = phi i32 [ 0, %.lr.ph.split.i404 ], [ %.2.i408.3, %check_class.exit421.loopexit890.unr-lcssa ]
  %lcmp.mod1087 = icmp ne i64 %xtraiter1083, 0
  tail call void @llvm.assume(i1 %lcmp.mod1087)
  br label %RSTRING_PTR.exit28.i405.epil

RSTRING_PTR.exit28.i405.epil:                     ; preds = %RSTRING_PTR.exit28.i405.epil, %RSTRING_PTR.exit28.i405.epil.preheader
  %.043.i406.epil = phi i64 [ %.043.i406.epil.init, %RSTRING_PTR.exit28.i405.epil.preheader ], [ %i.axm, %RSTRING_PTR.exit28.i405.epil ] ; 2 uses
  %.01942.i407.epil = phi i32 [ %.01942.i407.epil.init, %RSTRING_PTR.exit28.i405.epil.preheader ], [ %.2.i408.epil, %RSTRING_PTR.exit28.i405.epil ]
  %epil.iter1084 = phi i64 [ 0, %RSTRING_PTR.exit28.i405.epil.preheader ], [ %epil.iter1084.next, %RSTRING_PTR.exit28.i405.epil ]
  %i.axf = getelementptr inbounds nuw i8, ptr %i.avp, i64 %.043.i406.epil
  %i.axg = load i8, ptr %i.axf, align 1, !tbaa !18
  %i.axh = zext i8 %i.axg to i64
  %i.axi = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %i.axh
  %i.axj = load i16, ptr %i.axi, align 2, !tbaa !23
  %i.axk = lshr i16 %i.axj, 10
  %i.axl = zext nneg i16 %i.axk to i32
  %.2.i408.epil = or i32 %.01942.i407.epil, %i.axl ; 2 uses
  %i.axm = add nuw nsw i64 %.043.i406.epil, 1
  %epil.iter1084.next = add i64 %epil.iter1084, 1 ; 2 uses
  %epil.iter1084.cmp.not = icmp eq i64 %epil.iter1084.next, %xtraiter1083
  br i1 %epil.iter1084.cmp.not, label %check_class.exit421, label %RSTRING_PTR.exit28.i405.epil, !llvm.loop !54

check_class.exit421:                              ; preds = %check_class.exit421.loopexit890.unr-lcssa, %RSTRING_PTR.exit28.i405.epil, %check_class.exit421.loopexit.unr-lcssa, %RSTRING_PTR.exit26.thread.us.i413.epil
  %.019.lcssa.i401 = phi i32 [ %.234.us.i416.epil, %RSTRING_PTR.exit26.thread.us.i413.epil ], [ %.234.us.i416.3, %check_class.exit421.loopexit.unr-lcssa ], [ %.2.i408.3, %check_class.exit421.loopexit890.unr-lcssa ], [ %.2.i408.epil, %RSTRING_PTR.exit28.i405.epil ]
  %i.axn = and i32 %.019.lcssa.i401, 2
  %.not132 = icmp eq i32 %i.axn, 0
  br i1 %.not132, label %check_class.exit421.thread, label %bb.av

bb.av:                                            ; preds = %check_class.exit421
  %i.axo = load i64, ptr @parse_frag.pat, align 8, !tbaa !13
  %i.axp = icmp eq i64 %i.axo, 4
  br i1 %i.axp, label %bb.aw, label %parse_frag.exit

bb.aw:                                            ; preds = %bb.av
  %i.axq = tail call i64 @rb_reg_new(ptr noundef nonnull @parse_frag.pat_source, i64 noundef 19, i32 noundef 1) #14 ; 3 uses
  %i.axr = tail call i64 @rb_obj_freeze(i64 noundef %i.axq) #14 ; 0 uses
  tail call void @rb_gc_register_mark_object(i64 noundef %i.axq) #14
  store i64 %i.axq, ptr @parse_frag.pat, align 8, !tbaa !13
  br label %parse_frag.exit

parse_frag.exit:                                  ; preds = %bb.av, %bb.aw
  %i.axs = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.7, i64 noundef 1) #14
  %i.axt = load i64, ptr @parse_frag.pat, align 8, !tbaa !13
  %i.axu = tail call fastcc range(i32 0, 2) i32 @subx(i64 noundef %i.f, i64 noundef %i.axs, i64 noundef %i.axt, i64 noundef %i.k, ptr noundef nonnull @parse_frag_cb) ; 0 uses
  br label %check_class.exit421.thread

check_class.exit421.thread:                       ; preds = %parse_vms.exit, %bb.au, %parse_frag.exit, %check_class.exit421
  %.pr.i422 = load i64, ptr @date__parse.rbimpl_id.10, align 8, !tbaa !13 ; 2 uses
  %.not4.i423 = icmp eq i64 %.pr.i422, 0
  br i1 %.not4.i423, label %.lr.ph.i425, label %rbimpl_intern_const.exit427

.lr.ph.i425:                                      ; preds = %check_class.exit421.thread, %.lr.ph.i425
  %i.axv = tail call i64 @rb_intern2(ptr noundef nonnull @.str.11, i64 noundef 3) #14 ; 3 uses
  store i64 %i.axv, ptr @date__parse.rbimpl_id.10, align 8, !tbaa !13
  %.not.i426 = icmp eq i64 %i.axv, 0
  br i1 %.not.i426, label %.lr.ph.i425, label %rbimpl_intern_const.exit427, !llvm.loop !0

rbimpl_intern_const.exit427:                      ; preds = %.lr.ph.i425, %check_class.exit421.thread
  %.lcssa.i424 = phi i64 [ %.pr.i422, %check_class.exit421.thread ], [ %i.axv, %.lr.ph.i425 ]
  %i.axw = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i424) #14
  %i.axx = tail call i64 @rb_hash_delete(i64 noundef %i.k, i64 noundef %i.axw) #14
  %i.axy = and i64 %i.axx, -5
  %.not633 = icmp eq i64 %i.axy, 0
  br i1 %.not633, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %rbimpl_intern_const.exit427
  %.pr.i428 = load i64, ptr @date__parse.rbimpl_id.12, align 8, !tbaa !13 ; 2 uses
  %.not4.i429 = icmp eq i64 %.pr.i428, 0
  br i1 %.not4.i429, label %.lr.ph.i431, label %rbimpl_intern_const.exit433

.lr.ph.i431:                                      ; preds = %bb.ax, %.lr.ph.i431
  %i.axz = tail call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 6) #14 ; 3 uses
  store i64 %i.axz, ptr @date__parse.rbimpl_id.12, align 8, !tbaa !13
  %.not.i432 = icmp eq i64 %i.axz, 0
  br i1 %.not.i432, label %.lr.ph.i431, label %rbimpl_intern_const.exit433, !llvm.loop !0

rbimpl_intern_const.exit433:                      ; preds = %.lr.ph.i431, %bb.ax
  %.lcssa.i430 = phi i64 [ %.pr.i428, %bb.ax ], [ %i.axz, %.lr.ph.i431 ]
  %i.aya = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i430) #14
  %i.ayb = tail call i64 @rb_hash_aref(i64 noundef %i.k, i64 noundef %i.aya) #14 ; 2 uses
  %i.ayc = icmp eq i64 %i.ayb, 4
  br i1 %i.ayc, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %rbimpl_intern_const.exit433
  %.pr.i434 = load i64, ptr @date__parse.rbimpl_id.14, align 8, !tbaa !13 ; 2 uses
  %.not4.i435 = icmp eq i64 %.pr.i434, 0
  br i1 %.not4.i435, label %.lr.ph.i437, label %rbimpl_intern_const.exit439

.lr.ph.i437:                                      ; preds = %bb.ay, %.lr.ph.i437
  %i.ayd = tail call i64 @rb_intern2(ptr noundef nonnull @.str.15, i64 noundef 2) #14 ; 3 uses
  store i64 %i.ayd, ptr @date__parse.rbimpl_id.14, align 8, !tbaa !13
  %.not.i438 = icmp eq i64 %i.ayd, 0
  br i1 %.not.i438, label %.lr.ph.i437, label %rbimpl_intern_const.exit439, !llvm.loop !0

rbimpl_intern_const.exit439:                      ; preds = %.lr.ph.i437, %bb.ay
  %.lcssa.i436 = phi i64 [ %.pr.i434, %bb.ay ], [ %i.ayd, %.lr.ph.i437 ]
  %i.aye = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ayb, i64 noundef %.lcssa.i436, i32 noundef 0) #14
  %i.ayf = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.aye, i64 noundef 43, i32 noundef 1, i64 noundef 3) #14
  %.pr.i440 = load i64, ptr @date__parse.rbimpl_id.16, align 8, !tbaa !13 ; 2 uses
  %.not4.i441 = icmp eq i64 %.pr.i440, 0
  br i1 %.not4.i441, label %.lr.ph.i443, label %rbimpl_intern_const.exit445

.lr.ph.i443:                                      ; preds = %rbimpl_intern_const.exit439, %.lr.ph.i443
  %i.ayg = tail call i64 @rb_intern2(ptr noundef nonnull @.str.13, i64 noundef 6) #14 ; 3 uses
  store i64 %i.ayg, ptr @date__parse.rbimpl_id.16, align 8, !tbaa !13
  %.not.i444 = icmp eq i64 %i.ayg, 0
  br i1 %.not.i444, label %.lr.ph.i443, label %rbimpl_intern_const.exit445, !llvm.loop !0

rbimpl_intern_const.exit445:                      ; preds = %.lr.ph.i443, %rbimpl_intern_const.exit439
  %.lcssa.i442 = phi i64 [ %.pr.i440, %rbimpl_intern_const.exit439 ], [ %i.ayg, %.lr.ph.i443 ]
  %i.ayh = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i442) #14
  %i.ayi = tail call i64 @rb_hash_aset(i64 noundef %i.k, i64 noundef %i.ayh, i64 noundef %i.ayf) #14 ; 0 uses
  br label %bb.az

bb.az:                                            ; preds = %rbimpl_intern_const.exit445, %rbimpl_intern_const.exit433
  %.pr.i446 = load i64, ptr @date__parse.rbimpl_id.17, align 8, !tbaa !13 ; 2 uses
  %.not4.i447 = icmp eq i64 %.pr.i446, 0
  br i1 %.not4.i447, label %.lr.ph.i449, label %rbimpl_intern_const.exit451

.lr.ph.i449:                                      ; preds = %bb.az, %.lr.ph.i449
  %i.ayj = tail call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 4) #14 ; 3 uses
  store i64 %i.ayj, ptr @date__parse.rbimpl_id.17, align 8, !tbaa !13
  %.not.i450 = icmp eq i64 %i.ayj, 0
  br i1 %.not.i450, label %.lr.ph.i449, label %rbimpl_intern_const.exit451, !llvm.loop !0

rbimpl_intern_const.exit451:                      ; preds = %.lr.ph.i449, %bb.az
  %.lcssa.i448 = phi i64 [ %.pr.i446, %bb.az ], [ %i.ayj, %.lr.ph.i449 ]
  %i.ayk = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i448) #14
  %i.ayl = tail call i64 @rb_hash_aref(i64 noundef %i.k, i64 noundef %i.ayk) #14 ; 2 uses
  %i.aym = icmp eq i64 %i.ayl, 4
  br i1 %i.aym, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %rbimpl_intern_const.exit451
  %.pr.i452 = load i64, ptr @date__parse.rbimpl_id.19, align 8, !tbaa !13 ; 2 uses
  %.not4.i453 = icmp eq i64 %.pr.i452, 0
  br i1 %.not4.i453, label %.lr.ph.i455, label %rbimpl_intern_const.exit457

.lr.ph.i455:                                      ; preds = %bb.ba, %.lr.ph.i455
  %i.ayn = tail call i64 @rb_intern2(ptr noundef nonnull @.str.15, i64 noundef 2) #14 ; 3 uses
  store i64 %i.ayn, ptr @date__parse.rbimpl_id.19, align 8, !tbaa !13
  %.not.i456 = icmp eq i64 %i.ayn, 0
  br i1 %.not.i456, label %.lr.ph.i455, label %rbimpl_intern_const.exit457, !llvm.loop !0

rbimpl_intern_const.exit457:                      ; preds = %.lr.ph.i455, %bb.ba
  %.lcssa.i454 = phi i64 [ %.pr.i452, %bb.ba ], [ %i.ayn, %.lr.ph.i455 ]
  %i.ayo = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ayl, i64 noundef %.lcssa.i454, i32 noundef 0) #14
  %i.ayp = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ayo, i64 noundef 43, i32 noundef 1, i64 noundef 3) #14
  %.pr.i458 = load i64, ptr @date__parse.rbimpl_id.20, align 8, !tbaa !13 ; 2 uses
  %.not4.i459 = icmp eq i64 %.pr.i458, 0
  br i1 %.not4.i459, label %.lr.ph.i461, label %rbimpl_intern_const.exit463

.lr.ph.i461:                                      ; preds = %rbimpl_intern_const.exit457, %.lr.ph.i461
  %i.ayq = tail call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 4) #14 ; 3 uses
  store i64 %i.ayq, ptr @date__parse.rbimpl_id.20, align 8, !tbaa !13
  %.not.i462 = icmp eq i64 %i.ayq, 0
  br i1 %.not.i462, label %.lr.ph.i461, label %rbimpl_intern_const.exit463, !llvm.loop !0

rbimpl_intern_const.exit463:                      ; preds = %.lr.ph.i461, %rbimpl_intern_const.exit457
  %.lcssa.i460 = phi i64 [ %.pr.i458, %rbimpl_intern_const.exit457 ], [ %i.ayq, %.lr.ph.i461 ]
  %i.ayr = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i460) #14
  %i.ays = tail call i64 @rb_hash_aset(i64 noundef %i.k, i64 noundef %i.ayr, i64 noundef %i.ayp) #14 ; 0 uses
  br label %bb.bb

end_hunk_1
