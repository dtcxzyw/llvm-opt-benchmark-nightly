inline.NumInlined: 22
inline.NumDeleted: 12
begin_hunk_0_@zconfdump
define dso_local void @zconfdump(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rootmenu, i64 24), align 8, !tbaa !66 ; 2 uses
  %.not46 = icmp eq ptr %i.a, null
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.047 = phi ptr [ %.2, %.loopexit ], [ %i.a, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.047, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 4 uses
  %.not36 = icmp eq ptr %i.c, null
  br i1 %.not36, label %bb.y, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @fwrite(ptr nonnull @.str.172, i64 8, i64 1, ptr %0) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.173, ptr noundef nonnull %.val.i) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !38
  switch i32 %i.i, label %bb.k [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 5, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = tail call i64 @fwrite(ptr nonnull @.str.174, i64 7, i64 1, ptr %0) ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.k = tail call i64 @fwrite(ptr nonnull @.str.175, i64 11, i64 1, ptr %0) ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.176, i64 9, i64 1, ptr %0) ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.m = tail call i64 @fwrite(ptr nonnull @.str.177, i64 10, i64 1, ptr %0) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %i.n = tail call i64 @fwrite(ptr nonnull @.str.178, i64 6, i64 1, ptr %0) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.o = tail call i64 @fwrite(ptr nonnull @.str.179, i64 6, i64 1, ptr %0) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %.05967.i = load ptr, ptr %i.p, align 8, !tbaa !58 ; 2 uses
  %.not68.i = icmp eq ptr %.05967.i, null
  br i1 %.not68.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.w
  %.05969.i = phi ptr [ %.059.i, %bb.w ], [ %.05967.i, %bb.l ] ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05969.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62
  %.not62.i = icmp eq ptr %i.r, %.047
  br i1 %.not62.i, label %bb.m, label %bb.w

bb.m:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05969.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !41   ; 2 uses
  switch i32 %i.t, label %bb.v [
    i32 1, label %bb.n
    i32 4, label %bb.p
    i32 5, label %bb.r
    i32 6, label %bb.s
    i32 7, label %bb.t
    i32 3, label %bb.u
  ]

bb.n:                                             ; preds = %bb.m
  %i.u = tail call i64 @fwrite(ptr nonnull @.str.180, i64 9, i64 1, ptr %0) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05969.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !67
  tail call fastcc void @print_quoted_string(ptr noundef %0, ptr noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.05969.i, i64 24 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !68   ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %expr_is_yes.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !54
  %i.ab = icmp eq i32 %i.aa, 10
  br i1 %i.ab, label %expr_is_yes.exit.i, label %expr_is_yes.exit.thread65.i

expr_is_yes.exit.i:                               ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !13
  %i.ae = icmp eq ptr %i.ad, @symbol_yes
  br i1 %i.ae, label %expr_is_yes.exit.thread.i, label %expr_is_yes.exit.thread65.i

expr_is_yes.exit.thread65.i:                      ; preds = %expr_is_yes.exit.i, %bb.o
  %i.af = tail call i64 @fwrite(ptr nonnull @.str.181, i64 4, i64 1, ptr %0) ; 0 uses
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !68
  tail call void @expr_fprint(ptr noundef %i.ag, ptr noundef %0) #15
  br label %expr_is_yes.exit.thread.i

expr_is_yes.exit.thread.i:                        ; preds = %expr_is_yes.exit.thread65.i, %expr_is_yes.exit.i, %bb.n
  %i.ah = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.p:                                             ; preds = %bb.m
  %i.ai = tail call i64 @fwrite(ptr nonnull @.str.182, i64 10, i64 1, ptr %0) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05969.i, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69
  tail call void @expr_fprint(ptr noundef %i.ak, ptr noundef %0) #15
  %i.al = getelementptr inbounds nuw i8, ptr %.05969.i, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !68 ; 3 uses
  %.not.i63.i = icmp eq ptr %i.am, null
  br i1 %.not.i63.i, label %expr_is_yes.exit64.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !54
  %i.ap = icmp eq i32 %i.ao, 10
  br i1 %i.ap, label %expr_is_yes.exit64.i, label %expr_is_yes.exit64.thread66.i

expr_is_yes.exit64.i:                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !13
  %i.as = icmp eq ptr %i.ar, @symbol_yes
  br i1 %i.as, label %expr_is_yes.exit64.thread.i, label %expr_is_yes.exit64.thread66.i

expr_is_yes.exit64.thread66.i:                    ; preds = %expr_is_yes.exit64.i, %bb.q
  %i.at = tail call i64 @fwrite(ptr nonnull @.str.181, i64 4, i64 1, ptr %0) ; 0 uses
  %i.au = load ptr, ptr %i.al, align 8, !tbaa !68
  tail call void @expr_fprint(ptr noundef %i.au, ptr noundef %0) #15
  br label %expr_is_yes.exit64.thread.i

expr_is_yes.exit64.thread.i:                      ; preds = %expr_is_yes.exit64.thread66.i, %expr_is_yes.exit64.i, %bb.p
  %i.av = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.r:                                             ; preds = %bb.m
  %i.aw = tail call i64 @fwrite(ptr nonnull @.str.183, i64 9, i64 1, ptr %0) ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.05969.i, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !69
  tail call void @expr_fprint(ptr noundef %i.ay, ptr noundef %0) #15
  %i.az = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.s:                                             ; preds = %bb.m
  %i.ba = tail call i64 @fwrite(ptr nonnull @.str.184, i64 8, i64 1, ptr %0) ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05969.i, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !69
  tail call void @expr_fprint(ptr noundef %i.bc, ptr noundef %0) #15
  %i.bd = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.t:                                             ; preds = %bb.m
  %i.be = tail call i64 @fwrite(ptr nonnull @.str.185, i64 8, i64 1, ptr %0) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.05969.i, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !69
  tail call void @expr_fprint(ptr noundef %i.bg, ptr noundef %0) #15
  %i.bh = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.u:                                             ; preds = %bb.m
  %i.bi = tail call i64 @fwrite(ptr nonnull @.str.186, i64 7, i64 1, ptr %0) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05969.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !67
  tail call fastcc void @print_quoted_string(ptr noundef %0, ptr noundef %i.bk)
  %i.bl = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.m
  %i.bm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.187, i32 noundef %i.t) #15 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %expr_is_yes.exit64.thread.i, %expr_is_yes.exit.thread.i, %.lr.ph.i
  %.059.i = load ptr, ptr %.05969.i, align 8, !tbaa !58 ; 2 uses
  %.not.i = icmp eq ptr %.059.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !70

._crit_edge.i:                                    ; preds = %bb.w, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.047, i64 104 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !45 ; 4 uses
  %.not61.i = icmp eq ptr %i.bo, null
  br i1 %.not61.i, label %print_symbol.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.bp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #19
  %i.bq = shl i64 %i.bp, 32                       ; 2 uses
  %sext.i = add i64 %i.bq, -4294967296
  %i.br = ashr exact i64 %sext.i, 32
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 %i.br ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bu = icmp eq i8 %i.bt, 10
  br i1 %i.bu, label %.lr.ph71.preheader.i, label %._crit_edge72.i

.lr.ph71.preheader.i:                             ; preds = %bb.x
  %1 = ashr exact i64 %i.bq, 32
  %2 = add nsw i64 %1, -1
  br label %.lr.ph71.i

.lr.ph71.i:                                       ; preds = %.lr.ph71.i, %.lr.ph71.preheader.i
  %indvars.iv.i = phi i64 [ %2, %.lr.ph71.preheader.i ], [ %indvars.iv.next.i, %.lr.ph71.i ]
  %i.bv = phi ptr [ %i.bs, %.lr.ph71.preheader.i ], [ %i.bx, %.lr.ph71.i ]
  store i8 0, ptr %i.bv, align 1, !tbaa !13
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !45 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %indvars.iv.next.i ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.bz = icmp eq i8 %i.by, 10
  br i1 %i.bz, label %.lr.ph71.i, label %._crit_edge72.i, !llvm.loop !71

._crit_edge72.i:                                  ; preds = %.lr.ph71.i, %bb.x
  %.lcssa.i = phi ptr [ %i.bo, %bb.x ], [ %i.bw, %.lr.ph71.i ]
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.188, ptr noundef nonnull %.lcssa.i) #15 ; 0 uses
  br label %print_symbol.exit

bb.y:                                             ; preds = %.lr.ph
  %i.cb = getelementptr inbounds nuw i8, ptr %.047, i64 72
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !32 ; 4 uses
  %.not37 = icmp eq ptr %i.cc, null
  br i1 %.not37, label %print_symbol.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !41
  switch i32 %i.ce, label %bb.ac [
    i32 2, label %bb.aa
    i32 3, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.cf = tail call i64 @fwrite(ptr nonnull @.str.56, i64 9, i64 1, ptr %0) ; 0 uses
  br label %.sink.split

bb.ab:                                            ; preds = %bb.z
  %i.cg = tail call i64 @fwrite(ptr nonnull @.str.57, i64 6, i64 1, ptr %0) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !67
  tail call fastcc void @print_quoted_string(ptr noundef %0, ptr noundef %i.ci)
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !68 ; 3 uses
  %.not.i44 = icmp eq ptr %i.ck, null
  br i1 %.not.i44, label %print_symbol.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !54
  %i.cn = icmp eq i32 %i.cm, 10
  br i1 %i.cn, label %expr_is_yes.exit, label %expr_is_yes.exit.thread45

expr_is_yes.exit:                                 ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !13
  %i.cq = icmp eq ptr %i.cp, @symbol_yes
  br i1 %i.cq, label %print_symbol.exit, label %expr_is_yes.exit.thread45

expr_is_yes.exit.thread45:                        ; preds = %bb.ad, %expr_is_yes.exit
  %i.cr = tail call i64 @fwrite(ptr nonnull @.str.58, i64 10, i64 1, ptr %0) ; 0 uses
  %i.cs = load ptr, ptr %i.cj, align 8, !tbaa !68
  tail call void @expr_fprint(ptr noundef %i.cs, ptr noundef %0) #15
  %i.ct = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %print_symbol.exit

print_symbol.exit:                                ; preds = %bb.ac, %._crit_edge72.i, %._crit_edge.i, %bb.y, %expr_is_yes.exit.thread45, %expr_is_yes.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %.047, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !66 ; 2 uses
  %.not39 = icmp eq ptr %i.cv, null
  br i1 %.not39, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %print_symbol.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %.047, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !72 ; 2 uses
  %.not40 = icmp eq ptr %i.cx, null
  br i1 %.not40, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ae, %bb.ai
  %.1 = phi ptr [ %i.cz, %bb.ai ], [ %.047, %bb.ae ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !73 ; 4 uses
  %.not41 = icmp eq ptr %i.cz, null
  br i1 %.not41, label %._crit_edge, label %bb.af

bb.af:                                            ; preds = %.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !32 ; 2 uses
  %.not42 = icmp eq ptr %i.db, null
  br i1 %.not42, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !41
  %i.de = icmp eq i32 %i.dd, 3
  br i1 %i.de, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.df = tail call i64 @fwrite(ptr nonnull @.str.59, i64 9, i64 1, ptr %0) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !72 ; 2 uses
  %.not43 = icmp eq ptr %i.dh, null
  br i1 %.not43, label %.preheader, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %bb.ai, %bb.ae, %print_symbol.exit
  %.2 = phi ptr [ %i.cx, %bb.ae ], [ %i.cv, %print_symbol.exit ], [ %i.dh, %bb.ai ]
  br label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @print_quoted_string(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @putc(i32 noundef 34, ptr noundef %0) ; 0 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 34) #19 ; 2 uses
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi ptr [ %i.k, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %.016 = phi ptr [ %i.j, %bb.c ], [ %1, %bb.a ]  ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %.016 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %.not14 = icmp eq i32 %i.g, 0
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.189, i32 noundef %i.g, ptr noundef nonnull %.016) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.i = tail call i64 @fwrite(ptr nonnull @.str.190, i64 2, i64 1, ptr %0) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.k = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.j, i32 noundef 34) #19 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.j, %bb.c ]
  %i.l = tail call i32 @fputs(ptr noundef nonnull %.0.lcssa, ptr noundef %0) ; 0 uses
  %i.m = tail call i32 @putc(i32 noundef 34, ptr noundef %0) ; 0 uses
  ret void
}

declare void @expr_fprint(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
