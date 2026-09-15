Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaJf?download=true
inline.NumInlined: 687
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 29
begin_hunk_0_@Jf_TtComputeForCut:bb.a
  %i.ea = xor <2 x i64> %i.dy, splat (i64 -1)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index122 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <2 x i64> %i.dz, ptr %i.eb, align 16, !tbaa !17
  store <2 x i64> %i.ea, ptr %i.ec, align 16, !tbaa !17
  %index.next127 = add nuw i64 %index122, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.ed, label %Abc_TtAnd.exit, label %vector.body121, !llvm.loop !183

.preheader.i67:                                   ; preds = %Abc_TtExpand.exit59
  br i1 %i.am, label %.lr.ph22.preheader.i, label %Abc_TtAnd.exit

.lr.ph22.preheader.i:                             ; preds = %.preheader.i67
  %min.iters.check132 = icmp ult i32 %i.j, 4
  br i1 %min.iters.check132, label %.lr.ph22.i, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph22.preheader.i
  %i.ee = and i32 %i.j, 2147483644
  %n.vec134 = zext nneg i32 %i.ee to i64
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next141, %vector.body135 ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index136 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %wide.load137 = load <2 x i64>, ptr %i.ef, align 16, !tbaa !17
  %wide.load138 = load <2 x i64>, ptr %i.eg, align 16, !tbaa !17
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index136 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load139 = load <2 x i64>, ptr %i.eh, align 16, !tbaa !17
  %wide.load140 = load <2 x i64>, ptr %i.ei, align 16, !tbaa !17
  %i.ej = and <2 x i64> %wide.load139, %wide.load137
  %i.ek = and <2 x i64> %wide.load140, %wide.load138
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index136 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <2 x i64> %i.ej, ptr %i.el, align 16, !tbaa !17
  store <2 x i64> %i.ek, ptr %i.em, align 16, !tbaa !17
  %index.next141 = add nuw i64 %index136, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.en, label %Abc_TtAnd.exit, label %vector.body135, !llvm.loop !184

.lr.ph.i63:                                       ; preds = %.lr.ph.preheader.i61
  %i.eo = load i64, ptr %i.b, align 16, !tbaa !17
  %i.ep = load i64, ptr %i.c, align 16, !tbaa !17
  %i.eq = and i64 %i.ep, %i.eo
  %i.er = xor i64 %i.eq, -1
  store i64 %i.er, ptr %i.a, align 16, !tbaa !17
  %exitcond.not.i66 = icmp eq i32 %i.j, 1
  br i1 %exitcond.not.i66, label %Abc_TtAnd.exit, label %.lr.ph.i63.1

.lr.ph.i63.1:                                     ; preds = %.lr.ph.i63
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.et = load i64, ptr %i.es, align 8, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !17
  %i.ew = and i64 %i.ev, %i.et
  %i.ex = xor i64 %i.ew, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !17
  %exitcond.not.i66.1 = icmp eq i32 %i.j, 2
  br i1 %exitcond.not.i66.1, label %Abc_TtAnd.exit, label %.lr.ph.i63.2

.lr.ph.i63.2:                                     ; preds = %.lr.ph.i63.1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fa = load i64, ptr %i.ez, align 16, !tbaa !17
  %i.fb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fc = load i64, ptr %i.fb, align 16, !tbaa !17
  %i.fd = and i64 %i.fc, %i.fa
  %i.fe = xor i64 %i.fd, -1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.fe, ptr %i.ff, align 16, !tbaa !17
  br label %Abc_TtAnd.exit

.lr.ph22.i:                                       ; preds = %.lr.ph22.preheader.i
  %i.fg = load i64, ptr %i.b, align 16, !tbaa !17
  %i.fh = load i64, ptr %i.c, align 16, !tbaa !17
  %i.fi = and i64 %i.fh, %i.fg
  store i64 %i.fi, ptr %i.a, align 16, !tbaa !17
  %exitcond29.not.i = icmp eq i32 %i.j, 1
  br i1 %exitcond29.not.i, label %Abc_TtAnd.exit, label %.lr.ph22.i.1

.lr.ph22.i.1:                                     ; preds = %.lr.ph22.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !17
  %i.fl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !17
  %i.fn = and i64 %i.fm, %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.fn, ptr %i.fo, align 8, !tbaa !17
  %exitcond29.not.i.1 = icmp eq i32 %i.j, 2
  br i1 %exitcond29.not.i.1, label %Abc_TtAnd.exit, label %.lr.ph22.i.2

.lr.ph22.i.2:                                     ; preds = %.lr.ph22.i.1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.fq = load i64, ptr %i.fp, align 16, !tbaa !17
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fs = load i64, ptr %i.fr, align 16, !tbaa !17
  %i.ft = and i64 %i.fs, %i.fq
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ft, ptr %i.fu, align 16, !tbaa !17
  br label %Abc_TtAnd.exit

Abc_TtAnd.exit:                                   ; preds = %vector.body121, %.lr.ph.i63, %.lr.ph.i63.1, %.lr.ph.i63.2, %vector.body135, %.lr.ph22.i, %.lr.ph22.i.1, %.lr.ph22.i.2, %.preheader18.i, %.preheader.i67
  %i.fv = icmp sgt i32 %.val31, 0
  br i1 %i.fv, label %.lr.ph.i68, label %Abc_TtMinBase.exit

.lr.ph.i68:                                       ; preds = %Abc_TtAnd.exit
  %i.fw = sext i32 %i.i to i64
  %.idx.i.i = shl nsw i64 %i.fw, 3
  %i.fx = getelementptr inbounds i8, ptr %i.a, i64 %.idx.i.i
  %smax56.i.i = call i32 @llvm.smax.i32(i32 %i.i, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  br i1 %i.g, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i68
  %wide.trip.count82.i = zext nneg i32 %.val31 to i64
  %.pre86 = load i64, ptr %i.a, align 16, !tbaa !17
  br label %Abc_TtHasVar.exit.us.i

Abc_TtHasVar.exit.us.i:                           ; preds = %.lr.ph.split.us.i, %Abc_TtHasVar.exit.thread.us.i
  %i.fy = phi i64 [ %i.go, %Abc_TtHasVar.exit.thread.us.i ], [ %.pre86, %.lr.ph.split.us.i ] ; 4 uses
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %Abc_TtHasVar.exit.thread.us.i ], [ 0, %.lr.ph.split.us.i ] ; 5 uses
  %.038.us.i = phi i32 [ %.1.us.i, %Abc_TtHasVar.exit.thread.us.i ], [ 0, %.lr.ph.split.us.i ] ; 4 uses
  %i.fz = trunc nuw nsw i64 %indvars.iv74.i to i32 ; 2 uses
  %i.ga = shl nuw i32 1, %i.fz
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = lshr i64 %i.fy, %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv74.i
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !17
  %i.gf = xor i64 %i.gc, %i.fy
  %i.gg = and i64 %i.gf, %i.ge
  %.not33.us.i = icmp eq i64 %i.gg, 0
  br i1 %.not33.us.i, label %Abc_TtHasVar.exit.thread.us.i, label %Abc_TtHasVar.exit.thread30.us.i

Abc_TtHasVar.exit.thread30.us.i:                  ; preds = %Abc_TtHasVar.exit.us.i
  %i.gh = sext i32 %.038.us.i to i64              ; 2 uses
  %i.gi = icmp sgt i64 %indvars.iv74.i, %i.gh
  br i1 %i.gi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %Abc_TtHasVar.exit.thread30.us.i
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv74.i
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !24
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.gh
  store i32 %i.gk, ptr %i.gl, align 4, !tbaa !24
  call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.a, i32 noundef %i.f, i32 noundef %.038.us.i, i32 noundef %i.fz)
  %.pre = load i64, ptr %i.a, align 16, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %Abc_TtHasVar.exit.thread30.us.i
  %i.gm = phi i64 [ %.pre, %bb.j ], [ %i.fy, %Abc_TtHasVar.exit.thread30.us.i ]
  %i.gn = add nsw i32 %.038.us.i, 1
  br label %Abc_TtHasVar.exit.thread.us.i

Abc_TtHasVar.exit.thread.us.i:                    ; preds = %bb.k, %Abc_TtHasVar.exit.us.i
  %i.go = phi i64 [ %i.gm, %bb.k ], [ %i.fy, %Abc_TtHasVar.exit.us.i ]
  %.1.us.i = phi i32 [ %i.gn, %bb.k ], [ %.038.us.i, %Abc_TtHasVar.exit.us.i ] ; 2 uses
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next75.i, %wide.trip.count82.i
  br i1 %exitcond78.not.i, label %Abc_TtMinBase.exit, label %Abc_TtHasVar.exit.us.i, !llvm.loop !185

.lr.ph.split.i:                                   ; preds = %.lr.ph.i68
  %.not48.i.i = icmp eq i32 %i.h, 31
  br i1 %.not48.i.i, label %Abc_TtMinBase.exit, label %.lr.ph.split.split.split.preheader.i

.lr.ph.split.split.split.preheader.i:             ; preds = %.lr.ph.split.i
  %wide.trip.count.i69 = zext nneg i32 %.val31 to i64
  br label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %Abc_TtHasVar.exit.thread.i, %.lr.ph.split.split.split.preheader.i
  %indvars.iv.i70 = phi i64 [ 0, %.lr.ph.split.split.split.preheader.i ], [ %indvars.iv.next.i72, %Abc_TtHasVar.exit.thread.i ] ; 8 uses
  %.038.i = phi i32 [ 0, %.lr.ph.split.split.split.preheader.i ], [ %.1.i71, %Abc_TtHasVar.exit.thread.i ] ; 6 uses
  %i.gp = icmp samesign ult i64 %indvars.iv.i70, 6
  br i1 %i.gp, label %.lr.ph.i.i, label %.preheader.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split.split.split.i
  %i.gq = trunc nuw nsw i64 %indvars.iv.i70 to i32
  %i.gr = shl nuw nsw i32 1, %i.gq
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i70
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !17
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next54.i.i = add nuw nsw i64 %indvars.iv53.i.i, 1 ; 2 uses
  %exitcond58.not.i.i = icmp eq i64 %indvars.iv.next54.i.i, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i, label %Abc_TtHasVar.exit.thread.i, label %bb.m, !llvm.loop !186

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i
  %indvars.iv53.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next54.i.i, %bb.l ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv53.i.i
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !17 ; 2 uses
  %i.gx = lshr i64 %i.gw, %i.gs
  %i.gy = xor i64 %i.gx, %i.gw
  %i.gz = and i64 %i.gy, %i.gu
  %.not39.i.i = icmp eq i64 %i.gz, 0
  br i1 %.not39.i.i, label %bb.l, label %Abc_TtHasVar.exit.thread30.i

.preheader.lr.ph.i.i:                             ; preds = %.lr.ph.split.split.split.i
  %i.ha = add nsw i64 %indvars.iv.i70, -6         ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 31
  %i.hc = trunc nsw i64 %i.ha to i32              ; 2 uses
  %i.hd = shl i32 2, %i.hc
  %i.he = sext i32 %i.hd to i64
  br i1 %i.hb, label %Abc_TtHasVar.exit.thread.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.preheader.lr.ph.i.i
  %i.hf = shl nuw i32 1, %i.hc                    ; 2 uses
  %6 = sext i32 %i.hf to i64
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.hf, i32 1)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %._crit_edge.us.i.i, %.preheader.us.preheader.i.i
  %.03343.us.i.i = phi ptr [ %i.hj, %._crit_edge.us.i.i ], [ %i.a, %.preheader.us.preheader.i.i ] ; 3 uses
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.03343.us.i.i, i64 %6
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.us.i.i, label %bb.o, !llvm.loop !187

bb.o:                                             ; preds = %bb.n, %.preheader.us.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 3 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !17
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.hi = load i64, ptr %gep.i.i, align 8, !tbaa !17
  %.not.us.i.i = icmp eq i64 %i.hh, %i.hi
  br i1 %.not.us.i.i, label %bb.n, label %Abc_TtHasVar.exit.thread30.i

._crit_edge.us.i.i:                               ; preds = %bb.n
  %i.hj = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.he ; 2 uses
  %i.hk = icmp ult ptr %i.hj, %i.fx
  br i1 %i.hk, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !188

Abc_TtHasVar.exit.thread30.i:                     ; preds = %bb.m, %bb.o
  %i.hl = sext i32 %.038.i to i64                 ; 2 uses
  %i.hm = icmp sgt i64 %indvars.iv.i70, %i.hl
  br i1 %i.hm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %Abc_TtHasVar.exit.thread30.i
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i70
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !24
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.hl
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !24
  %i.hq = trunc nuw nsw i64 %indvars.iv.i70 to i32
  call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.a, i32 noundef %i.f, i32 noundef %.038.i, i32 noundef %i.hq)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %Abc_TtHasVar.exit.thread30.i
  %i.hr = add nsw i32 %.038.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.l, %bb.q, %.preheader.lr.ph.i.i
  %.1.i71 = phi i32 [ %i.hr, %bb.q ], [ %.038.i, %bb.l ], [ %.038.i, %.preheader.lr.ph.i.i ], [ %.038.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, %wide.trip.count.i69
  br i1 %exitcond.not.i73, label %Abc_TtMinBase.exit, label %.lr.ph.split.split.split.i, !llvm.loop !185

Abc_TtMinBase.exit:                               ; preds = %Abc_TtHasVar.exit.thread.i, %Abc_TtHasVar.exit.thread.us.i, %Abc_TtAnd.exit, %.lr.ph.split.i
  %.0.lcssa.i = phi i32 [ 0, %Abc_TtAnd.exit ], [ 0, %.lr.ph.split.i ], [ %.1.us.i, %Abc_TtHasVar.exit.thread.us.i ], [ %.1.i71, %Abc_TtHasVar.exit.thread.i ]
  store i32 %.0.lcssa.i, ptr %5, align 4, !tbaa !24
  %i.hs = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a)
  %i.ht = shl nsw i32 %i.hs, 1
  %i.hu = or disjoint i32 %i.ht, %i.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %i.hu
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Vec_MemHashInsert(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4        ; 2 uses
  %.val15 = load i32, ptr %i.e, align 4, !tbaa !21 ; 2 uses
  %i.f = icmp sgt i32 %i.b, %.val15
  br i1 %i.f, label %bb.b, label %Vec_MemHashResize.exit

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.val15, 1
  %i.h = add i32 %i.g, -1
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %bb.b
  %.012.i.i = phi i32 [ %i.h, %bb.b ], [ %i.i, %.critedge.i.i.backedge ] ; 2 uses
  %i.i = add i32 %.012.i.i, 1                     ; 9 uses
  %i.j = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
  br label %.critedge.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i
  %.not15.i.i = icmp ult i32 %i.i, 9
  br i1 %.not15.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = add nuw nsw i32 %.01116.i.i, 2           ; 3 uses
  %i.l = mul nuw nsw i32 %i.k, %i.k
  %.not.i.i = icmp ugt i32 %i.l, %i.i
  br i1 %.not.i.i, label %Abc_PrimeCudd.exit.i, label %.lr.ph.i.i, !llvm.loop !0

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.c
  %.01116.i.i = phi i32 [ %i.k, %bb.c ], [ 3, %.preheader.i.i ] ; 2 uses
  %i.m = urem i32 %i.i, %.01116.i.i
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.critedge.i.i.backedge, label %bb.c

Abc_PrimeCudd.exit.i:                             ; preds = %.preheader.i.i, %bb.c
  %i.o = load i32, ptr %i.d, align 8, !tbaa !22
  %.not.i.i.i = icmp slt i32 %i.o, %i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23   ; 3 uses
  br i1 %.not.i.i.i, label %bb.d, label %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i

Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i:        ; preds = %Abc_PrimeCudd.exit.i
  %.pre40.i = zext nneg i32 %i.i to i64
  %.pre41.i = shl nuw nsw i64 %.pre40.i, 2
  br label %.lr.ph.i15.i

bb.d:                                             ; preds = %Abc_PrimeCudd.exit.i
  %.not9.i.i.i = icmp eq ptr %i.q, null
  %i.r = zext nneg i32 %i.i to i64
  %i.s = shl nuw nsw i64 %i.r, 2                  ; 3 uses
  br i1 %.not9.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.q, i64 noundef %i.s) #27
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.s) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !23
  store i32 %i.i, ptr %i.d, align 8, !tbaa !22
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %bb.g, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre41.i, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.s, %bb.g ]
  %i.w = phi ptr [ %i.q, %Abc_PrimeCudd.exit..lr.ph.i15_crit_edge.i ], [ %i.v, %bb.g ]
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -1, i64 %.pre-phi.i, i1 false), !tbaa !24
  store i32 %i.i, ptr %i.e, align 4, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %i.z, align 4, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1428.i = load i32, ptr %i.a, align 4, !tbaa !107
  %i.ab = icmp sgt i32 %.val1428.i, 0
  br i1 %i.ab, label %.lr.ph30.i, label %Vec_MemHashResize.exit

.lr.ph30.i:                                       ; preds = %.lr.ph.i15.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntPush.exit.i, %.lr.ph30.i
  %.029.i = phi i32 [ 0, %.lr.ph30.i ], [ %i.es, %Vec_IntPush.exit.i ] ; 3 uses
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !110 ; 3 uses
  %i.af = load i32, ptr %i.ac, align 8, !tbaa !92 ; 3 uses
  %i.ag = lshr i32 %.029.i, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !81 ; 2 uses
  %i.ak = load i32, ptr %0, align 8, !tbaa !91    ; 6 uses
  %i.al = load i32, ptr %i.ad, align 4, !tbaa !93 ; 3 uses
  %i.am = and i32 %i.al, %.029.i
  %i.an = mul nsw i32 %i.am, %i.ak
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ao ; 8 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %Vec_MemHashResize.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !95  ; 2 uses
  %i.ar = icmp sgt i32 %i.ak, 0
  br i1 %i.ar, label %.lr.ph.preheader.i.i.i, label %Vec_MemHashKey.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.i
  %i.as = shl nuw i32 %i.ak, 1                    ; 2 uses
  %smax.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.as, i32 1) ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %smax.i.i.i to i64 ; 5 uses
  %min.iters.check = icmp slt i32 %i.as, 8
  %i.at = add nsw i32 %smax.i.i.i, -9
  %i.au = icmp ult i32 %i.at, -8
  %or.cond = select i1 %min.iters.check, i1 true, i1 %i.au
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 8      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi93 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <4 x i32>, ptr %i.av, align 4, !tbaa !24
  %wide.load94 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !24
end_hunk_0
begin_hunk_1_@Jf_ObjComputeCuts:bb.a
bb.e:                                             ; preds = %.lr.ph123.i
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv150.i
  store i32 %i.hi, ptr %i.hl, align 4, !tbaa !24
  %indvars.iv.next151.i = add nuw nsw i64 %indvars.iv150.i, 1 ; 2 uses
  %exitcond155.not.i = icmp eq i64 %indvars.iv.next151.i, %wide.trip.count.i279
  br i1 %exitcond155.not.i, label %.loopexit458, label %.lr.ph123.i, !llvm.loop !205

bb.f:                                             ; preds = %bb.d
  %i.hm = icmp eq i32 %i.hb, 0
  br i1 %i.hm, label %.loopexit109.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.hn = icmp eq i32 %i.hc, 0
  br i1 %i.hn, label %.loopexit110.i, label %.preheader107.i

.preheader107.i:                                  ; preds = %bb.g
  br i1 %i.ga, label %Jf_ObjAddCutToStore.exit, label %.lr.ph.i252

.lr.ph.i252:                                      ; preds = %.preheader107.i, %bb.m
  %indvars.iv.i253 = phi i64 [ %indvars.iv.next.pre-phi.i, %bb.m ], [ 0, %.preheader107.i ] ; 8 uses
  %.079112.i = phi i32 [ %.180.i, %bb.m ], [ 0, %.preheader107.i ] ; 5 uses
  %.184111.i = phi i32 [ %.285.i, %bb.m ], [ 0, %.preheader107.i ] ; 5 uses
  %i.ho = sext i32 %.184111.i to i64
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !24 ; 4 uses
  %i.hr = sext i32 %.079112.i to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !24 ; 3 uses
  %i.hu = icmp slt i32 %i.hq, %i.ht
  br i1 %i.hu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i252
  %i.hv = add nsw i32 %.184111.i, 1               ; 2 uses
  %i.hw = add nuw nsw i64 %indvars.iv.i253, 1     ; 2 uses
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.he, i64 %indvars.iv.i253
  store i32 %i.hq, ptr %i.hx, align 4, !tbaa !24
  %.not102.i = icmp slt i32 %i.hv, %i.hb
  br i1 %.not102.i, label %bb.m, label %.loopexit109.loopexit.split.loop.exit.i

bb.i:                                             ; preds = %.lr.ph.i252
  %i.hy = icmp sgt i32 %i.hq, %i.ht
  br i1 %i.hy, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hz = add nsw i32 %.079112.i, 1               ; 2 uses
  %i.ia = add nuw nsw i64 %indvars.iv.i253, 1     ; 2 uses
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.he, i64 %indvars.iv.i253
  store i32 %i.ht, ptr %i.ib, align 4, !tbaa !24
  %.not101.i = icmp slt i32 %i.hz, %i.hc
  br i1 %.not101.i, label %bb.m, label %.loopexit110.loopexit.split.loop.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ic = add nsw i32 %.184111.i, 1               ; 3 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.he, i64 %indvars.iv.i253
  store i32 %i.hq, ptr %i.id, align 4, !tbaa !24
  %i.ie = add nsw i32 %.079112.i, 1               ; 3 uses
  %.not.i = icmp slt i32 %i.ic, %i.hb
  br i1 %.not.i, label %bb.l, label %.loopexit109.loopexit.split.loop.exit171.i

bb.l:                                             ; preds = %bb.k
  %.not100.i = icmp slt i32 %i.ie, %i.hc
  br i1 %.not100.i, label %._crit_edge156.i, label %.loopexit110.loopexit.split.loop.exit168.i

._crit_edge156.i:                                 ; preds = %bb.l
  %.pre.i = add nuw nsw i64 %indvars.iv.i253, 1
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge156.i, %bb.j, %bb.h
  %indvars.iv.next.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge156.i ], [ %i.ia, %bb.j ], [ %i.hw, %bb.h ] ; 2 uses
  %.285.i = phi i32 [ %i.ic, %._crit_edge156.i ], [ %.184111.i, %bb.j ], [ %i.hv, %bb.h ]
  %.180.i = phi i32 [ %i.ie, %._crit_edge156.i ], [ %i.hz, %bb.j ], [ %.079112.i, %bb.h ]
  %exitcond.i = icmp eq i64 %indvars.iv.next.pre-phi.i, %wide.trip.count.i279
  br i1 %exitcond.i, label %Jf_ObjAddCutToStore.exit, label %.lr.ph.i252

.loopexit110.loopexit.split.loop.exit.i:          ; preds = %bb.j
  %i.if = trunc nuw nsw i64 %i.ia to i32
  br label %.loopexit110.i

.loopexit110.loopexit.split.loop.exit168.i:       ; preds = %bb.l
  %indvars.le.i = trunc i64 %indvars.iv.i253 to i32
  %i.ig = add nuw nsw i32 %indvars.le.i, 1
  br label %.loopexit110.i

.loopexit110.i:                                   ; preds = %.loopexit110.loopexit.split.loop.exit168.i, %.loopexit110.loopexit.split.loop.exit.i, %bb.g
  %.386.i = phi i32 [ 0, %bb.g ], [ %.184111.i, %.loopexit110.loopexit.split.loop.exit.i ], [ %i.ic, %.loopexit110.loopexit.split.loop.exit168.i ] ; 3 uses
  %.2.i = phi i32 [ 0, %bb.g ], [ %i.if, %.loopexit110.loopexit.split.loop.exit.i ], [ %i.ig, %.loopexit110.loopexit.split.loop.exit168.i ] ; 3 uses
  %i.ih = add nsw i32 %.2.i, %i.hb
  %i.ii = add nsw i32 %.386.i, %i.f
  %i.ij = icmp sgt i32 %i.ih, %i.ii
  br i1 %i.ij, label %Jf_ObjAddCutToStore.exit, label %.preheader106.i

.preheader106.i:                                  ; preds = %.loopexit110.i
  %i.ik = icmp slt i32 %.386.i, %i.hb
  br i1 %i.ik, label %.lr.ph116.preheader.i, label %.loopexit458

.lr.ph116.preheader.i:                            ; preds = %.preheader106.i
  %i.il = zext i32 %.2.i to i64                   ; 5 uses
  %i.im = sext i32 %.386.i to i64                 ; 6 uses
  %wide.trip.count137.i = zext nneg i32 %i.hb to i64 ; 4 uses
  %i.in = sub nsw i64 %wide.trip.count137.i, %i.im ; 3 uses
  %min.iters.check904 = icmp ult i64 %i.in, 8
  br i1 %min.iters.check904, label %.lr.ph116.i.preheader, label %vector.memcheck900

vector.memcheck900:                               ; preds = %.lr.ph116.preheader.i
  %.reass1142 = add i64 %i.gz, %invariant.op1141
  %i.io = shl nuw nsw i64 %i.il, 2
  %i.ip = add i64 %.reass1142, %i.io
  %i.iq = shl nsw i64 %i.im, 2
  %i.ir = sub i64 %i.iq, %i.ip
  %diff.check902 = icmp ugt i64 %i.ir, -32
  br i1 %diff.check902, label %.lr.ph116.i.preheader, label %vector.ph905

vector.ph905:                                     ; preds = %vector.memcheck900
  %n.vec906 = and i64 %i.in, -8                   ; 4 uses
  %i.is = add nsw i64 %n.vec906, %i.im
  %i.it = add nsw i64 %n.vec906, %i.il            ; 2 uses
  %invariant.gep1133 = getelementptr [4 x i8], ptr %i.gk, i64 %i.im
  %invariant.gep1135 = getelementptr [4 x i8], ptr %i.he, i64 %i.il
  br label %vector.body907

vector.body907:                                   ; preds = %vector.body907, %vector.ph905
  %index908 = phi i64 [ 0, %vector.ph905 ], [ %index.next911, %vector.body907 ] ; 3 uses
  %gep1134 = getelementptr [4 x i8], ptr %invariant.gep1133, i64 %index908 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %gep1134, i64 16
  %wide.load909 = load <4 x i32>, ptr %gep1134, align 4, !tbaa !24
  %wide.load910 = load <4 x i32>, ptr %i.iu, align 4, !tbaa !24
  %gep1136 = getelementptr [4 x i8], ptr %invariant.gep1135, i64 %index908 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %gep1136, i64 16
  store <4 x i32> %wide.load909, ptr %gep1136, align 4, !tbaa !24
  store <4 x i32> %wide.load910, ptr %i.iv, align 4, !tbaa !24
  %index.next911 = add nuw i64 %index908, 8       ; 2 uses
  %i.iw = icmp eq i64 %index.next911, %n.vec906
  br i1 %i.iw, label %middle.block912, label %vector.body907, !llvm.loop !206

middle.block912:                                  ; preds = %vector.body907
  %cmp.n913 = icmp eq i64 %i.in, %n.vec906
  br i1 %cmp.n913, label %._crit_edge.loopexit.i, label %.lr.ph116.i.preheader

.lr.ph116.i.preheader:                            ; preds = %vector.memcheck900, %.lr.ph116.preheader.i, %middle.block912
  %indvars.iv131.i.ph = phi i64 [ %i.im, %vector.memcheck900 ], [ %i.im, %.lr.ph116.preheader.i ], [ %i.is, %middle.block912 ] ; 4 uses
  %indvars.iv129.i.ph = phi i64 [ %i.il, %vector.memcheck900 ], [ %i.il, %.lr.ph116.preheader.i ], [ %i.it, %middle.block912 ] ; 2 uses
  %i.ix = sub nsw i64 %wide.trip.count137.i, %indvars.iv131.i.ph
  %xtraiter1052 = and i64 %i.ix, 3                ; 2 uses
  %lcmp.mod1053.not = icmp eq i64 %xtraiter1052, 0
  br i1 %lcmp.mod1053.not, label %.lr.ph116.i.prol.loopexit, label %.lr.ph116.i.prol

.lr.ph116.i.prol:                                 ; preds = %.lr.ph116.i.preheader, %.lr.ph116.i.prol
  %indvars.iv131.i.prol = phi i64 [ %indvars.iv.next132.i.prol, %.lr.ph116.i.prol ], [ %indvars.iv131.i.ph, %.lr.ph116.i.preheader ] ; 2 uses
  %indvars.iv129.i.prol = phi i64 [ %indvars.iv.next130.i.prol, %.lr.ph116.i.prol ], [ %indvars.iv129.i.ph, %.lr.ph116.i.preheader ] ; 2 uses
  %prol.iter1054 = phi i64 [ %prol.iter1054.next, %.lr.ph116.i.prol ], [ 0, %.lr.ph116.i.preheader ]
  %indvars.iv.next132.i.prol = add nsw i64 %indvars.iv131.i.prol, 1 ; 2 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %indvars.iv131.i.prol
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !24
  %indvars.iv.next130.i.prol = add nuw nsw i64 %indvars.iv129.i.prol, 1 ; 3 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv129.i.prol
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !24
  %prol.iter1054.next = add i64 %prol.iter1054, 1 ; 2 uses
  %prol.iter1054.cmp.not = icmp eq i64 %prol.iter1054.next, %xtraiter1052
  br i1 %prol.iter1054.cmp.not, label %.lr.ph116.i.prol.loopexit, label %.lr.ph116.i.prol, !llvm.loop !207

.lr.ph116.i.prol.loopexit:                        ; preds = %.lr.ph116.i.prol, %.lr.ph116.i.preheader
  %indvars.iv.next130.i.lcssa1007.unr = phi i64 [ poison, %.lr.ph116.i.preheader ], [ %indvars.iv.next130.i.prol, %.lr.ph116.i.prol ]
  %indvars.iv131.i.unr = phi i64 [ %indvars.iv131.i.ph, %.lr.ph116.i.preheader ], [ %indvars.iv.next132.i.prol, %.lr.ph116.i.prol ]
  %indvars.iv129.i.unr = phi i64 [ %indvars.iv129.i.ph, %.lr.ph116.i.preheader ], [ %indvars.iv.next130.i.prol, %.lr.ph116.i.prol ]
  %i.jb = sub nsw i64 %indvars.iv131.i.ph, %wide.trip.count137.i
  %i.jc = icmp ugt i64 %i.jb, -4
  br i1 %i.jc, label %._crit_edge.loopexit.i, label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %.lr.ph116.i.prol.loopexit, %.lr.ph116.i
  %indvars.iv131.i = phi i64 [ %indvars.iv.next132.i.3, %.lr.ph116.i ], [ %indvars.iv131.i.unr, %.lr.ph116.i.prol.loopexit ] ; 5 uses
  %indvars.iv129.i = phi i64 [ %indvars.iv.next130.i.3, %.lr.ph116.i ], [ %indvars.iv129.i.unr, %.lr.ph116.i.prol.loopexit ] ; 5 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %indvars.iv131.i
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !24
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv129.i
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !24
  %i.jg = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv131.i
  %i.jh = getelementptr i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !24
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv129.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store i32 %i.ji, ptr %i.jk, align 4, !tbaa !24
  %i.jl = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv131.i
  %i.jm = getelementptr i8, ptr %i.jl, i64 8
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !24
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv129.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  store i32 %i.jn, ptr %i.jp, align 4, !tbaa !24
  %indvars.iv.next132.i.3 = add nsw i64 %indvars.iv131.i, 4 ; 2 uses
  %i.jq = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv131.i
  %i.jr = getelementptr i8, ptr %i.jq, i64 12
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !24
  %indvars.iv.next130.i.3 = add nuw nsw i64 %indvars.iv129.i, 4 ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv129.i
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 %i.js, ptr %i.ju, align 4, !tbaa !24
  %exitcond138.not.i.3 = icmp eq i64 %indvars.iv.next132.i.3, %wide.trip.count137.i
  br i1 %exitcond138.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph116.i, !llvm.loop !208

._crit_edge.loopexit.i:                           ; preds = %.lr.ph116.i.prol.loopexit, %.lr.ph116.i, %middle.block912
  %indvars.iv.next130.i.lcssa = phi i64 [ %i.it, %middle.block912 ], [ %indvars.iv.next130.i.lcssa1007.unr, %.lr.ph116.i.prol.loopexit ], [ %indvars.iv.next130.i.3, %.lr.ph116.i ]
  %i.jv = trunc nsw i64 %indvars.iv.next130.i.lcssa to i32
  br label %.loopexit458

.loopexit109.loopexit.split.loop.exit.i:          ; preds = %bb.h
  %i.jw = trunc nuw nsw i64 %i.hw to i32
  br label %.loopexit109.i

.loopexit109.loopexit.split.loop.exit171.i:       ; preds = %bb.k
  %indvars.le176.i = trunc i64 %indvars.iv.i253 to i32
  %i.jx = add nuw nsw i32 %indvars.le176.i, 1
  br label %.loopexit109.i

.loopexit109.i:                                   ; preds = %.loopexit109.loopexit.split.loop.exit171.i, %.loopexit109.loopexit.split.loop.exit.i, %bb.f
  %.281.i = phi i32 [ 0, %bb.f ], [ %.079112.i, %.loopexit109.loopexit.split.loop.exit.i ], [ %i.ie, %.loopexit109.loopexit.split.loop.exit171.i ] ; 3 uses
  %.4.i = phi i32 [ 0, %bb.f ], [ %i.jw, %.loopexit109.loopexit.split.loop.exit.i ], [ %i.jx, %.loopexit109.loopexit.split.loop.exit171.i ] ; 3 uses
  %i.jy = add nsw i32 %.4.i, %i.hc
  %i.jz = add nsw i32 %.281.i, %i.f
  %i.ka = icmp sgt i32 %i.jy, %i.jz
  br i1 %i.ka, label %Jf_ObjAddCutToStore.exit, label %.preheader105.i

.preheader105.i:                                  ; preds = %.loopexit109.i
  %i.kb = icmp slt i32 %.281.i, %i.hc
  br i1 %i.kb, label %.lr.ph119.preheader.i, label %.loopexit458

.lr.ph119.preheader.i:                            ; preds = %.preheader105.i
  %i.kc = zext i32 %.4.i to i64                   ; 5 uses
  %i.kd = sext i32 %.281.i to i64                 ; 6 uses
  %wide.trip.count148.i = zext nneg i32 %i.hc to i64 ; 4 uses
  %i.ke = sub nsw i64 %wide.trip.count148.i, %i.kd ; 3 uses
  %min.iters.check = icmp ult i64 %i.ke, 8
  br i1 %min.iters.check, label %.lr.ph119.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph119.preheader.i
  %i.kf = add i64 %i.gz, 24
  %i.kg = shl nuw nsw i64 %i.kc, 2
  %i.kh = add i64 %i.kf, %i.kg
  %i.ki = shl nsw i64 %i.kd, 2
  %i.kj = add i64 %i.ki, %.1184529897
  %i.kk = sub i64 %i.kj, %i.kh
  %diff.check = icmp ugt i64 %i.kk, -32
  br i1 %diff.check, label %.lr.ph119.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ke, -8                      ; 4 uses
  %i.kl = add nsw i64 %n.vec, %i.kd
  %i.km = add nsw i64 %n.vec, %i.kc               ; 2 uses
  %invariant.gep1137 = getelementptr [4 x i8], ptr %i.hd, i64 %i.kd
  %invariant.gep1139 = getelementptr [4 x i8], ptr %i.he, i64 %i.kc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep1138 = getelementptr [4 x i8], ptr %invariant.gep1137, i64 %index ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %gep1138, i64 16
  %wide.load = load <4 x i32>, ptr %gep1138, align 4, !tbaa !24
  %wide.load898 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !24
  %gep1140 = getelementptr [4 x i8], ptr %invariant.gep1139, i64 %index ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %gep1140, i64 16
  store <4 x i32> %wide.load, ptr %gep1140, align 4, !tbaa !24
  store <4 x i32> %wide.load898, ptr %i.ko, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kp = icmp eq i64 %index.next, %n.vec
  br i1 %i.kp, label %middle.block, label %vector.body, !llvm.loop !209

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ke, %n.vec
  br i1 %cmp.n, label %._crit_edge120.loopexit.i, label %.lr.ph119.i.preheader

.lr.ph119.i.preheader:                            ; preds = %vector.memcheck, %.lr.ph119.preheader.i, %middle.block
  %indvars.iv142.i.ph = phi i64 [ %i.kd, %vector.memcheck ], [ %i.kd, %.lr.ph119.preheader.i ], [ %i.kl, %middle.block ] ; 4 uses
  %indvars.iv140.i.ph = phi i64 [ %i.kc, %vector.memcheck ], [ %i.kc, %.lr.ph119.preheader.i ], [ %i.km, %middle.block ] ; 2 uses
  %i.kq = sub nsw i64 %wide.trip.count148.i, %indvars.iv142.i.ph
  %xtraiter1055 = and i64 %i.kq, 3                ; 2 uses
  %lcmp.mod1056.not = icmp eq i64 %xtraiter1055, 0
  br i1 %lcmp.mod1056.not, label %.lr.ph119.i.prol.loopexit, label %.lr.ph119.i.prol

.lr.ph119.i.prol:                                 ; preds = %.lr.ph119.i.preheader, %.lr.ph119.i.prol
  %indvars.iv142.i.prol = phi i64 [ %indvars.iv.next143.i.prol, %.lr.ph119.i.prol ], [ %indvars.iv142.i.ph, %.lr.ph119.i.preheader ] ; 2 uses
  %indvars.iv140.i.prol = phi i64 [ %indvars.iv.next141.i.prol, %.lr.ph119.i.prol ], [ %indvars.iv140.i.ph, %.lr.ph119.i.preheader ] ; 2 uses
  %prol.iter1057 = phi i64 [ %prol.iter1057.next, %.lr.ph119.i.prol ], [ 0, %.lr.ph119.i.preheader ]
  %indvars.iv.next143.i.prol = add nsw i64 %indvars.iv142.i.prol, 1 ; 2 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %indvars.iv142.i.prol
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !24
  %indvars.iv.next141.i.prol = add nuw nsw i64 %indvars.iv140.i.prol, 1 ; 3 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv140.i.prol
  store i32 %i.ks, ptr %i.kt, align 4, !tbaa !24
  %prol.iter1057.next = add i64 %prol.iter1057, 1 ; 2 uses
  %prol.iter1057.cmp.not = icmp eq i64 %prol.iter1057.next, %xtraiter1055
  br i1 %prol.iter1057.cmp.not, label %.lr.ph119.i.prol.loopexit, label %.lr.ph119.i.prol, !llvm.loop !210

.lr.ph119.i.prol.loopexit:                        ; preds = %.lr.ph119.i.prol, %.lr.ph119.i.preheader
  %indvars.iv.next141.i.lcssa1008.unr = phi i64 [ poison, %.lr.ph119.i.preheader ], [ %indvars.iv.next141.i.prol, %.lr.ph119.i.prol ]
  %indvars.iv142.i.unr = phi i64 [ %indvars.iv142.i.ph, %.lr.ph119.i.preheader ], [ %indvars.iv.next143.i.prol, %.lr.ph119.i.prol ]
  %indvars.iv140.i.unr = phi i64 [ %indvars.iv140.i.ph, %.lr.ph119.i.preheader ], [ %indvars.iv.next141.i.prol, %.lr.ph119.i.prol ]
  %i.ku = sub nsw i64 %indvars.iv142.i.ph, %wide.trip.count148.i
  %i.kv = icmp ugt i64 %i.ku, -4
  br i1 %i.kv, label %._crit_edge120.loopexit.i, label %.lr.ph119.i

.lr.ph119.i:                                      ; preds = %.lr.ph119.i.prol.loopexit, %.lr.ph119.i
  %indvars.iv142.i = phi i64 [ %indvars.iv.next143.i.3, %.lr.ph119.i ], [ %indvars.iv142.i.unr, %.lr.ph119.i.prol.loopexit ] ; 5 uses
  %indvars.iv140.i = phi i64 [ %indvars.iv.next141.i.3, %.lr.ph119.i ], [ %indvars.iv140.i.unr, %.lr.ph119.i.prol.loopexit ] ; 5 uses
  %i.kw = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %indvars.iv142.i
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !24
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv140.i
  store i32 %i.kx, ptr %i.ky, align 4, !tbaa !24
  %i.kz = getelementptr [4 x i8], ptr %i.hd, i64 %indvars.iv142.i
  %i.la = getelementptr i8, ptr %i.kz, i64 4
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !24
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv140.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  store i32 %i.lb, ptr %i.ld, align 4, !tbaa !24
  %i.le = getelementptr [4 x i8], ptr %i.hd, i64 %indvars.iv142.i
  %i.lf = getelementptr i8, ptr %i.le, i64 8
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !24
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv140.i
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  store i32 %i.lg, ptr %i.li, align 4, !tbaa !24
  %indvars.iv.next143.i.3 = add nsw i64 %indvars.iv142.i, 4 ; 2 uses
  %i.lj = getelementptr [4 x i8], ptr %i.hd, i64 %indvars.iv142.i
  %i.lk = getelementptr i8, ptr %i.lj, i64 12
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !24
  %indvars.iv.next141.i.3 = add nuw nsw i64 %indvars.iv140.i, 4 ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv140.i
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 12
  store i32 %i.ll, ptr %i.ln, align 4, !tbaa !24
  %exitcond149.not.i.3 = icmp eq i64 %indvars.iv.next143.i.3, %wide.trip.count148.i
  br i1 %exitcond149.not.i.3, label %._crit_edge120.loopexit.i, label %.lr.ph119.i, !llvm.loop !211

._crit_edge120.loopexit.i:                        ; preds = %.lr.ph119.i.prol.loopexit, %.lr.ph119.i, %middle.block
  %indvars.iv.next141.i.lcssa = phi i64 [ %i.km, %middle.block ], [ %indvars.iv.next141.i.lcssa1008.unr, %.lr.ph119.i.prol.loopexit ], [ %indvars.iv.next141.i.3, %.lr.ph119.i ]
  %i.lo = trunc nsw i64 %indvars.iv.next141.i.lcssa to i32
  br label %.loopexit458

.loopexit458:                                     ; preds = %bb.e, %._crit_edge120.loopexit.i, %.preheader105.i, %._crit_edge.loopexit.i, %.preheader106.i, %.preheader.i
  %.5.lcssa.sink.i = phi i32 [ %i.jv, %._crit_edge.loopexit.i ], [ 0, %.preheader.i ], [ %i.lo, %._crit_edge120.loopexit.i ], [ %.2.i, %.preheader106.i ], [ %.4.i, %.preheader105.i ], [ %i.f, %bb.e ] ; 2 uses
  store i32 %.5.lcssa.sink.i, ptr %i.ha, align 4, !tbaa !24
  store i64 %i.gn, ptr %i.gy, align 8, !tbaa !114
  br label %bb.an

bb.n:                                             ; preds = %bb.c
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gt, i64 92
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !88
  %.not204 = icmp eq i32 %i.lq, 0
  %i.lr = sext i32 %.1532 to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !112 ; 14 uses
  %i.lu = ptrtoaddr ptr %i.lt to i64              ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 24 ; 20 uses
  %.val104.i274 = load i32, ptr %.1186539, align 4, !tbaa !24
  %i.lw = and i32 %.val104.i274, 15               ; 12 uses
  %.val.i275 = load i32, ptr %.1184529, align 4, !tbaa !24
  %i.lx = and i32 %.val.i275, 15                  ; 9 uses
  br i1 %.not204, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.lw, ptr %i.lv, align 4, !tbaa !24
  %.not40.i = icmp eq i32 %i.lx, 0
  br i1 %.not40.i, label %Jf_CutMerge2.exit.thread430, label %.lr.ph.preheader.i255

Jf_CutMerge2.exit.thread430:                      ; preds = %bb.o
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 28
  %i.lz = shl nuw nsw i32 %i.lw, 2
  %i.ma = zext nneg i32 %i.lz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ly, ptr nonnull readonly align 4 %i.gk, i64 %i.ma, i1 false)
  br label %bb.v

.lr.ph.preheader.i255:                            ; preds = %bb.o
  %i.mb = add nuw nsw i32 %i.lx, 1
  %wide.trip.count.i256 = zext nneg i32 %i.mb to i64
  br label %.lr.ph.i257

.lr.ph.i257:                                      ; preds = %bb.u, %.lr.ph.preheader.i255
  %indvars.iv.i258 = phi i64 [ 1, %.lr.ph.preheader.i255 ], [ %indvars.iv.next.i260, %bb.u ] ; 3 uses
  %.03241.i = phi i32 [ 262143, %.lr.ph.preheader.i255 ], [ %i.nc, %bb.u ] ; 3 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %.1184529, i64 %indvars.iv.i258
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !24 ; 3 uses
  %.val.i.i259 = load i32, ptr %.1186539, align 4, !tbaa !24
  %i.me = and i32 %.val.i.i259, 15                ; 2 uses
  %.not10.i.i = icmp eq i32 %i.me, 0
  br i1 %.not10.i.i, label %Jf_CutFindLeaf1.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i257
  %i.mf = add nuw nsw i32 %i.me, 1                ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.mf to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.p ] ; 3 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.1186539, i64 %indvars.iv.i.i
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !24
  %.unshifted.i = xor i32 %i.mh, %i.md
  %i.mi = icmp ult i32 %.unshifted.i, 2
  br i1 %i.mi, label %._crit_edge.loopexit.split.loop.exit15.i.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Jf_CutFindLeaf1.exit.i, label %.lr.ph.i.i, !llvm.loop !2

._crit_edge.loopexit.split.loop.exit15.i.i:       ; preds = %.lr.ph.i.i
  %i.mj = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %Jf_CutFindLeaf1.exit.i

Jf_CutFindLeaf1.exit.i:                           ; preds = %bb.p, %._crit_edge.loopexit.split.loop.exit15.i.i, %.lr.ph.i257
  %.0.lcssa.i.i = phi i32 [ 1, %.lr.ph.i257 ], [ %i.mj, %._crit_edge.loopexit.split.loop.exit15.i.i ], [ %i.mf, %bb.p ] ; 5 uses
  %i.mk = icmp sgt i32 %.0.lcssa.i.i, %i.lw
  br i1 %i.mk, label %bb.q, label %bb.s

bb.q:                                             ; preds = %Jf_CutFindLeaf1.exit.i
  %i.ml = load i32, ptr %i.lv, align 4, !tbaa !24 ; 2 uses
  %i.mm = icmp eq i32 %i.ml, %i.f
  br i1 %i.mm, label %Jf_ObjAddCutToStore.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.mn = add nsw i32 %i.ml, 1                    ; 3 uses
  store i32 %i.mn, ptr %i.lv, align 4, !tbaa !24
  %i.mo = sext i32 %i.mn to i64
  %i.mp = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.mo
  store i32 %i.md, ptr %i.mp, align 4, !tbaa !24
  br label %bb.u

bb.s:                                             ; preds = %Jf_CutFindLeaf1.exit.i
  %i.mq = sext i32 %.0.lcssa.i.i to i64
  %i.mr = getelementptr inbounds [4 x i8], ptr %.1186539, i64 %i.mq
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !24
  %.not36.i = icmp eq i32 %i.ms, %i.md
  br i1 %.not36.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.mt = add nsw i32 %.0.lcssa.i.i, 17
  %i.mu = shl nuw i32 1, %i.mt
  %i.mv = or i32 %i.mu, %.03241.i
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.1.i = phi i32 [ %.03241.i, %bb.r ], [ %i.mv, %bb.t ], [ %.03241.i, %bb.s ] ; 2 uses
  %.0.i = phi i32 [ %i.mn, %bb.r ], [ %.0.lcssa.i.i, %bb.t ], [ %.0.lcssa.i.i, %bb.s ]
  %i.mw = trunc i64 %indvars.iv.i258 to i32
  %i.mx = add i32 %i.mw, -1
  %i.my = xor i32 %i.mx, 7
  %i.mz = mul i32 %.0.i, 3
  %i.na = add i32 %i.mz, -3
  %i.nb = shl i32 %i.my, %i.na                    ; 2 uses
  %i.nc = xor i32 %i.nb, %.1.i                    ; 2 uses
  %indvars.iv.next.i260 = add nuw nsw i64 %indvars.iv.i258, 1 ; 2 uses
  %exitcond.not.i261 = icmp eq i64 %indvars.iv.next.i260, %wide.trip.count.i256
  br i1 %exitcond.not.i261, label %Jf_CutMerge2.exit, label %.lr.ph.i257, !llvm.loop !212

Jf_CutMerge2.exit:                                ; preds = %bb.u
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lt, i64 28
  %i.ne = shl nuw nsw i32 %i.lw, 2
  %i.nf = zext nneg i32 %i.ne to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nd, ptr nonnull readonly align 4 %i.gk, i64 %i.nf, i1 false)
  %.not206 = icmp eq i32 %i.nb, %.1.i
  br i1 %.not206, label %Jf_ObjAddCutToStore.exit, label %Jf_CutMerge2.exit._crit_edge

Jf_CutMerge2.exit._crit_edge:                     ; preds = %Jf_CutMerge2.exit
  %.pre = load i32, ptr %i.lv, align 8, !tbaa !24
  br label %bb.v

bb.v:                                             ; preds = %Jf_CutMerge2.exit._crit_edge, %Jf_CutMerge2.exit.thread430
  %i.ng = phi i32 [ %i.lw, %Jf_CutMerge2.exit.thread430 ], [ %.pre, %Jf_CutMerge2.exit._crit_edge ]
  %.032.lcssa.i433 = phi i32 [ 262143, %Jf_CutMerge2.exit.thread430 ], [ %i.nc, %Jf_CutMerge2.exit._crit_edge ]
  store i64 %i.gn, ptr %i.lt, align 8, !tbaa !114
  %i.nh = load ptr, ptr %i.fy, align 8, !tbaa !85
  %.val223 = load i64, ptr %1, align 4            ; 2 uses
  %.1186.val224 = load i32, ptr %.1186539, align 4, !tbaa !24
  %i.ni = lshr i32 %.1186.val224, 8
  %i.nj = trunc i64 %.val223 to i32
  %i.nk = lshr i32 %i.nj, 29
  %i.nl = and i32 %i.nk, 1
  %i.nm = xor i32 %i.nl, %i.ni
  %.1184.val229 = load i32, ptr %.1184529, align 4, !tbaa !24
  %i.nn = lshr i32 %.1184.val229, 8
  %i.no = lshr i64 %.val223, 61
  %i.np = trunc nuw nsw i64 %i.no to i32
  %i.nq = and i32 %i.np, 1
  %i.nr = xor i32 %i.nq, %i.nn
  %i.ns = call i32 @Sdm_ManComputeFunc(ptr noundef %i.nh, i32 noundef %i.nm, i32 noundef %i.nr, ptr noundef nonnull %i.lv, i32 noundef %.032.lcssa.i433, i32 noundef 0) #29 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store i32 %i.ns, ptr %i.nt, align 8, !tbaa !234
  %i.nu = icmp eq i32 %i.ns, -1
  br i1 %i.nu, label %Jf_ObjAddCutToStore.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.nv = load ptr, ptr %i.d, align 8, !tbaa !70  ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 96
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !83
  %.not207 = icmp eq i32 %i.nx, 0
  br i1 %.not207, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ny = ashr i32 %i.ns, 1
  %.val214 = load ptr, ptr %i.fz, align 8, !tbaa !84
  %i.nz = getelementptr i8, ptr %.val214, i64 8
  %.val214.val = load ptr, ptr %i.nz, align 8, !tbaa !23
  %i.oa = sext i32 %i.ny to i64
  %i.ob = getelementptr inbounds [4 x i8], ptr %.val214.val, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !24
  %i.od = icmp sgt i32 %i.oc, 11
  br i1 %i.od, label %Jf_ObjAddCutToStore.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.oe = load i32, ptr %i.lv, align 8, !tbaa !24 ; 5 uses
  %i.of = icmp slt i32 %i.oe, %i.ng
  br i1 %i.of, label %bb.z, label %bb.an

bb.z:                                             ; preds = %bb.y
  %i.og = and i32 %i.oe, 15
  %.not7.i263 = icmp eq i32 %i.og, 0
  br i1 %.not7.i263, label %Jf_CutGetSign.exit273, label %.lr.ph.preheader.i264

.lr.ph.preheader.i264:                            ; preds = %bb.z
  %i.oh = and i32 %i.oe, 15                       ; 2 uses
  %i.oi = zext nneg i32 %i.oh to i64              ; 2 uses
  %xtraiter1033 = and i64 %i.oi, 3                ; 3 uses
  %i.oj = add nsw i32 %i.oh, -1
  %i.ok = icmp ult i32 %i.oj, 3
  br i1 %i.ok, label %.lr.ph.i266.epil.preheader, label %.lr.ph.preheader.i264.new

.lr.ph.preheader.i264.new:                        ; preds = %.lr.ph.preheader.i264
  %unroll_iter1038 = and i64 %i.oi, 12
  br label %.lr.ph.i266

.lr.ph.i266:                                      ; preds = %.lr.ph.i266, %.lr.ph.preheader.i264.new
  %indvars.iv.i267 = phi i64 [ 1, %.lr.ph.preheader.i264.new ], [ %indvars.iv.next.i269.3, %.lr.ph.i266 ] ; 5 uses
  %.068.i268 = phi i64 [ 0, %.lr.ph.preheader.i264.new ], [ %i.pp, %.lr.ph.i266 ]
  %niter1039 = phi i64 [ 0, %.lr.ph.preheader.i264.new ], [ %niter1039.next.3, %.lr.ph.i266 ]
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv.i267
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !24
  %i.on = lshr i32 %i.om, 1
end_hunk_1
begin_hunk_2_@Jf_ObjComputeCuts:bb.a
bb.ab:                                            ; preds = %.lr.ph123.i333
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv150.i334
  store i32 %i.qc, ptr %i.qf, align 4, !tbaa !24
  %indvars.iv.next151.i336 = add nuw nsw i64 %indvars.iv150.i334, 1 ; 2 uses
  %exitcond155.not.i337 = icmp eq i64 %indvars.iv.next151.i336, %wide.trip.count.i279
  br i1 %exitcond155.not.i337, label %.loopexit461, label %.lr.ph123.i333, !llvm.loop !205

bb.ac:                                            ; preds = %bb.aa
  %i.qg = icmp eq i32 %i.lw, 0
  br i1 %i.qg, label %.loopexit109.i287, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.qh = icmp eq i32 %i.lx, 0
  br i1 %i.qh, label %.loopexit110.i306, label %.preheader107.i277

.preheader107.i277:                               ; preds = %bb.ad
  br i1 %i.ga, label %Jf_ObjAddCutToStore.exit, label %.lr.ph.i280

.lr.ph.i280:                                      ; preds = %.preheader107.i277, %bb.aj
  %indvars.iv.i281 = phi i64 [ %indvars.iv.next.pre-phi.i321, %bb.aj ], [ 0, %.preheader107.i277 ] ; 8 uses
  %.079112.i282 = phi i32 [ %.180.i323, %bb.aj ], [ 0, %.preheader107.i277 ] ; 5 uses
  %.184111.i283 = phi i32 [ %.285.i322, %bb.aj ], [ 0, %.preheader107.i277 ] ; 5 uses
  %i.qi = sext i32 %.184111.i283 to i64
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !24 ; 4 uses
  %i.ql = sext i32 %.079112.i282 to i64
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !24 ; 3 uses
  %i.qo = icmp slt i32 %i.qk, %i.qn
  br i1 %i.qo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph.i280
  %i.qp = add nsw i32 %.184111.i283, 1            ; 2 uses
  %i.qq = add nuw nsw i64 %indvars.iv.i281, 1     ; 2 uses
  %i.qr = getelementptr inbounds [4 x i8], ptr %i.py, i64 %indvars.iv.i281
  store i32 %i.qk, ptr %i.qr, align 4, !tbaa !24
  %.not102.i327 = icmp slt i32 %i.qp, %i.lw
  br i1 %.not102.i327, label %bb.aj, label %.loopexit109.loopexit.split.loop.exit.i328

bb.af:                                            ; preds = %.lr.ph.i280
  %i.qs = icmp sgt i32 %i.qk, %i.qn
  br i1 %i.qs, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.qt = add nsw i32 %.079112.i282, 1            ; 2 uses
  %i.qu = add nuw nsw i64 %indvars.iv.i281, 1     ; 2 uses
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.py, i64 %indvars.iv.i281
  store i32 %i.qn, ptr %i.qv, align 4, !tbaa !24
  %.not101.i325 = icmp slt i32 %i.qt, %i.lx
  br i1 %.not101.i325, label %bb.aj, label %.loopexit110.loopexit.split.loop.exit.i326

bb.ah:                                            ; preds = %bb.af
  %i.qw = add nsw i32 %.184111.i283, 1            ; 3 uses
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.py, i64 %indvars.iv.i281
  store i32 %i.qk, ptr %i.qx, align 4, !tbaa !24
  %i.qy = add nsw i32 %.079112.i282, 1            ; 3 uses
  %.not.i284 = icmp slt i32 %i.qw, %i.lw
  br i1 %.not.i284, label %bb.ai, label %.loopexit109.loopexit.split.loop.exit171.i285

bb.ai:                                            ; preds = %bb.ah
  %.not100.i303 = icmp slt i32 %i.qy, %i.lx
  br i1 %.not100.i303, label %._crit_edge156.i319, label %.loopexit110.loopexit.split.loop.exit168.i304

._crit_edge156.i319:                              ; preds = %bb.ai
  %.pre.i320 = add nuw nsw i64 %indvars.iv.i281, 1
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge156.i319, %bb.ag, %bb.ae
  %indvars.iv.next.pre-phi.i321 = phi i64 [ %.pre.i320, %._crit_edge156.i319 ], [ %i.qu, %bb.ag ], [ %i.qq, %bb.ae ] ; 2 uses
  %.285.i322 = phi i32 [ %i.qw, %._crit_edge156.i319 ], [ %.184111.i283, %bb.ag ], [ %i.qp, %bb.ae ]
  %.180.i323 = phi i32 [ %i.qy, %._crit_edge156.i319 ], [ %i.qt, %bb.ag ], [ %.079112.i282, %bb.ae ]
  %exitcond.i324 = icmp eq i64 %indvars.iv.next.pre-phi.i321, %wide.trip.count.i279
  br i1 %exitcond.i324, label %Jf_ObjAddCutToStore.exit, label %.lr.ph.i280

.loopexit110.loopexit.split.loop.exit.i326:       ; preds = %bb.ag
  %i.qz = trunc nuw nsw i64 %i.qu to i32
  br label %.loopexit110.i306

.loopexit110.loopexit.split.loop.exit168.i304:    ; preds = %bb.ai
  %indvars.le.i305 = trunc i64 %indvars.iv.i281 to i32
  %i.ra = add nuw nsw i32 %indvars.le.i305, 1
  br label %.loopexit110.i306

.loopexit110.i306:                                ; preds = %.loopexit110.loopexit.split.loop.exit168.i304, %.loopexit110.loopexit.split.loop.exit.i326, %bb.ad
  %.386.i307 = phi i32 [ 0, %bb.ad ], [ %.184111.i283, %.loopexit110.loopexit.split.loop.exit.i326 ], [ %i.qw, %.loopexit110.loopexit.split.loop.exit168.i304 ] ; 3 uses
  %.2.i308 = phi i32 [ 0, %bb.ad ], [ %i.qz, %.loopexit110.loopexit.split.loop.exit.i326 ], [ %i.ra, %.loopexit110.loopexit.split.loop.exit168.i304 ] ; 3 uses
  %i.rb = add nsw i32 %.2.i308, %i.lw
  %i.rc = add nsw i32 %.386.i307, %i.f
  %i.rd = icmp sgt i32 %i.rb, %i.rc
  br i1 %i.rd, label %Jf_ObjAddCutToStore.exit, label %.preheader106.i309

.preheader106.i309:                               ; preds = %.loopexit110.i306
  %i.re = icmp slt i32 %.386.i307, %i.lw
  br i1 %i.re, label %.lr.ph116.preheader.i310, label %.loopexit461

.lr.ph116.preheader.i310:                         ; preds = %.preheader106.i309
  %i.rf = zext i32 %.2.i308 to i64                ; 5 uses
  %i.rg = sext i32 %.386.i307 to i64              ; 6 uses
  %wide.trip.count137.i311 = zext nneg i32 %i.lw to i64 ; 4 uses
  %i.rh = sub nsw i64 %wide.trip.count137.i311, %i.rg ; 3 uses
  %min.iters.check934 = icmp ult i64 %i.rh, 8
  br i1 %min.iters.check934, label %.lr.ph116.i312.preheader, label %vector.memcheck931

vector.memcheck931:                               ; preds = %.lr.ph116.preheader.i310
  %.reass = add i64 %i.lu, %invariant.op
  %i.ri = shl nuw nsw i64 %i.rf, 2
  %i.rj = add i64 %.reass, %i.ri
  %i.rk = shl nsw i64 %i.rg, 2
  %i.rl = sub i64 %i.rk, %i.rj
  %diff.check932 = icmp ugt i64 %i.rl, -32
  br i1 %diff.check932, label %.lr.ph116.i312.preheader, label %vector.ph935

vector.ph935:                                     ; preds = %vector.memcheck931
  %n.vec936 = and i64 %i.rh, -8                   ; 4 uses
  %i.rm = add nsw i64 %n.vec936, %i.rg
  %i.rn = add nsw i64 %n.vec936, %i.rf            ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.gk, i64 %i.rg
  %invariant.gep1127 = getelementptr [4 x i8], ptr %i.py, i64 %i.rf
  br label %vector.body937

vector.body937:                                   ; preds = %vector.body937, %vector.ph935
  %index938 = phi i64 [ 0, %vector.ph935 ], [ %index.next941, %vector.body937 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index938 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load939 = load <4 x i32>, ptr %gep, align 4, !tbaa !24
  %wide.load940 = load <4 x i32>, ptr %i.ro, align 4, !tbaa !24
  %gep1128 = getelementptr [4 x i8], ptr %invariant.gep1127, i64 %index938 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %gep1128, i64 16
  store <4 x i32> %wide.load939, ptr %gep1128, align 4, !tbaa !24
  store <4 x i32> %wide.load940, ptr %i.rp, align 4, !tbaa !24
  %index.next941 = add nuw i64 %index938, 8       ; 2 uses
  %i.rq = icmp eq i64 %index.next941, %n.vec936
  br i1 %i.rq, label %middle.block942, label %vector.body937, !llvm.loop !214

middle.block942:                                  ; preds = %vector.body937
  %cmp.n943 = icmp eq i64 %i.rh, %n.vec936
  br i1 %cmp.n943, label %._crit_edge.loopexit.i318, label %.lr.ph116.i312.preheader

.lr.ph116.i312.preheader:                         ; preds = %vector.memcheck931, %.lr.ph116.preheader.i310, %middle.block942
  %indvars.iv131.i313.ph = phi i64 [ %i.rg, %vector.memcheck931 ], [ %i.rg, %.lr.ph116.preheader.i310 ], [ %i.rm, %middle.block942 ] ; 4 uses
  %indvars.iv129.i314.ph = phi i64 [ %i.rf, %vector.memcheck931 ], [ %i.rf, %.lr.ph116.preheader.i310 ], [ %i.rn, %middle.block942 ] ; 2 uses
  %i.rr = sub nsw i64 %wide.trip.count137.i311, %indvars.iv131.i313.ph
  %xtraiter1040 = and i64 %i.rr, 3                ; 2 uses
  %lcmp.mod1041.not = icmp eq i64 %xtraiter1040, 0
  br i1 %lcmp.mod1041.not, label %.lr.ph116.i312.prol.loopexit, label %.lr.ph116.i312.prol

.lr.ph116.i312.prol:                              ; preds = %.lr.ph116.i312.preheader, %.lr.ph116.i312.prol
  %indvars.iv131.i313.prol = phi i64 [ %indvars.iv.next132.i315.prol, %.lr.ph116.i312.prol ], [ %indvars.iv131.i313.ph, %.lr.ph116.i312.preheader ] ; 2 uses
  %indvars.iv129.i314.prol = phi i64 [ %indvars.iv.next130.i316.prol, %.lr.ph116.i312.prol ], [ %indvars.iv129.i314.ph, %.lr.ph116.i312.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph116.i312.prol ], [ 0, %.lr.ph116.i312.preheader ]
  %indvars.iv.next132.i315.prol = add nsw i64 %indvars.iv131.i313.prol, 1 ; 2 uses
  %i.rs = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %indvars.iv131.i313.prol
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !24
  %indvars.iv.next130.i316.prol = add nuw nsw i64 %indvars.iv129.i314.prol, 1 ; 3 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv129.i314.prol
  store i32 %i.rt, ptr %i.ru, align 4, !tbaa !24
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1040
  br i1 %prol.iter.cmp.not, label %.lr.ph116.i312.prol.loopexit, label %.lr.ph116.i312.prol, !llvm.loop !215

.lr.ph116.i312.prol.loopexit:                     ; preds = %.lr.ph116.i312.prol, %.lr.ph116.i312.preheader
  %indvars.iv.next130.i316.lcssa986.unr = phi i64 [ poison, %.lr.ph116.i312.preheader ], [ %indvars.iv.next130.i316.prol, %.lr.ph116.i312.prol ]
  %indvars.iv131.i313.unr = phi i64 [ %indvars.iv131.i313.ph, %.lr.ph116.i312.preheader ], [ %indvars.iv.next132.i315.prol, %.lr.ph116.i312.prol ]
  %indvars.iv129.i314.unr = phi i64 [ %indvars.iv129.i314.ph, %.lr.ph116.i312.preheader ], [ %indvars.iv.next130.i316.prol, %.lr.ph116.i312.prol ]
  %i.rv = sub nsw i64 %indvars.iv131.i313.ph, %wide.trip.count137.i311
  %i.rw = icmp ugt i64 %i.rv, -4
  br i1 %i.rw, label %._crit_edge.loopexit.i318, label %.lr.ph116.i312

.lr.ph116.i312:                                   ; preds = %.lr.ph116.i312.prol.loopexit, %.lr.ph116.i312
  %indvars.iv131.i313 = phi i64 [ %indvars.iv.next132.i315.3, %.lr.ph116.i312 ], [ %indvars.iv131.i313.unr, %.lr.ph116.i312.prol.loopexit ] ; 5 uses
  %indvars.iv129.i314 = phi i64 [ %indvars.iv.next130.i316.3, %.lr.ph116.i312 ], [ %indvars.iv129.i314.unr, %.lr.ph116.i312.prol.loopexit ] ; 5 uses
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %indvars.iv131.i313
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !24
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv129.i314
  store i32 %i.ry, ptr %i.rz, align 4, !tbaa !24
  %i.sa = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv131.i313
  %i.sb = getelementptr i8, ptr %i.sa, i64 4
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !24
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv129.i314
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 4
  store i32 %i.sc, ptr %i.se, align 4, !tbaa !24
  %i.sf = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv131.i313
  %i.sg = getelementptr i8, ptr %i.sf, i64 8
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !24
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv129.i314
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  store i32 %i.sh, ptr %i.sj, align 4, !tbaa !24
  %indvars.iv.next132.i315.3 = add nsw i64 %indvars.iv131.i313, 4 ; 2 uses
  %i.sk = getelementptr [4 x i8], ptr %i.gk, i64 %indvars.iv131.i313
  %i.sl = getelementptr i8, ptr %i.sk, i64 12
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !24
  %indvars.iv.next130.i316.3 = add nuw nsw i64 %indvars.iv129.i314, 4 ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv129.i314
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  store i32 %i.sm, ptr %i.so, align 4, !tbaa !24
  %exitcond138.not.i317.3 = icmp eq i64 %indvars.iv.next132.i315.3, %wide.trip.count137.i311
  br i1 %exitcond138.not.i317.3, label %._crit_edge.loopexit.i318, label %.lr.ph116.i312, !llvm.loop !216

._crit_edge.loopexit.i318:                        ; preds = %.lr.ph116.i312.prol.loopexit, %.lr.ph116.i312, %middle.block942
  %indvars.iv.next130.i316.lcssa = phi i64 [ %i.rn, %middle.block942 ], [ %indvars.iv.next130.i316.lcssa986.unr, %.lr.ph116.i312.prol.loopexit ], [ %indvars.iv.next130.i316.3, %.lr.ph116.i312 ]
  %i.sp = trunc nsw i64 %indvars.iv.next130.i316.lcssa to i32
  br label %.loopexit461

.loopexit109.loopexit.split.loop.exit.i328:       ; preds = %bb.ae
  %i.sq = trunc nuw nsw i64 %i.qq to i32
  br label %.loopexit109.i287

.loopexit109.loopexit.split.loop.exit171.i285:    ; preds = %bb.ah
  %indvars.le176.i286 = trunc i64 %indvars.iv.i281 to i32
  %i.sr = add nuw nsw i32 %indvars.le176.i286, 1
  br label %.loopexit109.i287

.loopexit109.i287:                                ; preds = %.loopexit109.loopexit.split.loop.exit171.i285, %.loopexit109.loopexit.split.loop.exit.i328, %bb.ac
  %.281.i288 = phi i32 [ 0, %bb.ac ], [ %.079112.i282, %.loopexit109.loopexit.split.loop.exit.i328 ], [ %i.qy, %.loopexit109.loopexit.split.loop.exit171.i285 ] ; 3 uses
  %.4.i289 = phi i32 [ 0, %bb.ac ], [ %i.sq, %.loopexit109.loopexit.split.loop.exit.i328 ], [ %i.sr, %.loopexit109.loopexit.split.loop.exit171.i285 ] ; 3 uses
  %i.ss = add nsw i32 %.4.i289, %i.lx
  %i.st = add nsw i32 %.281.i288, %i.f
  %i.su = icmp sgt i32 %i.ss, %i.st
  br i1 %i.su, label %Jf_ObjAddCutToStore.exit, label %.preheader105.i290

.preheader105.i290:                               ; preds = %.loopexit109.i287
  %i.sv = icmp slt i32 %.281.i288, %i.lx
  br i1 %i.sv, label %.lr.ph119.preheader.i294, label %.loopexit461

.lr.ph119.preheader.i294:                         ; preds = %.preheader105.i290
  %i.sw = zext i32 %.4.i289 to i64                ; 5 uses
  %i.sx = sext i32 %.281.i288 to i64              ; 6 uses
  %wide.trip.count148.i295 = zext nneg i32 %i.lx to i64 ; 4 uses
  %i.sy = sub nsw i64 %wide.trip.count148.i295, %i.sx ; 3 uses
  %min.iters.check919 = icmp ult i64 %i.sy, 8
  br i1 %min.iters.check919, label %.lr.ph119.i296.preheader, label %vector.memcheck916

vector.memcheck916:                               ; preds = %.lr.ph119.preheader.i294
  %i.sz = add i64 %i.lu, 24
  %i.ta = shl nuw nsw i64 %i.sw, 2
  %i.tb = add i64 %i.sz, %i.ta
  %i.tc = shl nsw i64 %i.sx, 2
  %i.td = add i64 %i.tc, %.1184529897
  %i.te = sub i64 %i.td, %i.tb
  %diff.check917 = icmp ugt i64 %i.te, -32
  br i1 %diff.check917, label %.lr.ph119.i296.preheader, label %vector.ph920

vector.ph920:                                     ; preds = %vector.memcheck916
  %n.vec921 = and i64 %i.sy, -8                   ; 4 uses
  %i.tf = add nsw i64 %n.vec921, %i.sx
  %i.tg = add nsw i64 %n.vec921, %i.sw            ; 2 uses
  %invariant.gep1129 = getelementptr [4 x i8], ptr %i.px, i64 %i.sx
  %invariant.gep1131 = getelementptr [4 x i8], ptr %i.py, i64 %i.sw
  br label %vector.body922

vector.body922:                                   ; preds = %vector.body922, %vector.ph920
  %index923 = phi i64 [ 0, %vector.ph920 ], [ %index.next926, %vector.body922 ] ; 3 uses
  %gep1130 = getelementptr [4 x i8], ptr %invariant.gep1129, i64 %index923 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %gep1130, i64 16
  %wide.load924 = load <4 x i32>, ptr %gep1130, align 4, !tbaa !24
  %wide.load925 = load <4 x i32>, ptr %i.th, align 4, !tbaa !24
  %gep1132 = getelementptr [4 x i8], ptr %invariant.gep1131, i64 %index923 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %gep1132, i64 16
  store <4 x i32> %wide.load924, ptr %gep1132, align 4, !tbaa !24
  store <4 x i32> %wide.load925, ptr %i.ti, align 4, !tbaa !24
  %index.next926 = add nuw i64 %index923, 8       ; 2 uses
  %i.tj = icmp eq i64 %index.next926, %n.vec921
  br i1 %i.tj, label %middle.block927, label %vector.body922, !llvm.loop !217

middle.block927:                                  ; preds = %vector.body922
  %cmp.n928 = icmp eq i64 %i.sy, %n.vec921
  br i1 %cmp.n928, label %._crit_edge120.loopexit.i302, label %.lr.ph119.i296.preheader

.lr.ph119.i296.preheader:                         ; preds = %vector.memcheck916, %.lr.ph119.preheader.i294, %middle.block927
  %indvars.iv142.i297.ph = phi i64 [ %i.sx, %vector.memcheck916 ], [ %i.sx, %.lr.ph119.preheader.i294 ], [ %i.tf, %middle.block927 ] ; 4 uses
  %indvars.iv140.i298.ph = phi i64 [ %i.sw, %vector.memcheck916 ], [ %i.sw, %.lr.ph119.preheader.i294 ], [ %i.tg, %middle.block927 ] ; 2 uses
  %i.tk = sub nsw i64 %wide.trip.count148.i295, %indvars.iv142.i297.ph
  %xtraiter1042 = and i64 %i.tk, 3                ; 2 uses
  %lcmp.mod1043.not = icmp eq i64 %xtraiter1042, 0
  br i1 %lcmp.mod1043.not, label %.lr.ph119.i296.prol.loopexit, label %.lr.ph119.i296.prol

.lr.ph119.i296.prol:                              ; preds = %.lr.ph119.i296.preheader, %.lr.ph119.i296.prol
  %indvars.iv142.i297.prol = phi i64 [ %indvars.iv.next143.i299.prol, %.lr.ph119.i296.prol ], [ %indvars.iv142.i297.ph, %.lr.ph119.i296.preheader ] ; 2 uses
  %indvars.iv140.i298.prol = phi i64 [ %indvars.iv.next141.i300.prol, %.lr.ph119.i296.prol ], [ %indvars.iv140.i298.ph, %.lr.ph119.i296.preheader ] ; 2 uses
  %prol.iter1044 = phi i64 [ %prol.iter1044.next, %.lr.ph119.i296.prol ], [ 0, %.lr.ph119.i296.preheader ]
  %indvars.iv.next143.i299.prol = add nsw i64 %indvars.iv142.i297.prol, 1 ; 2 uses
  %i.tl = getelementptr inbounds [4 x i8], ptr %i.px, i64 %indvars.iv142.i297.prol
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !24
  %indvars.iv.next141.i300.prol = add nuw nsw i64 %indvars.iv140.i298.prol, 1 ; 3 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv140.i298.prol
  store i32 %i.tm, ptr %i.tn, align 4, !tbaa !24
  %prol.iter1044.next = add i64 %prol.iter1044, 1 ; 2 uses
  %prol.iter1044.cmp.not = icmp eq i64 %prol.iter1044.next, %xtraiter1042
  br i1 %prol.iter1044.cmp.not, label %.lr.ph119.i296.prol.loopexit, label %.lr.ph119.i296.prol, !llvm.loop !218

.lr.ph119.i296.prol.loopexit:                     ; preds = %.lr.ph119.i296.prol, %.lr.ph119.i296.preheader
  %indvars.iv.next141.i300.lcssa987.unr = phi i64 [ poison, %.lr.ph119.i296.preheader ], [ %indvars.iv.next141.i300.prol, %.lr.ph119.i296.prol ]
  %indvars.iv142.i297.unr = phi i64 [ %indvars.iv142.i297.ph, %.lr.ph119.i296.preheader ], [ %indvars.iv.next143.i299.prol, %.lr.ph119.i296.prol ]
  %indvars.iv140.i298.unr = phi i64 [ %indvars.iv140.i298.ph, %.lr.ph119.i296.preheader ], [ %indvars.iv.next141.i300.prol, %.lr.ph119.i296.prol ]
  %i.to = sub nsw i64 %indvars.iv142.i297.ph, %wide.trip.count148.i295
  %i.tp = icmp ugt i64 %i.to, -4
  br i1 %i.tp, label %._crit_edge120.loopexit.i302, label %.lr.ph119.i296

.lr.ph119.i296:                                   ; preds = %.lr.ph119.i296.prol.loopexit, %.lr.ph119.i296
  %indvars.iv142.i297 = phi i64 [ %indvars.iv.next143.i299.3, %.lr.ph119.i296 ], [ %indvars.iv142.i297.unr, %.lr.ph119.i296.prol.loopexit ] ; 5 uses
  %indvars.iv140.i298 = phi i64 [ %indvars.iv.next141.i300.3, %.lr.ph119.i296 ], [ %indvars.iv140.i298.unr, %.lr.ph119.i296.prol.loopexit ] ; 5 uses
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.px, i64 %indvars.iv142.i297
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !24
  %i.ts = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv140.i298
  store i32 %i.tr, ptr %i.ts, align 4, !tbaa !24
  %i.tt = getelementptr [4 x i8], ptr %i.px, i64 %indvars.iv142.i297
  %i.tu = getelementptr i8, ptr %i.tt, i64 4
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !24
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv140.i298
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  store i32 %i.tv, ptr %i.tx, align 4, !tbaa !24
  %i.ty = getelementptr [4 x i8], ptr %i.px, i64 %indvars.iv142.i297
  %i.tz = getelementptr i8, ptr %i.ty, i64 8
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !24
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv140.i298
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  store i32 %i.ua, ptr %i.uc, align 4, !tbaa !24
  %indvars.iv.next143.i299.3 = add nsw i64 %indvars.iv142.i297, 4 ; 2 uses
  %i.ud = getelementptr [4 x i8], ptr %i.px, i64 %indvars.iv142.i297
  %i.ue = getelementptr i8, ptr %i.ud, i64 12
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !24
  %indvars.iv.next141.i300.3 = add nuw nsw i64 %indvars.iv140.i298, 4 ; 2 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %indvars.iv140.i298
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 12
  store i32 %i.uf, ptr %i.uh, align 4, !tbaa !24
  %exitcond149.not.i301.3 = icmp eq i64 %indvars.iv.next143.i299.3, %wide.trip.count148.i295
  br i1 %exitcond149.not.i301.3, label %._crit_edge120.loopexit.i302, label %.lr.ph119.i296, !llvm.loop !219

._crit_edge120.loopexit.i302:                     ; preds = %.lr.ph119.i296.prol.loopexit, %.lr.ph119.i296, %middle.block927
  %indvars.iv.next141.i300.lcssa = phi i64 [ %i.tg, %middle.block927 ], [ %indvars.iv.next141.i300.lcssa987.unr, %.lr.ph119.i296.prol.loopexit ], [ %indvars.iv.next141.i300.3, %.lr.ph119.i296 ]
  %i.ui = trunc nsw i64 %indvars.iv.next141.i300.lcssa to i32
  br label %.loopexit461

.loopexit461:                                     ; preds = %bb.ab, %._crit_edge120.loopexit.i302, %.preheader105.i290, %._crit_edge.loopexit.i318, %.preheader106.i309, %.preheader.i329
  %.5.lcssa.sink.i292 = phi i32 [ %i.sp, %._crit_edge.loopexit.i318 ], [ 0, %.preheader.i329 ], [ %i.ui, %._crit_edge120.loopexit.i302 ], [ %.2.i308, %.preheader106.i309 ], [ %.4.i289, %.preheader105.i290 ], [ %i.f, %bb.ab ] ; 2 uses
  store i32 %.5.lcssa.sink.i292, ptr %i.lv, align 4, !tbaa !24
  store i64 %i.gn, ptr %i.lt, align 8, !tbaa !114
  %.val221 = load i64, ptr %1, align 4            ; 2 uses
  %.1186.val222 = load i32, ptr %.1186539, align 4, !tbaa !24
  %i.uj = lshr i32 %.1186.val222, 8
  %i.uk = trunc i64 %.val221 to i32
  %i.ul = lshr i32 %i.uk, 29
  %i.um = and i32 %i.ul, 1
  %i.un = xor i32 %i.um, %i.uj
  %.1184.val227 = load i32, ptr %.1184529, align 4, !tbaa !24
  %i.uo = lshr i32 %.1184.val227, 8
  %i.up = lshr i64 %.val221, 61
  %i.uq = trunc nuw nsw i64 %i.up to i32
  %i.ur = and i32 %i.uq, 1
  %i.us = xor i32 %i.ur, %i.uo
  %i.ut = call i32 @Jf_TtComputeForCut(ptr noundef nonnull %0, i32 noundef %i.un, i32 noundef %i.us, ptr noundef nonnull %.1186539, ptr noundef nonnull %.1184529, ptr noundef nonnull %i.lv) ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  store i32 %i.ut, ptr %i.uu, align 8, !tbaa !234
  %i.uv = load i32, ptr %i.lv, align 8, !tbaa !24 ; 4 uses
  %i.uw = icmp slt i32 %i.uv, %.5.lcssa.sink.i292
  br i1 %i.uw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.loopexit461
  %i.ux = and i32 %i.uv, 15
  %.not7.i340 = icmp eq i32 %i.ux, 0
  br i1 %.not7.i340, label %Jf_CutGetSign.exit350, label %.lr.ph.preheader.i341

.lr.ph.preheader.i341:                            ; preds = %bb.ak
  %i.uy = and i32 %i.uv, 15                       ; 2 uses
  %i.uz = zext nneg i32 %i.uy to i64              ; 2 uses
  %xtraiter1045 = and i64 %i.uz, 3                ; 3 uses
  %i.va = add nsw i32 %i.uy, -1
  %i.vb = icmp ult i32 %i.va, 3
  br i1 %i.vb, label %.lr.ph.i343.epil.preheader, label %.lr.ph.preheader.i341.new

.lr.ph.preheader.i341.new:                        ; preds = %.lr.ph.preheader.i341
  %unroll_iter1050 = and i64 %i.uz, 12
  br label %.lr.ph.i343

.lr.ph.i343:                                      ; preds = %.lr.ph.i343, %.lr.ph.preheader.i341.new
  %indvars.iv.i344 = phi i64 [ 1, %.lr.ph.preheader.i341.new ], [ %indvars.iv.next.i346.3, %.lr.ph.i343 ] ; 5 uses
  %.068.i345 = phi i64 [ 0, %.lr.ph.preheader.i341.new ], [ %i.wg, %.lr.ph.i343 ]
  %niter1051 = phi i64 [ 0, %.lr.ph.preheader.i341.new ], [ %niter1051.next.3, %.lr.ph.i343 ]
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv.i344
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !24
  %i.ve = lshr i32 %i.vd, 1
  %i.vf = and i32 %i.ve, 63
  %i.vg = zext nneg i32 %i.vf to i64
  %i.vh = shl nuw i64 1, %i.vg
  %i.vi = or i64 %i.vh, %.068.i345
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv.i344
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !24
  %i.vm = lshr i32 %i.vl, 1
  %i.vn = and i32 %i.vm, 63
  %i.vo = zext nneg i32 %i.vn to i64
  %i.vp = shl nuw i64 1, %i.vo
  %i.vq = or i64 %i.vp, %i.vi
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv.i344
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !24
  %i.vu = lshr i32 %i.vt, 1
  %i.vv = and i32 %i.vu, 63
  %i.vw = zext nneg i32 %i.vv to i64
  %i.vx = shl nuw i64 1, %i.vw
  %i.vy = or i64 %i.vx, %i.vq
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv.i344
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 12
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !24
  %i.wc = lshr i32 %i.wb, 1
  %i.wd = and i32 %i.wc, 63
  %i.we = zext nneg i32 %i.wd to i64
  %i.wf = shl nuw i64 1, %i.we
  %i.wg = or i64 %i.wf, %i.vy                     ; 3 uses
  %indvars.iv.next.i346.3 = add nuw nsw i64 %indvars.iv.i344, 4 ; 2 uses
  %niter1051.next.3 = add i64 %niter1051, 4       ; 2 uses
  %niter1051.ncmp.3 = icmp eq i64 %niter1051.next.3, %unroll_iter1050
  br i1 %niter1051.ncmp.3, label %Jf_CutGetSign.exit350.loopexit.unr-lcssa, label %.lr.ph.i343, !llvm.loop !200

Jf_CutGetSign.exit350.loopexit.unr-lcssa:         ; preds = %.lr.ph.i343
  %lcmp.mod1047.not = icmp eq i64 %xtraiter1045, 0
  br i1 %lcmp.mod1047.not, label %Jf_CutGetSign.exit350, label %.lr.ph.i343.epil.preheader

.lr.ph.i343.epil.preheader:                       ; preds = %Jf_CutGetSign.exit350.loopexit.unr-lcssa, %.lr.ph.preheader.i341
  %indvars.iv.i344.epil.init = phi i64 [ 1, %.lr.ph.preheader.i341 ], [ %indvars.iv.next.i346.3, %Jf_CutGetSign.exit350.loopexit.unr-lcssa ]
  %.068.i345.epil.init = phi i64 [ 0, %.lr.ph.preheader.i341 ], [ %i.wg, %Jf_CutGetSign.exit350.loopexit.unr-lcssa ]
  %lcmp.mod1049 = icmp ne i64 %xtraiter1045, 0
  call void @llvm.assume(i1 %lcmp.mod1049)
  br label %.lr.ph.i343.epil

.lr.ph.i343.epil:                                 ; preds = %.lr.ph.i343.epil, %.lr.ph.i343.epil.preheader
  %indvars.iv.i344.epil = phi i64 [ %indvars.iv.i344.epil.init, %.lr.ph.i343.epil.preheader ], [ %indvars.iv.next.i346.epil, %.lr.ph.i343.epil ] ; 2 uses
  %.068.i345.epil = phi i64 [ %.068.i345.epil.init, %.lr.ph.i343.epil.preheader ], [ %i.wn, %.lr.ph.i343.epil ]
  %epil.iter1046 = phi i64 [ 0, %.lr.ph.i343.epil.preheader ], [ %epil.iter1046.next, %.lr.ph.i343.epil ]
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv.i344.epil
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !24
  %i.wj = lshr i32 %i.wi, 1
  %i.wk = and i32 %i.wj, 63
  %i.wl = zext nneg i32 %i.wk to i64
  %i.wm = shl nuw i64 1, %i.wl
  %i.wn = or i64 %i.wm, %.068.i345.epil           ; 2 uses
  %indvars.iv.next.i346.epil = add nuw nsw i64 %indvars.iv.i344.epil, 1
  %epil.iter1046.next = add i64 %epil.iter1046, 1 ; 2 uses
  %epil.iter1046.cmp.not = icmp eq i64 %epil.iter1046.next, %xtraiter1045
  br i1 %epil.iter1046.cmp.not, label %Jf_CutGetSign.exit350, label %.lr.ph.i343.epil, !llvm.loop !220

Jf_CutGetSign.exit350:                            ; preds = %Jf_CutGetSign.exit350.loopexit.unr-lcssa, %.lr.ph.i343.epil, %bb.ak
  %.06.lcssa.i349 = phi i64 [ 0, %bb.ak ], [ %i.wg, %Jf_CutGetSign.exit350.loopexit.unr-lcssa ], [ %i.wn, %.lr.ph.i343.epil ]
  store i64 %.06.lcssa.i349, ptr %i.lt, align 8, !tbaa !114
  br label %bb.al

bb.al:                                            ; preds = %Jf_CutGetSign.exit350, %.loopexit461
  %i.wo = icmp sgt i32 %i.ut, 16777215
  br i1 %i.wo, label %bb.am, label %._crit_edge653

._crit_edge653:                                   ; preds = %bb.al
  %.pre654 = load ptr, ptr %i.d, align 8, !tbaa !70
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  call void @exit(i32 noundef 1) #31
  unreachable

bb.an:                                            ; preds = %._crit_edge653, %Jf_CutGetSign.exit273, %bb.y, %.loopexit458
  %.val.i359 = phi i32 [ %i.uv, %._crit_edge653 ], [ %i.oe, %Jf_CutGetSign.exit273 ], [ %i.oe, %bb.y ], [ %.5.lcssa.sink.i, %.loopexit458 ] ; 5 uses
  %.pre302.i = phi ptr [ %i.lt, %._crit_edge653 ], [ %i.lt, %Jf_CutGetSign.exit273 ], [ %i.lt, %bb.y ], [ %i.gy, %.loopexit458 ] ; 23 uses
  %i.wp = phi ptr [ %.pre654, %._crit_edge653 ], [ %i.nv, %Jf_CutGetSign.exit273 ], [ %i.nv, %bb.y ], [ %i.gt, %.loopexit458 ]
  %i.wq = load i64, ptr %i.gb, align 8, !tbaa !17
  %i.wr = add i64 %i.wq, 1
  store i64 %i.wr, ptr %i.gb, align 8, !tbaa !17
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 56
  %i.wt = load i32, ptr %i.ws, align 8, !tbaa !118
  %.not208 = icmp eq i32 %i.wt, 0
  br i1 %.not208, label %bb.ao, label %Jf_CutArr.exit

bb.ao:                                            ; preds = %bb.an
  %i.wu = getelementptr inbounds nuw i8, ptr %.pre302.i, i64 24 ; 3 uses
  %i.wv = and i32 %.val.i359, 15
  %.not9.i = icmp eq i32 %i.wv, 0
  br i1 %.not9.i, label %Jf_CutArr.exit.thread, label %.lr.ph.i352

Jf_CutArr.exit.thread:                            ; preds = %bb.ao
  %.pre-phi677753 = sext i32 %.1532 to i64        ; 2 uses
  %i.ww = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.pre-phi677753
  %i.wx = getelementptr inbounds nuw i8, ptr %.pre302.i, i64 12
  store i32 1, ptr %i.wx, align 4, !tbaa !115
  %i.wy = getelementptr inbounds nuw i8, ptr %.pre302.i, i64 24
  br label %Jf_CutFlow.exit

.lr.ph.i352:                                      ; preds = %bb.ao
  %.val8.i = load ptr, ptr %i.gc, align 8, !tbaa !23 ; 3 uses
  %i.wz = and i32 %.val.i359, 15                  ; 2 uses
  %i.xa = zext nneg i32 %i.wz to i64              ; 2 uses
  %xtraiter1058 = and i64 %i.xa, 1
  %i.xb = icmp eq i32 %i.wz, 1
  br i1 %i.xb, label %.epil.preheader, label %.lr.ph.i352.new

.lr.ph.i352.new:                                  ; preds = %.lr.ph.i352
  %unroll_iter1063 = and i64 %i.xa, 14
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %.lr.ph.i352.new
  %indvars.iv.i354 = phi i64 [ 1, %.lr.ph.i352.new ], [ %indvars.iv.next.i355.1, %bb.ap ] ; 3 uses
  %.011.i = phi i32 [ 0, %.lr.ph.i352.new ], [ %i.xq, %bb.ap ]
  %niter1064 = phi i64 [ 0, %.lr.ph.i352.new ], [ %niter1064.next.1, %bb.ap ]
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv.i354
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !24
  %i.xe = ashr i32 %i.xd, 1
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [4 x i8], ptr %.val8.i, i64 %i.xf
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !24
  %i.xi = call noundef i32 @llvm.smax.i32(i32 %.011.i, i32 %i.xh)
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv.i354
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 4
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !24
  %i.xm = ashr i32 %i.xl, 1
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr inbounds [4 x i8], ptr %.val8.i, i64 %i.xn
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !24
  %i.xq = call noundef i32 @llvm.smax.i32(i32 %i.xi, i32 %i.xp) ; 3 uses
  %indvars.iv.next.i355.1 = add nuw nsw i64 %indvars.iv.i354, 2 ; 2 uses
  %niter1064.next.1 = add nuw i64 %niter1064, 2   ; 2 uses
  %niter1064.ncmp.1 = icmp eq i64 %niter1064.next.1, %unroll_iter1063
  br i1 %niter1064.ncmp.1, label %Jf_CutArr.exit.thread756.unr-lcssa, label %bb.ap, !llvm.loop !5

Jf_CutArr.exit.thread756.unr-lcssa:               ; preds = %bb.ap
  %lcmp.mod1060.not = icmp eq i64 %xtraiter1058, 0
  br i1 %lcmp.mod1060.not, label %Jf_CutArr.exit.thread756, label %.epil.preheader

.epil.preheader:                                  ; preds = %Jf_CutArr.exit.thread756.unr-lcssa, %.lr.ph.i352
  %indvars.iv.i354.epil.init = phi i64 [ 1, %.lr.ph.i352 ], [ %indvars.iv.next.i355.1, %Jf_CutArr.exit.thread756.unr-lcssa ]
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.i352 ], [ %i.xq, %Jf_CutArr.exit.thread756.unr-lcssa ]
  %lcmp.mod1062 = trunc i32 %.val.i359 to i1
  call void @llvm.assume(i1 %lcmp.mod1062)
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %indvars.iv.i354.epil.init
end_hunk_2
