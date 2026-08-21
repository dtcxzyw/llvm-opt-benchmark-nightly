inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0_@F_floatmul:bb.a
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr (...) @R_makefloat() #13
  store ptr %i.a, ptr @F_floatmul.result, align 8, !tbaa !30
  store i1 true, ptr @F_floatmul.needinit, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !29
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %sub_0, label %.tail.thread

sub_0:                                            ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.f = load i8, ptr %i.e, align 1
  %.not73 = icmp eq i8 %i.f, 48
  br i1 %.not73, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.d, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail, %bb.c
  %i.j = load i32, ptr %1, align 8, !tbaa !29
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %sub_052, label %.tail51.thread

sub_052:                                          ; preds = %.tail.thread
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %.not74 = icmp eq i8 %i.n, 48
  br i1 %.not74, label %.tail51, label %.tail51.thread

.tail51:                                          ; preds = %sub_052
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.d, label %.tail51.thread

bb.d:                                             ; preds = %.tail51, %.tail
  %i.r = load ptr, ptr @F_floatmul.result, align 8, !tbaa !30 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  store i16 48, ptr %i.t, align 1
  store i32 0, ptr %i.r, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 0, ptr %i.u, align 4, !tbaa !18
  br label %bb.m

.tail51.thread:                                   ; preds = %sub_052, %.tail51, %.tail.thread
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28
  %i.x = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatmul.man1, ptr noundef nonnull dereferenceable(1) %i.w) #13 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28
  %i.aa = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatmul.man2, ptr noundef nonnull dereferenceable(1) %i.z) #13 ; 0 uses
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.man1) #14 ; 4 uses
  %i.ac = getelementptr i8, ptr @F_floatmul.man1, i64 %i.ab
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.man2) #14 ; 4 uses
  %i.ae = getelementptr i8, ptr @F_floatmul.man2, i64 %i.ad
  %.03757 = getelementptr i8, ptr %i.ac, i64 -1   ; 4 uses
  %.not4458 = icmp ult ptr %.03757, @F_floatmul.man1
  br i1 %.not4458, label %.preheader55, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.tail51.thread
  %min.iters.check = icmp ult i64 %i.ab, 8
  br i1 %min.iters.check, label %.lr.ph.preheader113, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ab, -8                      ; 3 uses
  %i.af = sub i64 0, %n.vec
  %i.ag = getelementptr i8, ptr %.03757, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %vec.phi86 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ap, %vector.body ]
  %i.ah = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.03757, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 -3
  %i.aj = getelementptr i8, ptr %next.gep, i64 -7
  %wide.load = load <4 x i8>, ptr %i.ai, align 1, !tbaa !8
  %wide.load87 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !8
  %reverse = shufflevector <4 x i8> %wide.load, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse88 = shufflevector <4 x i8> %wide.load87, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ak = sext <4 x i8> %reverse to <4 x i32>
  %i.al = sext <4 x i8> %reverse88 to <4 x i32>
  %i.am = add <4 x i32> %vec.phi, splat (i32 -48)
  %i.an = add <4 x i32> %vec.phi86, splat (i32 -48)
  %i.ao = add <4 x i32> %i.am, %i.ak              ; 2 uses
  %i.ap = add <4 x i32> %i.an, %i.al              ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ap, %i.ao
  %i.ar = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.preheader55, label %.lr.ph.preheader113

.lr.ph.preheader113:                              ; preds = %.lr.ph.preheader, %middle.block
  %.03760.ph = phi ptr [ %.03757, %.lr.ph.preheader ], [ %i.ag, %middle.block ]
  %.04059.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph

.preheader55:                                     ; preds = %.lr.ph, %middle.block, %.tail51.thread
  %.040.lcssa = phi i32 [ 0, %.tail51.thread ], [ %i.ar, %middle.block ], [ %i.bi, %.lr.ph ]
  %.03661 = getelementptr i8, ptr %i.ae, i64 -1   ; 4 uses
  %.not4562 = icmp ult ptr %.03661, @F_floatmul.man2
  br i1 %.not4562, label %._crit_edge, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %.preheader55
  %min.iters.check90 = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check90, label %.lr.ph65.preheader109, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph65.preheader
  %n.vec92 = and i64 %i.ad, -8                    ; 3 uses
  %i.as = sub i64 0, %n.vec92
  %i.at = getelementptr i8, ptr %.03661, i64 %i.as
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph91
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next102, %vector.body93 ] ; 2 uses
  %vec.phi95 = phi <4 x i32> [ zeroinitializer, %vector.ph91 ], [ %i.bb, %vector.body93 ]
  %vec.phi96 = phi <4 x i32> [ zeroinitializer, %vector.ph91 ], [ %i.bc, %vector.body93 ]
  %i.au = sub i64 0, %index94
  %next.gep97 = getelementptr i8, ptr %.03661, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep97, i64 -3
  %i.aw = getelementptr i8, ptr %next.gep97, i64 -7
  %wide.load98 = load <4 x i8>, ptr %i.av, align 1, !tbaa !8
  %wide.load99 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !8
  %reverse100 = shufflevector <4 x i8> %wide.load98, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse101 = shufflevector <4 x i8> %wide.load99, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ax = sext <4 x i8> %reverse100 to <4 x i32>
  %i.ay = sext <4 x i8> %reverse101 to <4 x i32>
  %i.az = add <4 x i32> %vec.phi95, splat (i32 -48)
  %i.ba = add <4 x i32> %vec.phi96, splat (i32 -48)
  %i.bb = add <4 x i32> %i.az, %i.ax              ; 2 uses
  %i.bc = add <4 x i32> %i.ba, %i.ay              ; 2 uses
  %index.next102 = add nuw i64 %index94, 8        ; 2 uses
  %i.bd = icmp eq i64 %index.next102, %n.vec92
  br i1 %i.bd, label %middle.block103, label %vector.body93, !llvm.loop !40

middle.block103:                                  ; preds = %vector.body93
  %bin.rdx104 = add <4 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx104) ; 2 uses
  %cmp.n105 = icmp eq i64 %i.ad, %n.vec92
  br i1 %cmp.n105, label %._crit_edge, label %.lr.ph65.preheader109

.lr.ph65.preheader109:                            ; preds = %.lr.ph65.preheader, %middle.block103
  %.03664.ph = phi ptr [ %.03661, %.lr.ph65.preheader ], [ %i.at, %middle.block103 ]
  %.03963.ph = phi i32 [ 0, %.lr.ph65.preheader ], [ %i.be, %middle.block103 ]
  br label %.lr.ph65

.lr.ph:                                           ; preds = %.lr.ph.preheader113, %.lr.ph
  %.03760 = phi ptr [ %.037, %.lr.ph ], [ %.03760.ph, %.lr.ph.preheader113 ] ; 2 uses
  %.04059 = phi i32 [ %i.bi, %.lr.ph ], [ %.04059.ph, %.lr.ph.preheader113 ]
  %i.bf = load i8, ptr %.03760, align 1, !tbaa !8
  %i.bg = sext i8 %i.bf to i32
  %i.bh = add i32 %.04059, -48
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %.037 = getelementptr i8, ptr %.03760, i64 -1   ; 2 uses
  %.not44 = icmp ult ptr %.037, @F_floatmul.man1
  br i1 %.not44, label %.preheader55, label %.lr.ph, !llvm.loop !41

.lr.ph65:                                         ; preds = %.lr.ph65.preheader109, %.lr.ph65
  %.03664 = phi ptr [ %.036, %.lr.ph65 ], [ %.03664.ph, %.lr.ph65.preheader109 ] ; 2 uses
  %.03963 = phi i32 [ %i.bm, %.lr.ph65 ], [ %.03963.ph, %.lr.ph65.preheader109 ]
  %i.bj = load i8, ptr %.03664, align 1, !tbaa !8
  %i.bk = sext i8 %i.bj to i32
  %i.bl = add i32 %.03963, -48
  %i.bm = add i32 %i.bl, %i.bk                    ; 2 uses
  %.036 = getelementptr i8, ptr %.03664, i64 -1   ; 2 uses
  %.not45 = icmp ult ptr %.036, @F_floatmul.man2
  br i1 %.not45, label %._crit_edge, label %.lr.ph65, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph65, %middle.block103, %.preheader55
  %.039.lcssa = phi i32 [ 0, %.preheader55 ], [ %i.be, %middle.block103 ], [ %i.bm, %.lr.ph65 ]
  %i.bn = icmp sgt i32 %.040.lcssa, %.039.lcssa   ; 2 uses
  %F_floatmul.man1.F_floatmul.man2 = select i1 %i.bn, ptr @F_floatmul.man1, ptr @F_floatmul.man2 ; 8 uses
  %F_floatmul.man2.F_floatmul.man1 = select i1 %i.bn, ptr @F_floatmul.man2, ptr @F_floatmul.man1 ; 5 uses
  tail call void (ptr, ...) @S_trimzeros(ptr noundef nonnull %F_floatmul.man1.F_floatmul.man2) #13
  tail call void (ptr, ...) @S_trimzeros(ptr noundef nonnull %F_floatmul.man2.F_floatmul.man1) #13
  %i.bo = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %F_floatmul.man1.F_floatmul.man2) #14
  %i.bp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %F_floatmul.man2.F_floatmul.man1) #14 ; 2 uses
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = trunc i64 %i.bq to i32
  %i.bs = getelementptr i8, ptr %F_floatmul.man2.F_floatmul.man1, i64 %i.bp
  store i16 48, ptr @F_floatmul.prod, align 16
  %.04169 = getelementptr i8, ptr %i.bs, i64 -1   ; 2 uses
  %.not4670 = icmp ult ptr %.04169, %F_floatmul.man2.F_floatmul.man1
  br i1 %.not4670, label %._crit_edge72, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.lr.ph.i49
  %.04171 = phi ptr [ %.041, %.lr.ph.i49 ], [ %.04169, %._crit_edge ] ; 2 uses
  %i.bt = load i8, ptr %.04171, align 1, !tbaa !8 ; 2 uses
  %i.bu = icmp sgt i8 %i.bt, 48
  br i1 %i.bu, label %.lr.ph68, label %.lr.ph.i49

.lr.ph68:                                         ; preds = %.preheader
  %i.bv = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %F_floatmul.man1.F_floatmul.man2) #14
  %i.bw = getelementptr i8, ptr %F_floatmul.man1.F_floatmul.man2, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1     ; 2 uses
  %i.by = icmp uge ptr %i.bx, %F_floatmul.man1.F_floatmul.man2 ; 2 uses
  %narrow = add nsw i8 %i.bt, -49
  %i.bz = sext i8 %narrow to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph68, %_F_stradd.exit
  %.03867 = phi i32 [ 0, %.lr.ph68 ], [ %i.db, %_F_stradd.exit ] ; 2 uses
  %i.ca = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #14
  %i.cb = getelementptr i8, ptr @F_floatmul.prod, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -1     ; 2 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 199), align 1, !tbaa !8
  %i.cd = icmp uge ptr %i.cc, @F_floatmul.prod    ; 2 uses
  %i.ce = select i1 %i.cd, i1 true, i1 %i.by
  br i1 %i.ce, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %i.cf = phi i1 [ %i.cx, %bb.i ], [ %i.by, %bb.e ]
  %i.cg = phi i1 [ %i.cw, %bb.i ], [ %i.cd, %bb.e ]
  %.03043.i = phi i32 [ %.1.i, %bb.i ], [ 0, %bb.e ]
  %.03142.i = phi ptr [ %i.cv, %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 198), %bb.e ] ; 2 uses
  %.03341.i = phi ptr [ %.134.i, %bb.i ], [ %i.bx, %bb.e ] ; 3 uses
  %.03540.i = phi ptr [ %.136.i, %bb.i ], [ %i.cc, %bb.e ] ; 3 uses
  br i1 %i.cg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.ch = load i8, ptr %.03540.i, align 1, !tbaa !8
  %i.ci = sext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48
  %i.ck = getelementptr inbounds i8, ptr %.03540.i, i64 -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.136.i = phi ptr [ %i.ck, %bb.f ], [ %.03540.i, %.lr.ph.i ] ; 2 uses
  %.028.i = phi i32 [ %i.cj, %bb.f ], [ 0, %.lr.ph.i ]
  br i1 %i.cf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cl = load i8, ptr %.03341.i, align 1, !tbaa !8
  %i.cm = sext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -48
  %i.co = getelementptr inbounds i8, ptr %.03341.i, i64 -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.134.i = phi ptr [ %i.co, %bb.h ], [ %.03341.i, %bb.g ] ; 2 uses
  %.0.i = phi i32 [ %i.cn, %bb.h ], [ 0, %bb.g ]
  %i.cp = add nsw i32 %.028.i, %.03043.i
  %i.cq = add nsw i32 %i.cp, %.0.i                ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 9                   ; 3 uses
  %i.cs = add nsw i32 %i.cq, 246
  %.1.i = zext i1 %i.cr to i32
  %.029.i = select i1 %i.cr, i32 %i.cs, i32 %i.cq
  %i.ct = trunc i32 %.029.i to i8
  %i.cu = add i8 %i.ct, 48
  %i.cv = getelementptr inbounds i8, ptr %.03142.i, i64 -1 ; 4 uses
  store i8 %i.cu, ptr %.03142.i, align 1, !tbaa !8
  %i.cw = icmp uge ptr %.136.i, @F_floatmul.prod  ; 2 uses
  %i.cx = icmp uge ptr %.134.i, %F_floatmul.man1.F_floatmul.man2 ; 2 uses
  %i.cy = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %i.cy, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %bb.i
  br i1 %i.cr, label %bb.j, label %._crit_edge.thread.i

bb.j:                                             ; preds = %._crit_edge.i
  store i8 49, ptr %i.cv, align 1, !tbaa !8
  br label %_F_stradd.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.e
  %.031.lcssa47.i = phi ptr [ %i.cv, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 198), %bb.e ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.031.lcssa47.i, i64 1
  br label %_F_stradd.exit

_F_stradd.exit:                                   ; preds = %bb.j, %._crit_edge.thread.i
  %.132.i = phi ptr [ %i.cv, %bb.j ], [ %i.cz, %._crit_edge.thread.i ]
  %i.da = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatmul.prod, ptr noundef nonnull dereferenceable(1) %.132.i) #13 ; 0 uses
  %i.db = add nuw nsw i32 %.03867, 1
  %exitcond.not = icmp eq i32 %.03867, %i.bz
  br i1 %exitcond.not, label %.lr.ph.i49, label %bb.e, !llvm.loop !44

.lr.ph.i49:                                       ; preds = %_F_stradd.exit, %.preheader
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %F_floatmul.man1.F_floatmul.man2)
  %endptr.i = getelementptr inbounds i8, ptr %F_floatmul.man1.F_floatmul.man2, i64 %strlen.i
  store i16 48, ptr %endptr.i, align 1
  %.041 = getelementptr i8, ptr %.04171, i64 -1   ; 2 uses
  %.not46 = icmp ult ptr %.041, %F_floatmul.man2.F_floatmul.man1
  br i1 %.not46, label %._crit_edge72, label %.preheader, !llvm.loop !45

._crit_edge72:                                    ; preds = %.lr.ph.i49, %._crit_edge
  %i.dc = load ptr, ptr @F_floatmul.result, align 8, !tbaa !30
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !28
  %i.df = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #13 ; 0 uses
  %i.dg = tail call i32 (ptr, ...) @R_getexp(ptr noundef nonnull %0) #13
  %i.dh = tail call i32 (ptr, ...) @R_getexp(ptr noundef nonnull %1) #13
  %i.di = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #14
  %i.dj = trunc i64 %i.di to i32
  %i.dk = sub i32 %i.dg, %i.br
  %i.dl = add i32 %i.dk, %i.dh
  %i.dm = add i32 %i.dl, %i.dj
  %i.dn = load ptr, ptr @F_floatmul.result, align 8, !tbaa !30 ; 4 uses
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !29
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !18
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !18
  %i.ds = icmp eq i32 %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  br i1 %i.ds, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge72
  store i32 0, ptr %i.dt, align 4, !tbaa !18
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge72
  store i32 1, ptr %i.dt, align 4, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.d
  %.042 = phi ptr [ %i.r, %bb.d ], [ %i.dn, %bb.l ], [ %i.dn, %bb.k ]
  ret ptr %.042
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @_F_xor(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %i.b = icmp eq i32 %1, 0
  %narrow = xor i1 %i.a, %i.b
  %i.c = zext i1 %narrow to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, -2147483648) i32 @_F_ABSDIFF(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %0, i1 true) ; 3 uses
  %i.b = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 3 uses
  %i.c = icmp samesign ult i32 %i.a, %i.b
  %i.d = sub nuw nsw i32 %i.b, %i.a
  %i.e = sub nuw nsw i32 %i.a, %i.b
  %.0 = select i1 %i.c, i32 %i.d, i32 %i.e
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @F_floatmagadd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %.b = load i1, ptr @F_floatmagadd.needinit, align 4
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr (...) @R_makefloat() #13
  store ptr %i.a, ptr @F_floatmagadd.result, align 8, !tbaa !30
  store i1 true, ptr @F_floatmagadd.needinit, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 0, ptr @F_floatmagadd.man1, align 16
  store i8 0, ptr @F_floatmagadd.man2, align 16
  %i.b = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #13
  %i.c = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13
  %i.d = xor i32 %i.c, %i.b
  %.not = icmp sgt i32 %i.d, -1
  %i.e = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #13 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13
  %i.g = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true) ; 3 uses
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.f, i1 true) ; 3 uses
  %i.i = icmp samesign ult i32 %i.g, %i.h
  %i.j = sub nuw nsw i32 %i.h, %i.g
  %i.k = sub nuw nsw i32 %i.g, %i.h
  %.0.i = select i1 %i.i, i32 %i.j, i32 %i.k
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = icmp slt i32 %i.e, 0
  %i.m = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #13 ; 2 uses
  %i.n = sub nsw i32 0, %i.m
  %i.o = select i1 %i.l, i32 %i.n, i32 %i.m
  %i.p = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13
  %i.q = icmp slt i32 %i.p, 0
  %i.r = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13 ; 2 uses
  %i.s = sub nsw i32 0, %i.r
  %i.t = select i1 %i.q, i32 %i.s, i32 %i.r
  %i.u = add nsw i32 %i.t, %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.036 = phi i32 [ %.0.i, %bb.d ], [ %i.u, %bb.e ] ; 4 uses
  %i.v = icmp sgt i32 %.036, 0                    ; 3 uses
  br i1 %i.v, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #13
  %i.x = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13
  %i.y = icmp slt i32 %i.w, %i.x
  %i.z = zext nneg i32 %.036 to i64               ; 2 uses
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #14
  %i.ad = add i64 %i.ac, %i.z
  %i.ae = icmp ugt i64 %i.ad, 199
  br i1 %i.ae, label %.sink.split, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ah = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ag) #14
  %i.ai = add i64 %i.ah, %i.z
  %i.aj = icmp ugt i64 %i.ai, 199
  br i1 %i.aj, label %.sink.split, label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !28
  %i.am = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #14
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !28
  %i.ap = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ao) #14
  %. = tail call i64 @llvm.umax.i64(i64 %i.am, i64 %i.ap)
  %i.aq = icmp ugt i64 %., 198
  br i1 %i.aq, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.i, %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) @Z_err_buf, ptr noundef nonnull align 1 dereferenceable(40) @.str.5, i64 40, i1 false)
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @Z_err_buf) #13
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j, %bb.h, %bb.i
  %i.ar = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #13
  %i.as = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.v, label %.lr.ph.i, label %addzeros.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.02.i = phi i32 [ %i.au, %.lr.ph.i ], [ %.036, %bb.l ] ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatmagadd.man1)
  %endptr.i = getelementptr inbounds i8, ptr @F_floatmagadd.man1, i64 %strlen.i
  store i16 48, ptr %endptr.i, align 1
  %i.au = add nsw i32 %.02.i, -1
  %i.av = icmp samesign ugt i32 %.02.i, 1
  br i1 %i.av, label %.lr.ph.i, label %addzeros.exit, !llvm.loop !34

bb.m:                                             ; preds = %bb.k
  br i1 %i.v, label %.lr.ph.i43, label %addzeros.exit

.lr.ph.i43:                                       ; preds = %bb.m, %.lr.ph.i43
  %.02.i44 = phi i32 [ %i.aw, %.lr.ph.i43 ], [ %.036, %bb.m ] ; 2 uses
  %strlen.i45 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatmagadd.man2)
  %endptr.i46 = getelementptr inbounds i8, ptr @F_floatmagadd.man2, i64 %strlen.i45
  store i16 48, ptr %endptr.i46, align 1
  %i.aw = add nsw i32 %.02.i44, -1
  %i.ax = icmp samesign ugt i32 %.02.i44, 1
  br i1 %i.ax, label %.lr.ph.i43, label %addzeros.exit, !llvm.loop !34

addzeros.exit:                                    ; preds = %.lr.ph.i43, %.lr.ph.i, %bb.m, %bb.l
  %.sink = phi ptr [ %1, %bb.l ], [ %0, %bb.m ], [ %1, %.lr.ph.i ], [ %0, %.lr.ph.i43 ]
  %i.ay = tail call i32 (ptr, ...) @R_getexp(ptr noundef %.sink) #13
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28
  %i.bb = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1, ptr noundef nonnull dereferenceable(1) %i.ba) #13 ; 0 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !28
  %i.be = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man2, ptr noundef nonnull dereferenceable(1) %i.bd) #13 ; 0 uses
  %i.bf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1) #14 ; 2 uses
  %i.bg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man2) #14 ; 2 uses
  %.42 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bg)
  %i.bh = getelementptr i8, ptr @F_floatmagadd.man1, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1     ; 2 uses
  %i.bj = getelementptr i8, ptr @F_floatmagadd.man2, i64 %i.bg
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1     ; 2 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 199), align 1, !tbaa !8
  %i.bl = icmp uge ptr %i.bi, @F_floatmagadd.man1 ; 2 uses
  %i.bm = icmp uge ptr %i.bk, @F_floatmagadd.man2 ; 2 uses
  %i.bn = select i1 %i.bl, i1 true, i1 %i.bm
  br i1 %i.bn, label %.lr.ph.i48, label %._crit_edge.thread.i

.lr.ph.i48:                                       ; preds = %addzeros.exit, %bb.q
  %i.bo = phi i1 [ %i.cg, %bb.q ], [ %i.bm, %addzeros.exit ]
  %i.bp = phi i1 [ %i.cf, %bb.q ], [ %i.bl, %addzeros.exit ]
  %.03043.i = phi i32 [ %.1.i, %bb.q ], [ 0, %addzeros.exit ]
  %.03142.i = phi ptr [ %i.ce, %bb.q ], [ getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 198), %addzeros.exit ] ; 2 uses
  %.03341.i = phi ptr [ %.134.i, %bb.q ], [ %i.bk, %addzeros.exit ] ; 3 uses
  %.03540.i = phi ptr [ %.136.i, %bb.q ], [ %i.bi, %addzeros.exit ] ; 3 uses
  br i1 %i.bp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i48
  %i.bq = load i8, ptr %.03540.i, align 1, !tbaa !8
  %i.br = sext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -48
  %i.bt = getelementptr inbounds i8, ptr %.03540.i, i64 -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i48
  %.136.i = phi ptr [ %i.bt, %bb.n ], [ %.03540.i, %.lr.ph.i48 ] ; 2 uses
  %.028.i = phi i32 [ %i.bs, %bb.n ], [ 0, %.lr.ph.i48 ]
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bu = load i8, ptr %.03341.i, align 1, !tbaa !8
  %i.bv = sext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -48
  %i.bx = getelementptr inbounds i8, ptr %.03341.i, i64 -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.134.i = phi ptr [ %i.bx, %bb.p ], [ %.03341.i, %bb.o ] ; 2 uses
  %.0.i49 = phi i32 [ %i.bw, %bb.p ], [ 0, %bb.o ]
  %i.by = add nsw i32 %.028.i, %.03043.i
  %i.bz = add nsw i32 %i.by, %.0.i49              ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 9                   ; 3 uses
  %i.cb = add nsw i32 %i.bz, 246
  %.1.i = zext i1 %i.ca to i32
  %.029.i = select i1 %i.ca, i32 %i.cb, i32 %i.bz
  %i.cc = trunc i32 %.029.i to i8
  %i.cd = add i8 %i.cc, 48
  %i.ce = getelementptr inbounds i8, ptr %.03142.i, i64 -1 ; 4 uses
  store i8 %i.cd, ptr %.03142.i, align 1, !tbaa !8
  %i.cf = icmp uge ptr %.136.i, @F_floatmagadd.man1 ; 2 uses
  %i.cg = icmp uge ptr %.134.i, @F_floatmagadd.man2 ; 2 uses
  %i.ch = select i1 %i.cf, i1 true, i1 %i.cg
  br i1 %i.ch, label %.lr.ph.i48, label %._crit_edge.i, !llvm.loop !43

._crit_edge.i:                                    ; preds = %bb.q
  br i1 %i.ca, label %bb.r, label %._crit_edge.thread.i

bb.r:                                             ; preds = %._crit_edge.i
  store i8 49, ptr %i.ce, align 1, !tbaa !8
  br label %_F_stradd.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %addzeros.exit
  %.031.lcssa47.i = phi ptr [ %i.ce, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 198), %addzeros.exit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.031.lcssa47.i, i64 1
  br label %_F_stradd.exit

_F_stradd.exit:                                   ; preds = %bb.r, %._crit_edge.thread.i
  %.132.i = phi ptr [ %i.ce, %bb.r ], [ %i.ci, %._crit_edge.thread.i ]
  %i.cj = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1, ptr noundef nonnull dereferenceable(1) %.132.i) #13 ; 0 uses
  %i.ck = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1) #14
  %i.cl = sub i64 %i.ck, %.42
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = add i32 %i.ay, %i.cm                    ; 2 uses
  %i.co = load i8, ptr @F_floatmagadd.man1, align 16, !tbaa !8
  %i.cp = icmp eq i8 %i.co, 48
  br i1 %i.cp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_F_stradd.exit, %.lr.ph
  %.052 = phi ptr [ %i.cq, %.lr.ph ], [ @F_floatmagadd.man1, %_F_stradd.exit ]
  %.151 = phi i32 [ %i.cr, %.lr.ph ], [ %i.cn, %_F_stradd.exit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.052, i64 1 ; 3 uses
  %i.cr = add nsw i32 %.151, -1                   ; 2 uses
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.ct = icmp eq i8 %i.cs, 48
  br i1 %i.ct, label %.lr.ph, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph, %_F_stradd.exit
  %.1.lcssa = phi i32 [ %i.cn, %_F_stradd.exit ], [ %i.cr, %.lr.ph ]
  %.0.lcssa = phi ptr [ @F_floatmagadd.man1, %_F_stradd.exit ], [ %i.cq, %.lr.ph ]
  %i.cu = load ptr, ptr @F_floatmagadd.result, align 8, !tbaa !30 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !28
  %i.cx = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cw, ptr noundef nonnull dereferenceable(1) %.0.lcssa) #13 ; 0 uses
  store i32 %.1.lcssa, ptr %i.cu, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 0, ptr %i.cy, align 4, !tbaa !18
  ret ptr %i.cu
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 short", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = !{!19, !5, i64 4}
!19 = !{!"R_flstr", !5, i64 0, !5, i64 4, !20, i64 8}
!20 = !{!"p1 omnipotent char", !11, i64 0}
!21 = distinct !{!21, !15}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{null}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = !{!19, !20, i64 8}
!29 = !{!19, !5, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS7R_flstr", !11, i64 0}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15, !38, !39}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = distinct !{!40, !15, !38, !39}
!41 = distinct !{!41, !15, !39, !38}
!42 = distinct !{!42, !15, !39, !38}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
end_hunk_0
