Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/lexer?download=true
inline.NumInlined: 86
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tok_get_normal_mode:bb.a
  %.not21.i = icmp eq i32 %i.ab, 10
  br i1 %.not21.i, label %bb.h, label %tok_nextc.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.ad = tail call i32 %i.ac(ptr noundef nonnull %0) #8, !inline_history !53
  %.not22.i = icmp eq i32 %i.ad, 0
  br i1 %.not22.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !30
  store ptr %i.ae, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  store ptr %i.af, ptr %i.h, align 8, !tbaa !33
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = tail call ptr @memchr(ptr noundef readonly %i.af, i32 noundef 0, i64 noundef %i.aj) #7
  %.not24.i = icmp eq ptr %i.ak, null
  br i1 %.not24.i, label %bb.d, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !30
  store ptr %i.am, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit.thread

tok_nextc.exit:                                   ; preds = %bb.e
  %i.an = add nuw nsw i32 %i.z, 1
  store i32 %i.an, ptr %i.i, align 4, !tbaa !28
  %i.ao = getelementptr i8, ptr %i.y, i64 1
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !11
  %i.ap = load i8, ptr %i.y, align 1, !tbaa !34   ; 4 uses
  switch i8 %i.ap, label %.split1125 [
    i8 32, label %bb.l
    i8 9, label %bb.m
    i8 12, label %.outer.backedge
    i8 92, label %bb.n
  ]

bb.l:                                             ; preds = %tok_nextc.exit
  %i.aq = add i32 %.01091.ph, 1
  %i.ar = add i32 %.01088.ph, 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %tok_nextc.exit, %bb.l, %bb.m
  %.01091.ph.be = phi i32 [ %i.av, %bb.m ], [ %i.aq, %bb.l ], [ 0, %tok_nextc.exit ]
  %.01088.ph.be = phi i32 [ %i.aw, %bb.m ], [ %i.ar, %bb.l ], [ 0, %tok_nextc.exit ]
  br label %.outer

bb.m:                                             ; preds = %tok_nextc.exit
  %i.as = load i32, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %i.at = sdiv i32 %.01091.ph, %i.as
  %i.au = add i32 %i.at, 1
  %i.av = mul i32 %i.au, %i.as
  %i.aw = add i32 %.01088.ph, 1
  br label %.outer.backedge

bb.n:                                             ; preds = %tok_nextc.exit
  %.not1183 = icmp eq i32 %.01086, 0
  %i.ax = select i1 %.not1183, i32 %.01091.ph, i32 %.01086
  %i.ay = tail call fastcc i32 @tok_continuation_line(ptr noundef nonnull %0)
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.o, label %bb.c

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

.split1125:                                       ; preds = %tok_nextc.exit
  store ptr %i.y, ptr %i.d, align 8, !tbaa !11
  %i.bb = load ptr, ptr %0, align 8, !tbaa !35
  %i.bc = icmp ult ptr %i.y, %i.bb
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.split1125
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.q:                                             ; preds = %.split1125
  %i.bd = load i8, ptr %i.y, align 1, !tbaa !34
  %.not6.i = icmp eq i8 %i.bd, %i.ap
  br i1 %.not6.i, label %.split, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

tok_nextc.exit.thread:                            ; preds = %bb.g, %bb.k, %bb.i, %bb.f
  %i.be = tail call ptr @PyErr_Occurred() #8
  %.not1174 = icmp eq ptr %i.be, null
  br i1 %.not1174, label %.split.thread, label %bb.s

bb.s:                                             ; preds = %tok_nextc.exit.thread
  %i.bf = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

.split:                                           ; preds = %bb.q
  store i32 %i.z, ptr %i.i, align 4, !tbaa !28
  switch i8 %i.ap, label %.split.thread [
    i8 35, label %bb.t
    i8 13, label %bb.t
    i8 10, label %bb.t
  ]

bb.t:                                             ; preds = %.split, %.split, %.split
  %i.bg = icmp eq i8 %i.ap, 10
  %i.bh = icmp eq i32 %.01091.ph, 0
  %or.cond11 = and i1 %i.bh, %i.bg
  %.pre2329 = load ptr, ptr %i.k, align 8, !tbaa !55
  %.not1175 = icmp eq ptr %.pre2329, null         ; 2 uses
  br i1 %or.cond11, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br i1 %.not1175, label %.thread, label %.split.thread

bb.v:                                             ; preds = %bb.t
  br i1 %.not1175, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = load i32, ptr %i.l, align 8, !tbaa !26
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %.split.thread, label %.thread

.split.thread:                                    ; preds = %tok_nextc.exit.thread, %.split, %bb.u, %bb.w
  %.21093.ph = phi i32 [ %.01091.ph, %.split ], [ 0, %bb.w ], [ 0, %bb.u ], [ %.01091.ph, %tok_nextc.exit.thread ]
  %.21090.ph = phi i32 [ %.01088.ph, %.split ], [ 0, %bb.w ], [ %.01088.ph, %bb.u ], [ %.01088.ph, %tok_nextc.exit.thread ]
  %i.bk = load i32, ptr %i.m, align 8, !tbaa !56
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.x, label %.thread

bb.x:                                             ; preds = %.split.thread
  %.not1178 = icmp eq i32 %.01086, 0              ; 2 uses
  %i.bm = select i1 %.not1178, i32 %.21093.ph, i32 %.01086 ; 5 uses
  %i.bn = select i1 %.not1178, i32 %.21090.ph, i32 %.01086 ; 4 uses
  %i.bo = load i32, ptr %i.o, align 4, !tbaa !57  ; 4 uses
  %i.bp = sext i32 %i.bo to i64                   ; 3 uses
  %i.bq = getelementptr [4 x i8], ptr %i.n, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7  ; 2 uses
  %i.bs = icmp eq i32 %i.bm, %i.br
  br i1 %i.bs, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr [4 x i8], ptr %i.q, i64 %i.bp
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !7
  %.not1182 = icmp eq i32 %i.bn, %i.bu
  br i1 %.not1182, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = tail call i32 @_PyTokenizer_indenterror(ptr noundef nonnull %0) #8
  %i.bw = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.bv, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

bb.aa:                                            ; preds = %bb.x
  %i.bx = icmp sgt i32 %i.bm, %i.br
  br i1 %i.bx, label %bb.ab, label %thread-pre-split

bb.ab:                                            ; preds = %bb.aa
  %i.by = add i32 %i.bo, 1                        ; 3 uses
  %i.bz = icmp sgt i32 %i.by, 99
  br i1 %i.bz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 20, ptr %i.f, align 8, !tbaa !24
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !30
  store ptr %i.ca, ptr %i.d, align 8, !tbaa !11
  %i.cb = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

bb.ad:                                            ; preds = %bb.ab
  %i.cc = getelementptr [4 x i8], ptr %i.q, i64 %i.bp
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %.not1181 = icmp sgt i32 %i.bn, %i.cd
  br i1 %.not1181, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ce = tail call i32 @_PyTokenizer_indenterror(ptr noundef nonnull %0) #8
  %i.cf = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.ce, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

bb.af:                                            ; preds = %bb.ad
  %i.cg = load i32, ptr %i.p, align 4, !tbaa !58
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.p, align 4, !tbaa !58
  store i32 %i.by, ptr %i.o, align 4, !tbaa !57
  %i.ci = sext i32 %i.by to i64
  %i.cj = getelementptr [4 x i8], ptr %i.n, i64 %i.ci
  store i32 %i.bm, ptr %i.cj, align 4, !tbaa !7
  %i.ck = load i32, ptr %i.o, align 4, !tbaa !57
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [4 x i8], ptr %i.q, i64 %i.cl
  store i32 %i.bn, ptr %i.cm, align 4, !tbaa !7
  br label %.thread

thread-pre-split:                                 ; preds = %bb.aa
  %i.cn = icmp sgt i32 %i.bo, 0
  br i1 %i.cn, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %thread-pre-split, %bb.ag
  %3 = phi i32 [ %5, %bb.ag ], [ %i.bo, %thread-pre-split ] ; 4 uses
  %4 = zext nneg i32 %3 to i64
  %i.co = getelementptr [4 x i8], ptr %i.n, i64 %4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  %i.cq = icmp slt i32 %i.bm, %i.cp
  br i1 %i.cq, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %.lr.ph
  %i.cr = load i32, ptr %i.p, align 4, !tbaa !58
  %i.cs = add i32 %i.cr, -1
  store i32 %i.cs, ptr %i.p, align 4, !tbaa !58
  %5 = add nsw i32 %3, -1                         ; 2 uses
  store i32 %5, ptr %i.o, align 4, !tbaa !57
  %i.ct = icmp sgt i32 %3, 1
  br i1 %i.ct, label %.lr.ph, label %.critedge, !llvm.loop !59

.critedge:                                        ; preds = %.lr.ph, %bb.ag
  %.lcssa1773.ph.a = phi i32 [ %3, %.lr.ph ], [ 0, %bb.ag ]
  %.pre2330 = zext nneg i32 %.lcssa1773.ph.a to i64 ; 2 uses
  %.phi.trans.insert = getelementptr [4 x i8], ptr %i.n, i64 %.pre2330
  %.pre2331 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !7
  %i.cu = icmp eq i32 %i.bm, %.pre2331
  br i1 %i.cu, label %bb.ah, label %.critedge.thread

.critedge.thread:                                 ; preds = %thread-pre-split, %.critedge
  store i32 21, ptr %i.f, align 8, !tbaa !24
  %i.cv = load ptr, ptr %i.e, align 8, !tbaa !30
  store ptr %i.cv, ptr %i.d, align 8, !tbaa !11
  %i.cw = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

bb.ah:                                            ; preds = %.critedge
  %i.cx = getelementptr [4 x i8], ptr %i.q, i64 %.pre2330
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  %.not1180 = icmp eq i32 %i.bn, %i.cy
  br i1 %.not1180, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = tail call i32 @_PyTokenizer_indenterror(ptr noundef nonnull %0) #8
  %i.da = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %i.cz, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

.thread:                                          ; preds = %bb.u, %bb.y, %bb.ah, %bb.af, %.split.thread, %bb.v, %bb.w, %bb.a
  %.not1190 = phi i1 [ true, %bb.a ], [ false, %bb.w ], [ true, %bb.y ], [ true, %bb.ah ], [ true, %bb.af ], [ true, %.split.thread ], [ false, %bb.v ], [ false, %bb.u ] ; 2 uses
  %.21124 = phi i32 [ 0, %bb.a ], [ 1, %bb.w ], [ 0, %bb.y ], [ 0, %bb.ah ], [ 0, %bb.af ], [ 0, %.split.thread ], [ 1, %bb.v ], [ 1, %bb.u ]
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  store ptr %i.db, ptr %i.a, align 8, !tbaa !23
  %i.dc = load i32, ptr %i.i, align 4, !tbaa !28
  store i32 %i.dc, ptr %i.b, align 8, !tbaa !29
  %i.dd = load i32, ptr %i.p, align 4, !tbaa !58  ; 4 uses
  %.not1184 = icmp eq i32 %i.dd, 0
  br i1 %.not1184, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.de = icmp slt i32 %i.dd, 0
  %i.df = load i32, ptr %i.r, align 4, !tbaa !60
  %.not1245 = icmp eq i32 %i.df, 0                ; 2 uses
  br i1 %i.de, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %spec.select1605 = select i1 %.not1245, ptr null, ptr %i.db ; 2 uses
  %i.dg = add nsw i32 %i.dd, 1
  store i32 %i.dg, ptr %i.p, align 4, !tbaa !58
  %i.dh = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 6, ptr noundef %spec.select1605, ptr noundef %spec.select1605) #8
  br label %.thread1499

bb.al:                                            ; preds = %bb.aj
  br i1 %.not1245, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.di = load ptr, ptr %0, align 8, !tbaa !35
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.21109 = phi ptr [ %i.di, %bb.am ], [ null, %bb.al ]
  %.21096 = phi ptr [ %i.db, %bb.am ], [ null, %bb.al ]
  %i.dj = add nsw i32 %i.dd, -1
  store i32 %i.dj, ptr %i.p, align 4, !tbaa !58
  %i.dk = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 5, ptr noundef %.21109, ptr noundef %.21096) #8
  br label %.thread1499

bb.ao:                                            ; preds = %.thread
  %.pre39.i1272 = load ptr, ptr %i.e, align 8, !tbaa !30
  br label %bb.ap

bb.ap:                                            ; preds = %bb.av, %bb.ao
  %i.dl = phi ptr [ %i.du, %bb.av ], [ %.pre39.i1272, %bb.ao ] ; 4 uses
  %i.dm = phi ptr [ %i.dt, %bb.av ], [ %i.db, %bb.ao ] ; 9 uses
  %.not.i1273 = icmp eq ptr %i.dm, %i.dl
  br i1 %.not.i1273, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dn = load i32, ptr %i.i, align 4, !tbaa !28  ; 3 uses
  %i.do = icmp ugt i32 %i.dn, 2147483646
  br i1 %i.do, label %bb.ar, label %tok_nextc.exit1278

bb.ar:                                            ; preds = %bb.aq
  store i32 29, ptr %i.f, align 8, !tbaa !24
  br label %tok_backup.exit1281.preheader

bb.as:                                            ; preds = %bb.ap
  %i.dp = load i32, ptr %i.f, align 8, !tbaa !24
  %.not21.i1275 = icmp eq i32 %i.dp, 10
  br i1 %.not21.i1275, label %bb.at, label %tok_backup.exit1281.preheader

bb.at:                                            ; preds = %bb.as
  %i.dq = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.dr = tail call i32 %i.dq(ptr noundef nonnull %0) #8, !inline_history !53
  %.not22.i1276 = icmp eq i32 %i.dr, 0
  br i1 %.not22.i1276, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ds = load ptr, ptr %i.e, align 8, !tbaa !30  ; 3 uses
  store ptr %i.ds, ptr %i.d, align 8, !tbaa !11
  br label %tok_backup.exit1281.preheader

bb.av:                                            ; preds = %bb.at
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  store ptr %i.dt, ptr %i.h, align 8, !tbaa !33
  %i.du = load ptr, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = tail call ptr @memchr(ptr noundef readonly %i.dt, i32 noundef 0, i64 noundef %i.dx) #7
  %.not24.i1277 = icmp eq ptr %i.dy, null
  br i1 %.not24.i1277, label %bb.ap, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dz = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.ea = load ptr, ptr %i.e, align 8, !tbaa !30  ; 3 uses
  store ptr %i.ea, ptr %i.d, align 8, !tbaa !11
  br label %tok_backup.exit1281.preheader

tok_nextc.exit1278:                               ; preds = %bb.aq
  %i.eb = add nuw nsw i32 %i.dn, 1
  store i32 %i.eb, ptr %i.i, align 4, !tbaa !28
  %i.ec = getelementptr i8, ptr %i.dm, i64 1
  store ptr %i.ec, ptr %i.d, align 8, !tbaa !11
  %i.ed = load i8, ptr %i.dm, align 1, !tbaa !34
  store ptr %i.dm, ptr %i.d, align 8, !tbaa !11
  %i.ee = load ptr, ptr %0, align 8, !tbaa !35
  %i.ef = icmp ult ptr %i.dm, %i.ee
  br i1 %i.ef, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %tok_nextc.exit1278
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.ay:                                            ; preds = %tok_nextc.exit1278
  %i.eg = load i8, ptr %i.dm, align 1, !tbaa !34
  %.not6.i1280 = icmp eq i8 %i.eg, %i.ed
  br i1 %.not6.i1280, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.ba:                                            ; preds = %bb.ay
  store i32 %i.dn, ptr %i.i, align 4, !tbaa !28
  br label %tok_backup.exit1281.preheader

tok_backup.exit1281.preheader:                    ; preds = %bb.as, %bb.aw, %bb.au, %bb.ar, %bb.ba
  %.pre39.i1283.pre.ph = phi ptr [ %i.dl, %bb.ba ], [ %i.dl, %bb.ar ], [ %i.ds, %bb.au ], [ %i.ea, %bb.aw ], [ %i.dl, %bb.as ]
  %.pre.i1282.pre.ph = phi ptr [ %i.dm, %bb.ba ], [ %i.dm, %bb.ar ], [ %i.ds, %bb.au ], [ %i.ea, %bb.aw ], [ %i.dm, %bb.as ]
  br label %tok_backup.exit1281

tok_backup.exit1281:                              ; preds = %tok_backup.exit1281.preheader, %bb.pm
  %.pre39.i1283.pre = phi ptr [ %.pre39.i1283.pre.pre, %bb.pm ], [ %.pre39.i1283.pre.ph, %tok_backup.exit1281.preheader ]
  %.pre.i1282.pre = phi ptr [ %.pre.i1282.pre.pre, %bb.pm ], [ %.pre.i1282.pre.ph, %tok_backup.exit1281.preheader ]
  store ptr null, ptr %i.a, align 8, !tbaa !23
  br label %.critedge15.outer

.critedge15.outer:                                ; preds = %tok_backup.exit1281, %bb.bg
  %.pre39.i12832333.ph = phi ptr [ %.pre39.i1283.pre, %tok_backup.exit1281 ], [ %i.ep, %bb.bg ] ; 4 uses
  %.ph3349 = phi ptr [ %.pre.i1282.pre, %tok_backup.exit1281 ], [ %i.eo, %bb.bg ]
  br label %.critedge15

.critedge15:                                      ; preds = %.critedge15.backedge, %.critedge15.outer
  %i.eh = phi ptr [ %.ph3349, %.critedge15.outer ], [ %i.ex, %.critedge15.backedge ] ; 5 uses
  %.not.i1284 = icmp eq ptr %i.eh, %.pre39.i12832333.ph
  br i1 %.not.i1284, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.critedge15
  %i.ei = load i32, ptr %i.i, align 4, !tbaa !28  ; 2 uses
  %i.ej = icmp ugt i32 %i.ei, 2147483646
  br i1 %i.ej, label %bb.bc, label %tok_nextc.exit1289

bb.bc:                                            ; preds = %bb.bb
  store i32 29, ptr %i.f, align 8, !tbaa !24
  br label %tok_nextc.exit1289.thread

bb.bd:                                            ; preds = %.critedge15
  %i.ek = load i32, ptr %i.f, align 8, !tbaa !24
  %.not21.i1286 = icmp eq i32 %i.ek, 10
  br i1 %.not21.i1286, label %bb.be, label %tok_nextc.exit1289.thread

bb.be:                                            ; preds = %bb.bd
  %i.el = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.em = tail call i32 %i.el(ptr noundef nonnull %0) #8, !inline_history !53
  %.not22.i1287 = icmp eq i32 %i.em, 0
  br i1 %.not22.i1287, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.en = load ptr, ptr %i.e, align 8, !tbaa !30  ; 3 uses
  store ptr %i.en, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit1289.thread

bb.bg:                                            ; preds = %bb.be
  %i.eo = load ptr, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  store ptr %i.eo, ptr %i.h, align 8, !tbaa !33
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.eo to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = tail call ptr @memchr(ptr noundef readonly %i.eo, i32 noundef 0, i64 noundef %i.es) #7
  %.not24.i1288 = icmp eq ptr %i.et, null
  br i1 %.not24.i1288, label %.critedge15.outer, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.eu = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.ev = load ptr, ptr %i.e, align 8, !tbaa !30  ; 3 uses
  store ptr %i.ev, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit1289.thread

tok_nextc.exit1289:                               ; preds = %bb.bb
  %i.ew = add nuw nsw i32 %i.ei, 1
  store i32 %i.ew, ptr %i.i, align 4, !tbaa !28
  %i.ex = getelementptr i8, ptr %i.eh, i64 1      ; 3 uses
  store ptr %i.ex, ptr %i.d, align 8, !tbaa !11
  %i.ey = load i8, ptr %i.eh, align 1, !tbaa !34  ; 2 uses
  switch i8 %i.ey, label %tok_nextc.exit1289.thread.loopexit1619 [
    i8 32, label %.critedge15.backedge
    i8 12, label %.critedge15.backedge
end_hunk_0
