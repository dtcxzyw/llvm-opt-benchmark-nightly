inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0_@F_floatmul:bb.a

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
  br label %bb.l

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
  br i1 %min.iters.check, label %.lr.ph.preheader114, label %vector.ph

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
  br i1 %cmp.n, label %.preheader55, label %.lr.ph.preheader114

.lr.ph.preheader114:                              ; preds = %.lr.ph.preheader, %middle.block
  %.03760.ph = phi ptr [ %.03757, %.lr.ph.preheader ], [ %i.ag, %middle.block ]
  %.04159.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ar, %middle.block ]
  br label %.lr.ph

.preheader55:                                     ; preds = %.lr.ph, %middle.block, %.tail51.thread
  %.041.lcssa = phi i32 [ 0, %.tail51.thread ], [ %i.ar, %middle.block ], [ %i.bi, %.lr.ph ]
  %.03661 = getelementptr i8, ptr %i.ae, i64 -1   ; 4 uses
  %.not4562 = icmp ult ptr %.03661, @F_floatmul.man2
  br i1 %.not4562, label %._crit_edge, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %.preheader55
  %min.iters.check90 = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check90, label %.lr.ph65.preheader110, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph65.preheader
  %n.vec93 = and i64 %i.ad, -8                    ; 3 uses
  %i.as = sub i64 0, %n.vec93
  %i.at = getelementptr i8, ptr %.03661, i64 %i.as
  br label %vector.body94

vector.body94:                                    ; preds = %vector.body94, %vector.ph91
  %index95 = phi i64 [ 0, %vector.ph91 ], [ %index.next103, %vector.body94 ] ; 2 uses
  %vec.phi96 = phi <4 x i32> [ zeroinitializer, %vector.ph91 ], [ %i.bb, %vector.body94 ]
  %vec.phi97 = phi <4 x i32> [ zeroinitializer, %vector.ph91 ], [ %i.bc, %vector.body94 ]
  %i.au = sub i64 0, %index95
  %next.gep98 = getelementptr i8, ptr %.03661, i64 %i.au ; 2 uses
  %i.av = getelementptr i8, ptr %next.gep98, i64 -3
  %i.aw = getelementptr i8, ptr %next.gep98, i64 -7
  %wide.load99 = load <4 x i8>, ptr %i.av, align 1, !tbaa !8
  %wide.load100 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !8
  %reverse101 = shufflevector <4 x i8> %wide.load99, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse102 = shufflevector <4 x i8> %wide.load100, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ax = sext <4 x i8> %reverse101 to <4 x i32>
  %i.ay = sext <4 x i8> %reverse102 to <4 x i32>
  %i.az = add <4 x i32> %vec.phi96, splat (i32 -48)
  %i.ba = add <4 x i32> %vec.phi97, splat (i32 -48)
  %i.bb = add <4 x i32> %i.az, %i.ax              ; 2 uses
  %i.bc = add <4 x i32> %i.ba, %i.ay              ; 2 uses
  %index.next103 = add nuw i64 %index95, 8        ; 2 uses
  %i.bd = icmp eq i64 %index.next103, %n.vec93
  br i1 %i.bd, label %middle.block104, label %vector.body94, !llvm.loop !40

middle.block104:                                  ; preds = %vector.body94
  %bin.rdx105 = add <4 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx105) ; 2 uses
  %cmp.n106 = icmp eq i64 %i.ad, %n.vec93
  br i1 %cmp.n106, label %._crit_edge, label %.lr.ph65.preheader110

.lr.ph65.preheader110:                            ; preds = %.lr.ph65.preheader, %middle.block104
  %.03664.ph = phi ptr [ %.03661, %.lr.ph65.preheader ], [ %i.at, %middle.block104 ]
  %.04063.ph = phi i32 [ 0, %.lr.ph65.preheader ], [ %i.be, %middle.block104 ]
  br label %.lr.ph65

.lr.ph:                                           ; preds = %.lr.ph.preheader114, %.lr.ph
  %.03760 = phi ptr [ %.037, %.lr.ph ], [ %.03760.ph, %.lr.ph.preheader114 ] ; 2 uses
  %.04159 = phi i32 [ %i.bi, %.lr.ph ], [ %.04159.ph, %.lr.ph.preheader114 ]
  %i.bf = load i8, ptr %.03760, align 1, !tbaa !8
  %i.bg = sext i8 %i.bf to i32
  %i.bh = add i32 %.04159, -48
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %.037 = getelementptr i8, ptr %.03760, i64 -1   ; 2 uses
  %.not44 = icmp ult ptr %.037, @F_floatmul.man1
  br i1 %.not44, label %.preheader55, label %.lr.ph, !llvm.loop !41

.lr.ph65:                                         ; preds = %.lr.ph65.preheader110, %.lr.ph65
  %.03664 = phi ptr [ %.036, %.lr.ph65 ], [ %.03664.ph, %.lr.ph65.preheader110 ] ; 2 uses
  %.04063 = phi i32 [ %i.bm, %.lr.ph65 ], [ %.04063.ph, %.lr.ph65.preheader110 ]
  %i.bj = load i8, ptr %.03664, align 1, !tbaa !8
  %i.bk = sext i8 %i.bj to i32
  %i.bl = add i32 %.04063, -48
  %i.bm = add i32 %i.bl, %i.bk                    ; 2 uses
  %.036 = getelementptr i8, ptr %.03664, i64 -1   ; 2 uses
  %.not45 = icmp ult ptr %.036, @F_floatmul.man2
  br i1 %.not45, label %._crit_edge, label %.lr.ph65, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph65, %middle.block104, %.preheader55
  %.040.lcssa = phi i32 [ 0, %.preheader55 ], [ %i.be, %middle.block104 ], [ %i.bm, %.lr.ph65 ]
  %i.bn = icmp sgt i32 %.041.lcssa, %.040.lcssa   ; 2 uses
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
  %.04269 = getelementptr i8, ptr %i.bs, i64 -1   ; 2 uses
  %.not4670 = icmp ult ptr %.04269, %F_floatmul.man2.F_floatmul.man1
  br i1 %.not4670, label %._crit_edge72, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.lr.ph.i49.preheader
  %.04271 = phi ptr [ %.042, %.lr.ph.i49.preheader ], [ %.04269, %._crit_edge ] ; 2 uses
  %i.bt = load i8, ptr %.04271, align 1, !tbaa !8 ; 2 uses
  %i.bu = icmp sgt i8 %i.bt, 48
  br i1 %i.bu, label %.lr.ph68, label %.lr.ph.i49.preheader

.lr.ph68:                                         ; preds = %.preheader
  %2 = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %F_floatmul.man1.F_floatmul.man2) #14
  %3 = getelementptr i8, ptr %F_floatmul.man1.F_floatmul.man2, i64 %2
  %4 = getelementptr i8, ptr %3, i64 -1           ; 2 uses
  %5 = icmp uge ptr %4, %F_floatmul.man1.F_floatmul.man2 ; 2 uses
  %narrow = add nsw i8 %i.bt, -49
  %6 = sext i8 %narrow to i32
  br label %.lr.ph68.a

.lr.ph.i49.preheader:                             ; preds = %_F_stradd.exit, %.preheader
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %F_floatmul.man1.F_floatmul.man2)
  %endptr.i = getelementptr inbounds i8, ptr %F_floatmul.man1.F_floatmul.man2, i64 %strlen.i
  store i16 48, ptr %endptr.i, align 1
  %.042 = getelementptr i8, ptr %.04271, i64 -1   ; 2 uses
  %.not46 = icmp ult ptr %.042, %F_floatmul.man2.F_floatmul.man1
  br i1 %.not46, label %._crit_edge72, label %.preheader, !llvm.loop !43

.lr.ph68.a:                                       ; preds = %.lr.ph68, %_F_stradd.exit
  %.03967 = phi i32 [ 0, %.lr.ph68 ], [ %i.cw, %_F_stradd.exit ] ; 2 uses
  %i.bv = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #14
  %i.bw = getelementptr i8, ptr @F_floatmul.prod, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1     ; 2 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 199), align 1, !tbaa !8
  %i.by = icmp uge ptr %i.bx, @F_floatmul.prod    ; 2 uses
  %i.bz = select i1 %i.by, i1 true, i1 %5
  br i1 %i.bz, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %.lr.ph68.a, %bb.h
  %i.ca = phi i1 [ %i.cs, %bb.h ], [ %5, %.lr.ph68.a ]
  %i.cb = phi i1 [ %i.cr, %bb.h ], [ %i.by, %.lr.ph68.a ]
  %.03043.i = phi i32 [ %.1.i, %bb.h ], [ 0, %.lr.ph68.a ]
  %.03142.i = phi ptr [ %i.cq, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 198), %.lr.ph68.a ] ; 2 uses
  %.03341.i = phi ptr [ %.134.i, %bb.h ], [ %4, %.lr.ph68.a ] ; 3 uses
  %.03540.i = phi ptr [ %.136.i, %bb.h ], [ %i.bx, %.lr.ph68.a ] ; 3 uses
  br i1 %i.cb, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.cc = load i8, ptr %.03540.i, align 1, !tbaa !8
  %i.cd = sext i8 %i.cc to i32
  %i.ce = add nsw i32 %i.cd, -48
  %i.cf = getelementptr inbounds i8, ptr %.03540.i, i64 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.136.i = phi ptr [ %i.cf, %bb.e ], [ %.03540.i, %.lr.ph.i ] ; 2 uses
  %.028.i = phi i32 [ %i.ce, %bb.e ], [ 0, %.lr.ph.i ]
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cg = load i8, ptr %.03341.i, align 1, !tbaa !8
  %i.ch = sext i8 %i.cg to i32
  %i.ci = add nsw i32 %i.ch, -48
  %i.cj = getelementptr inbounds i8, ptr %.03341.i, i64 -1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.134.i = phi ptr [ %i.cj, %bb.g ], [ %.03341.i, %bb.f ] ; 2 uses
  %.0.i = phi i32 [ %i.ci, %bb.g ], [ 0, %bb.f ]
  %i.ck = add nsw i32 %.028.i, %.03043.i
  %i.cl = add nsw i32 %i.ck, %.0.i                ; 3 uses
  %i.cm = icmp sgt i32 %i.cl, 9                   ; 3 uses
  %i.cn = add nsw i32 %i.cl, 246
  %.1.i = zext i1 %i.cm to i32
  %.029.i = select i1 %i.cm, i32 %i.cn, i32 %i.cl
  %i.co = trunc i32 %.029.i to i8
  %i.cp = add i8 %i.co, 48
  %i.cq = getelementptr inbounds i8, ptr %.03142.i, i64 -1 ; 4 uses
  store i8 %i.cp, ptr %.03142.i, align 1, !tbaa !8
  %i.cr = icmp uge ptr %.136.i, @F_floatmul.prod  ; 2 uses
  %i.cs = icmp uge ptr %.134.i, %F_floatmul.man1.F_floatmul.man2 ; 2 uses
  %i.ct = select i1 %i.cr, i1 true, i1 %i.cs
  br i1 %i.ct, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !44

._crit_edge.i:                                    ; preds = %bb.h
  br i1 %i.cm, label %bb.i, label %._crit_edge.thread.i

bb.i:                                             ; preds = %._crit_edge.i
  store i8 49, ptr %i.cq, align 1, !tbaa !8
  br label %_F_stradd.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.lr.ph68.a
  %.031.lcssa47.i = phi ptr [ %i.cq, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 198), %.lr.ph68.a ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.031.lcssa47.i, i64 1
  br label %_F_stradd.exit

_F_stradd.exit:                                   ; preds = %bb.i, %._crit_edge.thread.i
  %.132.i = phi ptr [ %i.cq, %bb.i ], [ %i.cu, %._crit_edge.thread.i ]
  %i.cv = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatmul.prod, ptr noundef nonnull dereferenceable(1) %.132.i) #13 ; 0 uses
  %i.cw = add nuw nsw i32 %.03967, 1
  %exitcond.not = icmp eq i32 %.03967, %6
  br i1 %exitcond.not, label %.lr.ph.i49.preheader, label %.lr.ph68.a, !llvm.loop !45

._crit_edge72:                                    ; preds = %.lr.ph.i49.preheader, %._crit_edge
  %i.cx = load ptr, ptr @F_floatmul.result, align 8, !tbaa !30
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !28
  %i.da = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cz, ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #13 ; 0 uses
  %i.db = tail call i32 (ptr, ...) @R_getexp(ptr noundef nonnull %0) #13
  %i.dc = tail call i32 (ptr, ...) @R_getexp(ptr noundef nonnull %1) #13
  %i.dd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #14
  %i.de = trunc i64 %i.dd to i32
  %i.df = sub i32 %i.db, %i.br
  %i.dg = add i32 %i.df, %i.dc
  %i.dh = add i32 %i.dg, %i.de
  %i.di = load ptr, ptr @F_floatmul.result, align 8, !tbaa !30 ; 4 uses
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !29
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !18
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !18
  %i.dn = icmp eq i32 %i.dk, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 2 uses
  br i1 %i.dn, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge72
  store i32 0, ptr %i.do, align 4, !tbaa !18
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge72
  store i32 1, ptr %i.do, align 4, !tbaa !18
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.d
  %.038 = phi ptr [ %i.r, %bb.d ], [ %i.di, %bb.k ], [ %i.di, %bb.j ]
  ret ptr %.038
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
  %.035 = phi i32 [ %.0.i, %bb.d ], [ %i.u, %bb.e ] ; 4 uses
  %i.v = icmp sgt i32 %.035, 0                    ; 3 uses
  br i1 %i.v, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.w = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #13
  %i.x = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13
  %i.y = icmp slt i32 %i.w, %i.x
  %i.z = zext nneg i32 %.035 to i64               ; 2 uses
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
  %.02.i = phi i32 [ %i.au, %.lr.ph.i ], [ %.035, %bb.l ] ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatmagadd.man1)
  %endptr.i = getelementptr inbounds i8, ptr @F_floatmagadd.man1, i64 %strlen.i
  store i16 48, ptr %endptr.i, align 1
  %i.au = add nsw i32 %.02.i, -1
  %i.av = icmp samesign ugt i32 %.02.i, 1
  br i1 %i.av, label %.lr.ph.i, label %addzeros.exit, !llvm.loop !34

bb.m:                                             ; preds = %bb.k
  br i1 %i.v, label %.lr.ph.i43, label %addzeros.exit

.lr.ph.i43:                                       ; preds = %bb.m, %.lr.ph.i43
  %.02.i44 = phi i32 [ %i.aw, %.lr.ph.i43 ], [ %.035, %bb.m ] ; 2 uses
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
end_hunk_0
