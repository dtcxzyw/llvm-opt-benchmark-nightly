Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/run-test262?download=true
inline.NumInlined: 247
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@run_test:bb.a

bb.i:                                             ; preds = %bb.o, %bb.h
  %.0.i = phi ptr [ %i.e, %bb.h ], [ %i.aj, %bb.o ] ; 6 uses
  %i.v = load i8, ptr %.0.i, align 1, !tbaa !27   ; 2 uses
  switch i8 %i.v, label %bb.o [
    i8 0, label %.thread
    i8 47, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !27
  %i.y = icmp eq i8 %i.x, 42
  br i1 %i.y, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !27
  %i.ab = icmp eq i8 %i.aa, 45
  br i1 %i.ab, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !27  ; 2 uses
  %.not28.i = icmp eq i8 %i.ad, 47
  br i1 %.not28.i, label %bb.o, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 3 ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.critedge2.i
  %i.af = phi i8 [ %.pr.i, %.critedge2.i ], [ %i.ad, %.preheader.i.preheader ]
  %.1.i = phi ptr [ %i.ai, %.critedge2.i ], [ %i.ae, %.preheader.i.preheader ] ; 4 uses
  switch i8 %i.af, label %..critedge2_crit_edge.i [
    i8 0, label %bb.n
    i8 42, label %bb.m
  ]

..critedge2_crit_edge.i:                          ; preds = %.preheader.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %.pr.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !tbaa !27
  br label %.critedge2.i

bb.m:                                             ; preds = %.preheader.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !27  ; 2 uses
  %.not31.i = icmp eq i8 %i.ah, 47
  br i1 %.not31.i, label %bb.p, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.m, %..critedge2_crit_edge.i
  %.pr.i = phi i8 [ %.pr.pre.i, %..critedge2_crit_edge.i ], [ %i.ah, %bb.m ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %.preheader.i, !llvm.loop !10

bb.n:                                             ; preds = %.preheader.i
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.41)
  br label %.thread

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.i, !llvm.loop !11

bb.p:                                             ; preds = %bb.m
  %i.ak = ptrtoint ptr %.1.i to i64
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = shl i64 %i.am, 32                       ; 2 uses
  %sext.i = add i64 %i.an, 4294967296
  %i.ao = ashr exact i64 %sext.i, 32
  %i.ap = call noalias ptr @malloc(i64 noundef %i.ao) #44 ; 7 uses
  %i.aq = ashr exact i64 %i.an, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.ae, i64 %i.aq, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.as = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) @.str.53) #45 ; 2 uses
  %.not.i186 = icmp eq ptr %i.as, null
  br i1 %.not.i186, label %find_tag.exit.thread, label %find_tag.exit

find_tag.exit:                                    ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  store i32 0, ptr %i.d, align 4, !tbaa !41
  store ptr %i.at, ptr %i.c, align 8, !tbaa !29
  %i.au = call fastcc ptr @get_option(ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not145274 = icmp eq ptr %i.au, null
  br i1 %.not145274, label %.loopexit268, label %.lr.ph

.lr.ph:                                           ; preds = %find_tag.exit
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.u
  %i.ax = phi i32 [ %i.t, %.lr.ph ], [ %i.bq, %bb.u ] ; 5 uses
  %i.ay = phi i32 [ %i.u, %.lr.ph ], [ %i.br, %bb.u ] ; 4 uses
  %i.az = phi ptr [ %i.au, %.lr.ph ], [ %i.bt, %bb.u ] ; 3 uses
  %.0100275 = phi i8 [ 0, %.lr.ph ], [ %.1101, %bb.u ]
  %i.ba = phi ptr [ %.promoted, %.lr.ph ], [ %i.bs, %bb.u ] ; 3 uses
  %i.bb = load ptr, ptr @harness_exclude, align 8, !tbaa !29
  %i.bc = call ptr @find_word(ptr noundef %i.bb, ptr noundef nonnull %i.az)
  %.not165 = icmp eq ptr %i.bc, null
  br i1 %.not165, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bd = call noalias ptr @strdup(ptr noundef nonnull readonly %i.az) #40 ; 2 uses
  %.not.i188 = icmp eq ptr %i.bd, null
  br i1 %.not.i188, label %compose_path.exit.thread.i193, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = icmp eq i32 %i.ay, %i.ax
  br i1 %i.be, label %bb.t, label %namelist_add.exit194

bb.t:                                             ; preds = %bb.s
  %i.bf = ashr i32 %i.ax, 1
  %i.bg = add i32 %i.ax, 4
  %i.bh = add i32 %i.bg, %i.bf                    ; 3 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 3
  %i.bk = call ptr @realloc(ptr noundef %i.ba, i64 noundef %i.bj) #47 ; 2 uses
  %.not21.i190 = icmp eq ptr %i.bk, null
  br i1 %.not21.i190, label %compose_path.exit.thread.i193, label %.thread.i191

.thread.i191:                                     ; preds = %bb.t
  store i32 %i.bh, ptr %i.aw, align 4, !tbaa !40
  br label %namelist_add.exit194

compose_path.exit.thread.i193:                    ; preds = %bb.t, %bb.r
  call void (i32, ptr, ...) @fatal(i32 noundef 1, ptr noundef nonnull @.str.2)
  unreachable

namelist_add.exit194:                             ; preds = %bb.s, %.thread.i191
  %i.bl = phi i32 [ %i.bh, %.thread.i191 ], [ %i.ax, %bb.s ]
  %i.bm = phi ptr [ %i.bk, %.thread.i191 ], [ %i.ba, %bb.s ] ; 2 uses
  %i.bn = sext i32 %i.ay to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  store ptr %i.bd, ptr %i.bo, align 8, !tbaa !29
  %i.bp = add nsw i32 %i.ay, 1                    ; 2 uses
  store i32 %i.bp, ptr %i.av, align 8, !tbaa !38
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %namelist_add.exit194
  %i.bq = phi i32 [ %i.bl, %namelist_add.exit194 ], [ %i.ax, %bb.q ] ; 2 uses
  %i.br = phi i32 [ %i.bp, %namelist_add.exit194 ], [ %i.ay, %bb.q ] ; 2 uses
  %i.bs = phi ptr [ %i.bm, %namelist_add.exit194 ], [ %i.ba, %bb.q ] ; 2 uses
  %.1101 = phi i8 [ %.0100275, %namelist_add.exit194 ], [ 1, %bb.q ] ; 2 uses
  call void @free(ptr noundef nonnull %i.az) #40
  %i.bt = call fastcc ptr @get_option(ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not145 = icmp eq ptr %i.bt, null
  br i1 %.not145, label %.loopexit268, label %bb.q, !llvm.loop !108

.loopexit268:                                     ; preds = %bb.u, %find_tag.exit
  %i.bu = phi i32 [ %i.t, %find_tag.exit ], [ %i.bq, %bb.u ]
  %i.bv = phi i32 [ %i.u, %find_tag.exit ], [ %i.br, %bb.u ]
  %.lcssa272 = phi ptr [ %.promoted, %find_tag.exit ], [ %i.bs, %bb.u ] ; 2 uses
  %.0100.lcssa = phi i8 [ 0, %find_tag.exit ], [ %.1101, %bb.u ]
  store ptr %.lcssa272, ptr %3, align 8
  br label %find_tag.exit.thread

find_tag.exit.thread:                             ; preds = %bb.p, %.loopexit268
  %.pre.i216 = phi ptr [ %.lcssa272, %.loopexit268 ], [ %.promoted, %bb.p ] ; 3 uses
  %i.bw = phi i32 [ %i.bu, %.loopexit268 ], [ %i.t, %bb.p ] ; 3 uses
  %i.bx = phi i32 [ %i.bv, %.loopexit268 ], [ %i.u, %bb.p ] ; 4 uses
  %.2102 = phi i8 [ %.0100.lcssa, %.loopexit268 ], [ 0, %bb.p ] ; 3 uses
  %i.by = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) @.str.54) #45 ; 2 uses
  %.not.i195 = icmp eq ptr %i.by, null
  br i1 %.not.i195, label %.loopexit267, label %find_tag.exit197

find_tag.exit197:                                 ; preds = %find_tag.exit.thread
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  store ptr %i.bz, ptr %i.c, align 8, !tbaa !29
  %i.ca = call fastcc ptr @get_option(ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not147277 = icmp eq ptr %i.ca, null
  br i1 %.not147277, label %.loopexit267, label %.lr.ph286

.lr.ph286:                                        ; preds = %find_tag.exit197, %bb.ag
  %i.cb = phi ptr [ %i.dc, %bb.ag ], [ %i.ca, %find_tag.exit197 ] ; 9 uses
  %.091285 = phi i1 [ %.1, %bb.ag ], [ true, %find_tag.exit197 ] ; 7 uses
  %.092284 = phi i1 [ %.193, %bb.ag ], [ false, %find_tag.exit197 ] ; 6 uses
  %.096283 = phi i1 [ %.197, %bb.ag ], [ true, %find_tag.exit197 ] ; 6 uses
  %.3103282 = phi i8 [ %.4, %bb.ag ], [ %.2102, %find_tag.exit197 ] ; 7 uses
  %.0104281 = phi i8 [ %.1105, %bb.ag ], [ 0, %find_tag.exit197 ] ; 6 uses
  %.0109280 = phi i1 [ %.1110, %bb.ag ], [ false, %find_tag.exit197 ] ; 6 uses
  %.0113279 = phi i1 [ %.1114, %bb.ag ], [ false, %find_tag.exit197 ] ; 6 uses
  %.0117278 = phi i1 [ %.1118, %bb.ag ], [ false, %find_tag.exit197 ] ; 6 uses
  %i.cc = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(9) @.str.55) #45
  %.not.i198.not = icmp eq i32 %i.cc, 0
  br i1 %.not.i198.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph286
  %i.cd = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(4) @.str.56) #45
  %.not.i199.not = icmp eq i32 %i.cd, 0
  br i1 %.not.i199.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %.lr.ph286
  %i.ce = load i32, ptr @test_mode, align 4, !tbaa !41
  %i.cf = icmp eq i32 %i.ce, 3
  %i.cg = zext i1 %i.cf to i8
  %i.ch = or i8 %.3103282, %i.cg
  br label %bb.ag

bb.x:                                             ; preds = %bb.v
  %i.ci = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(11) @.str.57) #45
  %.not.i200.not = icmp eq i32 %i.ci, 0
  br i1 %.not.i200.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cj = load i32, ptr @test_mode, align 4, !tbaa !41
  %i.ck = icmp eq i32 %i.cj, 2
  %i.cl = zext i1 %i.ck to i8
  %i.cm = or i8 %.3103282, %i.cl
  br label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.cn = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(6) @.str.32) #45
  %.not.i201.not = icmp eq i32 %i.cn, 0
  br i1 %.not.i201.not, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.co = load i32, ptr @skip_async, align 4, !tbaa !41
  %i.cp = zext nneg i8 %.3103282 to i32
  %i.cq = or i32 %i.co, %i.cp
  %i.cr = icmp ne i32 %i.cq, 0
  %i.cs = zext i1 %i.cr to i8
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.ct = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(21) @.str.58) #45
  %.not.i202.not = icmp eq i32 %i.ct, 0
  br i1 %.not.i202.not, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cu = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(29) @.str.59) #45
  %.not.i203.not = icmp eq i32 %i.cu, 0
  br i1 %.not.i203.not, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cv = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(7) @.str.33) #45
  %.not.i204.not = icmp eq i32 %i.cv, 0
  br i1 %.not.i204.not, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cw = load i32, ptr @skip_module, align 4, !tbaa !41
  %i.cx = zext nneg i8 %.3103282 to i32
  %i.cy = or i32 %i.cw, %i.cx
  %i.cz = icmp ne i32 %i.cy, 0
  %i.da = zext i1 %i.cz to i8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.db = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(16) @.str.60) #45
  %.not.i205.not = icmp ne i32 %i.db, 0
  %spec.select = select i1 %.not.i205.not, i1 %.091285, i1 false
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ac, %bb.ab, %bb.y, %bb.ae, %bb.aa, %bb.w
  %.1118 = phi i1 [ true, %bb.w ], [ %.0117278, %bb.y ], [ %.0117278, %bb.aa ], [ %.0117278, %bb.af ], [ %.0117278, %bb.ab ], [ %.0117278, %bb.ae ], [ %.0117278, %bb.ac ] ; 2 uses
  %.1114 = phi i1 [ %.0113279, %bb.w ], [ true, %bb.y ], [ %.0113279, %bb.aa ], [ %.0113279, %bb.af ], [ %.0113279, %bb.ab ], [ %.0113279, %bb.ae ], [ %.0113279, %bb.ac ] ; 2 uses
  %.1110 = phi i1 [ %.0109280, %bb.w ], [ %.0109280, %bb.y ], [ true, %bb.aa ], [ %.0109280, %bb.af ], [ %.0109280, %bb.ab ], [ %.0109280, %bb.ae ], [ %.0109280, %bb.ac ] ; 2 uses
  %.1105 = phi i8 [ %.0104281, %bb.w ], [ %.0104281, %bb.y ], [ %.0104281, %bb.aa ], [ %.0104281, %bb.af ], [ %.0104281, %bb.ab ], [ 1, %bb.ae ], [ %.0104281, %bb.ac ] ; 2 uses
  %.4 = phi i8 [ %i.ch, %bb.w ], [ %i.cm, %bb.y ], [ %i.cs, %bb.aa ], [ %.3103282, %bb.af ], [ %.3103282, %bb.ab ], [ %i.da, %bb.ae ], [ %.3103282, %bb.ac ] ; 2 uses
  %.197 = phi i1 [ %.096283, %bb.w ], [ %.096283, %bb.y ], [ %.096283, %bb.aa ], [ %.096283, %bb.af ], [ false, %bb.ab ], [ %.096283, %bb.ae ], [ %.096283, %bb.ac ] ; 2 uses
  %.193 = phi i1 [ %.092284, %bb.w ], [ %.092284, %bb.y ], [ %.092284, %bb.aa ], [ %.092284, %bb.af ], [ %.092284, %bb.ab ], [ %.092284, %bb.ae ], [ true, %bb.ac ] ; 2 uses
  %.1 = phi i1 [ %.091285, %bb.w ], [ %.091285, %bb.y ], [ %.091285, %bb.aa ], [ %spec.select, %bb.af ], [ %.091285, %bb.ab ], [ %.091285, %bb.ae ], [ %.091285, %bb.ac ] ; 2 uses
  call void @free(ptr noundef nonnull %i.cb) #40
  %i.dc = call fastcc ptr @get_option(ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not147 = icmp eq ptr %i.dc, null
  br i1 %.not147, label %.loopexit267, label %.lr.ph286, !llvm.loop !109

.loopexit267:                                     ; preds = %bb.ag, %find_tag.exit.thread, %find_tag.exit197
  %.2119 = phi i1 [ false, %find_tag.exit.thread ], [ false, %find_tag.exit197 ], [ %.1118, %bb.ag ] ; 2 uses
  %.2115 = phi i1 [ false, %find_tag.exit.thread ], [ false, %find_tag.exit197 ], [ %.1114, %bb.ag ] ; 2 uses
  %.2111 = phi i1 [ false, %find_tag.exit.thread ], [ false, %find_tag.exit197 ], [ %.1110, %bb.ag ]
  %.2106 = phi i8 [ 0, %find_tag.exit.thread ], [ 0, %find_tag.exit197 ], [ %.1105, %bb.ag ] ; 2 uses
  %.5 = phi i8 [ %.2102, %find_tag.exit.thread ], [ %.2102, %find_tag.exit197 ], [ %.4, %bb.ag ] ; 3 uses
  %.298 = phi i1 [ true, %find_tag.exit.thread ], [ true, %find_tag.exit197 ], [ %.197, %bb.ag ] ; 2 uses
  %.294 = phi i1 [ false, %find_tag.exit.thread ], [ false, %find_tag.exit197 ], [ %.193, %bb.ag ] ; 2 uses
  %.2 = phi i1 [ true, %find_tag.exit.thread ], [ true, %find_tag.exit197 ], [ %.1, %bb.ag ] ; 2 uses
  %i.dd = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) @.str.61) #45 ; 2 uses
  %.not.i206 = icmp ne ptr %i.dd, null            ; 3 uses
  br i1 %.not.i206, label %find_tag.exit208, label %find_tag.exit211.thread

find_tag.exit208:                                 ; preds = %.loopexit267
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 9
  %i.df = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(1) @.str.62) #45 ; 2 uses
  %.not.i209 = icmp eq ptr %i.df, null
  br i1 %.not.i209, label %find_tag.exit211.thread, label %find_tag.exit211

find_tag.exit211:                                 ; preds = %find_tag.exit208
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 5
  %i.dh = tail call ptr @__ctype_b_loc() #46
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !31
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %find_tag.exit211
  %.0 = phi ptr [ %i.dg, %find_tag.exit211 ], [ %i.do, %bb.ah ] ; 4 uses
  %i.dj = load i8, ptr %.0, align 1, !tbaa !27
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !33
  %i.dn = and i16 %i.dm, 8192
  %.not150 = icmp eq i16 %i.dn, 0
  %i.do = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br i1 %.not150, label %bb.ai, label %bb.ah, !llvm.loop !110

bb.ai:                                            ; preds = %bb.ah
  %i.dp = call i64 @strcspn(ptr noundef nonnull %.0, ptr noundef nonnull @.str.63) #45
  %i.dq = shl i64 %i.dp, 32                       ; 2 uses
  %sext = add i64 %i.dq, 4294967296
  %i.dr = ashr exact i64 %sext, 32
  %i.ds = call noalias noundef ptr @malloc(i64 noundef %i.dr) #44 ; 3 uses
  %i.dt = ashr exact i64 %i.dq, 32                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr nonnull readonly align 1 %.0, i64 %i.dt, i1 false)
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  store i8 0, ptr %i.du, align 1, !tbaa !27
  br label %find_tag.exit211.thread

find_tag.exit211.thread:                          ; preds = %.loopexit267, %find_tag.exit208, %bb.ai
  %.1130 = phi ptr [ null, %find_tag.exit208 ], [ %i.ds, %bb.ai ], [ null, %.loopexit267 ] ; 2 uses
  %i.dv = call ptr @strstr(ptr noundef nonnull readonly dereferenceable(1) %i.ap, ptr noundef nonnull dereferenceable(1) @.str.64) #45 ; 2 uses
  %.not.i212 = icmp eq ptr %i.dv, null
  br i1 %.not.i212, label %find_tag.exit214.thread, label %find_tag.exit214

find_tag.exit214.thread:                          ; preds = %find_tag.exit211.thread
  store ptr null, ptr %i.c, align 8, !tbaa !29
  br label %.loopexit

find_tag.exit214:                                 ; preds = %find_tag.exit211.thread
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 9
  store i32 0, ptr %i.d, align 4, !tbaa !41
  store ptr %i.dw, ptr %i.c, align 8, !tbaa !29
  %i.dx = call fastcc ptr @get_option(ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not152295 = icmp eq ptr %i.dx, null
  br i1 %.not152295, label %.loopexit, label %.lr.ph297

.lr.ph297:                                        ; preds = %find_tag.exit214, %bb.al
  %i.dy = phi ptr [ %i.ee, %bb.al ], [ %i.dx, %find_tag.exit214 ] ; 4 uses
  %.6296 = phi i8 [ %.7, %bb.al ], [ %.5, %find_tag.exit214 ]
  %i.dz = load ptr, ptr @harness_features, align 8, !tbaa !29
  %i.ea = call ptr @find_word(ptr noundef %i.dz, ptr noundef nonnull %i.dy)
  %.not155 = icmp eq ptr %i.ea, null
  br i1 %.not155, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.lr.ph297
  %i.eb = load ptr, ptr @harness_skip_features, align 8, !tbaa !29
  %i.ec = call ptr @find_word(ptr noundef %i.eb, ptr noundef nonnull %i.dy)
  %.not156 = icmp eq ptr %i.ec, null
  br i1 %.not156, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ed = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.65, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %i.dy) ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %.lr.ph297
  %.7 = phi i8 [ %.6296, %.lr.ph297 ], [ 1, %bb.ak ], [ 1, %bb.aj ] ; 2 uses
  call void @free(ptr noundef nonnull %i.dy) #40
  %i.ee = call fastcc ptr @get_option(ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not152 = icmp eq ptr %i.ee, null
  br i1 %.not152, label %.loopexit, label %.lr.ph297, !llvm.loop !111

.loopexit:                                        ; preds = %bb.al, %find_tag.exit214, %find_tag.exit214.thread
  %.8 = phi i8 [ %.5, %find_tag.exit214.thread ], [ %.5, %find_tag.exit214 ], [ %.7, %bb.al ]
  call void @free(ptr noundef %i.ap) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  %i.ef = trunc nuw i8 %.8 to i1                  ; 2 uses
  br i1 %.2111, label %bb.am, label %.thread

bb.am:                                            ; preds = %.loopexit
  %i.eg = call noalias dereferenceable_or_null(19) ptr @strdup(ptr noundef nonnull readonly @.str.66) #40 ; 2 uses
  %.not.i215 = icmp eq ptr %i.eg, null
  br i1 %.not.i215, label %compose_path.exit.thread.i220, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ej = icmp eq i32 %i.bx, %i.bw
  br i1 %i.ej, label %bb.ao, label %namelist_add.exit221

bb.ao:                                            ; preds = %bb.an
  %i.ek = ashr i32 %i.bw, 1
  %i.el = add i32 %i.bw, 4
  %i.em = add i32 %i.el, %i.ek                    ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = shl nsw i64 %i.en, 3
  %i.ep = call ptr @realloc(ptr noundef %.pre.i216, i64 noundef %i.eo) #47 ; 3 uses
  %.not21.i217 = icmp eq ptr %i.ep, null
  br i1 %.not21.i217, label %compose_path.exit.thread.i220, label %.thread.i218

.thread.i218:                                     ; preds = %bb.ao
  store ptr %i.ep, ptr %3, align 8, !tbaa !39
  store i32 %i.em, ptr %i.ei, align 4, !tbaa !40
  br label %namelist_add.exit221

compose_path.exit.thread.i220:                    ; preds = %bb.ao, %bb.am
  call void (i32, ptr, ...) @fatal(i32 noundef 1, ptr noundef nonnull @.str.2)
  unreachable

namelist_add.exit221:                             ; preds = %bb.an, %.thread.i218
  %i.eq = phi ptr [ %i.ep, %.thread.i218 ], [ %.pre.i216, %bb.an ] ; 2 uses
  %i.er = sext i32 %i.bx to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.er
  store ptr %i.eg, ptr %i.es, align 8, !tbaa !29
  %i.et = add nsw i32 %i.bx, 1                    ; 2 uses
  store i32 %i.et, ptr %i.eh, align 8, !tbaa !38
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.n, %namelist_add.exit221, %.loopexit
  %.pre = phi ptr [ %.pre.i216, %.loopexit ], [ %i.eq, %namelist_add.exit221 ], [ %.promoted, %bb.n ], [ %.promoted, %bb.i ] ; 2 uses
  %i.eu = phi i32 [ %i.bx, %.loopexit ], [ %i.et, %namelist_add.exit221 ], [ %i.u, %bb.n ], [ %i.u, %bb.i ] ; 2 uses
  %.3256 = phi i1 [ %.2, %.loopexit ], [ %.2, %namelist_add.exit221 ], [ true, %bb.n ], [ true, %bb.i ] ; 2 uses
  %.395255 = phi i1 [ %.294, %.loopexit ], [ %.294, %namelist_add.exit221 ], [ false, %bb.n ], [ false, %bb.i ] ; 2 uses
  %.399254 = phi i1 [ %.298, %.loopexit ], [ %.298, %namelist_add.exit221 ], [ true, %bb.n ], [ true, %bb.i ]
  %.9253 = phi i1 [ %i.ef, %.loopexit ], [ %i.ef, %namelist_add.exit221 ], [ false, %bb.n ], [ false, %bb.i ]
  %.3107252 = phi i8 [ %.2106, %.loopexit ], [ %.2106, %namelist_add.exit221 ], [ 0, %bb.n ], [ %i.v, %bb.i ] ; 2 uses
  %.3112251 = phi i1 [ false, %.loopexit ], [ true, %namelist_add.exit221 ], [ false, %bb.n ], [ false, %bb.i ] ; 2 uses
  %.3116250 = phi i1 [ %.2115, %.loopexit ], [ %.2115, %namelist_add.exit221 ], [ false, %bb.n ], [ false, %bb.i ] ; 6 uses
  %.3120249 = phi i1 [ %.2119, %.loopexit ], [ %.2119, %namelist_add.exit221 ], [ false, %bb.n ], [ false, %bb.i ] ; 6 uses
  %.1122248 = phi i1 [ %.not.i206, %.loopexit ], [ %.not.i206, %namelist_add.exit221 ], [ false, %bb.n ], [ false, %bb.i ] ; 2 uses
  %.2131247 = phi ptr [ %.1130, %.loopexit ], [ %.1130, %namelist_add.exit221 ], [ null, %bb.n ], [ null, %bb.i ] ; 3 uses
  %i.ev = load i32, ptr @test_mode, align 4, !tbaa !41
  switch i32 %i.ev, label %.thread257 [
    i32 0, label %bb.ap
    i32 1, label %bb.aq
    i32 2, label %bb.au
    i32 3, label %bb.ar
    i32 4, label %bb.as
  ]

bb.ap:                                            ; preds = %.thread
  %i.ew = xor i1 %.3116250, true
  br label %bb.au

bb.aq:                                            ; preds = %.thread
  %not..3120249265 = xor i1 %.3120249, true
  br label %bb.au

bb.ar:                                            ; preds = %.thread
  br label %bb.au

bb.as:                                            ; preds = %.thread
  %i.ex = trunc nuw i8 %.3107252 to i1
  br i1 %i.ex, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ey = select i1 %.3116250, i1 %.3120249, i1 false
  br label %bb.au

bb.au:                                            ; preds = %.thread, %bb.at, %bb.ar, %bb.as, %bb.aq, %bb.ap
  %.1125.shrunk = phi i1 [ true, %bb.as ], [ %i.ew, %bb.ap ], [ %.3120249, %bb.ar ], [ %.3120249, %bb.aq ], [ %.3120249, %bb.at ], [ true, %.thread ]
  %.not153 = phi i1 [ false, %bb.as ], [ %.3116250, %bb.ap ], [ true, %bb.ar ], [ %not..3120249265, %bb.aq ], [ %.3116250, %bb.at ], [ %.3116250, %.thread ]
  %.0123 = phi i1 [ false, %bb.as ], [ false, %bb.ap ], [ %.3120249, %bb.ar ], [ false, %bb.aq ], [ %i.ey, %bb.at ], [ %.3116250, %.thread ]
  %or.cond174 = select i1 %.9253, i1 true, i1 %.0123
  br i1 %or.cond174, label %.thread257, label %bb.av

.thread257:                                       ; preds = %.thread, %bb.au
  %i.ez = atomicrmw volatile add ptr @test_skipped, i32 1 seq_cst, align 4 ; 0 uses
  br label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.fa = load i32, ptr @local, align 4, !tbaa !41
  %i.fb = icmp ne i32 %i.fa, 0
end_hunk_0
