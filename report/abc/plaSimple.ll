Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/plaSimple?download=true
inline.NumInlined: 122
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Pla_ManDumpBlif:bb.a
  %.val103 = load i32, ptr %i.am, align 4, !tbaa !19
  %i.bf = sext i32 %.val103 to i64
  %i.bg = icmp slt i64 %indvars.iv.next137, %i.bf
  br i1 %i.bg, label %bb.f, label %.critedge, !llvm.loop !44

.critedge:                                        ; preds = %.critedge2, %Vec_StrStart.exit
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %Vec_StrFree.exit, label %bb.h

bb.h:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.ak) #16
  br label %Vec_StrFree.exit

Vec_StrFree.exit:                                 ; preds = %.critedge, %bb.h
  %.val105131 = load i32, ptr %i.a, align 4, !tbaa !21
  %i.bh = icmp slt i32 %i.u, %.val105131
  br i1 %i.bh, label %.lr.ph133, label %.critedge4

.lr.ph133:                                        ; preds = %Vec_StrFree.exit
  %i.bi = getelementptr i8, ptr %0, i64 144
  %i.bj = sext i32 %i.u to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph133, %bb.n
  %indvars.iv139 = phi i64 [ %i.bj, %.lr.ph133 ], [ %indvars.iv.next140, %bb.n ] ; 4 uses
  %.val109 = load ptr, ptr %i.bi, align 8, !tbaa !23
  %i.bk = getelementptr inbounds [4 x i8], ptr %.val109, i64 %indvars.iv139
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !24 ; 6 uses
  %i.bm = lshr i32 %i.bl, 2                       ; 2 uses
  %i.bn = lshr i32 %i.bl, 12
  %fwrite94 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 6, i64 1, ptr nonnull %i.v) ; 0 uses
  %i.bo = lshr i32 %i.bl, 3
  %i.bp = and i32 %i.bo, 511
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.14, i32 noundef %i.bp) #16 ; 0 uses
  %i.br = lshr i32 %i.bl, 13
  %i.bs = and i32 %i.br, 511
  %i.bt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.14, i32 noundef %i.bs) #16 ; 0 uses
  %i.bu = and i32 %i.bl, 3                        ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 3
  br i1 %i.bv, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = trunc nsw i64 %indvars.iv139 to i32
  %i.bx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.19, i32 noundef %i.bw) #16 ; 0 uses
  switch i32 %i.bu, label %bb.n [
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.by = and i32 %i.bm, 1
  %i.bz = xor i32 %i.by, 1
  %i.ca = and i32 %i.bn, 1
  %i.cb = xor i32 %i.ca, 1
  %i.cc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.20, i32 noundef %i.bz, i32 noundef %i.cb) #16 ; 0 uses
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %fwrite96 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 10, i64 1, ptr nonnull %i.v) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.cd = lshr i32 %i.bl, 23
  %i.ce = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.14, i32 noundef %i.cd) #16 ; 0 uses
  %i.cf = trunc nsw i64 %indvars.iv139 to i32
  %i.cg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.19, i32 noundef %i.cf) #16 ; 0 uses
  %i.ch = and i32 %i.bm, 1
  %i.ci = xor i32 %i.ch, 1
  %i.cj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.22, i32 noundef %i.ci) #16 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.l, %bb.m, %bb.k
  %indvars.iv.next140 = add nsw i64 %indvars.iv139, 1 ; 2 uses
  %.val105 = load i32, ptr %i.a, align 4, !tbaa !21
  %i.ck = sext i32 %.val105 to i64
  %i.cl = icmp slt i64 %indvars.iv.next140, %i.ck
  br i1 %i.cl, label %bb.i, label %.critedge4, !llvm.loop !45

.critedge4:                                       ; preds = %bb.n, %Vec_StrFree.exit
  %fwrite93 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 6, i64 1, ptr nonnull %i.v) ; 0 uses
  %i.cm = tail call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %Vec_IntCountZero.exit, %.critedge4
  %.str.10.sink = phi ptr [ @.str.10, %.critedge4 ], [ @.str.1, %Vec_IntCountZero.exit ]
  %i.cn = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.10.sink, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @Pla_ManExpendDirNum(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.011 = phi i32 [ %.1, %bb.c ], [ 0, %bb.a ]    ; 3 uses
  %.0910 = phi i32 [ %i.o, %bb.c ], [ 0, %bb.a ]  ; 3 uses
  %i.b = shl nuw i32 1, %.0910
  %i.c = xor i32 %i.b, %2                         ; 2 uses
  %i.d = ashr i32 %i.c, 6
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !30
  %i.h = and i32 %i.c, 63
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw i64 1, %i.i
  %i.k = and i64 %i.g, %i.j
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.l = add nsw i32 %.011, 1
  %i.m = sext i32 %.011 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %3, i64 %i.m
  store i32 %.0910, ptr %i.n, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i32 [ %i.l, %bb.b ], [ %.011, %.lr.ph ] ; 2 uses
  %i.o = add nuw nsw i32 %.0910, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.c ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nounwind uwtable
define void @Pla_PrintBinary(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.04 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ]  ; 3 uses
  %i.b = lshr i32 %.04, 6
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30
  %i.f = and i32 %.04, 63
  %i.g = zext nneg i32 %i.f to i64
  %i.h = lshr i64 %i.e, %i.g
  %i.i = trunc i64 %i.h to i32
  %i.j = and i32 %i.i, 1
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %i.j) ; 0 uses
  %i.l = add nuw nsw i32 %.04, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Pla_ManFxMinimize(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 22 uses
  %i.b = alloca [32 x i32], align 16              ; 6 uses
  %i.c = alloca [32 x i32], align 16              ; 5 uses
  %i.d = shl nuw i32 1, %1                        ; 3 uses
  %i.e = ashr i32 %i.d, 6
  %i.f = icmp ult i32 %1, 6
  %i.g = zext i1 %i.f to i32
  %i.h = add nsw i32 %i.e, %i.g                   ; 5 uses
  %i.i = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  store i32 0, ptr %i.j, align 4, !tbaa !31
  store i32 1000, ptr %i.i, align 8, !tbaa !32
  %i.k = tail call noalias dereferenceable_or_null(8000) ptr @malloc(i64 noundef 8000) #17 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !33
  %i.m = sext i32 %i.h to i64
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 8) #18 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  %i.o = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  store i32 0, ptr %i.p, align 4, !tbaa !21
  store i32 1000, ptr %i.o, align 8, !tbaa !34
  %i.q = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #17
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !23
  %.not182 = icmp eq i32 %1, 31
  br i1 %.not182, label %._crit_edge161, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.s = icmp sgt i32 %1, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %smax = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  br label %bb.b

.lr.ph160:                                        ; preds = %bb.l
  %i.u = icmp sgt i32 %1, 0
  %smax193 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  br label %bb.m

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.v = phi i32 [ 0, %.lr.ph ], [ %i.df, %bb.l ] ; 7 uses
  %i.w = phi i32 [ 0, %.lr.ph ], [ %i.dg, %bb.l ] ; 7 uses
  %.0100148 = phi i32 [ 0, %.lr.ph ], [ %i.di, %bb.l ] ; 9 uses
  %i.x = phi i32 [ 0, %.lr.ph ], [ %i.dh, %bb.l ] ; 7 uses
  %i.y = lshr i32 %.0100148, 6
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !30
  %i.ac = and i32 %.0100148, 63
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = shl nuw i64 1, %i.ad                    ; 5 uses
  %i.af = and i64 %i.ab, %i.ae
  %.not118 = icmp eq i64 %i.af, 0
  br i1 %.not118, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.z ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !30 ; 4 uses
  %i.ai = and i64 %i.ah, %i.ae
  %.not119 = icmp eq i64 %i.ai, 0
  br i1 %.not119, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  br i1 %i.s, label %.lr.ph.i, label %Pla_ManExpendDirNum.exit.thread

Pla_ManExpendDirNum.exit.thread:                  ; preds = %bb.d
  %i.aj = load i32, ptr %i.a, align 16, !tbaa !24
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.a, align 16, !tbaa !24
  br label %bb.g

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.011.i = phi i32 [ %.1.i, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %.0910.i = phi i32 [ %i.ay, %bb.f ], [ 0, %bb.d ] ; 3 uses
  %i.al = shl nuw i32 1, %.0910.i
  %i.am = xor i32 %i.al, %.0100148                ; 2 uses
  %i.an = ashr i32 %i.am, 6
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !30
  %i.ar = and i32 %i.am, 63
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.aq
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.av = add nsw i32 %.011.i, 1
  %i.aw = sext i32 %.011.i to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aw
  store i32 %.0910.i, ptr %i.ax, align 4, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.1.i = phi i32 [ %i.av, %bb.e ], [ %.011.i, %.lr.ph.i ] ; 3 uses
  %i.ay = add nuw nsw i32 %.0910.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ay, %1
  br i1 %exitcond.not.i, label %Pla_ManExpendDirNum.exit, label %.lr.ph.i, !llvm.loop !0

Pla_ManExpendDirNum.exit:                         ; preds = %bb.f
  %i.az = sext i32 %.1.i to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !24
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !24
  switch i32 %.1.i, label %bb.k [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.g:                                             ; preds = %Pla_ManExpendDirNum.exit.thread, %Pla_ManExpendDirNum.exit
  %i.bd = or i64 %i.ah, %i.ae
  store i64 %i.bd, ptr %i.ag, align 8, !tbaa !30
  %i.be = add nsw i32 %i.x, 1
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.o, i32 noundef %.0100148, i32 noundef -1)
  br label %bb.k

bb.h:                                             ; preds = %Pla_ManExpendDirNum.exit
  %i.bf = or i64 %i.ah, %i.ae
  store i64 %i.bf, ptr %i.ag, align 8, !tbaa !30
  %i.bg = load i32, ptr %i.b, align 16, !tbaa !24 ; 2 uses
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = xor i32 %i.bh, %.0100148                ; 2 uses
  %i.bj = and i32 %i.bi, 63
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl nuw i64 1, %i.bk
  %i.bm = ashr i32 %i.bi, 6
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bn ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !30
  %i.bq = or i64 %i.bl, %i.bp
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !30
  %i.br = add nsw i32 %i.v, 1
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.o, i32 noundef %.0100148, i32 noundef %i.bg)
  br label %bb.k

bb.i:                                             ; preds = %Pla_ManExpendDirNum.exit
  %i.bs = load i32, ptr %i.b, align 16, !tbaa !24
  %i.bt = shl nuw i32 1, %i.bs
  %i.bu = load i32, ptr %i.t, align 4, !tbaa !24
  %i.bv = shl nuw i32 1, %i.bu                    ; 2 uses
  %i.bw = xor i32 %i.bt, %.0100148                ; 3 uses
  %i.bx = xor i32 %i.bw, %i.bv                    ; 2 uses
  %i.by = ashr i32 %i.bx, 6
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !30
  %i.cc = and i32 %i.bx, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd                    ; 2 uses
  %i.cf = and i64 %i.ce, %i.cb
  %.not120 = icmp eq i64 %i.cf, 0
  br i1 %.not120, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = or i64 %i.ah, %i.ae
  store i64 %i.cg, ptr %i.ag, align 8, !tbaa !30
  %i.ch = and i32 %i.bw, 63
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = ashr i32 %i.bw, 6
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.cl ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30
  %i.co = or i64 %i.cn, %i.cj
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !30
  %i.cp = xor i32 %i.bv, %.0100148                ; 2 uses
  %i.cq = and i32 %i.cp, 63
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = ashr i32 %i.cp, 6
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.cu ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !30
  %i.cx = or i64 %i.cw, %i.cs
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !30
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bz ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !30
  %i.da = or i64 %i.cz, %i.ce
  store i64 %i.da, ptr %i.cy, align 8, !tbaa !30
  %i.db = add nsw i32 %i.w, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %Pla_ManExpendDirNum.exit, %bb.j, %bb.h, %bb.g
  %i.dc = phi i32 [ %i.v, %bb.i ], [ %i.v, %Pla_ManExpendDirNum.exit ], [ %i.v, %bb.j ], [ %i.br, %bb.h ], [ %i.v, %bb.g ]
  %i.dd = phi i32 [ %i.w, %bb.i ], [ %i.w, %Pla_ManExpendDirNum.exit ], [ %i.db, %bb.j ], [ %i.w, %bb.h ], [ %i.w, %bb.g ]
  %i.de = phi i32 [ %i.x, %bb.i ], [ %i.x, %Pla_ManExpendDirNum.exit ], [ %i.x, %bb.j ], [ %i.x, %bb.h ], [ %i.be, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.b, %bb.c
  %i.df = phi i32 [ %i.dc, %bb.k ], [ %i.v, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.dg = phi i32 [ %i.dd, %bb.k ], [ %i.w, %bb.b ], [ %i.w, %bb.c ] ; 2 uses
  %i.dh = phi i32 [ %i.de, %bb.k ], [ %i.x, %bb.b ], [ %i.x, %bb.c ] ; 2 uses
  %i.di = add nuw nsw i32 %.0100148, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.di, %smax
  br i1 %exitcond.not, label %.lr.ph160, label %bb.b, !llvm.loop !47

bb.m:                                             ; preds = %.lr.ph160, %bb.t
  %i.dj = phi i32 [ 0, %.lr.ph160 ], [ %i.fq, %bb.t ] ; 3 uses
  %.1101159 = phi i32 [ 0, %.lr.ph160 ], [ %i.fr, %bb.t ] ; 7 uses
  %i.dk = lshr i32 %.1101159, 6
  %i.dl = zext nneg i32 %i.dk to i64              ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dl
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !30
  %i.do = and i32 %.1101159, 63
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = shl nuw i64 1, %i.dp                    ; 3 uses
  %i.dr = and i64 %i.dn, %i.dq
  %.not114 = icmp eq i64 %i.dr, 0
  br i1 %.not114, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dl ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !30 ; 2 uses
  %i.du = and i64 %i.dt, %i.dq
  %.not115 = icmp eq i64 %i.du, 0
  br i1 %.not115, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  br i1 %i.u, label %.lr.ph.i124, label %._crit_edge

.lr.ph.i124:                                      ; preds = %bb.o, %bb.q
  %.011.i125 = phi i32 [ %.1.i128, %bb.q ], [ 0, %bb.o ] ; 3 uses
  %.0910.i126 = phi i32 [ %i.ei, %bb.q ], [ 0, %bb.o ] ; 3 uses
  %i.dv = shl nuw i32 1, %.0910.i126
  %i.dw = xor i32 %i.dv, %.1101159                ; 2 uses
  %i.dx = ashr i32 %i.dw, 6
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dy
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !30
  %i.eb = and i32 %i.dw, 63
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = shl nuw i64 1, %i.ec
  %i.ee = and i64 %i.ed, %i.ea
  %.not.i127 = icmp eq i64 %i.ee, 0
  br i1 %.not.i127, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i124
  %i.ef = add nsw i32 %.011.i125, 1
  %i.eg = sext i32 %.011.i125 to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.eg
  store i32 %.0910.i126, ptr %i.eh, align 4, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i124
  %.1.i128 = phi i32 [ %i.ef, %bb.p ], [ %.011.i125, %.lr.ph.i124 ] ; 7 uses
  %i.ei = add nuw nsw i32 %.0910.i126, 1          ; 2 uses
  %exitcond.not.i129 = icmp eq i32 %i.ei, %1
  br i1 %exitcond.not.i129, label %Pla_ManExpendDirNum.exit130, label %.lr.ph.i124, !llvm.loop !0

Pla_ManExpendDirNum.exit130:                      ; preds = %bb.q
  %i.ej = icmp sgt i32 %.1.i128, 0
  br i1 %i.ej, label %.lr.ph155.preheader, label %._crit_edge

.lr.ph155.preheader:                              ; preds = %Pla_ManExpendDirNum.exit130
  %wide.trip.count = zext nneg i32 %.1.i128 to i64
  br label %.lr.ph155

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph155.preheader ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !24
  %i.em = shl nuw i32 1, %i.el
  %i.en = xor i32 %i.em, %.1101159                ; 2 uses
  %i.eo = ashr i32 %i.en, 6
  %i.ep = sext i32 %i.eo to i64                   ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !30
  %i.es = and i32 %i.en, 63
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = shl nuw i64 1, %i.et                    ; 2 uses
  %i.ev = and i64 %i.eu, %i.er
  %.not116 = icmp eq i64 %i.ev, 0
  br i1 %.not116, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph155
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ep
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !30
  %i.ey = and i64 %i.ex, %i.eu
  %.not117 = icmp eq i64 %i.ey, 0
  br i1 %.not117, label %._crit_edge.loopexit.split.loop.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph155, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond192.not, label %._crit_edge, label %.lr.ph155, !llvm.loop !48

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.r
  %i.ez = trunc nuw nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %._crit_edge.loopexit.split.loop.exit, %bb.o, %Pla_ManExpendDirNum.exit130
  %.0.lcssa.i123247 = phi i32 [ %.1.i128, %Pla_ManExpendDirNum.exit130 ], [ 0, %bb.o ], [ %.1.i128, %._crit_edge.loopexit.split.loop.exit ], [ %.1.i128, %bb.s ]
  %.0.lcssa = phi i32 [ 0, %Pla_ManExpendDirNum.exit130 ], [ 0, %bb.o ], [ %i.ez, %._crit_edge.loopexit.split.loop.exit ], [ %.1.i128, %bb.s ] ; 2 uses
  %i.fa = icmp eq i32 %.0.lcssa, %.0.lcssa.i123247
  %spec.store.select = select i1 %i.fa, i32 0, i32 %.0.lcssa
  %i.fb = or i64 %i.dt, %i.dq
  store i64 %i.fb, ptr %i.ds, align 8, !tbaa !30
  %i.fc = zext nneg i32 %spec.store.select to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !24 ; 2 uses
  %i.ff = shl nuw i32 1, %i.fe
  %i.fg = xor i32 %i.ff, %.1101159                ; 2 uses
  %i.fh = and i32 %i.fg, 63
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = shl nuw i64 1, %i.fi
  %i.fk = ashr i32 %i.fg, 6
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.fl ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !30
  %i.fo = or i64 %i.fj, %i.fn
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !30
  %i.fp = add nsw i32 %i.dj, 1
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.o, i32 noundef %.1101159, i32 noundef %i.fe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.n, %._crit_edge
  %i.fq = phi i32 [ %i.dj, %bb.m ], [ %i.dj, %bb.n ], [ %i.fp, %._crit_edge ] ; 2 uses
  %i.fr = add nuw nsw i32 %.1101159, 1            ; 2 uses
  %exitcond194.not = icmp eq i32 %i.fr, %smax193
  br i1 %exitcond194.not, label %._crit_edge161, label %bb.m, !llvm.loop !49

._crit_edge161:                                   ; preds = %bb.t, %bb.a
  %.lcssa147245 = phi i32 [ 0, %bb.a ], [ %i.dh, %bb.t ] ; 2 uses
  %.sroa.9.0244 = phi i32 [ 0, %bb.a ], [ %i.dg, %bb.t ] ; 2 uses
  %.sroa.6.0243 = phi i32 [ 0, %bb.a ], [ %i.df, %bb.t ] ; 2 uses
  %.sroa.19.0 = phi i32 [ 0, %bb.a ], [ %i.fq, %bb.t ] ; 2 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.fs = icmp sgt i32 %i.h, 0
  br i1 %i.fs, label %.lr.ph.preheader.i, label %Pla_TtCountOnes.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge161
  %wide.trip.count.i = zext nneg i32 %i.h to i64  ; 6 uses
  %min.iters.check = icmp ult i32 %i.h, 4
  br i1 %min.iters.check, label %.lr.ph.i132.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.fz, %vector.body ]
  %vec.phi263 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ga, %vector.body ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load = load <2 x i64>, ptr %i.ft, align 8, !tbaa !30
  %wide.load264 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !30
  %i.fv = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load)
  %i.fw = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load264)
  %i.fx = trunc nuw nsw <2 x i64> %i.fv to <2 x i32>
  %i.fy = trunc nuw nsw <2 x i64> %i.fw to <2 x i32>
  %i.fz = add <2 x i32> %vec.phi, %i.fx           ; 2 uses
  %i.ga = add <2 x i32> %vec.phi263, %i.fy        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ga, %i.fz
  %i.gc = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.lr.ph.preheader.i135, label %.lr.ph.i132.preheader

.lr.ph.i132.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.08.i.ph = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.gc, %middle.block ]
  br label %.lr.ph.i132

.lr.ph.i132:                                      ; preds = %.lr.ph.i132.preheader, %.lr.ph.i132
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i132 ], [ %indvars.iv.i.ph, %.lr.ph.i132.preheader ] ; 2 uses
  %.08.i = phi i32 [ %i.gh, %.lr.ph.i132 ], [ %.08.i.ph, %.lr.ph.i132.preheader ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !30
  %i.gf = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ge)
  %i.gg = trunc nuw nsw i64 %i.gf to i32
  %i.gh = add nuw nsw i32 %.08.i, %i.gg           ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i133 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i133, label %.lr.ph.preheader.i135, label %.lr.ph.i132, !llvm.loop !51

Pla_TtCountOnes.exit:                             ; preds = %._crit_edge161
  %i.gi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef 0) ; 0 uses
  br label %Pla_TtCountOnes.exit142

.lr.ph.preheader.i135:                            ; preds = %.lr.ph.i132, %middle.block
  %.lcssa257 = phi i32 [ %i.gc, %middle.block ], [ %i.gh, %.lr.ph.i132 ]
  %i.gj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %.lcssa257) ; 0 uses
  %min.iters.check266 = icmp ult i32 %i.h, 4
  br i1 %min.iters.check266, label %.lr.ph.i137.preheader, label %vector.ph267

vector.ph267:                                     ; preds = %.lr.ph.preheader.i135
  %n.vec268 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body269

vector.body269:                                   ; preds = %vector.body269, %vector.ph267
  %index270 = phi i64 [ 0, %vector.ph267 ], [ %index.next275, %vector.body269 ] ; 2 uses
  %vec.phi271 = phi <2 x i32> [ zeroinitializer, %vector.ph267 ], [ %i.gq, %vector.body269 ]
  %vec.phi272 = phi <2 x i32> [ zeroinitializer, %vector.ph267 ], [ %i.gr, %vector.body269 ]
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index270 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  %wide.load273 = load <2 x i64>, ptr %i.gk, align 8, !tbaa !30
  %wide.load274 = load <2 x i64>, ptr %i.gl, align 8, !tbaa !30
  %i.gm = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load273)
  %i.gn = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %wide.load274)
  %i.go = trunc nuw nsw <2 x i64> %i.gm to <2 x i32>
  %i.gp = trunc nuw nsw <2 x i64> %i.gn to <2 x i32>
  %i.gq = add <2 x i32> %vec.phi271, %i.go        ; 2 uses
  %i.gr = add <2 x i32> %vec.phi272, %i.gp        ; 2 uses
  %index.next275 = add nuw i64 %index270, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.gs, label %middle.block276, label %vector.body269, !llvm.loop !52

middle.block276:                                  ; preds = %vector.body269
  %bin.rdx277 = add <2 x i32> %i.gr, %i.gq
  %i.gt = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx277) ; 2 uses
  %cmp.n278 = icmp eq i64 %n.vec268, %wide.trip.count.i
  br i1 %cmp.n278, label %Pla_TtCountOnes.exit142, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %.lr.ph.preheader.i135, %middle.block276
  %indvars.iv.i138.ph = phi i64 [ 0, %.lr.ph.preheader.i135 ], [ %n.vec268, %middle.block276 ]
  %.08.i139.ph = phi i32 [ 0, %.lr.ph.preheader.i135 ], [ %i.gt, %middle.block276 ]
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.preheader, %.lr.ph.i137
  %indvars.iv.i138 = phi i64 [ %indvars.iv.next.i140, %.lr.ph.i137 ], [ %indvars.iv.i138.ph, %.lr.ph.i137.preheader ] ; 2 uses
  %.08.i139 = phi i32 [ %i.gy, %.lr.ph.i137 ], [ %.08.i139.ph, %.lr.ph.i137.preheader ]
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.i138
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !30
  %i.gw = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.gv)
  %i.gx = trunc nuw nsw i64 %i.gw to i32
  %i.gy = add nuw nsw i32 %.08.i139, %i.gx        ; 2 uses
  %indvars.iv.next.i140 = add nuw nsw i64 %indvars.iv.i138, 1 ; 2 uses
  %exitcond.not.i141 = icmp eq i64 %indvars.iv.next.i140, %wide.trip.count.i
  br i1 %exitcond.not.i141, label %Pla_TtCountOnes.exit142, label %.lr.ph.i137, !llvm.loop !53

Pla_TtCountOnes.exit142:                          ; preds = %.lr.ph.i137, %middle.block276, %Pla_TtCountOnes.exit
  %.0.lcssa.i134 = phi i32 [ 0, %Pla_TtCountOnes.exit ], [ %i.gt, %middle.block276 ], [ %i.gy, %.lr.ph.i137 ]
  %i.gz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %.0.lcssa.i134) ; 0 uses
  %putchar108 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.ha = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27) ; 0 uses
  %i.hb = load i32, ptr %i.a, align 16, !tbaa !24 ; 2 uses
  %.not113 = icmp eq i32 %i.hb, 0
  br i1 %.not113, label %bb.v, label %bb.u

bb.u:                                             ; preds = %Pla_TtCountOnes.exit142
  %i.hc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef 0, i32 noundef %i.hb) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %Pla_TtCountOnes.exit142, %bb.u
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !24 ; 2 uses
  %.not113.1 = icmp eq i32 %i.he, 0
  br i1 %.not113.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef 1, i32 noundef %i.he) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !24 ; 2 uses
  %.not113.2 = icmp eq i32 %i.hh, 0
  br i1 %.not113.2, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef 2, i32 noundef %i.hh) ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !24 ; 2 uses
  %.not113.3 = icmp eq i32 %i.hk, 0
  br i1 %.not113.3, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef 3, i32 noundef %i.hk) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hn = load i32, ptr %i.hm, align 16, !tbaa !24 ; 2 uses
  %.not113.4 = icmp eq i32 %i.hn, 0
  br i1 %.not113.4, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ho = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef 4, i32 noundef %i.hn) ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !24 ; 2 uses
  %.not113.5 = icmp eq i32 %i.hq, 0
  br i1 %.not113.5, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef 5, i32 noundef %i.hq) ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !24 ; 2 uses
  %.not113.6 = icmp eq i32 %i.ht, 0
  br i1 %.not113.6, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef 6, i32 noundef %i.ht) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !24 ; 2 uses
  %.not113.7 = icmp eq i32 %i.hw, 0
  br i1 %.not113.7, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef 7, i32 noundef %i.hw) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hy = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.hz = load i32, ptr %i.hy, align 16, !tbaa !24 ; 2 uses
  %.not113.8 = icmp eq i32 %i.hz, 0
  br i1 %.not113.8, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ia = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef 8, i32 noundef %i.hz) ; 0 uses
end_hunk_0
