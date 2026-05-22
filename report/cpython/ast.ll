inline.NumInlined: 66
inline.NumDeleted: 10
begin_hunk_0_@validate_stmts:bb.a

validate_body.exit:                               ; preds = %bb.eq
  %i.rz = tail call fastcc i32 @validate_stmts(ptr noundef nonnull %i.rt), !inline_history !35
  %.not272.i = icmp eq i32 %i.rz, 0
  br i1 %.not272.i, label %validate_stmt.exit.thread125, label %bb.er

bb.er:                                            ; preds = %validate_body.exit
  %i.sa = getelementptr i8, ptr %i.g, i64 56
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !13
  %i.sc = tail call fastcc i32 @validate_type_params(ptr noundef %i.sb), !inline_history !29
  %.not273.i = icmp eq i32 %i.sc, 0
  br i1 %.not273.i, label %validate_stmt.exit.thread125, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.sd = getelementptr i8, ptr %i.g, i64 16
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !13
  %i.sf = tail call fastcc i32 @validate_arguments(ptr noundef %i.se), !inline_history !29
  %.not274.i = icmp eq i32 %i.sf, 0
  br i1 %.not274.i, label %validate_stmt.exit.thread125, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.sg = getelementptr i8, ptr %i.g, i64 32
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !13 ; 4 uses
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %.loopexit877, label %.lr.ph.i845

.lr.ph.i845:                                      ; preds = %bb.et
  %i.sj = getelementptr i8, ptr %i.sh, i64 16
  %i.sk = load i64, ptr %i.sh, align 8, !tbaa !14
  %i.sl = icmp sgt i64 %i.sk, 0
  br i1 %i.sl, label %.lr.ph46.i846, label %.loopexit877

bb.eu:                                            ; preds = %.critedge.us.i849
  %i.sm = add nuw nsw i64 %.01421.us45.i847, 1    ; 2 uses
  %i.sn = load i64, ptr %i.sh, align 8, !tbaa !14
  %i.so = icmp slt i64 %i.sm, %i.sn
  br i1 %i.so, label %.lr.ph46.i846, label %.loopexit877

.lr.ph46.i846:                                    ; preds = %.lr.ph.i845, %bb.eu
  %.01421.us45.i847 = phi i64 [ %i.sm, %bb.eu ], [ 0, %.lr.ph.i845 ] ; 2 uses
  %i.sp = getelementptr [8 x i8], ptr %i.sj, i64 %.01421.us45.i847
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !19 ; 2 uses
  %.not.us.i848 = icmp eq ptr %i.sq, null
  br i1 %.not.us.i848, label %.split.us.i851, label %.critedge.us.i849

.critedge.us.i849:                                ; preds = %.lr.ph46.i846
  %i.sr = tail call fastcc i32 @validate_expr(ptr noundef nonnull %i.sq, i32 noundef 1) #3, !inline_history !36
  %.not18.us.i850 = icmp eq i32 %i.sr, 0
  br i1 %.not18.us.i850, label %validate_stmt.exit.thread125, label %bb.eu

.split.us.i851:                                   ; preds = %.lr.ph46.i846
  %i.ss = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.ss, ptr noundef nonnull @.str.72) #4, !inline_history !36
  br label %validate_stmt.exit.thread125

.loopexit877:                                     ; preds = %bb.eu, %.lr.ph.i845, %bb.et
  %i.st = getelementptr i8, ptr %i.g, i64 40
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !13 ; 2 uses
  %.not276.i = icmp eq ptr %i.su, null
  br i1 %.not276.i, label %.sink.split, label %bb.ev

bb.ev:                                            ; preds = %.loopexit877
  %i.sv = tail call fastcc i32 @validate_expr(ptr noundef nonnull %i.su, i32 noundef 1), !inline_history !29
  br label %validate_stmt.exit

validate_stmt.exit.thread120:                     ; preds = %bb.o
  %i.sw = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.sw, ptr noundef nonnull @.str.35) #4, !inline_history !29
  tail call void @Py_LeaveRecursiveCall() #4, !inline_history !29
  br label %.thread136

validate_stmt.exit.thread125:                     ; preds = %validate_body.exit, %bb.er, %bb.es, %bb.eb, %bb.dy, %bb.dh, %bb.cg, %bb.bk, %bb.bl, %bb.bh, %bb.bi, %bb.bd, %bb.be, %bb.bf, %bb.az, %bb.ba, %bb.bb, %bb.aw, %bb.ax, %bb.aq, %bb.as, %bb.al, %validate_body.exit74, %bb.y, %validate_body.exit79, %bb.r, %bb.s, %.critedge.us.i849, %.critedge.us.i.i, %.critedge.us.i.i65, %.critedge.us.i831, %.lr.ph19.i, %.critedge.us.i, %.split.us.i851, %.split.us.i833, %.split.us.i, %validate_body.exit.thread, %.critedge.i17, %.critedge.i19, %.critedge.i22, %.critedge.i25, %.split.us.i.i67, %_validate_nonempty_seq.exit.thread.i68, %validate_body.exit79.thread, %validate_body.exit74.thread, %_validate_nonempty_seq.exit.thread.i, %.split.us.i.i
  tail call void @Py_LeaveRecursiveCall() #4, !inline_history !29
  br label %.thread136

validate_stmt.exit.thread861:                     ; preds = %.critedge.us.i841, %.split.us.i843
  tail call void @Py_LeaveRecursiveCall() #4, !inline_history !29
  br label %.thread136

validate_stmt.exit:                               ; preds = %bb.v, %bb.ae, %validate_assignlist.exit, %bb.am, %bb.at, %bb.ay, %bb.bc, %bb.bg, %bb.bj, %.critedge357.i, %.critedge361.i, %bb.bm, %bb.ci, %bb.eo, %bb.ed, %bb.ev, %bb.dj, %bb.ea
  %.0209.i.ph = phi i32 [ %i.qi, %bb.ed ], [ %i.dj, %bb.ae ], [ %i.hm, %bb.bm ], [ %i.ji, %.critedge361.i ], [ %i.ik, %.critedge357.i ], [ %i.hd, %bb.bj ], [ %i.nx, %bb.dj ], [ %i.gu, %bb.bg ], [ %i.rr, %bb.eo ], [ %i.gi, %bb.bc ], [ %i.ku, %bb.ci ], [ %i.bh, %bb.v ], [ %i.fw, %bb.ay ], [ %i.fl, %bb.at ], [ %i.ey, %bb.am ], [ %i.qc, %bb.ea ], [ %i.sv, %bb.ev ], [ %i.es, %validate_assignlist.exit ]
  tail call void @Py_LeaveRecursiveCall() #4, !inline_history !29
  %.0209.i.ph.fr = freeze i32 %.0209.i.ph
  %.not15 = icmp eq i32 %.0209.i.ph.fr, 0
  br i1 %.not15, label %.thread136, label %bb.ew

.critedge:                                        ; preds = %bb.e
  %i.sx = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.sx, ptr noundef nonnull @.str.1) #4
  br label %.thread136

.sink.split:                                      ; preds = %_validate_nonempty_seq.exit54, %.lr.ph343, %bb.ah, %bb.ac, %.loopexit866, %.lr.ph.i837, %bb.o, %bb.o, %bb.o, %bb.cj, %.critedge379.i, %.critedge395.i, %bb.ef, %bb.ej, %bb.el, %bb.ch, %bb.di, %bb.dz, %bb.ec, %.loopexit, %.loopexit877, %bb.ad, %.lr.ph.i.i61, %bb.en
  tail call void @Py_LeaveRecursiveCall() #4
  br label %bb.ew

bb.ew:                                            ; preds = %.sink.split, %validate_stmt.exit
  %i.sy = add nuw i64 %.012, 1
  br label %bb.b, !llvm.loop !69

.thread136:                                       ; preds = %validate_body.exit46, %bb.bx, %bb.n, %validate_body.exit36, %validate_stmt.exit, %bb.d, %bb.dv, %validate_body.exit31, %bb.de, %validate_body.exit41, %bb.ca, %bb.cc, %validate_body.exit51, %bb.bw, %bb.bu, %bb.br, %bb.bp, %validate_stmt.exit.thread861, %validate_body.exit31.thread, %bb.cw, %split545, %bb.dc, %validate_body.exit41.thread, %validate_body.exit51.thread, %_validate_nonempty_seq.exit54.thread, %.critedge385.i, %bb.ds, %validate_body.exit36.thread, %.critedge369.i, %bb.ct, %validate_body.exit46.thread, %bb.ck, %_validate_nonempty_seq.exit57.thread, %_validate_nonempty_seq.exit60.thread, %bb.av, %bb.ap, %bb.eh, %bb.m, %split, %bb.g, %validate_stmt.exit.thread125, %validate_stmt.exit.thread120, %.critedge
  %i.sz = phi i32 [ 0, %split545 ], [ 0, %.critedge ], [ 0, %bb.cw ], [ 0, %validate_stmt.exit.thread120 ], [ 0, %validate_stmt.exit.thread125 ], [ 0, %bb.g ], [ 0, %split ], [ 0, %bb.m ], [ 0, %bb.eh ], [ 0, %bb.ap ], [ 0, %bb.av ], [ 0, %bb.bw ], [ 0, %validate_body.exit41.thread ], [ 0, %bb.dv ], [ 0, %_validate_nonempty_seq.exit60.thread ], [ 0, %validate_body.exit31.thread ], [ 0, %_validate_nonempty_seq.exit57.thread ], [ 0, %bb.ck ], [ 0, %validate_body.exit46.thread ], [ 0, %bb.ct ], [ 0, %.critedge369.i ], [ 0, %bb.dc ], [ 0, %validate_body.exit36.thread ], [ 0, %bb.ds ], [ 0, %.critedge385.i ], [ 0, %bb.ca ], [ 0, %_validate_nonempty_seq.exit54.thread ], [ 0, %bb.de ], [ 0, %bb.br ], [ 0, %validate_body.exit51.thread ], [ 0, %validate_stmt.exit.thread861 ], [ 0, %bb.bp ], [ 0, %bb.bu ], [ 0, %validate_body.exit51 ], [ 0, %bb.cc ], [ 0, %validate_body.exit41 ], [ 0, %validate_body.exit31 ], [ 0, %bb.bx ], [ 0, %validate_stmt.exit ], [ 0, %validate_body.exit36 ], [ 1, %bb.d ], [ 0, %bb.n ], [ 0, %validate_body.exit46 ]
  ret i32 %i.sz
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @validate_expr(ptr noundef readonly %0, i32 noundef range(i32 1, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !70   ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71   ; 4 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef %i.b, i32 noundef %i.d) #4 ; 0 uses
  br label %bb.cf

bb.c:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.b, -1
  %.not = icmp eq i32 %i.d, %i.b                  ; 2 uses
  %or.cond = or i1 %i.h, %.not
  %i.i = getelementptr i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !72   ; 5 uses
  br i1 %or.cond, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert186 = getelementptr i8, ptr %0, i64 52
  %.pre187 = load i32, ptr %.phi.trans.insert186, align 4, !tbaa !73
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73   ; 2 uses
  %.not136 = icmp eq i32 %i.j, %i.m
  br i1 %.not136, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.n = phi i32 [ %.pre187, %._crit_edge ], [ %i.m, %bb.e ]
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.3, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.b, i32 noundef %i.d) #4 ; 0 uses
  br label %bb.cf

bb.g:                                             ; preds = %bb.e, %bb.d
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !73   ; 2 uses
  %i.s = icmp sgt i32 %i.j, %i.r
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.u = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.t, ptr noundef nonnull @.str.4, i32 noundef %i.b, i32 noundef %i.j, i32 noundef %i.r) #4 ; 0 uses
  br label %bb.cf

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.v = tail call i32 @Py_EnterRecursiveCall(ptr noundef nonnull @.str.5) #4
  %.not137 = icmp eq i32 %i.v, 0
  br i1 %.not137, label %bb.k, label %bb.cf

bb.k:                                             ; preds = %bb.j
  %i.w = load i32, ptr %0, align 8, !tbaa !42     ; 2 uses
  switch i32 %i.w, label %bb.n [
    i32 23, label %bb.o
    i32 24, label %bb.o
    i32 25, label %bb.l
    i32 26, label %bb.m
    i32 27, label %bb.l
    i32 28, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.x = getelementptr i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13
  %i.z = tail call fastcc i32 @validate_name(ptr noundef %i.y)
  %.not138 = icmp eq i32 %i.z, 0
  br i1 %.not138, label %bb.cf, label %bb.o

bb.n:                                             ; preds = %bb.k
  %.not139 = icmp eq i32 %1, 1
  br i1 %.not139, label %.thread, label %expr_context_name.exit

expr_context_name.exit:                           ; preds = %bb.n
  %i.aa = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.ab = icmp eq i32 %1, 3
  %.str.69..str.68 = select i1 %i.ab, ptr @.str.69, ptr @.str.68
  %i.ac = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str.59, ptr noundef nonnull %.str.69..str.68) #4 ; 0 uses
  br label %bb.cf

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.k, %bb.l
  %.sink = phi i64 [ 16, %bb.m ], [ 24, %bb.k ], [ 16, %bb.l ], [ 24, %bb.k ]
  %i.ad = getelementptr i8, ptr %0, i64 %.sink
  %.0 = load i32, ptr %i.ad, align 8, !tbaa !13   ; 2 uses
  %.not141 = icmp eq i32 %.0, %1
  br i1 %.not141, label %thread-pre-split, label %switch.lookup

switch.lookup:                                    ; preds = %bb.o
  %i.ae = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.af = zext nneg i32 %1 to i64
  %i.ag = getelementptr [8 x i8], ptr @switch.table.validate_expr.4, i64 %i.af
  %switch.gep = getelementptr i8, ptr %i.ag, i64 -8
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.ah = sext i32 %.0 to i64
  %i.ai = getelementptr [8 x i8], ptr @switch.table.validate_expr.4, i64 %i.ah
  %switch.gep213 = getelementptr i8, ptr %i.ai, i64 -8
  %switch.load214 = load ptr, ptr %switch.gep213, align 8
  %i.aj = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ae, ptr noundef nonnull @.str.60, ptr noundef nonnull %switch.load, ptr noundef nonnull %switch.load214) #4 ; 0 uses
  br label %bb.cf

thread-pre-split:                                 ; preds = %bb.o
  %.pr = load i32, ptr %0, align 8, !tbaa !42
  br label %.thread

.thread:                                          ; preds = %thread-pre-split, %bb.n
  %i.ak = phi i32 [ %.pr, %thread-pre-split ], [ %i.w, %bb.n ]
  switch i32 %i.ak, label %bb.ce [
    i32 1, label %bb.p
    i32 3, label %bb.s
    i32 4, label %bb.u
    i32 5, label %bb.v
    i32 6, label %bb.x
    i32 7, label %bb.aa
    i32 8, label %bb.ai
    i32 9, label %bb.aj
    i32 10, label %bb.al
    i32 12, label %bb.an
    i32 11, label %bb.ap
    i32 14, label %bb.at
    i32 15, label %bb.av
    i32 13, label %bb.aw
    i32 16, label %bb.ax
    i32 17, label %bb.bd
    i32 22, label %bb.bg
    i32 20, label %bb.bh
    i32 21, label %bb.bi
    i32 18, label %bb.bj
    i32 19, label %bb.bm
    i32 23, label %bb.bp
    i32 24, label %bb.bq
    i32 25, label %bb.bs
    i32 29, label %bb.bt
    i32 27, label %bb.bz
    i32 28, label %bb.ca
    i32 2, label %bb.cb
    i32 26, label %.thread183
  ]

bb.p:                                             ; preds = %.thread
  %i.al = getelementptr i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !13 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !14
  %i.ap = icmp slt i64 %i.ao, 2
  br i1 %i.ap, label %.critedge, label %bb.r

.critedge:                                        ; preds = %bb.p, %bb.q
  %i.aq = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.aq, ptr noundef nonnull @.str.61) #4
  br label %bb.cf

bb.r:                                             ; preds = %bb.q
  %i.ar = tail call fastcc i32 @validate_exprs(ptr noundef nonnull %i.am, i32 noundef 1, i32 noundef 0)
  br label %.thread183

bb.s:                                             ; preds = %.thread
  %i.as = getelementptr i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !13
  %i.au = tail call fastcc i32 @validate_expr(ptr noundef %i.at, i32 noundef 1)
  %.not168 = icmp eq i32 %i.au, 0
  br i1 %.not168, label %.thread183, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !13
  %i.ax = tail call fastcc i32 @validate_expr(ptr noundef %i.aw, i32 noundef 1)
  br label %.thread183

bb.u:                                             ; preds = %.thread
  %i.ay = getelementptr i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !13
  %i.ba = tail call fastcc i32 @validate_expr(ptr noundef %i.az, i32 noundef 1)
  br label %.thread183

bb.v:                                             ; preds = %.thread
  %i.bb = getelementptr i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13
  %i.bd = tail call fastcc i32 @validate_arguments(ptr noundef %i.bc)
  %.not167 = icmp eq i32 %i.bd, 0
  br i1 %.not167, label %.thread183, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr i8, ptr %0, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !13
  %i.bg = tail call fastcc i32 @validate_expr(ptr noundef %i.bf, i32 noundef 1)
  br label %.thread183

bb.x:                                             ; preds = %.thread
  %i.bh = getelementptr i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !13
  %i.bj = tail call fastcc i32 @validate_expr(ptr noundef %i.bi, i32 noundef 1)
  %.not165 = icmp eq i32 %i.bj, 0
  br i1 %.not165, label %.thread183, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = getelementptr i8, ptr %0, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !13
  %i.bm = tail call fastcc i32 @validate_expr(ptr noundef %i.bl, i32 noundef 1)
  %.not166 = icmp eq i32 %i.bm, 0
  br i1 %.not166, label %.thread183, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !13
  %i.bp = tail call fastcc i32 @validate_expr(ptr noundef %i.bo, i32 noundef 1)
  br label %.thread183

bb.aa:                                            ; preds = %.thread
  %i.bq = getelementptr i8, ptr %0, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !13 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !14
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.bu = phi i64 [ %i.bt, %bb.ab ], [ 0, %bb.aa ]
  %i.bv = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !13 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.bz = phi i64 [ %i.by, %bb.ad ], [ 0, %bb.ac ]
  %.not163 = icmp eq i64 %i.bu, %i.bz
  br i1 %.not163, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ca = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.ca, ptr noundef nonnull @.str.62) #4
  br label %bb.cf

bb.ag:                                            ; preds = %bb.ae
  %i.cb = tail call fastcc i32 @validate_exprs(ptr noundef %i.br, i32 noundef 1, i32 noundef 1)
  %.not164 = icmp eq i32 %i.cb, 0
  br i1 %.not164, label %.thread183, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !13
  %i.cd = tail call fastcc i32 @validate_exprs(ptr noundef %i.cc, i32 noundef 1, i32 noundef 0)
  br label %.thread183

bb.ai:                                            ; preds = %.thread
  %i.ce = getelementptr i8, ptr %0, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !13
  %i.cg = tail call fastcc i32 @validate_exprs(ptr noundef %i.cf, i32 noundef 1, i32 noundef 0)
  br label %.thread183

bb.aj:                                            ; preds = %.thread
  %i.ch = getelementptr i8, ptr %0, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !13
  %i.cj = tail call fastcc i32 @validate_comprehension(ptr noundef %i.ci)
  %.not162 = icmp eq i32 %i.cj, 0
  br i1 %.not162, label %.thread183, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ck = getelementptr i8, ptr %0, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !13
  %i.cm = tail call fastcc i32 @validate_expr(ptr noundef %i.cl, i32 noundef 1)
  br label %.thread183

bb.al:                                            ; preds = %.thread
  %i.cn = getelementptr i8, ptr %0, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !13
  %i.cp = tail call fastcc i32 @validate_comprehension(ptr noundef %i.co)
  %.not161 = icmp eq i32 %i.cp, 0
  br i1 %.not161, label %.thread183, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cq = getelementptr i8, ptr %0, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !13
  %i.cs = tail call fastcc i32 @validate_expr(ptr noundef %i.cr, i32 noundef 1)
  br label %.thread183

bb.an:                                            ; preds = %.thread
  %i.ct = getelementptr i8, ptr %0, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !13
  %i.cv = tail call fastcc i32 @validate_comprehension(ptr noundef %i.cu)
  %.not160 = icmp eq i32 %i.cv, 0
  br i1 %.not160, label %.thread183, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cw = getelementptr i8, ptr %0, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !13
  %i.cy = tail call fastcc i32 @validate_expr(ptr noundef %i.cx, i32 noundef 1)
  br label %.thread183

bb.ap:                                            ; preds = %.thread
  %i.cz = getelementptr i8, ptr %0, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !13
  %i.db = tail call fastcc i32 @validate_comprehension(ptr noundef %i.da)
  %.not158 = icmp eq i32 %i.db, 0
  br i1 %.not158, label %.thread183, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dc = getelementptr i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@validate_arguments:bb.a
  br i1 %i.bk, label %.lr.ph55, label %validate_exprs.exit.thread48, !llvm.loop !96

validate_exprs.exit.thread48.sink.split:          ; preds = %.lr.ph53, %bb.u, %bb.p
  %.str.72.sink = phi ptr [ @.str.42, %bb.u ], [ @.str.41, %bb.p ], [ @.str.72, %.lr.ph53 ]
  %i.bl = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.bl, ptr noundef nonnull %.str.72.sink) #4
  br label %validate_exprs.exit.thread48

validate_exprs.exit.thread48:                     ; preds = %.critedge.i, %bb.w, %.critedge.i45, %validate_exprs.exit.thread48.sink.split, %validate_exprs.exit, %validate_exprs.exit.split, %bb.i, %bb.f, %bb.e, %bb.a, %bb.b
  %.0 = phi i32 [ 1, %validate_exprs.exit.split ], [ 1, %validate_exprs.exit ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %validate_exprs.exit.thread48.sink.split ], [ 0, %bb.w ], [ 1, %.critedge.i45 ], [ 0, %.critedge.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @validate_keywords(ptr noundef readonly captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !14
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph19, label %.critedge

bb.b:                                             ; preds = %.lr.ph19
  %i.e = add nuw nsw i64 %.071118, 1              ; 2 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !14
  %i.g = icmp slt i64 %i.e, %i.f
  br i1 %i.g, label %.lr.ph19, label %.critedge

.lr.ph19:                                         ; preds = %.lr.ph.split, %bb.b
  %.071118 = phi i64 [ %i.e, %bb.b ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %i.a, i64 %.071118
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.l = tail call fastcc i32 @validate_expr(ptr noundef %i.k, i32 noundef 1)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph19, %bb.b, %.lr.ph.split, %bb.a
  %i.m = phi i32 [ 1, %.lr.ph.split ], [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph19 ]
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @validate_pattern(ptr noundef readonly captures(none) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97   ; 6 uses
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !99   ; 4 uses
  %i.e = icmp sgt i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.g = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.f, ptr noundef nonnull @.str.2, i32 noundef %i.b, i32 noundef %i.d) #4 ; 0 uses
  br label %bb.bc

bb.c:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %i.b, -1
  %.not = icmp eq i32 %i.d, %i.b                  ; 2 uses
  %or.cond = or i1 %i.h, %.not
  %i.i = getelementptr i8, ptr %0, i64 44
  %i.j = load i32, ptr %i.i, align 4, !tbaa !100  ; 5 uses
  br i1 %or.cond, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.phi.trans.insert162 = getelementptr i8, ptr %0, i64 52
  %.pre163 = load i32, ptr %.phi.trans.insert162, align 4, !tbaa !101
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !101  ; 2 uses
  %.not114 = icmp eq i32 %i.j, %i.m
  br i1 %.not114, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.n = phi i32 [ %.pre163, %._crit_edge ], [ %i.m, %bb.e ]
  %i.o = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.p = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.o, ptr noundef nonnull @.str.3, i32 noundef %i.j, i32 noundef %i.n, i32 noundef %i.b, i32 noundef %i.d) #4 ; 0 uses
  br label %bb.bc

bb.g:                                             ; preds = %bb.e, %bb.d
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101  ; 2 uses
  %i.s = icmp sgt i32 %i.j, %i.r
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.u = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.t, ptr noundef nonnull @.str.4, i32 noundef %i.b, i32 noundef %i.j, i32 noundef %i.r) #4 ; 0 uses
  br label %bb.bc

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.v = tail call i32 @Py_EnterRecursiveCall(ptr noundef nonnull @.str.5) #4
  %.not115 = icmp eq i32 %i.v, 0
  br i1 %.not115, label %bb.k, label %bb.bc

bb.k:                                             ; preds = %bb.j
  %i.w = load i32, ptr %0, align 8, !tbaa !102
  switch i32 %i.w, label %.thread150 [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.ac
    i32 6, label %bb.ap
    i32 7, label %bb.at
    i32 8, label %bb.az
  ]

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !13
  %i.z = tail call fastcc i32 @validate_pattern_match_value(ptr noundef %i.y)
  br label %.thread148

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, @_Py_NoneStruct
  br i1 %i.ac, label %.thread148, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val132 = load ptr, ptr %i.ad, align 8, !tbaa !74
  %i.ae = icmp eq ptr %.val132, @PyBool_Type
  br i1 %i.ae, label %.thread148, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.af, ptr noundef nonnull @.str.47) #4
  br label %.thread148

bb.p:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.ai = tail call fastcc i32 @validate_patterns(ptr noundef %i.ah, i32 noundef 1)
  br label %.thread148

bb.q:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !13 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.an = phi i64 [ %i.am, %bb.r ], [ 0, %bb.q ]
  %i.ao = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !13 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !14
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.as = phi i64 [ %i.ar, %bb.t ], [ 0, %bb.s ]
  %.not124 = icmp eq i64 %i.an, %i.as
  br i1 %.not124, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.at, ptr noundef nonnull @.str.48) #4
  br label %.thread148

bb.w:                                             ; preds = %bb.u
  %i.au = getelementptr i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !13 ; 2 uses
  %.not125 = icmp eq ptr %i.av, null
  br i1 %.not125, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = tail call fastcc i32 @validate_capture(ptr noundef %i.av)
  %.not126 = icmp eq i32 %i.aw, 0
  br i1 %.not126, label %.thread148, label %._crit_edge164

._crit_edge164:                                   ; preds = %bb.x
  %.pre165 = load ptr, ptr %i.aj, align 8, !tbaa !13
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge164, %bb.w
  %i.ax = phi ptr [ %.pre165, %._crit_edge164 ], [ %i.ak, %bb.w ] ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.critedge153, label %.split

.split:                                           ; preds = %bb.y
  %2 = getelementptr i8, ptr %i.ax, i64 16
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !14 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 0
  br i1 %i.ba, label %.lr.ph159, label %.critedge153

.lr.ph159:                                        ; preds = %.split, %.thread136
  %i.bb = phi i64 [ %i.bl, %.thread136 ], [ %i.az, %.split ] ; 2 uses
  %.091158 = phi i64 [ %i.bm, %.thread136 ], [ 0, %.split ] ; 2 uses
  %i.bc = getelementptr [8 x i8], ptr %2, i64 %.091158
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !19 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !42
  %i.bf = icmp eq i32 %i.be, 22
  br i1 %i.bf, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %.lr.ph159
  %i.bg = getelementptr i8, ptr %i.bd, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !13 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, @_Py_NoneStruct
  br i1 %i.bi, label %.thread136, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bj = getelementptr i8, ptr %i.bh, i64 8
  %.val = load ptr, ptr %i.bj, align 8, !tbaa !74
  %.not152 = icmp eq ptr %.val, @PyBool_Type
  br i1 %.not152, label %.thread136, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph159
  %i.bk = tail call fastcc i32 @validate_pattern_match_value(ptr noundef nonnull %i.bd)
  %.not128 = icmp eq i32 %i.bk, 0
  br i1 %.not128, label %.thread148, label %..thread136_crit_edge

..thread136_crit_edge:                            ; preds = %bb.ab
  %.pre166 = load i64, ptr %i.ax, align 8, !tbaa !14
  br label %.thread136

.thread136:                                       ; preds = %..thread136_crit_edge, %bb.aa, %bb.z
  %i.bl = phi i64 [ %.pre166, %..thread136_crit_edge ], [ %i.bb, %bb.aa ], [ %i.bb, %bb.z ] ; 2 uses
  %i.bm = add nuw nsw i64 %.091158, 1             ; 2 uses
  %i.bn = icmp slt i64 %i.bm, %i.bl
  br i1 %i.bn, label %.lr.ph159, label %.critedge153

.critedge153:                                     ; preds = %.thread136, %bb.y, %.split
  %i.bo = load ptr, ptr %i.ao, align 8, !tbaa !13
  %i.bp = tail call fastcc i32 @validate_patterns(ptr noundef %i.bo, i32 noundef 0)
  br label %.thread148

bb.ac:                                            ; preds = %bb.k
  %i.bq = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.br = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !13 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !14
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.bv = phi i64 [ %i.bu, %bb.ad ], [ 0, %bb.ac ]
  %i.bw = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !13 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !14
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.ca = phi i64 [ %i.bz, %bb.af ], [ 0, %bb.ae ]
  %.not119 = icmp eq i64 %i.bv, %i.ca
  br i1 %.not119, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cb = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.cb, ptr noundef nonnull @.str.49) #4
  br label %.thread148

bb.ai:                                            ; preds = %bb.ag
  %i.cc = load ptr, ptr %i.bq, align 8, !tbaa !13
  %i.cd = tail call fastcc i32 @validate_expr(ptr noundef %i.cc, i32 noundef 1)
  %.not120 = icmp eq i32 %i.cd, 0
  br i1 %.not120, label %.thread148, label %.preheader

.preheader:                                       ; preds = %bb.ai, %bb.aj
  %.085.in = phi ptr [ %i.ch, %bb.aj ], [ %i.bq, %bb.ai ]
  %.085 = load ptr, ptr %.085.in, align 8, !tbaa !13 ; 2 uses
  %i.ce = load i32, ptr %.085, align 8, !tbaa !42
  switch i32 %i.ce, label %bb.ak [
    i32 26, label %.critedge.preheader
    i32 23, label %bb.aj
  ]

.critedge.preheader:                              ; preds = %.preheader
  %i.cf = load ptr, ptr %i.br, align 8, !tbaa !13 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.critedge155, label %.lr.ph

bb.aj:                                            ; preds = %.preheader
  %i.ch = getelementptr i8, ptr %.085, i64 8
  br label %.preheader

bb.ak:                                            ; preds = %.preheader
  %i.ci = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.ci, ptr noundef nonnull @.str.50) #4
  br label %.thread148

.critedge:                                        ; preds = %bb.an
  %i.cj = add nuw nsw i64 %.084157, 1
  %i.ck = load ptr, ptr %i.br, align 8, !tbaa !13 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.critedge155, label %.lr.ph, !llvm.loop !103

.lr.ph:                                           ; preds = %.critedge.preheader, %.critedge
  %i.cm = phi ptr [ %i.ck, %.critedge ], [ %i.cf, %.critedge.preheader ] ; 2 uses
  %.084157 = phi i64 [ %i.cj, %.critedge ], [ 0, %.critedge.preheader ] ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !14
  %i.co = icmp slt i64 %.084157, %i.cn
  br i1 %i.co, label %bb.al, label %.critedge155

bb.al:                                            ; preds = %.lr.ph
  %i.cp = getelementptr i8, ptr %i.cm, i64 16
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %.084157
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !22 ; 3 uses
  %i.cs = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.cr, ptr noundef nonnull @.str.37) #4
  %.not9.i = icmp eq i32 %i.cs, 0
  br i1 %.not9.i, label %bb.am, label %.thread145

bb.am:                                            ; preds = %bb.al
  %i.ct = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.cr, ptr noundef nonnull @.str.38) #4
  %.not9.1.i = icmp eq i32 %i.ct, 0
  br i1 %.not9.1.i, label %bb.an, label %.thread145

bb.an:                                            ; preds = %bb.am
  %i.cu = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %i.cr, ptr noundef nonnull @.str.39) #4
  %.not9.2.i = icmp eq i32 %i.cu, 0
  br i1 %.not9.2.i, label %.critedge, label %.thread145

.thread145:                                       ; preds = %bb.an, %bb.am, %bb.al
  %.lcssa.i = phi ptr [ @.str.37, %bb.al ], [ @.str.38, %bb.am ], [ @.str.39, %bb.an ]
  %i.cv = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.cw = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.cv, ptr noundef nonnull @.str.40, ptr noundef nonnull %.lcssa.i) #4 ; 0 uses
  br label %.thread148

.critedge155:                                     ; preds = %.lr.ph, %.critedge, %.critedge.preheader
  %i.cx = getelementptr i8, ptr %0, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !13
  %i.cz = tail call fastcc i32 @validate_patterns(ptr noundef %i.cy, i32 noundef 0)
  %.not123 = icmp eq i32 %i.cz, 0
  br i1 %.not123, label %.thread148, label %bb.ao

bb.ao:                                            ; preds = %.critedge155
  %i.da = load ptr, ptr %i.bw, align 8, !tbaa !13
  %i.db = tail call fastcc i32 @validate_patterns(ptr noundef %i.da, i32 noundef 0)
  br label %.thread148

bb.ap:                                            ; preds = %bb.k
  %.not118 = icmp eq i32 %1, 0
  br i1 %.not118, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dc = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.dc, ptr noundef nonnull @.str.51) #4
  br label %.thread148

bb.ar:                                            ; preds = %bb.ap
  %i.dd = getelementptr i8, ptr %0, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !13 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %.thread148, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dg = tail call fastcc i32 @validate_capture(ptr noundef %i.de)
  br label %.thread148

bb.at:                                            ; preds = %bb.k
  %i.dh = getelementptr i8, ptr %0, i64 8
  %i.di = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !13 ; 2 uses
  %.not116 = icmp eq ptr %i.dj, null
  br i1 %.not116, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dk = tail call fastcc i32 @validate_capture(ptr noundef %i.dj)
  %.not117 = icmp eq i32 %i.dk, 0
  br i1 %.not117, label %.thread148, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.dl = load ptr, ptr %i.dh, align 8, !tbaa !13 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.thread148, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dn = load ptr, ptr %i.di, align 8, !tbaa !13
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dp = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.dp, ptr noundef nonnull @.str.52) #4
  br label %.thread148

bb.ay:                                            ; preds = %bb.aw
  %i.dq = tail call fastcc i32 @validate_pattern(ptr noundef nonnull %i.dl, i32 noundef 0)
  br label %.thread148

bb.az:                                            ; preds = %bb.k
  %i.dr = getelementptr i8, ptr %0, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !13 ; 3 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %.critedge130, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !14
  %i.dv = icmp slt i64 %i.du, 2
  br i1 %i.dv, label %.critedge130, label %bb.bb

.critedge130:                                     ; preds = %bb.az, %bb.ba
  %i.dw = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.dw, ptr noundef nonnull @.str.53) #4
  br label %.thread148

bb.bb:                                            ; preds = %bb.ba
  %i.dx = tail call fastcc i32 @validate_patterns(ptr noundef nonnull %i.ds, i32 noundef 0)
  br label %.thread148

.thread150:                                       ; preds = %bb.k
  %i.dy = load ptr, ptr @PyExc_SystemError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.dy, ptr noundef nonnull @.str.54) #4
  br label %.thread148

.thread148:                                       ; preds = %bb.ab, %bb.p, %.critedge153, %bb.ao, %bb.bb, %bb.m, %.thread145, %bb.av, %bb.ar, %.critedge130, %bb.as, %bb.ay, %bb.ax, %bb.au, %bb.aq, %.critedge155, %bb.x, %bb.ai, %bb.ak, %bb.ah, %bb.v, %bb.o, %bb.n, %bb.l, %.thread150
  %.8 = phi i32 [ 0, %.thread150 ], [ %i.bp, %.critedge153 ], [ 0, %.thread145 ], [ %i.z, %bb.l ], [ 1, %bb.av ], [ 1, %bb.ar ], [ 0, %.critedge130 ], [ %i.dg, %bb.as ], [ %i.dq, %bb.ay ], [ 0, %bb.ax ], [ 0, %bb.au ], [ 0, %bb.aq ], [ 0, %.critedge155 ], [ 0, %bb.x ], [ 0, %bb.ai ], [ 1, %bb.m ], [ 0, %bb.ak ], [ 0, %bb.ah ], [ 1, %bb.n ], [ 0, %bb.v ], [ 0, %bb.o ], [ %i.ai, %bb.p ], [ %i.dx, %bb.bb ], [ %i.db, %bb.ao ], [ 0, %bb.ab ]
  tail call void @Py_LeaveRecursiveCall() #4
  br label %bb.bc

bb.bc:                                            ; preds = %.thread148, %bb.j, %bb.i, %bb.f, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.i ], [ %.8, %.thread148 ], [ 0, %bb.j ]
  ret i32 %.1
}

declare void @Py_LeaveRecursiveCall() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @validate_name(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %0, ptr noundef nonnull @.str.37) #4
  %.not9 = icmp eq i32 %i.a, 0
  br i1 %.not9, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %0, ptr noundef nonnull @.str.38) #4
  %.not9.1 = icmp eq i32 %i.b, 0
  br i1 %.not9.1, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef %0, ptr noundef nonnull @.str.39) #4
  %.not9.2 = icmp eq i32 %i.c, 0
  br i1 %.not9.2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.lcssa = phi ptr [ @.str.37, %bb.a ], [ @.str.38, %bb.b ], [ @.str.39, %bb.c ]
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.e = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.d, ptr noundef nonnull @.str.40, ptr noundef nonnull %.lcssa) #4 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d
  %i.f = phi i32 [ 0, %bb.d ], [ 1, %bb.c ]
  ret i32 %i.f
}

declare i32 @_PyUnicode_EqualToASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @validate_args(ptr noundef readonly captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i64, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph79, label %.critedge

.lr.ph79:                                         ; preds = %.lr.ph, %bb.i
  %i.e = phi i64 [ %i.af, %bb.i ], [ %i.c, %.lr.ph ]
  %.0335978 = phi i64 [ %i.ag, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %i.b, i64 %.0335978
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104  ; 7 uses
  %i.h = getelementptr i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !105  ; 6 uses
  %i.j = getelementptr i8, ptr %i.g, i64 32
  %i.k = load i32, ptr %i.j, align 8, !tbaa !106  ; 4 uses
  %i.l = icmp sgt i32 %i.i, %i.k
  br i1 %i.l, label %.split, label %bb.b

.split:                                           ; preds = %.lr.ph79
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.n = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.m, ptr noundef nonnull @.str.2, i32 noundef %i.i, i32 noundef %i.k) #4 ; 0 uses
  br label %.critedge

bb.b:                                             ; preds = %.lr.ph79
  %i.o = icmp sgt i32 %i.i, -1
  %.not = icmp eq i32 %i.k, %i.i                  ; 2 uses
  %or.cond = or i1 %i.o, %.not
  %i.p = getelementptr i8, ptr %i.g, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !107  ; 5 uses
  br i1 %or.cond, label %bb.c, label %..split67_crit_edge

..split67_crit_edge:                              ; preds = %bb.b
  %.phi.trans.insert95 = getelementptr i8, ptr %i.g, i64 36
  %.pre96 = load i32, ptr %.phi.trans.insert95, align 4, !tbaa !108
  br label %.split67

bb.c:                                             ; preds = %bb.b
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.g, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !108  ; 2 uses
  %.not44 = icmp eq i32 %i.q, %i.t
  br i1 %.not44, label %bb.e, label %.split67

.split67:                                         ; preds = %bb.d, %..split67_crit_edge
  %i.u = phi i32 [ %.pre96, %..split67_crit_edge ], [ %i.t, %bb.d ]
  %i.v = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.w = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str.3, i32 noundef %i.q, i32 noundef %i.u, i32 noundef %i.i, i32 noundef %i.k) #4 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.g, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !108  ; 2 uses
  %i.z = icmp sgt i32 %i.q, %i.y
  br i1 %i.z, label %.split72, label %bb.g

.split72:                                         ; preds = %bb.f
  %i.aa = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.ab = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str.4, i32 noundef %i.i, i32 noundef %i.q, i32 noundef %i.y) #4 ; 0 uses
  br label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = getelementptr i8, ptr %i.g, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !90 ; 2 uses
  %.not45 = icmp eq ptr %i.ad, null
  br i1 %.not45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call fastcc i32 @validate_expr(ptr noundef nonnull %i.ad, i32 noundef 1)
  %.not46 = icmp eq i32 %i.ae, 0
  br i1 %.not46, label %.critedge, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre97 = load i64, ptr %0, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.af = phi i64 [ %.pre97, %._crit_edge ], [ %i.e, %bb.g ] ; 2 uses
  %i.ag = add nuw nsw i64 %.0335978, 1            ; 2 uses
  %i.ah = icmp slt i64 %i.ag, %i.af
  br i1 %i.ah, label %.lr.ph79, label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.a, %.lr.ph, %.split, %.split67, %.split72
  %i.ai = phi i32 [ 0, %.split67 ], [ 0, %.split ], [ 0, %.split72 ], [ 1, %bb.a ], [ 1, %.lr.ph ], [ 0, %bb.h ], [ 1, %bb.i ]
  ret i32 %i.ai
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @validate_pattern_match_value(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @validate_expr(ptr noundef %0, i32 noundef 1)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %ensure_literal_negative.exit.thread29, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !42
  switch i32 %i.b, label %ensure_literal_negative.exit.thread29.sink.split [
    i32 22, label %bb.c
    i32 23, label %ensure_literal_negative.exit.thread29
    i32 4, label %bb.e
    i32 3, label %bb.h
    i32 20, label %ensure_literal_negative.exit.thread29
    i32 21, label %ensure_literal_negative.exit.thread29
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @validate_expr(ptr noundef nonnull %0, i32 noundef 1)
  %.not13 = icmp eq i32 %i.c, 0
  br i1 %.not13, label %ensure_literal_negative.exit.thread29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %.val22 = load ptr, ptr %i.f, align 8, !tbaa !74 ; 5 uses
  %.not35 = icmp eq ptr %.val22, @PyLong_Type
  %.not36 = icmp eq ptr %.val22, @PyFloat_Type
  %or.cond = or i1 %.not35, %.not36
  %.not37 = icmp eq ptr %.val22, @PyBytes_Type
  %or.cond40 = or i1 %.not37, %or.cond
  %.not38 = icmp eq ptr %.val22, @PyComplex_Type
  %or.cond41 = or i1 %.not38, %or.cond40
  %.not39 = icmp eq ptr %.val22, @PyUnicode_Type
  %or.cond42 = or i1 %.not39, %or.cond41
  br i1 %or.cond42, label %ensure_literal_negative.exit.thread29, label %ensure_literal_negative.exit.thread29.sink.split

bb.e:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !13
  %.not.i = icmp eq i32 %i.h, 4
  br i1 %.not.i, label %bb.f, label %ensure_literal_negative.exit.thread29.sink.split

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !42
  %.not6.i = icmp eq i32 %i.k, 22
  br i1 %.not6.i, label %bb.g, label %ensure_literal_negative.exit.thread29.sink.split

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.j, i64 8
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.m = getelementptr i8, ptr %.val.i, i64 8
  %.val9.i.i = load ptr, ptr %i.m, align 8, !tbaa !74 ; 3 uses
  %.not.i.i = icmp eq ptr %.val9.i.i, @PyFloat_Type
  br i1 %.not.i.i, label %ensure_literal_negative.exit.thread29, label %ensure_literal_negative.exit

ensure_literal_negative.exit:                     ; preds = %bb.g
  %.not1.i.i.not = icmp ne ptr %.val9.i.i, @PyLong_Type
  %i.n = icmp ne ptr %.val9.i.i, @PyComplex_Type
  %spec.select.i.not = and i1 %.not1.i.i.not, %i.n
  br i1 %spec.select.i.not, label %ensure_literal_negative.exit.thread29.sink.split, label %ensure_literal_negative.exit.thread29

bb.h:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !13   ; 4 uses
  %i.q = getelementptr i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13   ; 2 uses
  %i.s = getelementptr i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !13
  %.off.i = add i32 %i.t, -1
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %bb.i, label %ensure_literal_negative.exit.thread29.sink.split

bb.i:                                             ; preds = %bb.h
  %i.u = load i32, ptr %i.p, align 8, !tbaa !42
  switch i32 %i.u, label %ensure_literal_negative.exit.thread29.sink.split [
    i32 22, label %bb.j
    i32 4, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %i.p, i64 8
  %.val14.i = load ptr, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr i8, ptr %.val14.i, i64 8
  %.val9.i.i25 = load ptr, ptr %i.w, align 8, !tbaa !74 ; 2 uses
  %.not.i.i26 = icmp eq ptr %.val9.i.i25, @PyFloat_Type
  %.not1.i.not.not.i = icmp eq ptr %.val9.i.i25, @PyLong_Type
  %or.cond.i = or i1 %.not.i.i26, %.not1.i.not.not.i
  br i1 %or.cond.i, label %ensure_literal_number.exit.thread.i, label %ensure_literal_negative.exit.thread29.sink.split

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %i.p, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !13
  %.not.i15.i = icmp eq i32 %i.y, 4
  br i1 %.not.i15.i, label %bb.l, label %ensure_literal_negative.exit.thread29.sink.split

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %i.p, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !42
  %.not6.i.i = icmp eq i32 %i.ab, 22
  br i1 %.not6.i.i, label %bb.m, label %ensure_literal_negative.exit.thread29.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val.i.i = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.ad = getelementptr i8, ptr %.val.i.i, i64 8
  %.val9.i.i.i = load ptr, ptr %i.ad, align 8, !tbaa !74 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val9.i.i.i, @PyFloat_Type
  %.not1.i.i.not.not.i = icmp eq ptr %.val9.i.i.i, @PyLong_Type
  %or.cond25.i = or i1 %.not.i.i.i, %.not1.i.i.not.not.i
  br i1 %or.cond25.i, label %ensure_literal_number.exit.thread.i, label %ensure_literal_negative.exit.thread29.sink.split

ensure_literal_number.exit.thread.i:              ; preds = %bb.m, %bb.j
  %i.ae = load i32, ptr %i.r, align 8, !tbaa !42
  %cond.i = icmp eq i32 %i.ae, 22
  br i1 %cond.i, label %ensure_literal_complex.exit, label %ensure_literal_negative.exit.thread29.sink.split

ensure_literal_complex.exit:                      ; preds = %ensure_literal_number.exit.thread.i
  %i.af = getelementptr i8, ptr %i.r, i64 8
  %.val.i23 = load ptr, ptr %i.af, align 8, !tbaa !13
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.val.i23, i64 8
  %.val.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !74
  %.not.i24.not = icmp eq ptr %.val.pre.i.i, @PyComplex_Type
  br i1 %.not.i24.not, label %ensure_literal_negative.exit.thread29, label %ensure_literal_negative.exit.thread29.sink.split

ensure_literal_negative.exit.thread29.sink.split: ; preds = %ensure_literal_negative.exit, %ensure_literal_complex.exit, %bb.b, %bb.e, %bb.f, %bb.j, %bb.m, %ensure_literal_number.exit.thread.i, %bb.i, %bb.h, %bb.k, %bb.l, %bb.d
  %.str.56.sink = phi ptr [ @.str.55, %bb.d ], [ @.str.56, %bb.l ], [ @.str.56, %bb.k ], [ @.str.56, %bb.h ], [ @.str.56, %bb.i ], [ @.str.56, %ensure_literal_number.exit.thread.i ], [ @.str.56, %bb.m ], [ @.str.56, %bb.j ], [ @.str.56, %bb.f ], [ @.str.56, %bb.e ], [ @.str.56, %bb.b ], [ @.str.56, %ensure_literal_complex.exit ], [ @.str.56, %ensure_literal_negative.exit ]
  %i.ag = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull %.str.56.sink) #4
  br label %ensure_literal_negative.exit.thread29

ensure_literal_negative.exit.thread29:            ; preds = %ensure_literal_negative.exit.thread29.sink.split, %bb.g, %ensure_literal_complex.exit, %ensure_literal_negative.exit, %bb.b, %bb.b, %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ], [ 1, %bb.d ], [ 1, %bb.b ], [ 1, %ensure_literal_negative.exit ], [ 1, %ensure_literal_complex.exit ], [ 1, %bb.g ], [ 0, %ensure_literal_negative.exit.thread29.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @validate_patterns(ptr noundef readonly captures(address_is_null) %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !14
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph23, label %.critedge

bb.b:                                             ; preds = %.lr.ph23
  %i.e = add nuw nsw i64 %.0121522, 1             ; 2 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !14
  %i.g = icmp slt i64 %i.e, %i.f
  br i1 %i.g, label %.lr.ph23, label %.critedge

.lr.ph23:                                         ; preds = %.lr.ph.split, %bb.b
  %.0121522 = phi i64 [ %i.e, %bb.b ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.h = getelementptr [8 x i8], ptr %i.a, i64 %.0121522
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.j = tail call fastcc i32 @validate_pattern(ptr noundef %i.i, i32 noundef %1)
  %.not.not = icmp eq i32 %i.j, 0
  br i1 %.not.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %.lr.ph23, %bb.b, %.lr.ph.split, %bb.a
  %i.k = phi i32 [ 1, %.lr.ph.split ], [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph23 ]
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @validate_capture(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %0, ptr noundef nonnull @.str.57) #4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.c = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.b, ptr noundef nonnull @.str.58) #4 ; 0 uses
  br label %validate_name.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %0, ptr noundef nonnull @.str.37) #4
  %.not9.i = icmp eq i32 %i.d, 0
  br i1 %.not9.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %0, ptr noundef nonnull @.str.38) #4
  %.not9.1.i = icmp eq i32 %i.e, 0
  br i1 %.not9.1.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @_PyUnicode_EqualToASCIIString(ptr noundef nonnull %0, ptr noundef nonnull @.str.39) #4
  %.not9.2.i = icmp eq i32 %i.f, 0
  br i1 %.not9.2.i, label %validate_name.exit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.lcssa.i = phi ptr [ @.str.37, %bb.c ], [ @.str.38, %bb.d ], [ @.str.39, %bb.e ]
  %i.g = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.40, ptr noundef nonnull %.lcssa.i) #4 ; 0 uses
  br label %validate_name.exit

validate_name.exit:                               ; preds = %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.f ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @validate_comprehension(ptr noundef readonly captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.thread.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.d = icmp sgt i64 %i.b, 0
  br i1 %i.d, label %.lr.ph34, label %.thread

.lr.ph34:                                         ; preds = %.preheader
  %i.e = getelementptr i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph34, %.critedge22
  %.01533 = phi i64 [ 0, %.lr.ph34 ], [ %i.y, %.critedge22 ] ; 2 uses
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %.01533
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !110  ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !112
  %i.i = tail call fastcc i32 @validate_expr(ptr noundef %i.h, i32 noundef 2)
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114
  %i.l = tail call fastcc i32 @validate_expr(ptr noundef %i.k, i32 noundef 1)
  %.not19 = icmp eq i32 %i.l, 0
  br i1 %.not19, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !115  ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge22, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %i.q = load i64, ptr %i.n, align 8, !tbaa !14
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph32, label %.critedge22

bb.f:                                             ; preds = %.critedge.i
  %i.s = add nuw nsw i64 %.014.i2931, 1           ; 2 uses
  %i.t = load i64, ptr %i.n, align 8, !tbaa !14
  %i.u = icmp slt i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph32, label %.critedge22

.lr.ph32:                                         ; preds = %.lr.ph, %bb.f
  %.014.i2931 = phi i64 [ %i.s, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.p, i64 %.014.i2931
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %.thread.sink.split, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph32
  %i.x = tail call fastcc i32 @validate_expr(ptr noundef nonnull %i.w, i32 noundef 1), !inline_history !21
  %.not18.i = icmp eq i32 %i.x, 0
  br i1 %.not18.i, label %.thread, label %bb.f

.critedge22:                                      ; preds = %bb.f, %.lr.ph, %bb.e
  %i.y = add nuw nsw i64 %.01533, 1               ; 2 uses
  %i.z = load i64, ptr %0, align 8, !tbaa !14
  %i.aa = icmp slt i64 %i.y, %i.z
  br i1 %i.aa, label %bb.c, label %.thread, !llvm.loop !116

.thread.sink.split:                               ; preds = %.lr.ph32, %bb.b, %bb.a
  %.str.72.sink = phi ptr [ @.str.70, %bb.b ], [ @.str.70, %bb.a ], [ @.str.72, %.lr.ph32 ]
  %i.ab = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.ab, ptr noundef nonnull %.str.72.sink) #4
  br label %.thread

.thread:                                          ; preds = %.critedge22, %bb.c, %bb.d, %.critedge.i, %.thread.sink.split, %.preheader
  %.3 = phi i32 [ 1, %.preheader ], [ 0, %.thread.sink.split ], [ 0, %.critedge.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %.critedge22 ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @validate_constant(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, @_Py_NoneStruct
  %i.b = icmp eq ptr %0, @_Py_EllipsisObject
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %Py_DECREF.exit44.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val56 = load ptr, ptr %i.c, align 8, !tbaa !74 ; 8 uses
  %.not = icmp eq ptr %.val56, @PyLong_Type
  %.not60 = icmp eq ptr %.val56, @PyFloat_Type
  %or.cond67 = or i1 %.not, %.not60
  %.not61 = icmp eq ptr %.val56, @PyComplex_Type
  %or.cond68 = or i1 %.not61, %or.cond67
  %.not62 = icmp eq ptr %.val56, @PyBool_Type
  %or.cond69 = or i1 %.not62, %or.cond68
  %.not63 = icmp eq ptr %.val56, @PyUnicode_Type
  %or.cond70 = or i1 %.not63, %or.cond69
  %.not64 = icmp eq ptr %.val56, @PyBytes_Type
  %or.cond71 = or i1 %.not64, %or.cond70
  br i1 %or.cond71, label %Py_DECREF.exit44.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not65 = icmp eq ptr %.val56, @PyTuple_Type
  %.not66 = icmp eq ptr %.val56, @PyFrozenSet_Type
  %or.cond72 = or i1 %.not65, %.not66
  br i1 %or.cond72, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @Py_EnterRecursiveCall(ptr noundef nonnull @.str.5) #4
  %.not34 = icmp eq i32 %i.d, 0
  br i1 %.not34, label %bb.e, label %Py_DECREF.exit44.thread

bb.e:                                             ; preds = %bb.d
  %i.e = tail call ptr @PyObject_GetIter(ptr noundef %0) #4 ; 11 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit44.thread, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.g = tail call ptr @PyIter_Next(ptr noundef nonnull %i.e) #4 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %Py_DECREF.exit44, %.preheader
  %i.i = tail call ptr @PyErr_Occurred() #4
  %.not36 = icmp eq ptr %i.i, null
  %i.j = load i32, ptr %i.e, align 8, !tbaa !13   ; 3 uses
  %.not.i = icmp sgt i32 %i.j, -1                 ; 2 uses
  br i1 %.not36, label %bb.q, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit44.thread

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.e, align 8, !tbaa !13
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.h, label %Py_DECREF.exit44.thread

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #4
  br label %Py_DECREF.exit44.thread

.lr.ph:                                           ; preds = %.preheader, %Py_DECREF.exit44
  %i.m = phi ptr [ %i.x, %Py_DECREF.exit44 ], [ %i.g, %.preheader ] ; 7 uses
  %i.n = tail call fastcc i32 @validate_constant(ptr noundef nonnull %i.m)
  %.not35 = icmp eq i32 %i.n, 0
  br i1 %.not35, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.lr.ph
  %i.o = load i32, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %.not.i41 = icmp sgt i32 %i.o, -1
  br i1 %.not.i41, label %bb.j, label %Py_DECREF.exit42

bb.j:                                             ; preds = %bb.i
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.e, align 8, !tbaa !13
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.k, label %Py_DECREF.exit42

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #4
  br label %Py_DECREF.exit42

Py_DECREF.exit42:                                 ; preds = %bb.i, %bb.j, %bb.k
  %i.r = load i32, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %.not.i39 = icmp sgt i32 %i.r, -1
  br i1 %.not.i39, label %bb.l, label %Py_DECREF.exit44.thread

bb.l:                                             ; preds = %Py_DECREF.exit42
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.m, align 8, !tbaa !13
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %Py_DECREF.exit44.thread

bb.m:                                             ; preds = %bb.l
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #4
  br label %Py_DECREF.exit44.thread

bb.n:                                             ; preds = %.lr.ph
  %i.u = load i32, ptr %i.m, align 8, !tbaa !13   ; 2 uses
  %.not.i37 = icmp sgt i32 %i.u, -1
  br i1 %.not.i37, label %bb.o, label %Py_DECREF.exit44

bb.o:                                             ; preds = %bb.n
  %i.v = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.v, ptr %i.m, align 8, !tbaa !13
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.p, label %Py_DECREF.exit44

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.m) #4
  br label %Py_DECREF.exit44

Py_DECREF.exit44:                                 ; preds = %bb.p, %bb.o, %bb.n
  %i.x = tail call ptr @PyIter_Next(ptr noundef nonnull %i.e) #4 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %._crit_edge, label %.lr.ph

bb.q:                                             ; preds = %._crit_edge
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.z = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.z, ptr %i.e, align 8, !tbaa !13
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #4
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.q, %bb.r, %bb.s
  tail call void @Py_LeaveRecursiveCall() #4
  br label %Py_DECREF.exit44.thread

bb.t:                                             ; preds = %bb.c
  %i.ab = tail call ptr @PyErr_Occurred() #4
  %.not33 = icmp eq ptr %i.ab, null
  br i1 %.not33, label %bb.u, label %Py_DECREF.exit44.thread

bb.u:                                             ; preds = %bb.t
  %i.ac = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !22
  %.val = load ptr, ptr %i.c, align 8, !tbaa !74
  %i.ad = tail call ptr @_PyType_Name(ptr noundef %.val) #4
  %i.ae = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ac, ptr noundef nonnull @.str.71, ptr noundef %i.ad) #4 ; 0 uses
  br label %Py_DECREF.exit44.thread

Py_DECREF.exit44.thread:                          ; preds = %bb.l, %Py_DECREF.exit42, %bb.g, %bb.f, %bb.m, %bb.h, %bb.t, %bb.u, %Py_DECREF.exit, %bb.e, %bb.d, %bb.b, %bb.a
  %.3 = phi i32 [ 0, %bb.e ], [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.m ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %Py_DECREF.exit42 ], [ 0, %bb.l ], [ 1, %Py_DECREF.exit ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %bb.h ]
  ret i32 %.3
}

declare ptr @PyObject_GetIter(ptr noundef) local_unnamed_addr #1

declare ptr @PyIter_Next(ptr noundef) local_unnamed_addr #1

declare ptr @PyErr_Occurred() local_unnamed_addr #1

declare ptr @_PyType_Name(ptr noundef) local_unnamed_addr #1

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "function-inline-cost-multiplier"="2" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 0}
!12 = !{!"_mod", !8, i64 0, !9, i64 8}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"", !16, i64 0, !17, i64 8, !9, i64 16}
!16 = !{!"long", !9, i64 0}
!17 = !{!"any p2 pointer", !18, i64 0}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS5_expr", !18, i64 0}
!21 = !{ptr @validate_exprs}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS7_object", !18, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS5_stmt", !18, i64 0}
!26 = !{!27, !8, i64 64}
!27 = !{!"_stmt", !8, i64 0, !9, i64 8, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76}
!28 = !{!27, !8, i64 72}
!29 = distinct !{null}
!30 = !{!27, !8, i64 68}
!31 = !{!27, !8, i64 76}
!32 = !{!27, !8, i64 0}
!33 = !{!34, !16, i64 0}
!34 = !{!"", !16, i64 0, !17, i64 8}
!35 = distinct !{ptr @validate_body, null}
!36 = distinct !{ptr @validate_exprs, null}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 _ZTS8_keyword", !18, i64 0}
!39 = !{!40, !20, i64 8}
!40 = !{!"_keyword", !23, i64 0, !20, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!41 = distinct !{ptr @validate_keywords, null}
!42 = !{!43, !8, i64 0}
!43 = !{!"_expr", !8, i64 0, !9, i64 8, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 _ZTS9_withitem", !18, i64 0}
!46 = !{!47, !20, i64 0}
!47 = !{!"_withitem", !20, i64 0, !20, i64 8}
!48 = !{!47, !20, i64 8}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTS11_match_case", !18, i64 0}
!55 = !{!56, !57, i64 0}
!56 = !{!"_match_case", !57, i64 0, !20, i64 8, !18, i64 16}
!57 = !{!"p1 _ZTS8_pattern", !18, i64 0}
!58 = !{!56, !20, i64 8}
!59 = !{!56, !18, i64 16}
!60 = distinct !{!60, !50}
!61 = !{!62, !62, i64 0}
!62 = !{!"p1 _ZTS14_excepthandler", !18, i64 0}
!63 = !{!64, !8, i64 32}
!64 = !{!"_excepthandler", !8, i64 0, !9, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44}
!65 = !{!64, !8, i64 40}
!66 = !{!64, !8, i64 36}
!67 = !{!64, !8, i64 44}
!68 = distinct !{!68, !50}
!69 = distinct !{!69, !50}
!70 = !{!43, !8, i64 40}
!71 = !{!43, !8, i64 48}
!72 = !{!43, !8, i64 44}
!73 = !{!43, !8, i64 52}
!74 = !{!75, !76, i64 8}
!75 = !{!"_object", !9, i64 0, !76, i64 8}
!76 = !{!"p1 _ZTS11_typeobject", !18, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"p1 _ZTS11_type_param", !18, i64 0}
!79 = !{!80, !8, i64 32}
!80 = !{!"_type_param", !8, i64 0, !9, i64 8, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44}
!81 = !{!80, !8, i64 40}
!82 = !{!80, !8, i64 36}
!83 = !{!80, !8, i64 44}
!84 = !{!80, !8, i64 0}
!85 = !{!86, !18, i64 0}
!86 = !{!"_arguments", !18, i64 0, !18, i64 8, !87, i64 16, !18, i64 24, !18, i64 32, !87, i64 40, !18, i64 48}
!87 = !{!"p1 _ZTS4_arg", !18, i64 0}
!88 = !{!86, !18, i64 8}
!89 = !{!86, !87, i64 16}
!90 = !{!91, !20, i64 8}
!91 = !{!"_arg", !23, i64 0, !20, i64 8, !23, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36}
!92 = !{!86, !18, i64 24}
!93 = !{!86, !87, i64 40}
!94 = !{!86, !18, i64 48}
!95 = !{!86, !18, i64 32}
!96 = distinct !{!96, !50}
!97 = !{!98, !8, i64 40}
!98 = !{!"_pattern", !8, i64 0, !9, i64 8, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!99 = !{!98, !8, i64 48}
!100 = !{!98, !8, i64 44}
!101 = !{!98, !8, i64 52}
!102 = !{!98, !8, i64 0}
!103 = distinct !{!103, !50}
!104 = !{!87, !87, i64 0}
!105 = !{!91, !8, i64 24}
!106 = !{!91, !8, i64 32}
!107 = !{!91, !8, i64 28}
!108 = !{!91, !8, i64 36}
!109 = !{!57, !57, i64 0}
!110 = !{!111, !111, i64 0}
!111 = !{!"p1 _ZTS14_comprehension", !18, i64 0}
!112 = !{!113, !20, i64 0}
!113 = !{!"_comprehension", !20, i64 0, !20, i64 8, !18, i64 16, !8, i64 24}
!114 = !{!113, !20, i64 8}
!115 = !{!113, !18, i64 16}
!116 = distinct !{!116, !50}
end_hunk_1
