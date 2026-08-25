Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/reader?download=true
inline.NumInlined: 20
inline.NumDeleted: 1
begin_hunk_0_@readgram:bb.a
bb.aj:                                            ; preds = %bb.b
  tail call void @parse_token_decl(i32 noundef 1, i32 noundef 2)
  %i.dl = tail call i32 @lex() #12
  br label %.backedge239

bb.ak:                                            ; preds = %bb.b
  tail call void @parse_token_decl(i32 noundef 2, i32 noundef 1)
  %i.dm = tail call i32 @lex() #12
  br label %.backedge239

bb.al:                                            ; preds = %bb.b
  %i.dn = tail call i32 @get_type()
  br label %.backedge239

bb.am:                                            ; preds = %bb.b
  tail call void @parse_union_decl()
  %i.do = tail call i32 @lex() #12
  br label %.backedge239

bb.an:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %bb.ao

bb.ao:                                            ; preds = %.backedge, %bb.an
  %i.dp = load ptr, ptr @finput, align 8, !tbaa !19
  %i.dq = tail call i32 @getc(ptr noundef %i.dp)  ; 4 uses
  switch i32 %i.dq, label %.preheader.i [
    i32 32, label %.backedge
    i32 9, label %.backedge
  ]

.backedge:                                        ; preds = %bb.ao, %bb.ao
  br label %bb.ao, !llvm.loop !22

.preheader.i:                                     ; preds = %bb.ao
  %i.dr = add i32 %i.dq, -48
  %i.ds = icmp ult i32 %i.dr, 10
  br i1 %i.ds, label %.lr.ph.i, label %parse_expect_decl.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.aq
  %.011.i = phi i32 [ %.1.i, %bb.aq ], [ 0, %.preheader.i ] ; 4 uses
  %.1910.i = phi i32 [ %i.dz, %bb.aq ], [ %i.dq, %.preheader.i ]
  %i.dt = icmp slt i32 %.011.i, 20
  br i1 %i.dt, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i
  %i.du = trunc nuw nsw i32 %.1910.i to i8
  %i.dv = add nsw i32 %.011.i, 1
  %i.dw = sext i32 %.011.i to i64
  %i.dx = getelementptr inbounds i8, ptr %i.a, i64 %i.dw
  store i8 %i.du, ptr %i.dx, align 1, !tbaa !24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph.i
  %.1.i = phi i32 [ %i.dv, %bb.ap ], [ %.011.i, %.lr.ph.i ]
  %i.dy = load ptr, ptr @finput, align 8, !tbaa !19
  %i.dz = tail call i32 @getc(ptr noundef %i.dy)  ; 3 uses
  %i.ea = add i32 %i.dz, -48
  %i.eb = icmp ult i32 %i.ea, 10
  br i1 %i.eb, label %.lr.ph.i, label %parse_expect_decl.exit, !llvm.loop !25

parse_expect_decl.exit:                           ; preds = %bb.aq, %.preheader.i
  %.19.lcssa.i = phi i32 [ %i.dq, %.preheader.i ], [ %i.dz, %bb.aq ]
  %i.ec = load ptr, ptr @finput, align 8, !tbaa !19
  %i.ed = tail call i32 @ungetc(i32 noundef %.19.lcssa.i, ptr noundef %i.ec) ; 0 uses
  %i.ee = call i64 @strtol(ptr noundef nonnull captures(none) %i.a, ptr noundef null, i32 noundef 10) #12, !inline_history !26
  %i.ef = trunc i64 %i.ee to i32
  store i32 %i.ef, ptr @expected_conflicts, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.eg = tail call i32 @lex() #12
  br label %.backedge239

bb.ar:                                            ; preds = %bb.b
  %i.eh = load i32, ptr @start_flag, align 4, !tbaa !4
  %.not.i150 = icmp eq i32 %i.eh, 0
  br i1 %.not.i150, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @fatal(ptr noundef nonnull @.str.14) #12
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  store i32 1, ptr @start_flag, align 4, !tbaa !4
  %i.ei = tail call i32 @lex() #12
  %.not1.i = icmp eq i32 %i.ei, 1
  br i1 %.not1.i, label %parse_start_decl.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @fatal(ptr noundef nonnull @.str.15) #12
  br label %parse_start_decl.exit

parse_start_decl.exit:                            ; preds = %bb.at, %bb.au
  %i.ej = load ptr, ptr @symval, align 8, !tbaa !8
  store ptr %i.ej, ptr @startval, align 8, !tbaa !8
  %i.ek = tail call i32 @lex() #12
  br label %.backedge239

bb.av:                                            ; preds = %bb.b
  tail call void @fatal(ptr noundef nonnull @.str.57) #12
  br label %.backedge239

bb.aw:                                            ; preds = %bb.b, %bb.b
  %i.el = load i32, ptr @nrules, align 4, !tbaa !4
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  tail call void @fatal(ptr noundef nonnull @.str.5) #12
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.b = load i1, ptr @typed, align 4
  br i1 %.b, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.en = load ptr, ptr @fattrs, align 8, !tbaa !19
  %i.eo = tail call i64 @fwrite(ptr nonnull @.str.58, i64 43, i64 1, ptr %i.en) ; 0 uses
  %i.ep = load ptr, ptr @fdefines, align 8, !tbaa !19 ; 2 uses
  %.not = icmp eq ptr %i.ep, null
  br i1 %.not, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eq = tail call i64 @fwrite(ptr nonnull @.str.58, i64 43, i64 1, ptr nonnull %i.ep) ; 0 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.ay
  %.0108188 = load ptr, ptr @firstsymbol, align 8, !tbaa !8 ; 2 uses
  %.not132189 = icmp eq ptr %.0108188, null
  br i1 %.not132189, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bb, %bb.bd
  %.0108190 = phi ptr [ %.0108, %bb.bd ], [ %.0108188, %bb.bb ] ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0108190, i64 40 ; 2 uses
  %i.es = load i8, ptr %i.er, align 8, !tbaa !15
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph
  %i.eu = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ev = getelementptr inbounds nuw i8, ptr %.0108190, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !31
  %i.ex = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eu, ptr noundef nonnull @.str.59, ptr noundef %i.ew) #16 ; 0 uses
  store i32 1, ptr @failure, align 4, !tbaa !4
  store i8 2, ptr %i.er, align 8, !tbaa !15
  %i.ey = load i32, ptr @nvars, align 4, !tbaa !4 ; 2 uses
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr @nvars, align 4, !tbaa !4
  %i.fa = trunc i32 %i.ey to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %.0108190, i64 32
  store i16 %i.fa, ptr %i.fb, align 8, !tbaa !30
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph, %bb.bc
  %i.fc = getelementptr inbounds nuw i8, ptr %.0108190, i64 8
  %.0108 = load ptr, ptr %i.fc, align 8, !tbaa !8 ; 2 uses
  %.not132 = icmp eq ptr %.0108, null
  br i1 %.not132, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.bd, %bb.bb
  %i.fd = load i32, ptr @nsyms, align 4, !tbaa !4
  %i.fe = load i32, ptr @nvars, align 4, !tbaa !4
  %i.ff = sub nsw i32 %i.fd, %i.fe
  store i32 %i.ff, ptr @ntokens, align 4, !tbaa !4
  ret void
}

declare void @output_trailers() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @packsymbols() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nsyms, align 4, !tbaa !4
  %i.b = shl i32 %i.a, 3
  %i.c = add i32 %i.b, 8
  %i.d = tail call ptr (i32, ...) @mallocate(i32 noundef %i.c) #12 ; 2 uses
  store ptr %i.d, ptr @tags, align 8, !tbaa !37
  store ptr @.str.61, ptr %i.d, align 8, !tbaa !21
  %i.e = load i32, ptr @nsyms, align 4, !tbaa !4
  %i.f = shl i32 %i.e, 1
  %i.g = tail call ptr (i32, ...) @mallocate(i32 noundef %i.f) #12
  store ptr %i.g, ptr @sprec, align 8, !tbaa !11
  %i.h = load i32, ptr @nsyms, align 4, !tbaa !4
  %i.i = shl i32 %i.h, 1
  %i.j = tail call ptr (i32, ...) @mallocate(i32 noundef %i.i) #12 ; 2 uses
  store ptr %i.j, ptr @sassoc, align 8, !tbaa !11
  store i32 255, ptr @max_user_token_number, align 4, !tbaa !4
  %.03852 = load ptr, ptr @firstsymbol, align 8, !tbaa !8 ; 2 uses
  %.not53 = icmp eq ptr %.03852, null
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = load i32, ptr @translations, align 4
  %.not49 = icmp ne i32 %i.k, 0
  %i.l = load i32, ptr @ntokens, align 4
  %i.m = trunc i32 %i.l to i16
  %i.n = load ptr, ptr @tags, align 8, !tbaa !37
  %i.o = load ptr, ptr @sprec, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %0 = phi i32 [ 255, %.lr.ph ], [ %i.ad, %bb.h ] ; 3 uses
  %.03856 = phi ptr [ %.03852, %.lr.ph ], [ %.038, %bb.h ] ; 9 uses
  %.03654.a = phi i16 [ 255, %.lr.ph ], [ %.2, %bb.h ] ; 3 uses
  %.03654 = phi i16 [ 1, %.lr.ph ], [ %.137, %bb.h ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.03856, i64 40
  %i.q = load i8, ptr %i.p, align 8, !tbaa !15
  %i.r = icmp eq i8 %i.q, 2
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.03856, i64 32 ; 2 uses
  %i.t = load i16, ptr %i.s, align 8, !tbaa !30
  %i.u = add i16 %i.t, %i.m                       ; 2 uses
  store i16 %i.u, ptr %i.s, align 8, !tbaa !30
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.03856, i64 38 ; 2 uses
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !40 ; 2 uses
  %.not50 = icmp eq i16 %.pre, 0
  %or.cond95 = select i1 %.not49, i1 %.not50, i1 false
  br i1 %or.cond95, label %bb.e, label %._crit_edge74

bb.e:                                             ; preds = %bb.d
  %i.v = add i16 %.03654.a, 1                     ; 3 uses
  store i16 %i.v, ptr %.phi.trans.insert, align 2, !tbaa !40
  br label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.d, %bb.e
  %i.w = phi i16 [ %.pre, %bb.d ], [ %i.v, %bb.e ]
  %.1 = phi i16 [ %.03654.a, %bb.d ], [ %i.v, %bb.e ]
  %i.x = sext i16 %i.w to i32                     ; 3 uses
  %i.y = icmp slt i32 %0, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge74
  store i32 %i.x, ptr @max_user_token_number, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge74
  %i.z = phi i32 [ %i.x, %bb.f ], [ %0, %._crit_edge74 ]
  %i.aa = add i16 %.03654, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.03856, i64 32
  store i16 %.03654, ptr %i.ab, align 8, !tbaa !30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.ac = phi i16 [ %i.u, %bb.c ], [ %.03654, %bb.g ]
  %i.ad = phi i32 [ %0, %bb.c ], [ %i.z, %bb.g ]  ; 2 uses
  %.137 = phi i16 [ %.03654, %bb.c ], [ %i.aa, %bb.g ]
  %.2 = phi i16 [ %.03654.a, %bb.c ], [ %.1, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.03856, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %.03856, i64 32
  %i.ah = sext i16 %i.ac to i64                   ; 2 uses
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ah
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %.03856, i64 34
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !41
  %i.al = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.ah
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %.03856, i64 36
  %i.an = load i16, ptr %i.am, align 4, !tbaa !42
  %i.ao = load i16, ptr %i.ag, align 8, !tbaa !30
  %i.ap = sext i16 %i.ao to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.ap
  store i16 %i.an, ptr %i.aq, align 2, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %.03856, i64 8
  %.038 = load ptr, ptr %i.ar, align 8, !tbaa !8  ; 2 uses
  %.not = icmp eq ptr %.038, null
  br i1 %.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %bb.h
  %1 = shl nuw nsw i32 %i.ad, 1
  %2 = add nuw nsw i32 %1, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %3 = phi i32 [ %2, %._crit_edge.loopexit ], [ 512, %bb.a ]
  %i.as = load i32, ptr @translations, align 4, !tbaa !4
  %.not42 = icmp eq i32 %i.as, 0
  br i1 %.not42, label %.loopexit51, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.at = tail call ptr (i32, ...) @mallocate(i32 noundef %3) #12 ; 4 uses
  store ptr %i.at, ptr @token_translations, align 8, !tbaa !11
  %i.au = load i32, ptr @max_user_token_number, align 4, !tbaa !4 ; 4 uses
  %.not4357 = icmp slt i32 %i.au, 0
  br i1 %.not4357, label %.loopexit51, label %iter.check

iter.check:                                       ; preds = %bb.i
  %i.av = add nuw i32 %i.au, 1
  %wide.trip.count = zext i32 %i.av to i64        ; 6 uses
  %min.iters.check = icmp ult i32 %i.au, 3
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check98 = icmp ult i32 %i.au, 15
  br i1 %min.iters.check98, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <8 x i16> splat (i16 2), ptr %i.ax, align 2, !tbaa !27
  store <8 x i16> splat (i16 2), ptr %i.ay, align 2, !tbaa !27
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit51, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !47

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %index100
  store <4 x i16> splat (i16 2), ptr %i.ba, align 2, !tbaa !27
  %index.next101 = add nuw i64 %index100, 4       ; 2 uses
  %i.bb = icmp eq i64 %index.next101, %n.vec99
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !48

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %n.vec99, %wide.trip.count
  br i1 %cmp.n102, label %.loopexit51, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec99, %vec.epilog.middle.block ]
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph60 ], [ %indvars.iv.ph, %.lr.ph60.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv
  store i16 2, ptr %i.bc, align 2, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit51, label %.lr.ph60, !llvm.loop !49

.loopexit51:                                      ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %bb.i, %._crit_edge
  %.13961 = load ptr, ptr @firstsymbol, align 8, !tbaa !8 ; 2 uses
  %.not4462 = icmp eq ptr %.13961, null
  br i1 %.not4462, label %._crit_edge66, label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %.loopexit51
  %.pre76 = load i32, ptr @ntokens, align 4, !tbaa !4 ; 2 uses
  %.pre78 = load i32, ptr @translations, align 4
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader, %bb.m
  %.pre7582 = phi i32 [ %.pre7583, %bb.m ], [ %.pre76, %.lr.ph65.preheader ] ; 2 uses
  %i.bd = phi i32 [ %i.ce, %bb.m ], [ %.pre78, %.lr.ph65.preheader ] ; 2 uses
  %i.be = phi i32 [ %i.cf, %bb.m ], [ %.pre76, %.lr.ph65.preheader ] ; 2 uses
  %.13963 = phi ptr [ %.139, %bb.m ], [ %.13961, %.lr.ph65.preheader ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.13963, i64 32 ; 2 uses
  %i.bg = load i16, ptr %i.bf, align 8, !tbaa !30 ; 2 uses
  %i.bh = sext i16 %i.bg to i32
  %i.bi = icmp sgt i32 %i.be, %i.bh
  %i.bj = icmp ne i32 %i.bd, 0
  %or.cond = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph65
  %i.bk = load ptr, ptr @token_translations, align 8, !tbaa !11 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.13963, i64 38 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !40 ; 2 uses
  %i.bn = sext i16 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !27 ; 2 uses
  %.not48 = icmp eq i16 %i.bp, 2
  br i1 %.not48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr @tags, align 8, !tbaa !37
  %i.br = sext i16 %i.bp to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !21
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %.13963, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !31
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = trunc i64 %i.by to i32
  %i.ca = sext i16 %i.bm to i32
  tail call void @fatals(ptr noundef nonnull @.str.62, i32 noundef %i.bv, i32 noundef %i.bz, i32 noundef %i.ca, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  %.pre79 = load i16, ptr %i.bf, align 8, !tbaa !30
  %.pre80 = load ptr, ptr @token_translations, align 8, !tbaa !11
  %.pre81 = load i16, ptr %i.bl, align 2, !tbaa !40
  %.pre75.pre = load i32, ptr @ntokens, align 4, !tbaa !4
  %.pre88 = sext i16 %.pre81 to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre-phi = phi i64 [ %.pre88, %bb.k ], [ %i.bn, %bb.j ]
  %.pre75 = phi i32 [ %.pre75.pre, %bb.k ], [ %.pre7582, %bb.j ] ; 2 uses
  %i.cb = phi ptr [ %.pre80, %bb.k ], [ %i.bk, %bb.j ]
  %i.cc = phi i16 [ %.pre79, %bb.k ], [ %i.bg, %bb.j ]
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.cb, i64 %.pre-phi
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !27
  %.pre77 = load i32, ptr @translations, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph65
  %.pre7583 = phi i32 [ %.pre75, %bb.l ], [ %.pre7582, %.lr.ph65 ]
  %i.ce = phi i32 [ %.pre77, %bb.l ], [ %i.bd, %.lr.ph65 ]
  %i.cf = phi i32 [ %.pre75, %bb.l ], [ %i.be, %.lr.ph65 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.13963, i64 8
  %.139 = load ptr, ptr %i.cg, align 8, !tbaa !8  ; 2 uses
  %.not44 = icmp eq ptr %.139, null
  br i1 %.not44, label %._crit_edge66, label %.lr.ph65, !llvm.loop !50

._crit_edge66:                                    ; preds = %bb.m, %.loopexit51
  %i.ch = load ptr, ptr @errtoken, align 8, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load i16, ptr %i.ci, align 8, !tbaa !30
  %i.ck = sext i16 %i.cj to i32
  store i32 %i.ck, ptr @error_token_number, align 4, !tbaa !4
  %i.cl = load ptr, ptr @ftable, align 8, !tbaa !19
  tail call void @output_token_defines(ptr noundef %i.cl)
  %i.cm = load ptr, ptr @startval, align 8, !tbaa !8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !15
  switch i8 %i.co, label %bb.o [
    i8 0, label %.sink.split
    i8 1, label %bb.n
  ]

bb.n:                                             ; preds = %._crit_edge66
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge66, %bb.n
  %.str.64.sink = phi ptr [ @.str.64, %bb.n ], [ @.str.63, %._crit_edge66 ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !31
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = trunc i64 %i.cr to i32
  tail call void @fatals(ptr noundef nonnull %.str.64.sink, i32 noundef %i.cs, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %._crit_edge66
  %i.ct = load ptr, ptr @startval, align 8, !tbaa !8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load i16, ptr %i.cu, align 8, !tbaa !30
  %i.cw = sext i16 %i.cv to i32
  store i32 %i.cw, ptr @start_symbol, align 4, !tbaa !4
  %i.cx = load i32, ptr @definesflag, align 4, !tbaa !4
  %.not45 = icmp eq i32 %i.cx, 0
  br i1 %.not45, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = load ptr, ptr @fdefines, align 8, !tbaa !19
  tail call void @output_token_defines(ptr noundef %i.cy)
  %i.cz = load i32, ptr @semantic_parser, align 4, !tbaa !4
  %.not46 = icmp eq i32 %i.cz, 0
  br i1 %.not46, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.da = load i32, ptr @ntokens, align 4, !tbaa !4 ; 2 uses
  %i.db = load i32, ptr @nsyms, align 4, !tbaa !4 ; 2 uses
  %i.dc = icmp slt i32 %i.da, %i.db
  br i1 %i.dc, label %.lr.ph69.preheader, label %.loopexit

.lr.ph69.preheader:                               ; preds = %bb.q
  %i.dd = sext i32 %i.da to i64
  %.pre86 = load ptr, ptr @tags, align 8, !tbaa !37
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69.preheader, %bb.s
  %i.de = phi i32 [ %i.db, %.lr.ph69.preheader ], [ %i.dm, %bb.s ]
  %i.df = phi ptr [ %.pre86, %.lr.ph69.preheader ], [ %i.dn, %bb.s ] ; 2 uses
  %indvars.iv71 = phi i64 [ %i.dd, %.lr.ph69.preheader ], [ %indvars.iv.next72, %bb.s ] ; 3 uses
end_hunk_0
