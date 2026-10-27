Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaGen?download=true
inline.NumInlined: 491
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 39
begin_hunk_0_@Gia_ManDumpPlaFiles:bb.a
  %i.r = getelementptr i8, ptr %0, i64 64         ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.t = getelementptr i8, ptr %0, i64 840        ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 856        ; 2 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.05990 = phi i32 [ %i.w, %.lr.ph ], [ 0, %bb.d ]
  %i.v = tail call i64 @Gia_ManRandomW(i32 noundef 0) #23 ; 0 uses
  %i.w = add nuw nsw i32 %.05990, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %3
  br i1 %exitcond.not, label %.preheader89, label %.lr.ph, !llvm.loop !145

bb.e:                                             ; preds = %.preheader89, %._crit_edge
  %indvars.iv106 = phi i64 [ 0, %.preheader89 ], [ %indvars.iv.next107, %._crit_edge ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv106
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33   ; 3 uses
  %i.z = tail call i32 @Gia_ManSimulateWords(ptr noundef %0, i32 noundef %i.y) ; 0 uses
  %i.aa = getelementptr inbounds nuw [100 x i8], ptr %i.b, i64 %indvars.iv106
  %i.ab = call noalias ptr @fopen(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.6) ; 10 uses
  %.val78 = load ptr, ptr %i.r, align 8, !tbaa !52
  %i.ac = getelementptr i8, ptr %.val78, i64 4
  %.val78.val = load i32, ptr %i.ac, align 4, !tbaa !53
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.14, i32 noundef %.val78.val) #23 ; 0 uses
  %.val81 = load ptr, ptr %i.s, align 8, !tbaa !57
  %i.ae = getelementptr i8, ptr %.val81, i64 4
  %.val81.val = load i32, ptr %i.ae, align 4, !tbaa !53
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.15, i32 noundef %.val81.val) #23 ; 0 uses
  %i.ag = shl nsw i32 %i.y, 6                     ; 2 uses
  %i.ah = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.16, i32 noundef %i.ag) #23 ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.17, i64 9, i64 1, ptr %i.ab) ; 0 uses
  %i.ai = icmp sgt i32 %i.y, 0
  br i1 %i.ai, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.e, %.critedge2
  %.099 = phi i32 [ %i.ch, %.critedge2 ], [ 0, %bb.e ] ; 5 uses
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !52  ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  %.val7191 = load i32, ptr %i.ak, align 4, !tbaa !53
  %i.al = icmp sgt i32 %.val7191, 0
  br i1 %i.al, label %.lr.ph93, label %.critedge

.lr.ph93:                                         ; preds = %.preheader
  %i.am = lshr i32 %.099, 6
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = and i32 %.099, 63
  %i.ap = zext nneg i32 %i.ao to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph93, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.aq = phi ptr [ %i.aj, %.lr.ph93 ], [ %i.be, %bb.g ]
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val80.val = load ptr, ptr %i.ar, align 8, !tbaa !56
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.val80.val, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !33 ; 2 uses
  %.not66 = icmp eq i32 %i.at, 0
  br i1 %.not66, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val76 = load i32, ptr %i.t, align 8, !tbaa !67
  %.val77 = load ptr, ptr %i.u, align 8, !tbaa !66
  %i.au = getelementptr i8, ptr %.val77, i64 8
  %.val77.val = load ptr, ptr %i.au, align 8, !tbaa !30
  %i.av = mul nsw i32 %.val76, %i.at
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %.val77.val, i64 %i.aw
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.an
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !32
  %i.ba = lshr i64 %i.az, %i.ap
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = and i32 %i.bb, 1
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.18, i32 noundef %i.bc) #23 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !52  ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 4
  %.val71 = load i32, ptr %i.bf, align 4, !tbaa !53
  %i.bg = sext i32 %.val71 to i64
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %bb.f, label %.critedge, !llvm.loop !146

.critedge:                                        ; preds = %bb.f, %bb.g, %.preheader
  %fputc = tail call i32 @fputc(i32 32, ptr %i.ab) ; 0 uses
  %i.bi = load ptr, ptr %i.s, align 8, !tbaa !57  ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %.val95 = load i32, ptr %i.bj, align 4, !tbaa !53
  %i.bk = icmp sgt i32 %.val95, 0
  br i1 %i.bk, label %.lr.ph97, label %.critedge2

.lr.ph97:                                         ; preds = %.critedge
  %i.bl = lshr i32 %.099, 6
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = and i32 %.099, 63
  %i.bo = zext nneg i32 %i.bn to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph97, %bb.i
  %indvars.iv102 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next103, %bb.i ] ; 2 uses
  %i.bp = phi ptr [ %i.bi, %.lr.ph97 ], [ %i.cd, %bb.i ]
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %.val83.val = load ptr, ptr %i.bq, align 8, !tbaa !56
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val83.val, i64 %indvars.iv102
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !33 ; 2 uses
  %.not68 = icmp eq i32 %i.bs, 0
  br i1 %.not68, label %.critedge2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val74 = load i32, ptr %i.t, align 8, !tbaa !67
  %.val75 = load ptr, ptr %i.u, align 8, !tbaa !66
  %i.bt = getelementptr i8, ptr %.val75, i64 8
  %.val75.val = load ptr, ptr %i.bt, align 8, !tbaa !30
  %i.bu = mul nsw i32 %.val74, %i.bs
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr %.val75.val, i64 %i.bv
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bm
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !32
  %i.bz = lshr i64 %i.by, %i.bo
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = and i32 %i.ca, 1
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ab, ptr noundef nonnull @.str.18, i32 noundef %i.cb) #23 ; 0 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !57  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 4
  %.val = load i32, ptr %i.ce, align 4, !tbaa !53
  %i.cf = sext i32 %.val to i64
  %i.cg = icmp slt i64 %indvars.iv.next103, %i.cf
  br i1 %i.cg, label %bb.h, label %.critedge2, !llvm.loop !147

.critedge2:                                       ; preds = %bb.h, %bb.i, %.critedge
  %fputc70 = tail call i32 @fputc(i32 10, ptr %i.ab) ; 0 uses
  %i.ch = add nuw nsw i32 %.099, 1                ; 2 uses
  %exitcond105.not = icmp eq i32 %i.ch, %i.ag
  br i1 %exitcond105.not, label %._crit_edge, label %.preheader, !llvm.loop !148

._crit_edge:                                      ; preds = %.critedge2, %bb.e
  %fwrite65 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %i.ab) ; 0 uses
  %i.ci = tail call i32 @fclose(ptr noundef %i.ab) ; 0 uses
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond109.not = icmp eq i64 %indvars.iv.next107, 3
  br i1 %exitcond109.not, label %bb.j, label %bb.e, !llvm.loop !149

bb.j:                                             ; preds = %._crit_edge
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val84 = load ptr, ptr %0, align 8, !tbaa !71
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.cj = phi ptr [ %.val84, %bb.k ], [ %4, %bb.j ]
  %i.ck = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %i.cj) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nounwind uwtable
define void @Gia_ManSimLogStats(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.6) ; 11 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.23, i64 2, i64 1, ptr %i.a) ; 0 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !71
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.24, ptr noundef %i.b) #23 ; 0 uses
  %i.d = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.e = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.e, align 4, !tbaa !53
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.25, i32 noundef %.val.val) #23 ; 0 uses
  %i.g = getelementptr i8, ptr %0, i64 72         ; 2 uses
  %.val20 = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr i8, ptr %.val20, i64 4
  %.val20.val = load i32, ptr %i.h, align 4, !tbaa !53
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.26, i32 noundef %.val20.val) #23 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !65
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.m = getelementptr i8, ptr %i.l, i64 4
  %.val3.i = load i32, ptr %i.m, align 4, !tbaa !53
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %.val.i = load i32, ptr %i.o, align 4, !tbaa !53
  %i.p = add i32 %.val.i, %.val3.i
  %i.q = xor i32 %i.p, -1
  %i.r = add i32 %i.k, %i.q
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.27, i32 noundef %i.r) #23 ; 0 uses
  %i.t = tail call i32 @Gia_ManLevelNum(ptr noundef nonnull %0) #23
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.28, i32 noundef %i.t) #23 ; 0 uses
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.29, i32 noundef %2) #23 ; 0 uses
  %i.w = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.30, i32 noundef %3) #23 ; 0 uses
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.31, i32 noundef %4) #23 ; 0 uses
  %fwrite19 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 2, i64 1, ptr %i.a) ; 0 uses
  %i.y = tail call i32 @fclose(ptr noundef %i.a)  ; 0 uses
  ret void
}

declare i32 @Gia_ManLevelNum(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @Gia_ManSimParamRead(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.33) ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.critedge.outer

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %0) ; 0 uses
  br label %bb.i

.critedge:                                        ; preds = %.critedge.outer, %.critedge
  %i.d = tail call i32 @fgetc(ptr noundef nonnull %i.a)
  switch i32 %i.d, label %.critedge [
    i32 -1, label %.loopexit
    i32 10, label %.thread43
  ], !llvm.loop !150

bb.c:                                             ; preds = %.critedge.outer
  %i.e = icmp eq i32 %.034.ph, -1
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not40 = icmp eq i32 %.034.ph, %.028.ph
  br i1 %.not40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %.028.ph, i32 noundef %.034.ph) ; 0 uses
  %i.g = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.c, %bb.d
  %.135 = phi i32 [ %.034.ph, %bb.d ], [ %.028.ph, %bb.c ]
  %i.h = add nsw i32 %.031.ph, 1
  br label %.thread43

.thread43.loopexit:                               ; preds = %.critedge.outer
  %i.i = and i32 %i.l, -2
  %i.j = icmp eq i32 %i.i, 48
  %i.k = zext i1 %i.j to i32
  br label %.thread43

.thread43:                                        ; preds = %.critedge, %.thread43.loopexit, %bb.f
  %or.cond = phi i32 [ %i.k, %.thread43.loopexit ], [ 0, %bb.f ], [ 0, %.critedge ]
  %.23051 = phi i32 [ %.028.ph, %.thread43.loopexit ], [ 0, %bb.f ], [ %.028.ph, %.critedge ]
  %.23350 = phi i32 [ %.031.ph, %.thread43.loopexit ], [ %i.h, %bb.f ], [ %.031.ph, %.critedge ]
  %.349 = phi i32 [ %.034.ph, %.thread43.loopexit ], [ %.135, %bb.f ], [ %.034.ph, %.critedge ]
  %spec.select = add nsw i32 %.23051, %or.cond
  br label %.critedge.outer, !llvm.loop !151

.critedge.outer:                                  ; preds = %bb.a, %.thread43
  %.034.ph = phi i32 [ %.349, %.thread43 ], [ -1, %bb.a ] ; 7 uses
  %.031.ph = phi i32 [ %.23350, %.thread43 ], [ 0, %bb.a ] ; 6 uses
  %.028.ph = phi i32 [ %spec.select, %.thread43 ], [ 0, %bb.a ] ; 5 uses
  %i.l = tail call i32 @fgetc(ptr noundef nonnull %i.a) ; 2 uses
  switch i32 %i.l, label %.thread43.loopexit [
    i32 -1, label %.loopexit
    i32 46, label %.critedge
    i32 10, label %bb.c
  ]

.loopexit:                                        ; preds = %.critedge.outer, %.critedge
  %i.m = and i32 %.031.ph, -2147483585
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.031.ph) ; 0 uses
  br label %.sink.split

bb.h:                                             ; preds = %.loopexit
  %i.p = add nsw i32 %.034.ph, -1
  store i32 %i.p, ptr %1, align 4, !tbaa !33
  %i.q = sdiv i32 %.031.ph, 64
  store i32 %i.q, ptr %2, align 4, !tbaa !33
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.037.ph = phi i32 [ 1, %bb.h ], [ 0, %bb.g ]
  %3 = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.e, %bb.b
  %.037 = phi i32 [ 0, %bb.b ], [ 0, %bb.e ], [ %.037.ph, %.sink.split ]
  ret i32 %.037
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @Gia_ManSimFileRead(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.33) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  br label %.outer.outer

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef %0) ; 0 uses
  br label %bb.t

.backedge:                                        ; preds = %.backedge.backedge, %.outer
  %.0 = phi i32 [ 0, %.outer ], [ %.0.be, %.backedge.backedge ]
  %i.g = tail call i32 @fgetc(ptr noundef nonnull %i.a) ; 5 uses
  switch i32 %i.g, label %bb.d [
    i32 -1, label %bb.s
    i32 46, label %bb.c
  ]

bb.c:                                             ; preds = %.backedge
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.1 = phi i32 [ 1, %bb.c ], [ %.0, %.backedge ]
  %i.h = icmp eq i32 %i.g, 10
  %.not3031 = icmp eq i32 %.1, 0
  %.not30 = or i1 %i.h, %.not3031
  br i1 %.not30, label %bb.e, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %bb.e
  %.0.be = phi i32 [ 0, %bb.e ], [ 1, %bb.d ]
  br label %.backedge, !llvm.loop !152

bb.e:                                             ; preds = %bb.d
  %i.i = add i32 %i.g, -50
  %or.cond = icmp ult i32 %i.i, -2
  br i1 %or.cond, label %.backedge.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i32 %.025.ph, %1
  br i1 %i.j, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.k = add nsw i32 %i.g, -48
  %i.l = load i32, ptr %i.d, align 4, !tbaa !53   ; 7 uses
  %i.m = load i32, ptr %4, align 8, !tbaa !55
  %i.n = icmp eq i32 %i.l, %i.m
  br i1 %i.n, label %bb.h, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !56
  br label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.o = icmp slt i32 %i.l, 16
  br i1 %i.o, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.p, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.r = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i

bb.l:                                             ; preds = %bb.h
  %i.s = icmp samesign ult i32 %i.l, 1073741823
  %i.t = shl nuw nsw i32 %i.l, 1
  %spec.select.i = select i1 %i.s, i32 %i.t, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.l, %spec.select.i
  %.pre36 = load ptr, ptr %i.e, align 8, !tbaa !56 ; 3 uses
  br i1 %.not.i9.i, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %bb.l
  %.not9.i10.i = icmp eq ptr %.pre36, null
  %i.u = zext nneg i32 %spec.select.i to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = tail call ptr @realloc(ptr noundef nonnull %.pre36, i64 noundef %i.v) #24
  br label %Vec_IntGrow.exit11.sink.split.i

bb.o:                                             ; preds = %bb.m
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #25
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.n, %bb.o, %bb.j, %bb.k
  %i.y = phi ptr [ %i.r, %bb.k ], [ %i.q, %bb.j ], [ %i.w, %bb.n ], [ %i.x, %bb.o ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.k ], [ 16, %bb.j ], [ %spec.select.i, %bb.n ], [ %spec.select.i, %bb.o ]
  store ptr %i.y, ptr %i.e, align 8, !tbaa !56
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !55
  %.pre37 = load i32, ptr %i.d, align 4, !tbaa !53
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.l, %Vec_IntGrow.exit11.sink.split.i
  %i.z = phi i32 [ %i.l, %.Vec_IntPush.exit_crit_edge ], [ %i.l, %bb.l ], [ %.pre37, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aa = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre36, %bb.l ], [ %i.y, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ab = add nsw i32 %i.z, 1
  store i32 %i.ab, ptr %i.d, align 4, !tbaa !53
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.ac
  store i32 %i.k, ptr %i.ad, align 4, !tbaa !33
  %i.ae = add nuw nsw i32 %.027.ph.ph, 1
  br label %.outer.outer, !llvm.loop !152

.outer.outer:                                     ; preds = %Vec_IntPush.exit, %.preheader
  %.027.ph.ph = phi i32 [ %i.ae, %Vec_IntPush.exit ], [ 0, %.preheader ] ; 4 uses
  %i.af = and i32 %.027.ph.ph, 63
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = lshr i32 %.027.ph.ph, 6
  %i.aj = zext nneg i32 %i.ai to i64
  br label %.outer

bb.p:                                             ; preds = %bb.f
  %i.ak = icmp eq i32 %i.g, 49
  br i1 %i.ak, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.al = mul nsw i32 %.025.ph, %2
  %.val = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.am
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aj ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !32
  %i.aq = or i64 %i.ap, %i.ah
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ar = add nuw nsw i32 %.025.ph, 1
  br label %.outer, !llvm.loop !152

.outer:                                           ; preds = %.outer.outer, %bb.r
  %.025.ph = phi i32 [ %i.ar, %bb.r ], [ 0, %.outer.outer ] ; 3 uses
  br label %.backedge

bb.s:                                             ; preds = %.backedge
  %i.as = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  %i.at = shl nsw i32 %2, 6
  %i.au = load i32, ptr %i.d, align 4, !tbaa !53  ; 3 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i, label %Vec_IntSum.exit

.lr.ph.i:                                         ; preds = %bb.s
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !56  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.au to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.au, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi47 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !33
  %wide.load48 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !33
  %i.az = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ba = add <4 x i32> %wide.load48, %vec.phi47  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ba, %i.az
  %i.bc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Vec_IntSum.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %i.bc, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.08.i = phi i32 [ %i.bf, %scalar.ph ], [ %.08.i.ph, %scalar.ph.preheader ]
end_hunk_0
