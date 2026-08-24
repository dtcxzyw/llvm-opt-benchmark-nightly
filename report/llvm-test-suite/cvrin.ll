Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cvrin?download=true
inline.NumInlined: 31
inline.NumDeleted: 1
begin_hunk_0_@parse_pla:bb.a
    i32 9, label %PLA_labels.exit.backedge
    i32 12, label %PLA_labels.exit.backedge
    i32 13, label %PLA_labels.exit.backedge
    i32 35, label %bb.c
    i32 46, label %.preheader313
  ]

bb.b:                                             ; preds = %PLA_labels.exit
  %i.p = load i32, ptr @lineno, align 4, !tbaa !4
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr @lineno, align 4, !tbaa !4
  br label %PLA_labels.exit.backedge

bb.c:                                             ; preds = %PLA_labels.exit
  %i.r = call i32 @ungetc(i32 noundef 35, ptr noundef %0) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !23 ; 2 uses
  %i.t = load i32, ptr @echo_comments, align 4, !tbaa !4
  %.not6.i = icmp eq i32 %i.t, 0
  br i1 %.not6.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.c, %.split.us.i
  %i.u = call i32 @getc(ptr noundef %0)
  switch i32 %i.u, label %.split.us.i [
    i32 -1, label %skip_line.exit
    i32 10, label %skip_line.exit
  ]

.split.i:                                         ; preds = %bb.c, %bb.d
  %i.v = call i32 @getc(ptr noundef %0)           ; 2 uses
  switch i32 %i.v, label %bb.d [
    i32 -1, label %.split8.us.i
    i32 10, label %.split8.us.i
  ]

bb.d:                                             ; preds = %.split.i
  %i.w = call i32 @putc(i32 noundef %i.v, ptr noundef %i.s) ; 0 uses
  br label %.split.i

.split8.us.i:                                     ; preds = %.split.i, %.split.i
  %i.x = call i32 @putc(i32 noundef 10, ptr noundef %i.s) ; 0 uses
  br label %skip_line.exit

skip_line.exit:                                   ; preds = %.split.us.i, %.split.us.i, %.split8.us.i
  %i.y = load i32, ptr @lineno, align 4, !tbaa !4
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr @lineno, align 4, !tbaa !4
  br label %PLA_labels.exit.backedge

.preheader313:                                    ; preds = %PLA_labels.exit, %bb.e
  %i.aa = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i = icmp eq i32 %i.aa, -1
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.preheader313
  %i.ab = tail call ptr @__ctype_b_loc() #16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !8
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !11
  %i.ag = and i16 %i.af, 8192
  %.not16.i = icmp eq i16 %i.ag, 0
  br i1 %.not16.i, label %.critedge.i, label %.preheader313

.critedge.i:                                      ; preds = %bb.e, %.preheader313
  %i.ah = trunc i32 %i.aa to i8
  store i8 %i.ah, ptr %i.c, align 16, !tbaa !13
  %i.ai = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i = icmp eq i32 %i.ai, -1
  br i1 %.not1719.i, label %get_word.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i
  %i.aj = tail call ptr @__ctype_b_loc() #16
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 3 uses
  %i.ak = phi i32 [ %i.ai, %.lr.ph.i ], [ %i.as, %bb.g ] ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !11
  %i.ap = and i16 %i.ao, 8192
  %.not18.i = icmp eq i16 %i.ap, 0
  br i1 %.not18.i, label %bb.g, label %.critedge2.loopexit.i

bb.g:                                             ; preds = %bb.f
  %i.aq = trunc i32 %i.ak to i8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !13
  %i.as = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i = icmp eq i32 %i.as, -1
  br i1 %.not17.i, label %.critedge2.loopexit.i, label %bb.f

.critedge2.loopexit.i:                            ; preds = %bb.g, %bb.f
  %.0.lcssa.ph.in.i = phi i64 [ %indvars.iv.i, %bb.f ], [ %indvars.iv.next.i, %bb.g ]
  %i.at = and i64 %.0.lcssa.ph.in.i, 4294967295
  br label %get_word.exit

get_word.exit:                                    ; preds = %.critedge.i, %.critedge2.loopexit.i
  %.0.lcssa.i = phi i64 [ 1, %.critedge.i ], [ %i.at, %.critedge2.loopexit.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i
  store i8 0, ptr %i.au, align 1, !tbaa !13
  %lhsv298 = load i16, ptr %i.c, align 16         ; 3 uses
  switch i16 %lhsv298, label %bb.t [
    i16 105, label %bb.h
    i16 111, label %bb.m
  ]

bb.h:                                             ; preds = %get_word.exit
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %.not164 = icmp eq ptr %i.av, null
  br i1 %.not164, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.ax = call i64 @fwrite(ptr nonnull @.str.9, i64 17, i64 1, ptr %i.aw) #21 ; 0 uses
  br label %.split.us.i167

.split.us.i167:                                   ; preds = %.split.us.i167, %bb.i
  %i.ay = call i32 @getc(ptr noundef %0)
  switch i32 %i.ay, label %.split.us.i167 [
    i32 -1, label %skip_line.exit168
    i32 10, label %skip_line.exit168
  ]

skip_line.exit168:                                ; preds = %.split.us.i167, %.split.us.i167
  %i.az = load i32, ptr @lineno, align 4, !tbaa !4
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr @lineno, align 4, !tbaa !4
  br label %PLA_labels.exit.backedge

bb.j:                                             ; preds = %bb.h
  %i.bb = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @cube, i64 8)) #17
  %.not165 = icmp eq i32 %i.bb, 1
  br i1 %.not165, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.11) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21
  %i.bd = add nsw i32 %i.bc, 1                    ; 2 uses
  store i32 %i.bd, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 2
  %i.bg = call noalias ptr @malloc(i64 noundef %i.bf) #22
  store ptr %i.bg, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  br label %PLA_labels.exit.backedge

bb.m:                                             ; preds = %get_word.exit
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %.not162 = icmp eq ptr %i.bh, null
  br i1 %.not162, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.bj = call i64 @fwrite(ptr nonnull @.str.13, i64 17, i64 1, ptr %i.bi) #21 ; 0 uses
  br label %.split.us.i169

.split.us.i169:                                   ; preds = %.split.us.i169, %bb.n
  %i.bk = call i32 @getc(ptr noundef %0)
  switch i32 %i.bk, label %.split.us.i169 [
    i32 -1, label %skip_line.exit170
    i32 10, label %skip_line.exit170
  ]

skip_line.exit170:                                ; preds = %.split.us.i169, %.split.us.i169
  %i.bl = load i32, ptr @lineno, align 4, !tbaa !4
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr @lineno, align 4, !tbaa !4
  br label %PLA_labels.exit.backedge

bb.o:                                             ; preds = %bb.m
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.14) #17
  %.pre370.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bp = phi ptr [ %.pre370.a, %bb.p ], [ %i.bn, %bb.o ]
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr [4 x i8], ptr %i.bp, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %i.bt) #17
  %.not163 = icmp eq i32 %i.bu, 1
  br i1 %.not163, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.15) #17
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void (...) @cube_setup() #17
  %i.bv = load i32, ptr @cube, align 8, !tbaa !20
  %i.bw = sext i32 %i.bv to i64
  %i.bx = shl nsw i64 %i.bw, 3
  %i.by = call noalias ptr @malloc(i64 noundef %i.bx) #22 ; 2 uses
  store ptr %i.by, ptr %i.h, align 8, !tbaa !29
  %2 = load i32, ptr @cube, align 8, !tbaa !20    ; 2 uses
  %i.bz = icmp sgt i32 %2, 0
  br i1 %i.bz, label %.lr.ph.preheader.i, label %PLA_labels.exit.backedge

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.ca = zext nneg i32 %2 to i64
  %i.cb = shl nuw nsw i64 %i.ca, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.by, i8 0, i64 %i.cb, i1 false), !tbaa !36
  br label %PLA_labels.exit.backedge

bb.t:                                             ; preds = %get_word.exit
  %i.cc = load i16, ptr %i.c, align 16
  %i.cd = xor i16 %i.cc, 30317
  %i.ce = getelementptr i8, ptr %i.c, i64 2
  %i.cf = load i8, ptr %i.ce, align 2
  %i.cg = zext i8 %i.cf to i16
  %i.ch = or i16 %i.cd, %i.cg
  %i.ci = icmp ne i16 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.u, label %bb.ah

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %.not157 = icmp eq ptr %i.cl, null
  br i1 %.not157, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.cn = call i64 @fwrite(ptr nonnull @.str.17, i64 18, i64 1, ptr %i.cm) #21 ; 0 uses
  br label %.split.us.i171

.split.us.i171:                                   ; preds = %.split.us.i171, %bb.v
  %i.co = call i32 @getc(ptr noundef %0)
  switch i32 %i.co, label %.split.us.i171 [
    i32 -1, label %skip_line.exit172
    i32 10, label %skip_line.exit172
  ]

skip_line.exit172:                                ; preds = %.split.us.i171, %.split.us.i171
  %i.cp = load i32, ptr @lineno, align 4, !tbaa !4
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr @lineno, align 4, !tbaa !4
  br label %PLA_labels.exit.backedge

bb.w:                                             ; preds = %bb.u
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  %.not158 = icmp eq ptr %i.cr, null
  br i1 %.not158, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.18) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cs = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @cube, i64 4), ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @cube, i64 8)) #17
  %.not159 = icmp eq i32 %i.cs, 2
  br i1 %.not159, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.20) #17
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21 ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.21) #17
  %.pre368 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cv = phi i32 [ %.pre368, %bb.ab ], [ %i.ct, %bb.aa ]
  %i.cw = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, %i.cv
  br i1 %i.cx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.22) #17
  %.pre369.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cy = phi i32 [ %.pre369.a, %bb.ad ], [ %i.cw, %bb.ac ]
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 2
  %i.db = call noalias ptr @malloc(i64 noundef %i.da) #22
  store ptr %i.db, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  %3 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21 ; 3 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !4
  %4 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.dc = icmp slt i32 %3, %4
  br i1 %i.dc, label %.lr.ph340, label %._crit_edge341

.lr.ph340:                                        ; preds = %bb.ae, %bb.ag
  %storemerge160338 = phi i32 [ %i.di, %bb.ag ], [ %3, %bb.ae ]
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  %i.de = sext i32 %storemerge160338 to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.dd, i64 %i.de
  %i.dg = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %i.df) #17
  %.not161 = icmp eq i32 %i.dg, 1
  br i1 %.not161, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph340
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.20) #17
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph340, %bb.af
  %i.dh = load i32, ptr %i.a, align 4, !tbaa !4
  %i.di = add nsw i32 %i.dh, 1                    ; 3 uses
  store i32 %i.di, ptr %i.a, align 4, !tbaa !4
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.dk = icmp slt i32 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph340, label %._crit_edge341

._crit_edge341:                                   ; preds = %bb.ag, %bb.ae
  call void (...) @cube_setup() #17
  %i.dl = load i32, ptr @cube, align 8, !tbaa !20
  %i.dm = sext i32 %i.dl to i64
  %i.dn = shl nsw i64 %i.dm, 3
  %i.do = call noalias ptr @malloc(i64 noundef %i.dn) #22 ; 2 uses
  store ptr %i.do, ptr %i.h, align 8, !tbaa !29
  %5 = load i32, ptr @cube, align 8, !tbaa !20    ; 2 uses
  %i.dp = icmp sgt i32 %5, 0
  br i1 %i.dp, label %.lr.ph.preheader.i173, label %PLA_labels.exit.backedge

.lr.ph.preheader.i173:                            ; preds = %._crit_edge341
  %i.dq = zext nneg i32 %5 to i64
  %i.dr = shl nuw nsw i64 %i.dq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.do, i8 0, i64 %i.dr, i1 false), !tbaa !36
  br label %PLA_labels.exit.backedge

bb.ah:                                            ; preds = %bb.t
  %.not123 = icmp eq i16 %lhsv298, 112
  br i1 %.not123, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ds = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.b) #17 ; 0 uses
  br label %PLA_labels.exit.backedge

bb.aj:                                            ; preds = %bb.ah
  %.not126 = icmp eq i16 %lhsv298, 101
  %lhsv127 = load i32, ptr %i.c, align 16         ; 2 uses
  %.not129 = icmp eq i32 %lhsv127, 6581861
  %or.cond = select i1 %.not126, i1 true, i1 %.not129
  br i1 %or.cond, label %bb.ee, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = load i32, ptr %i.c, align 16
  %i.du = xor i32 %i.dt, 1936943467
  %i.dv = getelementptr i8, ptr %i.c, i64 4
  %i.dw = load i8, ptr %i.dv, align 4
  %i.dx = zext i8 %i.dw to i32
  %i.dy = or i32 %i.du, %i.dx
  %i.dz = icmp ne i32 %i.dy, 0
  %i.ea = zext i1 %i.dz to i32
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 1, ptr @kiss, align 4, !tbaa !4
  br label %PLA_labels.exit.backedge

bb.am:                                            ; preds = %bb.ak
  %i.ec = load i32, ptr %i.c, align 16
  %i.ed = xor i32 %i.ec, 1701869940
  %i.ee = getelementptr i8, ptr %i.c, i64 4
  %i.ef = load i8, ptr %i.ee, align 4
  %i.eg = zext i8 %i.ef to i32
  %i.eh = or i32 %i.ed, %i.eg
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %.preheader305, label %bb.as

.preheader305:                                    ; preds = %bb.am, %bb.an
  %i.el = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i175 = icmp eq i32 %i.el, -1
  br i1 %.not.i175, label %.critedge.i177, label %bb.an

bb.an:                                            ; preds = %.preheader305
  %i.em = tail call ptr @__ctype_b_loc() #16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !8
  %i.eo = sext i32 %i.el to i64
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.en, i64 %i.eo
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !11
  %i.er = and i16 %i.eq, 8192
  %.not16.i176 = icmp eq i16 %i.er, 0
  br i1 %.not16.i176, label %.critedge.i177, label %.preheader305

.critedge.i177:                                   ; preds = %bb.an, %.preheader305
  %i.es = trunc i32 %i.el to i8
  store i8 %i.es, ptr %i.c, align 16, !tbaa !13
  %i.et = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i178 = icmp eq i32 %i.et, -1
  br i1 %.not1719.i178, label %get_word.exit187, label %.lr.ph.i179

.lr.ph.i179:                                      ; preds = %.critedge.i177
  %i.eu = tail call ptr @__ctype_b_loc() #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ap, %.lr.ph.i179
  %indvars.iv.i180 = phi i64 [ 1, %.lr.ph.i179 ], [ %indvars.iv.next.i185, %bb.ap ] ; 3 uses
  %i.ev = phi i32 [ %i.et, %.lr.ph.i179 ], [ %i.fd, %bb.ap ] ; 2 uses
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !8
  %i.ex = sext i32 %i.ev to i64
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !11
  %i.fa = and i16 %i.ez, 8192
  %.not18.i181 = icmp eq i16 %i.fa, 0
  br i1 %.not18.i181, label %bb.ap, label %.critedge2.loopexit.i182

bb.ap:                                            ; preds = %bb.ao
  %i.fb = trunc i32 %i.ev to i8
  %indvars.iv.next.i185 = add nuw nsw i64 %indvars.iv.i180, 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i180
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !13
  %i.fd = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i186 = icmp eq i32 %i.fd, -1
  br i1 %.not17.i186, label %.critedge2.loopexit.i182, label %bb.ao

.critedge2.loopexit.i182:                         ; preds = %bb.ap, %bb.ao
  %.0.lcssa.ph.in.i183 = phi i64 [ %indvars.iv.i180, %bb.ao ], [ %indvars.iv.next.i185, %bb.ap ]
  %i.fe = and i64 %.0.lcssa.ph.in.i183, 4294967295
  br label %get_word.exit187

get_word.exit187:                                 ; preds = %.critedge.i177, %.critedge2.loopexit.i182
  %.0.lcssa.i184 = phi i64 [ 1, %.critedge.i177 ], [ %i.fe, %.critedge2.loopexit.i182 ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i184
  store i8 0, ptr %i.ff, align 1, !tbaa !13
  %i.fg = load ptr, ptr @pla_types, align 8, !tbaa !42 ; 2 uses
  %.not156335 = icmp eq ptr %i.fg, null
  br i1 %.not156335, label %._crit_edge, label %.lr.ph337

bb.aq:                                            ; preds = %.lr.ph337
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr @pla_types, i64 %indvars.iv.next365
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !42 ; 2 uses
  %.not156 = icmp eq ptr %i.fi, null
  br i1 %.not156, label %._crit_edge, label %.lr.ph337

.lr.ph337:                                        ; preds = %get_word.exit187, %bb.aq
  %indvars.iv364 = phi i64 [ %indvars.iv.next365, %bb.aq ], [ 0, %get_word.exit187 ] ; 2 uses
  %i.fj = phi ptr [ %i.fi, %bb.aq ], [ %i.fg, %get_word.exit187 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1
  %i.fl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fk, ptr noundef nonnull dereferenceable(1) %i.c) #19
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.ar, label %bb.aq

bb.ar:                                            ; preds = %.lr.ph337
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr @pla_types, i64 %indvars.iv364
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !44
  store i32 %i.fp, ptr %i.l, align 8, !tbaa !37
  br label %PLA_labels.exit.backedge

._crit_edge:                                      ; preds = %bb.aq, %get_word.exit187
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.28) #17
  br label %PLA_labels.exit.backedge

bb.as:                                            ; preds = %bb.am
  %.not134 = icmp eq i32 %lhsv127, 6450281
  br i1 %.not134, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.fq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.30) #17
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.fs = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.aw, label %PLA_labels.exit189

bb.aw:                                            ; preds = %bb.av
  %i.fu = load i32, ptr @cube, align 8, !tbaa !20
  %i.fv = sext i32 %i.fu to i64
  %i.fw = shl nsw i64 %i.fv, 3
  %i.fx = call noalias ptr @malloc(i64 noundef %i.fw) #22 ; 2 uses
  store ptr %i.fx, ptr %i.h, align 8, !tbaa !29
  %6 = load i32, ptr @cube, align 8, !tbaa !20    ; 2 uses
  %i.fy = icmp sgt i32 %6, 0
  br i1 %i.fy, label %.lr.ph.preheader.i188, label %PLA_labels.exit189

.lr.ph.preheader.i188:                            ; preds = %bb.aw
  %i.fz = zext nneg i32 %6 to i64
  %i.ga = shl nuw nsw i64 %i.fz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fx, i8 0, i64 %i.ga, i1 false), !tbaa !36
  br label %PLA_labels.exit189

PLA_labels.exit189:                               ; preds = %.lr.ph.preheader.i188, %bb.aw, %bb.av
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.gb = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.preheader, label %PLA_labels.exit.backedge

.preheader:                                       ; preds = %PLA_labels.exit189, %.preheader.backedge
  %i.gd = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i190 = icmp eq i32 %i.gd, -1
  br i1 %.not.i190, label %.critedge.i192, label %bb.ax

bb.ax:                                            ; preds = %.preheader
  %i.ge = tail call ptr @__ctype_b_loc() #16
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !8
  %i.gg = sext i32 %i.gd to i64
  %i.gh = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !11
  %i.gj = and i16 %i.gi, 8192
  %.not16.i191 = icmp eq i16 %i.gj, 0
  br i1 %.not16.i191, label %.critedge.i192, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.ax, %get_word.exit202
  br label %.preheader

.critedge.i192:                                   ; preds = %bb.ax, %.preheader
  %i.gk = trunc i32 %i.gd to i8
  store i8 %i.gk, ptr %i.c, align 16, !tbaa !13
  %i.gl = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i193 = icmp eq i32 %i.gl, -1
  br i1 %.not1719.i193, label %get_word.exit202, label %.lr.ph.i194

.lr.ph.i194:                                      ; preds = %.critedge.i192
  %i.gm = tail call ptr @__ctype_b_loc() #16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %.lr.ph.i194
  %indvars.iv.i195 = phi i64 [ 1, %.lr.ph.i194 ], [ %indvars.iv.next.i200, %bb.az ] ; 3 uses
  %i.gn = phi i32 [ %i.gl, %.lr.ph.i194 ], [ %i.gv, %bb.az ] ; 2 uses
  %i.go = load ptr, ptr %i.gm, align 8, !tbaa !8
  %i.gp = sext i32 %i.gn to i64
  %i.gq = getelementptr inbounds [2 x i8], ptr %i.go, i64 %i.gp
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !11
  %i.gs = and i16 %i.gr, 8192
  %.not18.i196 = icmp eq i16 %i.gs, 0
  br i1 %.not18.i196, label %bb.az, label %.critedge2.loopexit.i197

bb.az:                                            ; preds = %bb.ay
  %i.gt = trunc i32 %i.gn to i8
  %indvars.iv.next.i200 = add nuw nsw i64 %indvars.iv.i195, 1 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i195
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !13
  %i.gv = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i201 = icmp eq i32 %i.gv, -1
  br i1 %.not17.i201, label %.critedge2.loopexit.i197, label %bb.ay

.critedge2.loopexit.i197:                         ; preds = %bb.az, %bb.ay
  %.0.lcssa.ph.in.i198 = phi i64 [ %indvars.iv.i195, %bb.ay ], [ %indvars.iv.next.i200, %bb.az ]
  %i.gw = and i64 %.0.lcssa.ph.in.i198, 4294967295
  br label %get_word.exit202

get_word.exit202:                                 ; preds = %.critedge.i192, %.critedge2.loopexit.i197
  %.0.lcssa.i199 = phi i64 [ 1, %.critedge.i192 ], [ %i.gw, %.critedge2.loopexit.i197 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i199
  store i8 0, ptr %i.gx, align 1, !tbaa !13
  %i.gy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27
  %i.gz = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.gy, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !4
  %i.hd = call ptr @util_strsav(ptr noundef nonnull %i.c) #17
  %i.he = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.hf = sext i32 %i.hc to i64
  %i.hg = getelementptr [8 x i8], ptr %i.he, i64 %i.hf ; 2 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 8
  store ptr %i.hd, ptr %i.hh, align 8, !tbaa !36
  %i.hi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #19
  %i.hj = add i64 %i.hi, 6
  %i.hk = call noalias ptr @malloc(i64 noundef %i.hj) #22 ; 2 uses
  store ptr %i.hk, ptr %i.hg, align 8, !tbaa !36
  %i.hl = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.hk, ptr noundef nonnull dereferenceable(1) @.str.31, ptr noundef nonnull %i.c) #17 ; 0 uses
  %i.hm = load i32, ptr %i.a, align 4, !tbaa !4
  %i.hn = add nsw i32 %i.hm, 1                    ; 2 uses
  store i32 %i.hn, ptr %i.a, align 4, !tbaa !4
  %i.ho = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21
  %i.hp = icmp slt i32 %i.hn, %i.ho
  br i1 %i.hp, label %.preheader.backedge, label %PLA_labels.exit.backedge

bb.ba:                                            ; preds = %bb.as
  %i.hq = load i16, ptr %i.c, align 16
  %i.hr = xor i16 %i.hq, 25199
  %i.hs = getelementptr i8, ptr %i.c, i64 2
  %i.ht = load i8, ptr %i.hs, align 2
  %i.hu = zext i8 %i.ht to i16
  %i.hv = or i16 %i.hr, %i.hu
  %i.hw = icmp ne i16 %i.hv, 0
  %i.hx = zext i1 %i.hw to i32
  %i.hy = icmp eq i32 %i.hx, 0
  br i1 %i.hy, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %i.hz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.30) #17
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ib = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ic = icmp eq ptr %i.ib, null
  br i1 %i.ic, label %bb.be, label %PLA_labels.exit204

bb.be:                                            ; preds = %bb.bd
  %i.id = load i32, ptr @cube, align 8, !tbaa !20
  %i.ie = sext i32 %i.id to i64
  %i.if = shl nsw i64 %i.ie, 3
  %i.ig = call noalias ptr @malloc(i64 noundef %i.if) #22 ; 2 uses
  store ptr %i.ig, ptr %i.h, align 8, !tbaa !29
  %7 = load i32, ptr @cube, align 8, !tbaa !20    ; 2 uses
  %i.ih = icmp sgt i32 %7, 0
  br i1 %i.ih, label %.lr.ph.preheader.i203, label %PLA_labels.exit204

.lr.ph.preheader.i203:                            ; preds = %bb.be
  %i.ii = zext nneg i32 %7 to i64
  %i.ij = shl nuw nsw i64 %i.ii, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ig, i8 0, i64 %i.ij, i1 false), !tbaa !36
  br label %PLA_labels.exit204

PLA_labels.exit204:                               ; preds = %.lr.ph.preheader.i203, %bb.be, %bb.bd
  %i.ik = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.il = add nsw i32 %i.ik, -1                   ; 2 uses
  store i32 %i.il, ptr %i.a, align 4, !tbaa !4
  %i.im = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27
  %i.in = sext i32 %i.il to i64                   ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.im, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !4  ; 2 uses
  %i.iq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !28
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.iq, i64 %i.in
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !4
  %.not155333 = icmp sgt i32 %i.ip, %i.is
  br i1 %.not155333, label %PLA_labels.exit.backedge, label %.preheader301.preheader

.preheader301.preheader:                          ; preds = %PLA_labels.exit204
  %i.it = sext i32 %i.ip to i64
  br label %.preheader301

.preheader301:                                    ; preds = %.preheader301.preheader, %get_word.exit217
  %indvars.iv361 = phi i64 [ %i.it, %.preheader301.preheader ], [ %indvars.iv.next362, %get_word.exit217 ] ; 3 uses
  br label %bb.bf

bb.bf:                                            ; preds = %.preheader301, %bb.bg
  %i.iu = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i205 = icmp eq i32 %i.iu, -1
  br i1 %.not.i205, label %.critedge.i207, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iv = tail call ptr @__ctype_b_loc() #16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !8
  %i.ix = sext i32 %i.iu to i64
  %i.iy = getelementptr inbounds [2 x i8], ptr %i.iw, i64 %i.ix
  %i.iz = load i16, ptr %i.iy, align 2, !tbaa !11
  %i.ja = and i16 %i.iz, 8192
  %.not16.i206 = icmp eq i16 %i.ja, 0
  br i1 %.not16.i206, label %.critedge.i207, label %bb.bf

.critedge.i207:                                   ; preds = %bb.bg, %bb.bf
  %i.jb = trunc i32 %i.iu to i8
  store i8 %i.jb, ptr %i.c, align 16, !tbaa !13
  %i.jc = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i208 = icmp eq i32 %i.jc, -1
  br i1 %.not1719.i208, label %get_word.exit217, label %.lr.ph.i209

.lr.ph.i209:                                      ; preds = %.critedge.i207
  %i.jd = tail call ptr @__ctype_b_loc() #16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bi, %.lr.ph.i209
  %indvars.iv.i210 = phi i64 [ 1, %.lr.ph.i209 ], [ %indvars.iv.next.i215, %bb.bi ] ; 3 uses
  %i.je = phi i32 [ %i.jc, %.lr.ph.i209 ], [ %i.jm, %bb.bi ] ; 2 uses
  %i.jf = load ptr, ptr %i.jd, align 8, !tbaa !8
  %i.jg = sext i32 %i.je to i64
  %i.jh = getelementptr inbounds [2 x i8], ptr %i.jf, i64 %i.jg
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !11
  %i.jj = and i16 %i.ji, 8192
  %.not18.i211 = icmp eq i16 %i.jj, 0
  br i1 %.not18.i211, label %bb.bi, label %.critedge2.loopexit.i212

bb.bi:                                            ; preds = %bb.bh
  %i.jk = trunc i32 %i.je to i8
  %indvars.iv.next.i215 = add nuw nsw i64 %indvars.iv.i210, 1 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i210
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !13
  %i.jm = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i216 = icmp eq i32 %i.jm, -1
  br i1 %.not17.i216, label %.critedge2.loopexit.i212, label %bb.bh

.critedge2.loopexit.i212:                         ; preds = %bb.bi, %bb.bh
  %.0.lcssa.ph.in.i213 = phi i64 [ %indvars.iv.i210, %bb.bh ], [ %indvars.iv.next.i215, %bb.bi ]
  %i.jn = and i64 %.0.lcssa.ph.in.i213, 4294967295
  br label %get_word.exit217

get_word.exit217:                                 ; preds = %.critedge.i207, %.critedge2.loopexit.i212
  %.0.lcssa.i214 = phi i64 [ 1, %.critedge.i207 ], [ %i.jn, %.critedge2.loopexit.i212 ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i214
  store i8 0, ptr %i.jo, align 1, !tbaa !13
  %i.jp = call ptr @util_strsav(ptr noundef nonnull %i.c) #17
  %i.jq = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.jq, i64 %indvars.iv361
  store ptr %i.jp, ptr %i.jr, align 8, !tbaa !36
  %indvars.iv.next362 = add nsw i64 %indvars.iv361, 1
  %i.js = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !28
  %i.jt = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.ju
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !4
  %i.jx = sext i32 %i.jw to i64
  %.not155.not = icmp slt i64 %indvars.iv361, %i.jx
  br i1 %.not155.not, label %.preheader301, label %PLA_labels.exit.backedge

bb.bj:                                            ; preds = %bb.ba
  %i.jy = load i32, ptr %i.c, align 16
  %i.jz = xor i32 %i.jy, 1700946284
  %i.ka = getelementptr i8, ptr %i.c, i64 4
  %i.kb = load i16, ptr %i.ka, align 4
  %i.kc = zext i16 %i.kb to i32
  %i.kd = xor i32 %i.kc, 108
  %i.ke = or i32 %i.jz, %i.kd
  %i.kf = icmp ne i32 %i.ke, 0
  %i.kg = zext i1 %i.kf to i32
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.bk, label %bb.bu

bb.bk:                                            ; preds = %bb.bj
  %i.ki = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.34) #17
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.kk = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %bb.bn, label %PLA_labels.exit219

bb.bn:                                            ; preds = %bb.bm
  %i.km = load i32, ptr @cube, align 8, !tbaa !20
  %i.kn = sext i32 %i.km to i64
  %i.ko = shl nsw i64 %i.kn, 3
  %i.kp = call noalias ptr @malloc(i64 noundef %i.ko) #22 ; 2 uses
  store ptr %i.kp, ptr %i.h, align 8, !tbaa !29
  %8 = load i32, ptr @cube, align 8, !tbaa !20    ; 2 uses
  %i.kq = icmp sgt i32 %8, 0
  br i1 %i.kq, label %.lr.ph.preheader.i218, label %PLA_labels.exit219

.lr.ph.preheader.i218:                            ; preds = %bb.bn
  %i.kr = zext nneg i32 %8 to i64
  %i.ks = shl nuw nsw i64 %i.kr, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.kp, i8 0, i64 %i.ks, i1 false), !tbaa !36
  br label %PLA_labels.exit219

PLA_labels.exit219:                               ; preds = %.lr.ph.preheader.i218, %bb.bn, %bb.bm
  %i.kt = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.a) #17
  %.not153 = icmp eq i32 %i.kt, 1
  br i1 %.not153, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %PLA_labels.exit219
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.36) #17
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %PLA_labels.exit219
  %i.ku = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27
  %i.kv = load i32, ptr %i.a, align 4, !tbaa !4
  %i.kw = sext i32 %i.kv to i64                   ; 2 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !4  ; 2 uses
  %i.kz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !28
  %i.la = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.kw
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !4
  %.not154331 = icmp sgt i32 %i.ky, %i.lb
  br i1 %.not154331, label %PLA_labels.exit.backedge, label %.preheader302.preheader

.preheader302.preheader:                          ; preds = %bb.bp
  %i.lc = sext i32 %i.ky to i64
  br label %.preheader302

.preheader302:                                    ; preds = %.preheader302.preheader, %get_word.exit232
  %indvars.iv358 = phi i64 [ %i.lc, %.preheader302.preheader ], [ %indvars.iv.next359, %get_word.exit232 ] ; 3 uses
  br label %bb.bq

bb.bq:                                            ; preds = %.preheader302, %bb.br
  %i.ld = call i32 @getc(ptr noundef %0)          ; 3 uses
  %.not.i220 = icmp eq i32 %i.ld, -1
  br i1 %.not.i220, label %.critedge.i222, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.le = tail call ptr @__ctype_b_loc() #16
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !8
  %i.lg = sext i32 %i.ld to i64
  %i.lh = getelementptr inbounds [2 x i8], ptr %i.lf, i64 %i.lg
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !11
  %i.lj = and i16 %i.li, 8192
  %.not16.i221 = icmp eq i16 %i.lj, 0
  br i1 %.not16.i221, label %.critedge.i222, label %bb.bq

.critedge.i222:                                   ; preds = %bb.br, %bb.bq
  %i.lk = trunc i32 %i.ld to i8
  store i8 %i.lk, ptr %i.c, align 16, !tbaa !13
  %i.ll = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not1719.i223 = icmp eq i32 %i.ll, -1
  br i1 %.not1719.i223, label %get_word.exit232, label %.lr.ph.i224

.lr.ph.i224:                                      ; preds = %.critedge.i222
  %i.lm = tail call ptr @__ctype_b_loc() #16
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph.i224
  %indvars.iv.i225 = phi i64 [ 1, %.lr.ph.i224 ], [ %indvars.iv.next.i230, %bb.bt ] ; 3 uses
  %i.ln = phi i32 [ %i.ll, %.lr.ph.i224 ], [ %i.lv, %bb.bt ] ; 2 uses
  %i.lo = load ptr, ptr %i.lm, align 8, !tbaa !8
  %i.lp = sext i32 %i.ln to i64
  %i.lq = getelementptr inbounds [2 x i8], ptr %i.lo, i64 %i.lp
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !11
  %i.ls = and i16 %i.lr, 8192
  %.not18.i226 = icmp eq i16 %i.ls, 0
  br i1 %.not18.i226, label %bb.bt, label %.critedge2.loopexit.i227

bb.bt:                                            ; preds = %bb.bs
  %i.lt = trunc i32 %i.ln to i8
  %indvars.iv.next.i230 = add nuw nsw i64 %indvars.iv.i225, 1 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i225
  store i8 %i.lt, ptr %i.lu, align 1, !tbaa !13
  %i.lv = call i32 @getc(ptr noundef %0)          ; 2 uses
  %.not17.i231 = icmp eq i32 %i.lv, -1
  br i1 %.not17.i231, label %.critedge2.loopexit.i227, label %bb.bs

.critedge2.loopexit.i227:                         ; preds = %bb.bt, %bb.bs
  %.0.lcssa.ph.in.i228 = phi i64 [ %indvars.iv.i225, %bb.bs ], [ %indvars.iv.next.i230, %bb.bt ]
  %i.lw = and i64 %.0.lcssa.ph.in.i228, 4294967295
  br label %get_word.exit232

get_word.exit232:                                 ; preds = %.critedge.i222, %.critedge2.loopexit.i227
  %.0.lcssa.i229 = phi i64 [ 1, %.critedge.i222 ], [ %i.lw, %.critedge2.loopexit.i227 ]
  %i.lx = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.i229
  store i8 0, ptr %i.lx, align 1, !tbaa !13
  %i.ly = call ptr @util_strsav(ptr noundef nonnull %i.c) #17
  %i.lz = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.lz, i64 %indvars.iv358
  store ptr %i.ly, ptr %i.ma, align 8, !tbaa !36
  %indvars.iv.next359 = add nsw i64 %indvars.iv358, 1
  %i.mb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !28
  %i.mc = load i32, ptr %i.a, align 4, !tbaa !4
  %i.md = sext i32 %i.mc to i64
  %i.me = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.md
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !4
  %i.mg = sext i32 %i.mf to i64
  %.not154.not = icmp slt i64 %indvars.iv358, %i.mg
  br i1 %.not154.not, label %.preheader302, label %PLA_labels.exit.backedge

bb.bu:                                            ; preds = %bb.bj
  %i.mh = load i64, ptr %i.c, align 16
  %i.mi = xor i64 %i.mh, 7163375907957995891
  %i.mj = getelementptr i8, ptr %i.c, i64 8
  %i.mk = load i8, ptr %i.mj, align 8
  %i.ml = zext i8 %i.mk to i64
  %i.mm = or i64 %i.mi, %i.ml
  %i.mn = icmp ne i64 %i.mm, 0
  %i.mo = zext i1 %i.mn to i32
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %bb.bv, label %bb.cb

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.mq = call i32 @read_symbolic(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %.not151 = icmp eq i32 %i.mq, 0
  br i1 %.not151, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.mr = load ptr, ptr %i.k, align 8, !tbaa !45  ; 2 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %bb.bx, label %.preheader308

bb.bx:                                            ; preds = %bb.bw
  %i.mt = load ptr, ptr %i.d, align 8, !tbaa !46
  store ptr %i.mt, ptr %i.k, align 8, !tbaa !45
  br label %bb.ca

.preheader308:                                    ; preds = %bb.bw, %.preheader308
  %.0107 = phi ptr [ %i.mv, %.preheader308 ], [ %i.mr, %bb.bw ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.0107, i64 32
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !47 ; 2 uses
  %.not152 = icmp eq ptr %i.mv, null
  br i1 %.not152, label %bb.by, label %.preheader308

bb.by:                                            ; preds = %.preheader308
  %i.mw = getelementptr inbounds nuw i8, ptr %.0107, i64 32
  %i.mx = load ptr, ptr %i.d, align 8, !tbaa !46
  store ptr %i.mx, ptr %i.mw, align 8, !tbaa !47
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bv
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.38) #17
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bx, %bb.by, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  br label %PLA_labels.exit.backedge

bb.cb:                                            ; preds = %bb.bu
  %i.my = load i128, ptr %i.c, align 16
  %i.mz = icmp ne i128 %i.my, 604688387110099328072347220534196595
  %i.na = zext i1 %i.mz to i32
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %bb.cc, label %bb.ci

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.nc = call i32 @read_symbolic(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
  %.not149 = icmp eq i32 %i.nc, 0
  br i1 %.not149, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.nd = load ptr, ptr %i.j, align 8, !tbaa !51  ; 2 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %bb.ce, label %.preheader309

bb.ce:                                            ; preds = %bb.cd
  %i.nf = load ptr, ptr %i.e, align 8, !tbaa !46
  store ptr %i.nf, ptr %i.j, align 8, !tbaa !51
  br label %bb.ch

.preheader309:                                    ; preds = %bb.cd, %.preheader309
  %.0 = phi ptr [ %i.nh, %.preheader309 ], [ %i.nd, %bb.cd ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !47 ; 2 uses
  %.not150 = icmp eq ptr %i.nh, null
  br i1 %.not150, label %bb.cf, label %.preheader309

bb.cf:                                            ; preds = %.preheader309
  %i.ni = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.nj = load ptr, ptr %i.e, align 8, !tbaa !46
  store ptr %i.nj, ptr %i.ni, align 8, !tbaa !47
  br label %bb.ch

bb.cg:                                            ; preds = %bb.cc
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.40) #17
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ce, %bb.cf, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %PLA_labels.exit.backedge

bb.ci:                                            ; preds = %bb.cb
  %i.nk = load i32, ptr %i.c, align 16
  %i.nl = xor i32 %i.nk, 1935763568
  %i.nm = getelementptr i8, ptr %i.c, i64 4
  %i.nn = load i16, ptr %i.nm, align 4
end_hunk_0
begin_hunk_1_@read_pla:bb.a
  br i1 %i.o, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.preheader106
  %.lcssa109 = phi i32 [ %i.g, %.preheader106 ], [ %i.m, %bb.b ] ; 3 uses
  %i.p = load i32, ptr @kiss, align 4, !tbaa !4
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.q = add nsw i32 %.lcssa109, -3
  %i.r = add nsw i32 %.lcssa109, -2
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25 ; 3 uses
  %i.t = sext i32 %i.q to i64                     ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4    ; 3 uses
  %i.w = sext i32 %i.r to i64                     ; 4 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %.not86 = icmp eq i32 %i.v, %i.y
  br i1 %.not86, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.z = icmp sgt i32 %i.v, 0
  br i1 %i.z, label %.lr.ph113, label %._crit_edge114

.lr.ph113:                                        ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %.pre = load ptr, ptr %i.aa, align 8, !tbaa !29
  %.pre122 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.ac = tail call i64 @fwrite(ptr nonnull @.str.49, i64 45, i64 1, ptr %i.ab) #21 ; 0 uses
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !23
  %i.ae = tail call i64 @fwrite(ptr nonnull @.str.50, i64 41, i64 1, ptr %i.ad) #21 ; 0 uses
  br label %bb.ae

bb.e:                                             ; preds = %.lr.ph113, %bb.e
  %i.af = phi ptr [ %.pre122, %.lr.ph113 ], [ %i.ap, %bb.e ]
  %i.ag = phi ptr [ %.pre, %.lr.ph113 ], [ %i.ao, %bb.e ]
  %.1112 = phi i32 [ 0, %.lr.ph113 ], [ %i.av, %bb.e ] ; 3 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.t
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = add nsw i32 %i.ai, %.1112
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36
  %i.an = tail call ptr @util_strsav(ptr noundef %i.am) #17
  %i.ao = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 2 uses
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !27 ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.w
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = add nsw i32 %i.ar, %.1112
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.at
  store ptr %i.an, ptr %i.au, align 8, !tbaa !36
  %i.av = add nuw nsw i32 %.1112, 1               ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25 ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.w
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4  ; 2 uses
  %i.az = icmp slt i32 %i.av, %i.ay
  br i1 %i.az, label %bb.e, label %._crit_edge114.loopexit

._crit_edge114.loopexit:                          ; preds = %bb.e
  %.pre123 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  br label %._crit_edge114

._crit_edge114:                                   ; preds = %._crit_edge114.loopexit, %.preheader
  %i.ba = phi i32 [ %.lcssa109, %.preheader ], [ %.pre123, %._crit_edge114.loopexit ]
  %.lcssa111 = phi ptr [ %i.s, %.preheader ], [ %i.aw, %._crit_edge114.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %i.v, %.preheader ], [ %i.ay, %._crit_edge114.loopexit ]
  %i.bb = getelementptr inbounds [4 x i8], ptr %.lcssa111, i64 %i.w
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr [4 x i8], ptr %.lcssa111, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = add nsw i32 %i.bf, %.lcssa
  store i32 %i.bg, ptr %i.bb, align 4, !tbaa !4
  %i.bh = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.bi = add nsw i32 %i.bh, -1
  store i32 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  tail call void (...) @setdown_cube() #17
  tail call void (...) @cube_setup() #17
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge114, %._crit_edge
  %i.bj = load i32, ptr @trace, align 4, !tbaa !4
  %.not87 = icmp eq i32 %i.bj, 0
  br i1 %.not87, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !38
  call void (i64, i32, ptr, ptr, ...) @totals(i64 noundef %i.d, i32 noundef 0, ptr noundef %i.bk, ptr noundef nonnull %5) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bl = call i64 (...) @util_cpu_time() #17
  %i.bm = load i32, ptr @pos, align 4, !tbaa !4
  %.not88 = icmp eq i32 %i.bm, 0
  br i1 %.not88, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !52
  %.not89 = icmp eq ptr %i.bn, null
  br i1 %.not89, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !51
  %.not90 = icmp eq ptr %i.bp, null
  %.not91 = icmp eq i32 %2, 0
  %or.cond = and i1 %.not91, %.not90
  br i1 %or.cond, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.j, %bb.i, %bb.h
  %i.bq = load i32, ptr %i.c, align 8, !tbaa !37
  switch i32 %i.bq, label %bb.l [
    i32 1, label %bb.k
    i32 3, label %bb.k
  ]

bb.k:                                             ; preds = %.thread, %.thread
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !40
  call void (ptr, ...) @sf_free(ptr noundef %i.bs) #17
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !39
  %i.bw = call ptr (ptr, ptr, ...) @cube2list(ptr noundef %i.bt, ptr noundef %i.bv) #17
  %i.bx = call ptr (ptr, ...) @complement(ptr noundef %i.bw) #17
  store ptr %i.bx, ptr %i.br, align 8, !tbaa !40
  br label %bb.o

bb.l:                                             ; preds = %bb.j, %.thread
  %.not91104 = phi i1 [ false, %.thread ], [ true, %bb.j ] ; 3 uses
  %.not92 = icmp ne i32 %1, 0
  %.pr = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.by = icmp eq i32 %.pr, 5
  %or.cond131 = select i1 %.not92, i1 %i.by, i1 false
  br i1 %or.cond131, label %bb.m, label %thread-pre-split

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !39
  call void (ptr, ...) @sf_free(ptr noundef %i.ca) #17
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !40
  %i.ce = call ptr (ptr, ptr, ...) @sf_join(ptr noundef %i.cb, ptr noundef %i.cd) #17
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.cg = add nsw i32 %i.cf, -1
  %i.ch = call ptr (ptr, i32, ...) @d1merge(ptr noundef %i.ce, i32 noundef %i.cg) #17 ; 2 uses
  %i.ci = call ptr (ptr, ...) @cube1list(ptr noundef %i.ch) #17
  %i.cj = call ptr (ptr, ...) @complement(ptr noundef %i.ci) #17
  store ptr %i.cj, ptr %i.bz, align 8, !tbaa !39
  call void (ptr, ...) @sf_free(ptr noundef %i.ch) #17
  br label %bb.o

thread-pre-split:                                 ; preds = %bb.l
  switch i32 %.pr, label %bb.o [
    i32 4, label %bb.n
    i32 6, label %bb.n
  ]

bb.n:                                             ; preds = %thread-pre-split, %thread-pre-split
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !38
  call void (ptr, ...) @sf_free(ptr noundef %i.ck) #17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !39
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !40
  %i.cp = call ptr (ptr, ptr, ...) @cube2list(ptr noundef %i.cm, ptr noundef %i.co) #17
  %i.cq = call ptr (ptr, ...) @complement(ptr noundef %i.cp) #17
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %thread-pre-split, %bb.m, %bb.n, %bb.k
  %.not91103 = phi i1 [ %.not91104, %thread-pre-split ], [ %.not91104, %bb.m ], [ %.not91104, %bb.n ], [ false, %bb.k ]
  %i.cr = load i32, ptr @trace, align 4, !tbaa !4
  %.not93 = icmp eq i32 %i.cr, 0
  br i1 %.not93, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !40
  call void (i64, i32, ptr, ptr, ...) @totals(i64 noundef %i.bl, i32 noundef 1, ptr noundef %i.ct, ptr noundef nonnull %5) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cu = load i32, ptr @pos, align 4, !tbaa !4
  %.not94 = icmp eq i32 %i.cu, 0
  br i1 %.not94, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !40
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !38
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !40
  %i.cy = load i32, ptr @cube, align 8, !tbaa !20 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, 33
  %i.da = add nsw i32 %i.cy, -1
  %i.db = lshr i32 %i.da, 3
  %i.dc = and i32 %i.db, 536870908
  %i.dd = add nuw nsw i32 %i.dc, 8
  %narrow = select i1 %i.cz, i32 8, i32 %i.dd
  %i.de = zext nneg i32 %narrow to i64
  %i.df = call noalias ptr @malloc(i64 noundef %i.de) #22
  %6 = load i32, ptr @cube, align 8, !tbaa !20
  %i.dg = call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.df, i32 noundef %6) #17 ; 2 uses
  store ptr %i.dg, ptr %i.b, align 8, !tbaa !52
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !41
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !26
  %i.dj = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [8 x i8], ptr %i.di, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !19
  %i.do = call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.dg, ptr noundef %i.dh, ptr noundef %i.dn) #17 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.dp = load ptr, ptr %i.b, align 8, !tbaa !52
  %.not95 = icmp eq ptr %i.dp, null
  br i1 %.not95, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = call ptr (ptr, ...) @set_phase(ptr noundef nonnull %i.a) #17 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !53
  %.not96 = icmp eq ptr %i.ds, null
  br i1 %.not96, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @set_pair(ptr noundef nonnull %i.a) #17
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !45
  %.not97 = icmp eq ptr %i.du, null
  br i1 %.not97, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dv = call i64 (...) @util_cpu_time() #17
  %i.dw = call i32 (ptr, ...) @map_symbolic(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.dx = load i32, ptr @trace, align 4, !tbaa !4
  %.not98 = icmp eq i32 %i.dx, 0
  br i1 %.not98, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dy = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.dz = call i64 (...) @util_cpu_time() #17
  %i.ea = sub nsw i64 %i.dz, %i.dv
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.dy, ptr noundef nonnull @.str.51, i64 noundef %i.ea) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !51
  %.not99 = icmp eq ptr %i.ec, null
  br i1 %.not99, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ed = call i64 (...) @util_cpu_time() #17
  %i.ee = call i32 (ptr, ...) @map_output_symbolic(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.ef = load i32, ptr @trace, align 4, !tbaa !4
  %.not100 = icmp eq i32 %i.ef, 0
  br i1 %.not100, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.eh = call i64 (...) @util_cpu_time() #17
  %i.ei = sub nsw i64 %i.eh, %i.ed
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.eg, ptr noundef nonnull @.str.52, i64 noundef %i.ei) #17
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %.not91103, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !40
  call void (ptr, ...) @sf_free(ptr noundef %i.ek) #17
  %i.el = call i64 (...) @util_cpu_time() #17
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !39
  %i.ep = call ptr (ptr, ptr, ...) @cube2list(ptr noundef %i.em, ptr noundef %i.eo) #17
  %i.eq = call ptr (ptr, ...) @complement(ptr noundef %i.ep) #17 ; 2 uses
  store ptr %i.eq, ptr %i.ej, align 8, !tbaa !40
  call void (i64, i32, ptr, ptr, ...) @totals(i64 noundef %i.el, i32 noundef 1, ptr noundef %i.eq, ptr noundef nonnull %5) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.z, %bb.ad, %bb.ac, %bb.a, %bb.d
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.d ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ 1, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret i32 %.0
}

declare i64 @util_cpu_time(...) local_unnamed_addr #5

declare void @setdown_cube(...) local_unnamed_addr #5

declare void @totals(...) local_unnamed_addr #5

declare void @sf_free(...) local_unnamed_addr #5

declare ptr @complement(...) local_unnamed_addr #5

declare ptr @cube2list(...) local_unnamed_addr #5

declare ptr @d1merge(...) local_unnamed_addr #5

declare ptr @sf_join(...) local_unnamed_addr #5

declare ptr @cube1list(...) local_unnamed_addr #5

declare ptr @set_diff(...) local_unnamed_addr #5

declare ptr @set_phase(...) local_unnamed_addr #5

declare void @set_pair(...) local_unnamed_addr #5

declare i32 @map_symbolic(...) local_unnamed_addr #5

declare void @print_trace(...) local_unnamed_addr #5

declare i32 @map_output_symbolic(...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @PLA_summary(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = tail call ptr @strrchr(ptr noundef nonnull readonly dereferenceable(1) %i.b, i32 noundef 47) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = select i1 %.not.i, ptr %i.b, ptr %i.d
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef nonnull %i.e) ; 0 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21 ; 4 uses
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22 ; 2 uses
  %i.i = add nsw i32 %i.h, -1
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  %i.l = sext i32 %i.g to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %i.g, i32 noundef %i.n) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, i32 noundef %i.h, i32 noundef %i.g) ; 0 uses
  %i.q = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !21 ; 2 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.t = sext i32 %i.q to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !25
  %i.v = getelementptr inbounds [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %i.w) ; 0 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !22
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.ab = load ptr, ptr %0, align 8, !tbaa !38
  %i.ac = tail call ptr (ptr, ...) @print_cost(ptr noundef %i.ab) #17
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, ptr noundef %i.ac) ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40
  %i.ag = tail call ptr (ptr, ...) @print_cost(ptr noundef %i.af) #17
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef %i.ag) ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  %i.ak = tail call ptr (ptr, ...) @print_cost(ptr noundef %i.aj) #17
  %i.al = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef %i.ak) ; 0 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !52 ; 2 uses
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call ptr (ptr, ...) @pc1(ptr noundef nonnull %i.an) #17
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, ptr noundef %i.ao) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !53
  %.not42 = icmp eq ptr %i.ar, null
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62) ; 0 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !53 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !54
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph56, label %._crit_edge57

.lr.ph56:                                         ; preds = %bb.g, %.lr.ph56
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.lr.ph56 ], [ 0, %bb.g ] ; 3 uses
  %i.aw = phi ptr [ %i.bg, %.lr.ph56 ], [ %i.at, %bb.g ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !56
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv73
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !57
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv73
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4
  %i.bf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.63, i32 noundef %i.ba, i32 noundef %i.be) ; 0 uses
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %i.bg = load ptr, ptr %i.aq, align 8, !tbaa !53 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !54
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next74, %i.bi
  br i1 %i.bj, label %.lr.ph56, label %._crit_edge57

._crit_edge57:                                    ; preds = %.lr.ph56, %bb.g
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !23
  %i.bl = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.bk), !inline_history !58 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge57, %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !45 ; 2 uses
  %.not43 = icmp eq ptr %i.bn, null
  br i1 %.not43, label %.loopexit52, label %.preheader51

.preheader51:                                     ; preds = %bb.h, %._crit_edge63
  %.064 = phi ptr [ %i.bv, %._crit_edge63 ], [ %i.bn, %bb.h ] ; 2 uses
  %i.bo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65) ; 0 uses
  %.03258 = load ptr, ptr %.064, align 8, !tbaa !61 ; 2 uses
  %.not4959 = icmp eq ptr %.03258, null
  br i1 %.not4959, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %.preheader51, %.lr.ph62
  %.03260 = phi ptr [ %.032, %.lr.ph62 ], [ %.03258, %.preheader51 ] ; 2 uses
  %i.bp = load i32, ptr %.03260, align 8, !tbaa !62
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %i.bp) ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.03260, i64 8
  %.032 = load ptr, ptr %i.br, align 8, !tbaa !61 ; 2 uses
  %.not49 = icmp eq ptr %.032, null
  br i1 %.not49, label %._crit_edge63, label %.lr.ph62

._crit_edge63:                                    ; preds = %.lr.ph62, %.preheader51
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !23
  %i.bt = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.bs), !inline_history !58 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.064, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !47 ; 2 uses
  %.not44 = icmp eq ptr %i.bv, null
  br i1 %.not44, label %.loopexit52, label %.preheader51

.loopexit52:                                      ; preds = %._crit_edge63, %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !51 ; 2 uses
  %.not45 = icmp eq ptr %i.bx, null
  br i1 %.not45, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit52, %._crit_edge70
  %.171 = phi ptr [ %i.cg, %._crit_edge70 ], [ %i.bx, %.loopexit52 ] ; 2 uses
  %i.by = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66) ; 0 uses
  %.13365 = load ptr, ptr %.171, align 8, !tbaa !61 ; 2 uses
  %.not4766 = icmp eq ptr %.13365, null
  br i1 %.not4766, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %.preheader, %.lr.ph69
  %.13367 = phi ptr [ %.133, %.lr.ph69 ], [ %.13365, %.preheader ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.13367, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !64
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %i.ca) ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.13367, i64 8
  %.133 = load ptr, ptr %i.cc, align 8, !tbaa !61 ; 2 uses
  %.not47 = icmp eq ptr %.133, null
  br i1 %.not47, label %._crit_edge70, label %.lr.ph69

._crit_edge70:                                    ; preds = %.lr.ph69, %.preheader
  %i.cd = load ptr, ptr @stdout, align 8, !tbaa !23
  %i.ce = tail call noundef i32 @putc(i32 noundef 10, ptr noundef %i.cd), !inline_history !58 ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.171, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !47 ; 2 uses
  %.not46 = icmp eq ptr %i.cg, null
  br i1 %.not46, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %._crit_edge70, %.loopexit52
  %i.ch = load ptr, ptr @stdout, align 8, !tbaa !23
  %i.ci = tail call i32 @fflush(ptr noundef %i.ch) ; 0 uses
  ret void
}

declare ptr @print_cost(...) local_unnamed_addr #5

declare ptr @pc1(...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @new_PLA() local_unnamed_addr #10 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.a, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: write, target_mem: none) uwtable
define dso_local i32 @PLA_labels(ptr nofree noundef writeonly captures(none) initializes((56, 64)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr @cube, align 8, !tbaa !20
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #22 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.d, ptr %i.e, align 8, !tbaa !29
  %1 = load i32, ptr @cube, align 8, !tbaa !20    ; 2 uses
  %i.f = icmp sgt i32 %1, 0
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = zext nneg i32 %1 to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.h, i1 false), !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local void @free_PLA(ptr noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !38     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.a) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 2 uses
  %.not79 = icmp eq ptr %i.c, null
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.c) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  %.not80 = icmp eq ptr %i.e, null
  br i1 %.not80, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.e) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %.not81 = icmp eq ptr %i.g, null
  br i1 %.not81, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.g) #17
  store ptr null, ptr %i.f, align 8, !tbaa !52
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53   ; 3 uses
  %.not82 = icmp eq ptr %i.i, null
  br i1 %.not82, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 2 uses
  %.not83 = icmp eq ptr %i.k, null
  br i1 %.not83, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.k) #17
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.n = phi ptr [ %i.l, %bb.k ], [ %i.i, %bb.j ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !57   ; 2 uses
  %.not84 = icmp eq ptr %i.p, null
  br i1 %.not84, label %bb.m, label %.thread

.thread:                                          ; preds = %bb.l
  tail call void @free(ptr noundef nonnull %i.p) #17
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !53   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr null, ptr %i.r, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  %i.s = phi ptr [ %i.q, %.thread ], [ %i.n, %bb.l ]
  tail call void @free(ptr noundef nonnull %i.s) #17
  store ptr null, ptr %i.h, align 8, !tbaa !53
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29   ; 3 uses
  %.not86 = icmp eq ptr %i.u, null
  br i1 %.not86, label %bb.q, label %.preheader

.preheader:                                       ; preds = %bb.n
  %i.v = load i32, ptr @cube, align 8, !tbaa !20  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %i.x = phi i32 [ %i.ad, %bb.p ], [ %i.v, %.preheader ]
  %i.y = phi ptr [ %i.ae, %bb.p ], [ %i.u, %.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not93 = icmp eq ptr %i.aa, null
  br i1 %.not93, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.aa) #17
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !29  ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  store ptr null, ptr %i.ac, align 8, !tbaa !36
  %.pre = load i32, ptr @cube, align 8, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.o
  %i.ad = phi i32 [ %i.x, %.lr.ph ], [ %.pre, %bb.o ] ; 2 uses
  %i.ae = phi ptr [ %i.y, %.lr.ph ], [ %i.ab, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.af = sext i32 %i.ad to i64
  %i.ag = icmp slt i64 %indvars.iv.next, %i.af
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %i.ah = phi ptr [ %i.u, %.preheader ], [ %i.ae, %bb.p ]
  tail call void @free(ptr noundef nonnull %i.ah) #17
  store ptr null, ptr %i.t, align 8, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !60 ; 2 uses
  %.not88 = icmp eq ptr %i.aj, null
  br i1 %.not88, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.aj) #17
  store ptr null, ptr %i.ai, align 8, !tbaa !60
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 2 uses
  %.not89101 = icmp eq ptr %i.al, null
  br i1 %.not89101, label %._crit_edge105, label %.lr.ph104

.lr.ph104:                                        ; preds = %bb.s, %._crit_edge100
  %.065102 = phi ptr [ %i.aq, %._crit_edge100 ], [ %i.al, %bb.s ] ; 3 uses
  %i.am = load ptr, ptr %.065102, align 8, !tbaa !65 ; 2 uses
  %.not9296 = icmp eq ptr %i.am, null
  br i1 %.not9296, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph104, %.lr.ph99
  %.06697 = phi ptr [ %i.ao, %.lr.ph99 ], [ %i.am, %.lr.ph104 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06697, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !66 ; 2 uses
  tail call void @free(ptr noundef nonnull %.06697) #17
  %.not92 = icmp eq ptr %i.ao, null
  br i1 %.not92, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99, %.lr.ph104
  %i.ap = getelementptr inbounds nuw i8, ptr %.065102, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47 ; 2 uses
  tail call void @free(ptr noundef nonnull %.065102) #17
  %.not89 = icmp eq ptr %i.aq, null
  br i1 %.not89, label %._crit_edge105, label %.lr.ph104

._crit_edge105:                                   ; preds = %._crit_edge100, %bb.s
  store ptr null, ptr %i.ak, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !51 ; 2 uses
  %.not90111 = icmp eq ptr %i.as, null
  br i1 %.not90111, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %._crit_edge105, %._crit_edge110
  %.1112 = phi ptr [ %i.ax, %._crit_edge110 ], [ %i.as, %._crit_edge105 ] ; 3 uses
  %i.at = load ptr, ptr %.1112, align 8, !tbaa !65 ; 2 uses
  %.not91106 = icmp eq ptr %i.at, null
  br i1 %.not91106, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %.lr.ph114, %.lr.ph109
  %.167107 = phi ptr [ %i.av, %.lr.ph109 ], [ %i.at, %.lr.ph114 ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.167107, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !66 ; 2 uses
  tail call void @free(ptr noundef nonnull %.167107) #17
  %.not91 = icmp eq ptr %i.av, null
  br i1 %.not91, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109, %.lr.ph114
  %i.aw = getelementptr inbounds nuw i8, ptr %.1112, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !47 ; 2 uses
  tail call void @free(ptr noundef nonnull %.1112) #17
  %.not90 = icmp eq ptr %i.ax, null
  br i1 %.not90, label %._crit_edge115, label %.lr.ph114

._crit_edge115:                                   ; preds = %._crit_edge110, %._crit_edge105
  tail call void @free(ptr noundef %0) #17
  ret void
end_hunk_1
