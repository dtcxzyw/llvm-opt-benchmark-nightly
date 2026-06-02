inline.NumInlined: 734
inline.NumDeleted: 80
begin_hunk_0_@date_zone_to_diff:bb.a
  br i1 %.not23.i178, label %.preheader.i179, label %str_end_with_word.exit188.thread

.preheader.i179:                                  ; preds = %bb.k
  %i.bp = sub nsw i64 %i.ab, %i.ak                ; 2 uses
  %exitcond243.not276 = icmp eq i64 %i.bp, 8
  br i1 %exitcond243.not276, label %str_end_with_word.exit188, label %.lr.ph278

bb.l:                                             ; preds = %.lr.ph278
  %exitcond243.not = icmp eq i64 %indvars.iv.next.i183, %i.bp
  br i1 %exitcond243.not, label %str_end_with_word.exit188, label %.lr.ph278, !llvm.loop !22

.lr.ph278:                                        ; preds = %.preheader.i179, %bb.l
  %indvars.iv.i182277 = phi i64 [ %indvars.iv.next.i183, %bb.l ], [ 8, %.preheader.i179 ] ; 2 uses
  %indvars.iv.next.i183 = add nuw nsw i64 %indvars.iv.i182277, 1 ; 3 uses
  %i.bq = sub nuw nsw i64 -2, %indvars.iv.i182277
  %i.br = getelementptr i8, ptr %i.bg, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !20
  %i.bw = and i16 %i.bv, 8192
  %.not24.i187 = icmp eq i16 %i.bw, 0
  br i1 %.not24.i187, label %.str_end_with_word.exit188_crit_edge280, label %bb.l, !llvm.loop !22

.str_end_with_word.exit188_crit_edge280:          ; preds = %.lr.ph278
  br label %str_end_with_word.exit188, !llvm.loop !22

str_end_with_word.exit188:                        ; preds = %bb.l, %.str_end_with_word.exit188_crit_edge280, %.preheader.i179
  %.lcssa.in.i185 = phi i64 [ %i.al, %.preheader.i179 ], [ %indvars.iv.next.i183, %.str_end_with_word.exit188_crit_edge280 ], [ %i.al, %bb.l ] ; 2 uses
  %.lcssa.i186 = trunc i64 %.lcssa.in.i185 to i32
  %i.bx = icmp sgt i32 %.lcssa.i186, 0
  br i1 %i.bx, label %bb.m, label %str_end_with_word.exit188.thread

bb.m:                                             ; preds = %str_end_with_word.exit188
  %i.by = and i64 %.lcssa.in.i185, 2147483647
  %i.bz = sub nsw i64 %i.al, %i.by
  br label %str_end_with_word.exit188.thread

str_end_with_word.exit.thread:                    ; preds = %RSTRING_PTR.exit, %str_end_with_word.exit
  %.not.i190 = icmp sgt i64 %i.k, 3
  br i1 %.not.i190, label %str_end_with_word.exit.thread.thread, label %str_end_with_word.exit188.thread

str_end_with_word.exit.thread.thread:             ; preds = %bb.d, %bb.c, %str_end_with_word.exit.thread
  %i.ca = tail call ptr @__ctype_b_loc() #12
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !17 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.p, i64 %i.k    ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.cf = zext i8 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !20
  %i.ci = and i16 %i.ch, 8192
  %.not22.i192 = icmp eq i16 %i.ci, 0
  br i1 %.not22.i192, label %.lr.ph.i, label %bb.n

bb.n:                                             ; preds = %str_end_with_word.exit.thread.thread
  %i.cj = getelementptr i8, ptr %i.cc, i64 -3
  %i.ck = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef readonly %i.cj, ptr noundef nonnull @.str.3, i64 noundef 3) #13
  %.not23.i193 = icmp eq i32 %i.ck, 0
  br i1 %.not23.i193, label %.preheader.i194, label %.lr.ph.i

.preheader.i194:                                  ; preds = %bb.n
  %i.cl = add nsw i64 %i.k, -1                    ; 2 uses
  %exitcond244.not282 = icmp eq i64 %i.cl, 3
  br i1 %exitcond244.not282, label %str_end_with_word.exit203, label %.lr.ph284

bb.o:                                             ; preds = %.lr.ph284
  %exitcond244.not = icmp eq i64 %indvars.iv.next.i198, %i.cl
  br i1 %exitcond244.not, label %str_end_with_word.exit203, label %.lr.ph284, !llvm.loop !22

.lr.ph284:                                        ; preds = %.preheader.i194, %bb.o
  %indvars.iv.i197283 = phi i64 [ %indvars.iv.next.i198, %bb.o ], [ 3, %.preheader.i194 ] ; 2 uses
  %indvars.iv.next.i198 = add nuw nsw i64 %indvars.iv.i197283, 1 ; 3 uses
  %i.cm = sub nuw nsw i64 -2, %indvars.iv.i197283
  %i.cn = getelementptr i8, ptr %i.cc, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !16
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !20
  %i.cs = and i16 %i.cr, 8192
  %.not24.i202 = icmp eq i16 %i.cs, 0
  br i1 %.not24.i202, label %.str_end_with_word.exit203_crit_edge286, label %bb.o, !llvm.loop !22

.str_end_with_word.exit203_crit_edge286:          ; preds = %.lr.ph284
  br label %str_end_with_word.exit203, !llvm.loop !22

str_end_with_word.exit203:                        ; preds = %bb.o, %.str_end_with_word.exit203_crit_edge286, %.preheader.i194
  %.lcssa.in.i200 = phi i64 [ %i.k, %.preheader.i194 ], [ %indvars.iv.next.i198, %.str_end_with_word.exit203_crit_edge286 ], [ %i.k, %bb.o ] ; 2 uses
  %.lcssa.i201 = trunc i64 %.lcssa.in.i200 to i32
  %i.ct = icmp sgt i32 %.lcssa.i201, 0
  br i1 %i.ct, label %bb.p, label %str_end_with_word.exit188.thread

bb.p:                                             ; preds = %str_end_with_word.exit203
  %i.cu = and i64 %.lcssa.in.i200, 2147483647
  %i.cv = sub nsw i64 %i.k, %i.cu
  br label %str_end_with_word.exit188.thread

str_end_with_word.exit188.thread:                 ; preds = %bb.f, %str_end_with_word.exit.thread, %str_end_with_word.exit173.thread.thread, %bb.k, %bb.j, %bb.m, %str_end_with_word.exit188, %str_end_with_word.exit203, %bb.p
  %.1137 = phi i1 [ true, %str_end_with_word.exit203 ], [ false, %bb.p ], [ true, %bb.j ], [ false, %bb.m ], [ true, %str_end_with_word.exit188 ], [ true, %str_end_with_word.exit173.thread.thread ], [ true, %bb.k ], [ true, %bb.f ], [ true, %str_end_with_word.exit.thread ] ; 2 uses
  %.1114 = phi i64 [ %i.k, %str_end_with_word.exit203 ], [ %i.cv, %bb.p ], [ %i.bf, %bb.j ], [ %i.bz, %bb.m ], [ %i.k, %str_end_with_word.exit188 ], [ %i.k, %str_end_with_word.exit173.thread.thread ], [ %i.k, %bb.k ], [ %i.k, %bb.f ], [ %i.k, %str_end_with_word.exit.thread ] ; 3 uses
  %i.cw = icmp sgt i64 %.1114, 0
  br i1 %i.cw, label %.lr.ph.i, label %shrunk_size.exit

.lr.ph.i:                                         ; preds = %str_end_with_word.exit.thread.thread, %bb.n, %str_end_with_word.exit188.thread
  %.1114265 = phi i64 [ %.1114, %str_end_with_word.exit188.thread ], [ %i.k, %bb.n ], [ %i.k, %str_end_with_word.exit.thread.thread ] ; 6 uses
  %.1137263 = phi i1 [ %.1137, %str_end_with_word.exit188.thread ], [ true, %bb.n ], [ true, %str_end_with_word.exit.thread.thread ] ; 2 uses
  %i.cx = tail call ptr @__ctype_b_loc() #12
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !17 ; 3 uses
  %xtraiter = and i64 %.1114265, 1
  %i.cz = icmp eq i64 %.1114265, 1
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.1114265, -2
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.new
  %.017.i = phi i1 [ true, %.lr.ph.i.new ], [ %.not.i204.1, %bb.q ]
  %.01016.i = phi i64 [ 0, %.lr.ph.i.new ], [ %.2.i.1, %bb.q ] ; 2 uses
  %.01215.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.dr, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.q ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.p, i64 %.01215.i
  %i.db = load i8, ptr %i.da, align 1, !tbaa !16
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !20
  %i.df = and i16 %i.de, 8192                     ; 2 uses
  %.not.i204.not = icmp eq i16 %i.df, 0
  %not..0.i = xor i1 %.017.i, true
  %i.dg = zext i1 %not..0.i to i64
  %spec.select.i = add i64 %.01016.i, 1
  %i.dh = add i64 %spec.select.i, %i.dg
  %.2.i = select i1 %.not.i204.not, i64 %i.dh, i64 %.01016.i ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 %.01215.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !16
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !20
  %i.do = and i16 %i.dn, 8192
  %.not.i204.1 = icmp eq i16 %i.do, 0             ; 3 uses
  %.lobit = lshr exact i16 %i.df, 13
  %i.dp = zext nneg i16 %.lobit to i64
  %spec.select.i.1 = add i64 %.2.i, 1
  %i.dq = add i64 %spec.select.i.1, %i.dp
  %.2.i.1 = select i1 %.not.i204.1, i64 %i.dq, i64 %.2.i ; 3 uses
  %i.dr = add nuw nsw i64 %.01215.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %shrunk_size.exit.loopexit.unr-lcssa, label %bb.q, !llvm.loop !24

shrunk_size.exit.loopexit.unr-lcssa:              ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %shrunk_size.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %shrunk_size.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.017.i.epil.init = phi i1 [ true, %.lr.ph.i ], [ %.not.i204.1, %shrunk_size.exit.loopexit.unr-lcssa ]
  %.01016.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %.2.i.1, %shrunk_size.exit.loopexit.unr-lcssa ] ; 2 uses
  %.01215.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.dr, %shrunk_size.exit.loopexit.unr-lcssa ]
  %lcmp.mod293 = trunc i64 %.1114265 to i1
  tail call void @llvm.assume(i1 %lcmp.mod293)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.p, i64 %.01215.i.epil.init
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !16
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.cy, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !20
  %i.dx = and i16 %i.dw, 8192
  %.not.i204.epil = icmp eq i16 %i.dx, 0
  %not..0.i.epil = xor i1 %.017.i.epil.init, true
  %i.dy = zext i1 %not..0.i.epil to i64
  %spec.select.i.epil = add i64 %.01016.i.epil.init, 1
  %i.dz = add i64 %spec.select.i.epil, %i.dy
  %.2.i.epil = select i1 %.not.i204.epil, i64 %i.dz, i64 %.01016.i.epil.init
  br label %shrunk_size.exit

shrunk_size.exit:                                 ; preds = %.epil.preheader, %shrunk_size.exit.loopexit.unr-lcssa, %str_end_with_word.exit188.thread
  %i.ea = phi i1 [ false, %str_end_with_word.exit188.thread ], [ true, %shrunk_size.exit.loopexit.unr-lcssa ], [ true, %.epil.preheader ]
  %.1114264 = phi i64 [ %.1114, %str_end_with_word.exit188.thread ], [ %.1114265, %shrunk_size.exit.loopexit.unr-lcssa ], [ %.1114265, %.epil.preheader ] ; 8 uses
  %.1137262 = phi i1 [ %.1137, %str_end_with_word.exit188.thread ], [ %.1137263, %shrunk_size.exit.loopexit.unr-lcssa ], [ %.1137263, %.epil.preheader ]
  %.010.lcssa.i = phi i64 [ 0, %str_end_with_word.exit188.thread ], [ %.2.i.1, %shrunk_size.exit.loopexit.unr-lcssa ], [ %.2.i.epil, %.epil.preheader ] ; 3 uses
  %i.eb = icmp slt i64 %.010.lcssa.i, %.1114264
  %i.ec = select i1 %i.eb, i64 %.010.lcssa.i, i64 0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.ed = icmp slt i64 %i.ec, 1
  br i1 %i.ed, label %shrink_space.exit, label %bb.r

bb.r:                                             ; preds = %shrunk_size.exit
  %i.ee = icmp samesign ult i64 %i.ec, 18
  br i1 %i.ee, label %bb.s, label %shrink_space.exit

bb.s:                                             ; preds = %bb.r
  br i1 %i.ea, label %.lr.ph.i205, label %.thread225

.thread225:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  br label %bb.ak

.lr.ph.i205:                                      ; preds = %bb.s
  %i.ef = tail call ptr @__ctype_b_loc() #12
  %.pre = load ptr, ptr %i.ef, align 8, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %.lr.ph.i205
  %.018.i206 = phi i32 [ 0, %.lr.ph.i205 ], [ %.1.i, %bb.x ]
  %.01217.i = phi i64 [ 0, %.lr.ph.i205 ], [ %.2.i208, %bb.x ] ; 4 uses
  %.01416.i = phi i64 [ 0, %.lr.ph.i205 ], [ %i.eq, %bb.x ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.p, i64 %.01416.i
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !16  ; 2 uses
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !20
  %i.el = and i16 %i.ek, 8192
  %.not.i207 = icmp eq i16 %i.el, 0
  br i1 %.not.i207, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not15.i = icmp eq i32 %.018.i206, 0
  br i1 %.not15.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.em = add nsw i64 %.01217.i, 1
  %i.en = getelementptr inbounds i8, ptr %i.b, i64 %.01217.i
  store i8 32, ptr %i.en, align 1, !tbaa !16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.113.i = phi i64 [ %i.em, %bb.v ], [ %.01217.i, %bb.u ] ; 2 uses
  %i.eo = add nsw i64 %.113.i, 1
  %i.ep = getelementptr inbounds i8, ptr %i.b, i64 %.113.i
  store i8 %i.eh, ptr %i.ep, align 1, !tbaa !16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %.2.i208 = phi i64 [ %i.eo, %bb.w ], [ %.01217.i, %bb.t ] ; 2 uses
  %.1.i = phi i32 [ 0, %bb.w ], [ 1, %bb.t ]
  %i.eq = add nuw nsw i64 %.01416.i, 1            ; 2 uses
  %exitcond.not.i209 = icmp eq i64 %i.eq, %.1114264
  br i1 %exitcond.not.i209, label %shrink_space.exit, label %bb.t, !llvm.loop !25

shrink_space.exit:                                ; preds = %bb.x, %shrunk_size.exit, %bb.r
  %.0135 = phi ptr [ %i.p, %bb.r ], [ %i.p, %shrunk_size.exit ], [ %i.b, %bb.x ] ; 6 uses
  %.0134 = phi i64 [ %.010.lcssa.i, %bb.r ], [ %.1114264, %shrunk_size.exit ], [ %.2.i208, %bb.x ] ; 4 uses
  %i.er = add i64 %.0134, -1
  %or.cond = icmp ult i64 %i.er, 17
  br i1 %or.cond, label %bb.y, label %.critedge.i

bb.y:                                             ; preds = %shrink_space.exit
  %i.es = trunc nuw nsw i64 %.0134 to i32         ; 10 uses
  switch i32 %i.es, label %bb.z [
    i32 8, label %bb.aa
    i32 7, label %bb.aa
    i32 6, label %bb.aa
    i32 5, label %bb.aa
    i32 4, label %bb.aa
    i32 3, label %bb.ab
    i32 2, label %bb.ac
    i32 1, label %hash.exit.i
  ]

bb.z:                                             ; preds = %bb.y
  %i.et = getelementptr inbounds nuw i8, ptr %.0135, i64 8
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !16
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !20
  %i.ey = zext i16 %i.ex to i32
  %i.ez = add nuw nsw i32 %i.ey, %i.es
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.y, %bb.y, %bb.y, %bb.y
  %.0.i.i = phi i32 [ %i.ez, %bb.z ], [ %i.es, %bb.y ], [ %i.es, %bb.y ], [ %i.es, %bb.y ], [ %i.es, %bb.y ], [ %i.es, %bb.y ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.0135, i64 3
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !16
  %i.fc = zext i8 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !20
  %i.ff = zext i16 %i.fe to i32
  %i.fg = add nuw nsw i32 %.0.i.i, %i.ff
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.1.i.i = phi i32 [ %i.fg, %bb.aa ], [ %i.es, %bb.y ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.0135, i64 2
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !16
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.fj
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !20
  %i.fm = zext i16 %i.fl to i32
  %i.fn = add nuw nsw i32 %.1.i.i, %i.fm
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  %.2.i.i = phi i32 [ %i.fn, %bb.ab ], [ %i.es, %bb.y ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.0135, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !16
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !20
  %i.fu = zext i16 %i.ft to i32
  %i.fv = add nuw nsw i32 %.2.i.i, %i.fu
  br label %hash.exit.i

hash.exit.i:                                      ; preds = %bb.ac, %bb.y
  %.3.i.i = phi i32 [ %i.fv, %bb.ac ], [ %i.es, %bb.y ]
  %i.fw = load i8, ptr %.0135, align 1, !tbaa !16 ; 2 uses
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr @hash.asso_values, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 104
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !20
  %i.gb = zext i16 %i.ga to i32
  %i.gc = add nuw nsw i32 %.3.i.i, %i.gb          ; 2 uses
  %i.gd = icmp samesign ult i32 %i.gc, 620
  br i1 %i.gd, label %bb.ad, label %.critedge.i

bb.ad:                                            ; preds = %hash.exit.i
  %i.ge = zext nneg i32 %i.gc to i64
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr @zonetab.wordlist, i64 %i.ge ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !26 ; 2 uses
  %i.gh = icmp sgt i32 %i.gg, -1
  br i1 %i.gh, label %bb.ae, label %.critedge.i

bb.ae:                                            ; preds = %bb.ad
  %i.gi = zext nneg i32 %i.gg to i64
  %i.gj = getelementptr inbounds nuw i8, ptr @stringpool_contents, i64 %i.gi ; 3 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !16
  %i.gl = xor i8 %i.gk, %i.fw
  %i.gm = and i8 %i.gl, -33
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %bb.af, label %.critedge.i

bb.af:                                            ; preds = %bb.ae
  %i.go = call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull readonly %.0135, ptr noundef nonnull %i.gj, i64 noundef range(i64 1, 18) %.0134) #13
  %.not.i210 = icmp eq i32 %i.go, 0
  br i1 %.not.i210, label %bb.ag, label %.critedge.i

bb.ag:                                            ; preds = %bb.af
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gj, i64 %.0134
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !16
  %i.gr = icmp eq i8 %i.gq, 0
  br i1 %i.gr, label %.thread226, label %.critedge.i

.thread226:                                       ; preds = %bb.ag
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !28 ; 2 uses
  %i.gu = add nsw i32 %i.gt, 3600
  %spec.select = select i1 %.1137262, i32 %i.gt, i32 %i.gu
  %i.gv = sext i32 %spec.select to i64
  %i.gw = shl nsw i64 %i.gv, 1
  %i.gx = or disjoint i64 %i.gw, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.be

.critedge.i:                                      ; preds = %bb.ae, %bb.af, %bb.ag, %shrink_space.exit, %hash.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.gy = icmp sgt i64 %.1114264, 3
  br i1 %i.gy, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %.critedge.i
  %i.gz = call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef %i.p, ptr noundef nonnull @.str.4, i64 noundef 3) #13
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hb = call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef %i.p, ptr noundef nonnull @.str.5, i64 noundef 3) #13
  %i.hc = icmp eq i32 %i.hb, 0
  br i1 %i.hc, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hd = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.he = add nsw i64 %.1114264, -3
  br label %bb.ak

bb.ak:                                            ; preds = %.thread225, %bb.aj, %bb.ai, %.critedge.i
  %.0132 = phi ptr [ %i.hd, %bb.aj ], [ %i.p, %bb.ai ], [ %i.p, %.critedge.i ], [ %i.p, %.thread225 ] ; 3 uses
  %.2115 = phi i64 [ %i.he, %bb.aj ], [ %.1114264, %bb.ai ], [ %.1114264, %.critedge.i ], [ %.1114264, %.thread225 ] ; 4 uses
  %i.hf = load i8, ptr %.0132, align 1, !tbaa !16 ; 2 uses
  switch i8 %i.hf, label %bb.bd [
    i8 45, label %bb.al
    i8 43, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak
  %i.hg = icmp eq i8 %i.hf, 45                    ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0132, i64 1 ; 4 uses
  %i.hi = call i64 @ruby_strtoul(ptr noundef nonnull %i.hh, ptr noundef nonnull %i.c, i32 noundef 10) #14 ; 7 uses
  %i.hj = load ptr, ptr %i.c, align 8, !tbaa !29  ; 3 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !16
  switch i8 %i.hk, label %bb.ax [
    i8 58, label %bb.am
    i8 44, label %bb.aq
    i8 46, label %bb.aq
  ]

bb.am:                                            ; preds = %bb.al
  %or.cond4 = icmp ugt i64 %i.hi, 23
  br i1 %or.cond4, label %.thread230, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hj, i64 1 ; 2 uses
  store ptr %i.hl, ptr %i.c, align 8, !tbaa !29
  %i.hm = call i64 @ruby_strtoul(ptr noundef nonnull %i.hl, ptr noundef nonnull %i.c, i32 noundef 10) #14 ; 3 uses
  %or.cond6 = icmp ugt i64 %i.hm, 59
  br i1 %or.cond6, label %.thread230, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hn = load ptr, ptr %i.c, align 8, !tbaa !29  ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !16
  %i.hp = icmp eq i8 %i.ho, 58
end_hunk_0
