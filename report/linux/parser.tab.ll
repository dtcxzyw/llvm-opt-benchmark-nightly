Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/parser.tab?download=true
inline.NumInlined: 22
inline.NumDeleted: 12
begin_hunk_0_@zconfdump
define dso_local void @zconfdump(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @rootmenu, i64 24), align 8, !tbaa !70 ; 2 uses
  %.not51 = icmp eq ptr %i.a, null
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.052 = phi ptr [ %.2, %.loopexit ], [ %i.a, %bb.a ] ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.052, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 4 uses
  %.not36 = icmp eq ptr %i.c, null
  br i1 %.not36, label %bb.y, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %i.c, i64 16
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !29 ; 2 uses
  %i.e = icmp eq ptr %.val.i, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.172, i64 8, i64 1, ptr %0) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.173, ptr noundef nonnull %.val.i) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38
  switch i32 %i.h, label %bb.k [
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 5, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %fwrite65.i = tail call i64 @fwrite(ptr nonnull @.str.174, i64 7, i64 1, ptr %0) ; 0 uses
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %fwrite64.i = tail call i64 @fwrite(ptr nonnull @.str.175, i64 11, i64 1, ptr %0) ; 0 uses
  br label %bb.l

bb.h:                                             ; preds = %bb.e
  %fwrite63.i = tail call i64 @fwrite(ptr nonnull @.str.176, i64 9, i64 1, ptr %0) ; 0 uses
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %fwrite62.i = tail call i64 @fwrite(ptr nonnull @.str.177, i64 10, i64 1, ptr %0) ; 0 uses
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  %fwrite61.i = tail call i64 @fwrite(ptr nonnull @.str.178, i64 6, i64 1, ptr %0) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %fwrite66.i = tail call i64 @fwrite(ptr nonnull @.str.179, i64 6, i64 1, ptr %0) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %.05981.i = load ptr, ptr %i.i, align 8, !tbaa !48 ; 2 uses
  %.not82.i = icmp eq ptr %.05981.i, null
  br i1 %.not82.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %bb.w
  %.05983.i = phi ptr [ %.059.i, %bb.w ], [ %.05981.i, %bb.l ] ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05983.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  %.not68.i = icmp eq ptr %i.k, %.052
  br i1 %.not68.i, label %bb.m, label %bb.w

bb.m:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05983.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  switch i32 %i.m, label %bb.v [
    i32 1, label %bb.n
    i32 4, label %bb.p
    i32 5, label %bb.r
    i32 6, label %bb.s
    i32 7, label %bb.t
    i32 3, label %bb.u
  ]

bb.n:                                             ; preds = %bb.m
  %fwrite75.i = tail call i64 @fwrite(ptr nonnull @.str.180, i64 9, i64 1, ptr %0) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05983.i, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !71
  tail call fastcc void @print_quoted_string(ptr noundef %0, ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %.05983.i, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72   ; 3 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %expr_is_yes.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i32, ptr %i.r, align 8, !tbaa !47
  %i.t = icmp eq i32 %i.s, 10
  br i1 %i.t, label %expr_is_yes.exit.i, label %expr_is_yes.exit.thread79.i

expr_is_yes.exit.i:                               ; preds = %bb.o
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.w = icmp eq ptr %i.v, @symbol_yes
  br i1 %i.w, label %expr_is_yes.exit.thread.i, label %expr_is_yes.exit.thread79.i

expr_is_yes.exit.thread79.i:                      ; preds = %expr_is_yes.exit.i, %bb.o
  %fwrite76.i = tail call i64 @fwrite(ptr nonnull @.str.181, i64 4, i64 1, ptr %0) ; 0 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !72
  tail call void @expr_fprint(ptr noundef %i.x, ptr noundef %0) #15
  br label %expr_is_yes.exit.thread.i

expr_is_yes.exit.thread.i:                        ; preds = %expr_is_yes.exit.thread79.i, %expr_is_yes.exit.i, %bb.n
  %i.y = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.p:                                             ; preds = %bb.m
  %fwrite73.i = tail call i64 @fwrite(ptr nonnull @.str.182, i64 10, i64 1, ptr %0) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05983.i, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73
  tail call void @expr_fprint(ptr noundef %i.aa, ptr noundef %0) #15
  %i.ab = getelementptr inbounds nuw i8, ptr %.05983.i, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !72 ; 3 uses
  %.not.i77.i = icmp eq ptr %i.ac, null
  br i1 %.not.i77.i, label %expr_is_yes.exit78.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !47
  %i.af = icmp eq i32 %i.ae, 10
  br i1 %i.af, label %expr_is_yes.exit78.i, label %expr_is_yes.exit78.thread80.i

expr_is_yes.exit78.i:                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !13
  %i.ai = icmp eq ptr %i.ah, @symbol_yes
  br i1 %i.ai, label %expr_is_yes.exit78.thread.i, label %expr_is_yes.exit78.thread80.i

expr_is_yes.exit78.thread80.i:                    ; preds = %expr_is_yes.exit78.i, %bb.q
  %fwrite74.i = tail call i64 @fwrite(ptr nonnull @.str.181, i64 4, i64 1, ptr %0) ; 0 uses
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !72
  tail call void @expr_fprint(ptr noundef %i.aj, ptr noundef %0) #15
  br label %expr_is_yes.exit78.thread.i

expr_is_yes.exit78.thread.i:                      ; preds = %expr_is_yes.exit78.thread80.i, %expr_is_yes.exit78.i, %bb.p
  %i.ak = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.r:                                             ; preds = %bb.m
  %fwrite72.i = tail call i64 @fwrite(ptr nonnull @.str.183, i64 9, i64 1, ptr %0) ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05983.i, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !73
  tail call void @expr_fprint(ptr noundef %i.am, ptr noundef %0) #15
  %i.an = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.s:                                             ; preds = %bb.m
  %fwrite71.i = tail call i64 @fwrite(ptr nonnull @.str.184, i64 8, i64 1, ptr %0) ; 0 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05983.i, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !73
  tail call void @expr_fprint(ptr noundef %i.ap, ptr noundef %0) #15
  %i.aq = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.t:                                             ; preds = %bb.m
  %fwrite70.i = tail call i64 @fwrite(ptr nonnull @.str.185, i64 8, i64 1, ptr %0) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05983.i, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !73
  tail call void @expr_fprint(ptr noundef %i.as, ptr noundef %0) #15
  %i.at = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.u:                                             ; preds = %bb.m
  %fwrite69.i = tail call i64 @fwrite(ptr nonnull @.str.186, i64 7, i64 1, ptr %0) ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05983.i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !71
  tail call fastcc void @print_quoted_string(ptr noundef %0, ptr noundef %i.av)
  %i.aw = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.w

bb.v:                                             ; preds = %bb.m
  %i.ax = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.187, i32 noundef %i.m) #15 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %expr_is_yes.exit78.thread.i, %expr_is_yes.exit.thread.i, %.lr.ph.i
  %.059.i = load ptr, ptr %.05983.i, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp eq ptr %.059.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !66

._crit_edge.i:                                    ; preds = %bb.w, %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %.052, i64 104 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43 ; 4 uses
  %.not67.i = icmp eq ptr %i.az, null
  br i1 %.not67.i, label %print_symbol.exit, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.ba = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #19
  %i.bb = shl i64 %i.ba, 32
  %sext.i = add i64 %i.bb, -4294967296
  %i.bc = ashr exact i64 %sext.i, 32              ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bf = icmp eq i8 %i.be, 10
  br i1 %i.bf, label %.lr.ph85.i, label %._crit_edge86.i

.lr.ph85.i:                                       ; preds = %bb.x, %.lr.ph85.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph85.i ], [ %i.bc, %bb.x ]
  %i.bg = phi ptr [ %i.bi, %.lr.ph85.i ], [ %i.bd, %bb.x ]
  store i8 0, ptr %i.bg, align 1, !tbaa !13
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !43 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %indvars.iv.next.i ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !13
  %i.bk = icmp eq i8 %i.bj, 10
  br i1 %i.bk, label %.lr.ph85.i, label %._crit_edge86.i, !llvm.loop !67

._crit_edge86.i:                                  ; preds = %.lr.ph85.i, %bb.x
  %.lcssa.i = phi ptr [ %i.az, %bb.x ], [ %i.bh, %.lr.ph85.i ]
  %i.bl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.188, ptr noundef nonnull %.lcssa.i) #15 ; 0 uses
  br label %print_symbol.exit

bb.y:                                             ; preds = %.lr.ph
  %i.bm = getelementptr inbounds nuw i8, ptr %.052, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !34 ; 4 uses
  %.not37 = icmp eq ptr %i.bn, null
  br i1 %.not37, label %print_symbol.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !40
  switch i32 %i.bp, label %bb.ac [
    i32 2, label %bb.aa
    i32 3, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %fwrite39 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 9, i64 1, ptr %0) ; 0 uses
  br label %.sink.split

bb.ab:                                            ; preds = %bb.z
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.57, i64 6, i64 1, ptr %0) ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %bb.ab
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !71
  tail call fastcc void @print_quoted_string(ptr noundef %0, ptr noundef %i.br)
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !72 ; 3 uses
  %.not.i49 = icmp eq ptr %i.bt, null
  br i1 %.not.i49, label %print_symbol.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !47
  %i.bw = icmp eq i32 %i.bv, 10
  br i1 %i.bw, label %expr_is_yes.exit, label %expr_is_yes.exit.thread50

expr_is_yes.exit:                                 ; preds = %bb.ad
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !13
  %i.bz = icmp eq ptr %i.by, @symbol_yes
  br i1 %i.bz, label %print_symbol.exit, label %expr_is_yes.exit.thread50

expr_is_yes.exit.thread50:                        ; preds = %bb.ad, %expr_is_yes.exit
  %fwrite42 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 10, i64 1, ptr %0) ; 0 uses
  %i.ca = load ptr, ptr %i.bs, align 8, !tbaa !72
  tail call void @expr_fprint(ptr noundef %i.ca, ptr noundef %0) #15
  %i.cb = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %print_symbol.exit

print_symbol.exit:                                ; preds = %bb.ac, %._crit_edge86.i, %._crit_edge.i, %bb.y, %expr_is_yes.exit.thread50, %expr_is_yes.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %.052, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !70 ; 2 uses
  %.not43 = icmp eq ptr %i.cd, null
  br i1 %.not43, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %print_symbol.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %.052, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !74 ; 2 uses
  %.not44 = icmp eq ptr %i.cf, null
  br i1 %.not44, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.ae, %bb.ai
  %.1 = phi ptr [ %i.ch, %bb.ai ], [ %.052, %bb.ae ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !75 ; 4 uses
  %.not45 = icmp eq ptr %i.ch, null
  br i1 %.not45, label %._crit_edge, label %bb.af

bb.af:                                            ; preds = %.preheader
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !34 ; 2 uses
  %.not46 = icmp eq ptr %i.cj, null
  br i1 %.not46, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !40
  %i.cm = icmp eq i32 %i.cl, 3
  br i1 %i.cm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %fwrite47 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 9, i64 1, ptr %0) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !74 ; 2 uses
  %.not48 = icmp eq ptr %i.co, null
  br i1 %.not48, label %.preheader, label %.loopexit, !llvm.loop !68

.loopexit:                                        ; preds = %bb.ai, %bb.ae, %print_symbol.exit
  %.2 = phi ptr [ %i.cf, %bb.ae ], [ %i.cd, %print_symbol.exit ], [ %i.co, %bb.ai ]
  br label %.lr.ph, !llvm.loop !69

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
  %i.c = phi ptr [ %i.j, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %.016 = phi ptr [ %i.i, %bb.c ], [ %1, %bb.a ]  ; 2 uses
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
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.190, i64 2, i64 1, ptr %0) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 3 uses
  %i.j = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.i, i32 noundef 34) #19 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %i.i, %bb.c ]
  %i.k = tail call i32 @fputs(ptr noundef nonnull %.0.lcssa, ptr noundef %0) ; 0 uses
  %i.l = tail call i32 @putc(i32 noundef 34, ptr noundef %0) ; 0 uses
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
