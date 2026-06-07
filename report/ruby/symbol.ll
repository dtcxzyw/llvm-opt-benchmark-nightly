inline.NumInlined: 215
inline.NumDeleted: 75
begin_hunk_0_@rb_enc_symname_type:bb.a
  %i.r = shl nuw i32 1, %i.q
  %i.s = and i32 %i.p, %i.r
  %.not34.i.i = icmp eq i32 %i.s, 0
  br i1 %.not34.i.i, label %is_global_name_punct.exit.thread.i.i, label %bb.e

bb.e:                                             ; preds = %is_global_name_punct.exit.i.i
  %i.t = getelementptr i8, ptr %0, i64 2
  br label %is_special_global_name.exit.i

is_global_name_punct.exit.thread.i.i:             ; preds = %is_global_name_punct.exit.i.i, %bb.d
  %i.u = icmp eq i8 %i.i, 45
  br i1 %i.u, label %bb.f, label %bb.i

bb.f:                                             ; preds = %is_global_name_punct.exit.thread.i.i
  %i.v = getelementptr i8, ptr %0, i64 2          ; 5 uses
  %.not38.i.i = icmp ult ptr %i.v, %i.c
  br i1 %.not38.i.i, label %bb.g, label %enc_synmane_type_leading_chars.exit.thread78

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15    ; 4 uses
  %i.x = and i8 %i.w, -33
  %i.y = add i8 %i.x, -65
  %narrow.i.i.i.i = icmp ult i8 %i.y, 26
  %i.z = add i8 %i.w, -48
  %i.aa = icmp ult i8 %i.z, 10
  %narrow.i.i.i = or i1 %i.aa, %narrow.i.i.i.i
  %i.ab = icmp eq i8 %i.w, 95
  %or.cond.i.i = or i1 %i.ab, %narrow.i.i.i
  %i.ac = icmp slt i8 %i.w, 0
  %or.cond45.i.i = or i1 %i.ac, %or.cond.i.i
  br i1 %or.cond45.i.i, label %bb.h, label %is_special_global_name.exit.i

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 @rb_enc_mbclen(ptr noundef nonnull %i.v, ptr noundef nonnull %i.c, ptr noundef nonnull %2) #20
  %.fr131 = freeze i32 %i.ad
  %i.ae = sext i32 %.fr131 to i64
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae
  br label %is_special_global_name.exit.i

bb.i:                                             ; preds = %is_global_name_punct.exit.thread.i.i
  %i.ag = add nsw i32 %i.j, -58
  %i.ah = icmp ult i32 %i.ag, -10
  br i1 %i.ah, label %enc_synmane_type_leading_chars.exit.thread78, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.i
  %i.ai = getelementptr i8, ptr %0, i64 2         ; 3 uses
  %i.aj = icmp ult ptr %i.ai, %i.c
  br i1 %i.aj, label %.lr.ph129, label %is_special_global_name.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph129
  %i.ak = getelementptr i8, ptr %i.am, i64 1      ; 3 uses
  %i.al = icmp ult ptr %i.ak, %i.c
  br i1 %i.al, label %.lr.ph129, label %is_special_global_name.exit.i, !llvm.loop !37

.lr.ph129:                                        ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %i.am = phi ptr [ %i.ak, %.preheader.i.i ], [ %i.ai, %.preheader.i.i.preheader ] ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !15
  %i.ao = sext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -58
  %i.aq = icmp ult i32 %i.ap, -10
  br i1 %i.aq, label %.is_special_global_name.exit.i.loopexit_crit_edge, label %.preheader.i.i, !llvm.loop !37

.is_special_global_name.exit.i.loopexit_crit_edge: ; preds = %.lr.ph129
  br label %is_special_global_name.exit.i, !llvm.loop !37

is_special_global_name.exit.i:                    ; preds = %.preheader.i.i, %.preheader.i.i.preheader, %.is_special_global_name.exit.i.loopexit_crit_edge, %bb.h, %bb.g, %bb.e
  %.126.i.i = phi ptr [ %i.t, %bb.e ], [ %i.af, %bb.h ], [ %i.v, %bb.g ], [ %i.ai, %.preheader.i.i.preheader ], [ %i.am, %.is_special_global_name.exit.i.loopexit_crit_edge ], [ %i.ak, %.preheader.i.i ]
  %.not84.i = icmp eq ptr %.126.i.i, %i.c
  br i1 %.not84.i, label %enc_synmane_type_leading_chars.exit.thread, label %enc_synmane_type_leading_chars.exit.thread78

bb.j:                                             ; preds = %bb.b
  %i.ar = getelementptr i8, ptr %0, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
  %cond6.i = icmp eq i8 %i.as, 64                 ; 2 uses
  %.36.i = select i1 %cond6.i, i64 51539607554, i64 8589934594
  %.37.i = select i1 %cond6.i, i64 2, i64 1
  br label %enc_synmane_type_leading_chars.exit

bb.k:                                             ; preds = %bb.b
  %i.at = getelementptr i8, ptr %0, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !15
  switch i8 %i.au, label %enc_synmane_type_leading_chars.exit.thread [
    i8 60, label %bb.o
    i8 61, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr i8, ptr %0, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !15
  %cond5.i = icmp eq i8 %i.aw, 62
  %.38.i = select i1 %cond5.i, i64 3, i64 2
  br label %enc_synmane_type_leading_chars.exit.thread

bb.m:                                             ; preds = %bb.b
  %i.ax = getelementptr i8, ptr %0, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %.off.i = add i8 %i.ay, -61
  %switch.i = icmp ult i8 %.off.i, 2
  %.39.i = select i1 %switch.i, i64 2, i64 1
  br label %enc_synmane_type_leading_chars.exit.thread

bb.n:                                             ; preds = %bb.b
  %i.az = getelementptr i8, ptr %0, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !15
  switch i8 %i.ba, label %enc_synmane_type_leading_chars.exit.thread91 [
    i8 126, label %bb.o
    i8 61, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n, %bb.k
  br label %enc_synmane_type_leading_chars.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.bb = getelementptr i8, ptr %0, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !15
  %cond4.i = icmp eq i8 %i.bc, 61
  %.40.i = select i1 %cond4.i, i64 3, i64 2
  br label %enc_synmane_type_leading_chars.exit.thread

bb.q:                                             ; preds = %bb.b
  %i.bd = getelementptr i8, ptr %0, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %cond3.i = icmp eq i8 %i.be, 42
  %.41.i = select i1 %cond3.i, i64 2, i64 1
  br label %enc_synmane_type_leading_chars.exit.thread

bb.r:                                             ; preds = %bb.b, %bb.b
  %i.bf = getelementptr i8, ptr %0, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !15
  %cond2.i = icmp eq i8 %i.bg, 64
  %.42.i = select i1 %cond2.i, i64 2, i64 1
  br label %enc_synmane_type_leading_chars.exit.thread

bb.s:                                             ; preds = %bb.b
  %i.bh = getelementptr i8, ptr %0, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !15
  %cond.i = icmp eq i8 %i.bi, 93
  br i1 %cond.i, label %bb.t, label %enc_synmane_type_leading_chars.exit.thread78

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr i8, ptr %0, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !15
  %cond1.i = icmp eq i8 %i.bk, 61
  %.43.i = select i1 %cond1.i, i64 3, i64 2
  br label %enc_synmane_type_leading_chars.exit.thread

bb.u:                                             ; preds = %bb.b
  %i.bl = getelementptr i8, ptr %0, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !15
  switch i8 %i.bm, label %bb.v [
    i8 61, label %enc_synmane_type_leading_chars.exit.thread
    i8 126, label %enc_synmane_type_leading_chars.exit.thread
  ]

bb.v:                                             ; preds = %bb.u
  %i.bn = and i32 %3, 16384
  %.not32.i = icmp eq i32 %i.bn, 0
  %.44.i = select i1 %.not32.i, i64 60129542145, i64 60129542146
  br label %enc_synmane_type_leading_chars.exit

bb.w:                                             ; preds = %bb.b
  %i.bo = icmp slt i8 %i.g, 0
  br i1 %i.bo, label %bb.x, label %rb_sym_constant_char_p.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bp = tail call i32 @rb_enc_precise_mbclen(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull %2) #20 ; 3 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.y, label %rb_sym_constant_char_p.exit.thread.i

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr i8, ptr %2, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !38
  %i.bt = tail call i32 %i.bs(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef nonnull %2) #20, !inline_history !39 ; 3 uses
  %i.bu = getelementptr i8, ptr %2, i64 88        ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.bw = tail call i32 %i.bv(i32 noundef %i.bt, i32 noundef 10, ptr noundef nonnull %2) #20, !inline_history !41
  %.not.i50.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i50.i, label %bb.z, label %enc_synmane_type_leading_chars.exit.thread78

bb.z:                                             ; preds = %bb.y
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.by = tail call i32 %i.bx(i32 noundef %i.bt, i32 noundef 6, ptr noundef nonnull %2) #20, !inline_history !42
  %.not38.i51.i = icmp eq i32 %i.by, 0
  br i1 %.not38.i51.i, label %bb.aa, label %rb_sym_constant_char_p.exit.thread.i

bb.aa:                                            ; preds = %bb.z
  %i.bz = getelementptr i8, ptr %2, i64 132
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !43
  %i.cb = and i32 %i.ca, 1
  %.not34.i52.i = icmp eq i32 %i.cb, 0
  br i1 %.not34.i52.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = load i32, ptr @rb_sym_constant_char_p.ctype_titlecase, align 4, !tbaa !7 ; 2 uses
  %.not37.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not37.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cd = getelementptr i8, ptr %2, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !44
  %i.cf = tail call i32 %i.ce(ptr noundef nonnull %2, ptr noundef nonnull @rb_sym_constant_char_p.cname, ptr noundef getelementptr (i8, ptr @rb_sym_constant_char_p.cname, i64 15)) #20, !inline_history !45 ; 2 uses
  store i32 %i.cf, ptr @rb_sym_constant_char_p.ctype_titlecase, align 4, !tbaa !7
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cg = phi i32 [ %i.cf, %bb.ac ], [ %i.cc, %bb.ab ]
  %i.ch = load ptr, ptr %i.bu, align 8, !tbaa !40
  %i.ci = tail call i32 %i.ch(i32 noundef %i.bt, i32 noundef %i.cg, ptr noundef nonnull %2) #20, !inline_history !46
  %.not39.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not39.i.i, label %rb_sym_constant_char_p.exit.thread.i, label %enc_synmane_type_leading_chars.exit.thread78

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %0, ptr %i.b, align 8, !tbaa !47
  %i.cj = getelementptr i8, ptr %2, i64 56
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48
  %i.cl = call i32 %i.ck(i32 noundef 524288, ptr noundef nonnull %i.b, ptr noundef %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %2) #20, !inline_history !45 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.af, label %.critedge.i53.i

bb.af:                                            ; preds = %bb.ae
  %.not35.i.i = icmp eq i32 %i.cl, %i.bp
  br i1 %.not35.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cn = zext nneg i32 %i.bp to i64
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.a, ptr nonnull %0, i64 %i.cn)
  %.not36.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not36.i.i, label %.critedge.i53.i, label %bb.ah

.critedge.i53.i:                                  ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %rb_sym_constant_char_p.exit.thread.i

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %enc_synmane_type_leading_chars.exit.thread78

rb_sym_constant_char_p.exit.i:                    ; preds = %bb.w
  %i.co = add nsw i8 %i.g, -91
  %i.cp = icmp ult i8 %i.co, -26
  br i1 %i.cp, label %rb_sym_constant_char_p.exit.thread.i, label %enc_synmane_type_leading_chars.exit.thread78

rb_sym_constant_char_p.exit.thread.i:             ; preds = %rb_sym_constant_char_p.exit.i, %.critedge.i53.i, %bb.ad, %bb.z, %bb.x
  br label %enc_synmane_type_leading_chars.exit.thread78

enc_synmane_type_leading_chars.exit.thread:       ; preds = %bb.r, %bb.u, %bb.u, %bb.t, %bb.k, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q, %is_special_global_name.exit.i, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %.sroa.32.0.i.ph = phi i32 [ 14, %bb.r ], [ 14, %bb.q ], [ 14, %bb.p ], [ 14, %bb.o ], [ 14, %bb.u ], [ 14, %bb.m ], [ 14, %bb.l ], [ 14, %bb.k ], [ 6, %is_special_global_name.exit.i ], [ 14, %bb.t ], [ 14, %bb.u ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ], [ 14, %bb.b ]
  %.sroa.63.0.i.ph = phi i64 [ %.42.i, %bb.r ], [ %.41.i, %bb.q ], [ %.40.i, %bb.p ], [ 2, %bb.o ], [ 2, %bb.u ], [ %.39.i, %bb.m ], [ %.38.i, %bb.l ], [ 1, %bb.k ], [ %1, %is_special_global_name.exit.i ], [ %.43.i, %bb.t ], [ 2, %bb.u ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ], [ 1, %bb.b ]
  %i.cq = getelementptr i8, ptr %0, i64 %.sroa.63.0.i.ph
  br label %.critedge

enc_synmane_type_leading_chars.exit.thread78:     ; preds = %bb.f, %bb.s, %bb.y, %bb.i, %is_special_global_name.exit.i, %rb_sym_constant_char_p.exit.thread.i, %rb_sym_constant_char_p.exit.i, %bb.ah, %bb.ad, %bb.c
  %.sroa.32.0.i.ph76 = phi i64 [ 25769803778, %bb.c ], [ 42949672962, %bb.ad ], [ 42949672962, %bb.ah ], [ 42949672962, %rb_sym_constant_char_p.exit.i ], [ 2, %rb_sym_constant_char_p.exit.thread.i ], [ 25769803778, %is_special_global_name.exit.i ], [ 25769803778, %bb.i ], [ 42949672962, %bb.y ], [ 60129542146, %bb.s ], [ 25769803778, %bb.f ] ; 2 uses
  %.sroa.63.0.i.ph77 = phi i64 [ 1, %bb.c ], [ 0, %bb.ad ], [ 0, %bb.ah ], [ 0, %rb_sym_constant_char_p.exit.i ], [ 0, %rb_sym_constant_char_p.exit.thread.i ], [ 1, %is_special_global_name.exit.i ], [ 1, %bb.i ], [ 0, %bb.y ], [ 0, %bb.s ], [ 1, %bb.f ]
  %i.cr = getelementptr i8, ptr %0, i64 %.sroa.63.0.i.ph77
  %.sroa.0.4.extract.shift83 = lshr i64 %.sroa.32.0.i.ph76, 32 ; 2 uses
  %.sroa.0.4.extract.trunc84 = trunc nuw nsw i64 %.sroa.0.4.extract.shift83 to i32
  br label %bb.ai

enc_synmane_type_leading_chars.exit:              ; preds = %bb.j, %bb.v
  %.sroa.32.0.i = phi i64 [ %.44.i, %bb.v ], [ %.36.i, %bb.j ] ; 3 uses
  %.sroa.63.0.i = phi i64 [ 1, %bb.v ], [ %.37.i, %bb.j ]
  %i.cs = getelementptr i8, ptr %0, i64 %.sroa.63.0.i ; 2 uses
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.32.0.i, 32 ; 2 uses
  %.sroa.0.4.extract.trunc = trunc nuw nsw i64 %.sroa.0.4.extract.shift to i32 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.32.0.i to i32
  switch i32 %.sroa.0.0.extract.trunc, label %.critedge [
    i32 0, label %enc_synmane_type_leading_chars.exit.thread91
    i32 2, label %bb.ai
  ]

bb.ai:                                            ; preds = %enc_synmane_type_leading_chars.exit.thread78, %enc_synmane_type_leading_chars.exit
  %.sroa.0.4.extract.trunc88 = phi i32 [ %.sroa.0.4.extract.trunc84, %enc_synmane_type_leading_chars.exit.thread78 ], [ %.sroa.0.4.extract.trunc, %enc_synmane_type_leading_chars.exit ] ; 3 uses
  %.sroa.0.4.extract.shift87 = phi i64 [ %.sroa.0.4.extract.shift83, %enc_synmane_type_leading_chars.exit.thread78 ], [ %.sroa.0.4.extract.shift, %enc_synmane_type_leading_chars.exit ]
  %i.ct = phi ptr [ %i.cr, %enc_synmane_type_leading_chars.exit.thread78 ], [ %i.cs, %enc_synmane_type_leading_chars.exit ] ; 3 uses
  %.sroa.32.0.i86 = phi i64 [ %.sroa.32.0.i.ph76, %enc_synmane_type_leading_chars.exit.thread78 ], [ %.sroa.32.0.i, %enc_synmane_type_leading_chars.exit ]
  %.not = icmp ult ptr %i.ct, %i.c
  br i1 %.not, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !15  ; 3 uses
  %.not58 = icmp eq i8 %i.cu, 95
  br i1 %.not58, label %.lr.ph.preheader, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cv = and i8 %i.cu, -33
  %i.cw = sext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -65
  %narrow.i = icmp ult i32 %i.cx, 26
  %i.cy = icmp slt i8 %i.cu, 0
  %or.cond99 = or i1 %i.cy, %narrow.i
  br i1 %or.cond99, label %.lr.ph.preheader, label %bb.al

.lr.ph.preheader:                                 ; preds = %bb.aj, %bb.ak
  br label %.lr.ph

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.cz = icmp sgt i64 %1, 1
  br i1 %i.cz, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.da = getelementptr i8, ptr %i.c, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !15
  %i.dc = icmp eq i8 %i.db, 61
  br i1 %i.dc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dd = add nsw i64 %1, -1
  %i.de = call i32 @rb_enc_symname_type(ptr noundef nonnull %0, i64 noundef %i.dd, ptr noundef nonnull %2, i32 noundef %3)
  %i.df = shl nuw nsw i32 1, %i.de
  %i.dg = and i32 %i.df, %3
  %.not66 = icmp eq i32 %i.dg, 0
  br i1 %.not66, label %bb.ao, label %enc_synmane_type_leading_chars.exit.thread91

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  br label %enc_synmane_type_leading_chars.exit.thread91

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %.051102 = phi ptr [ %i.dq, %.critedge2 ], [ %i.ct, %.lr.ph.preheader ] ; 7 uses
  %i.dh = load i8, ptr %.051102, align 1, !tbaa !15 ; 5 uses
  %i.di = and i8 %i.dh, -33
  %i.dj = add i8 %i.di, -65
  %narrow.i.i = icmp ult i8 %i.dj, 26
  %i.dk = add i8 %i.dh, -48
  %i.dl = icmp ult i8 %i.dk, 10
  %narrow.i67 = or i1 %i.dl, %narrow.i.i
  %i.dm = icmp eq i8 %i.dh, 95
  %or.cond = or i1 %i.dm, %narrow.i67
  %i.dn = icmp slt i8 %i.dh, 0
  %or.cond100 = or i1 %i.dn, %or.cond
  br i1 %or.cond100, label %.critedge2, label %bb.ap

.critedge2:                                       ; preds = %.lr.ph
  %i.do = call i32 @rb_enc_mbclen(ptr noundef nonnull %.051102, ptr noundef nonnull %i.c, ptr noundef nonnull %2) #20
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr i8, ptr %.051102, i64 %i.dp ; 3 uses
  %i.dr = icmp ult ptr %i.dq, %i.c
  br i1 %i.dr, label %.lr.ph, label %.critedge, !llvm.loop !49

bb.ap:                                            ; preds = %.lr.ph
  switch i8 %i.dh, label %.critedge [
    i8 33, label %bb.aq
    i8 63, label %bb.aq
    i8 61, label %bb.at
  ]

bb.aq:                                            ; preds = %bb.ap, %bb.ap
  %i.ds = icmp eq i64 %.sroa.0.4.extract.shift87, 12
  %i.dt = and i64 %.sroa.32.0.i86, -21474836480
  %i.du = icmp eq i64 %i.dt, 8589934592
  %or.cond5 = or i1 %i.ds, %i.du
  br i1 %or.cond5, label %enc_synmane_type_leading_chars.exit.thread91, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dv = getelementptr i8, ptr %.051102, i64 1   ; 4 uses
  %i.dw = getelementptr i8, ptr %.051102, i64 2
  %i.dx = icmp ult ptr %i.dw, %i.c
  br i1 %i.dx, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dy = load i8, ptr %i.dv, align 1, !tbaa !15
  %.not64 = icmp eq i8 %i.dy, 61
  br i1 %.not64, label %bb.at, label %.critedge

bb.at:                                            ; preds = %bb.as, %bb.ap
  %.152 = phi ptr [ %i.dv, %bb.as ], [ %.051102, %bb.ap ]
  %.0 = phi i32 [ 14, %bb.as ], [ %.sroa.0.4.extract.trunc88, %bb.ap ]
  %i.dz = shl nuw nsw i32 1, %.0
  %i.ea = and i32 %i.dz, %3
  %.not65 = icmp eq i32 %i.ea, 0
  br i1 %.not65, label %enc_synmane_type_leading_chars.exit.thread91, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eb = getelementptr i8, ptr %.152, i64 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge2, %enc_synmane_type_leading_chars.exit.thread, %bb.ap, %bb.au, %bb.as, %bb.ar, %enc_synmane_type_leading_chars.exit
  %.2 = phi ptr [ %i.cs, %enc_synmane_type_leading_chars.exit ], [ %i.cq, %enc_synmane_type_leading_chars.exit.thread ], [ %.051102, %bb.ap ], [ %i.dv, %bb.ar ], [ %i.dv, %bb.as ], [ %i.eb, %bb.au ], [ %i.dq, %.critedge2 ]
  %.1 = phi i32 [ %.sroa.0.4.extract.trunc, %enc_synmane_type_leading_chars.exit ], [ %.sroa.32.0.i.ph, %enc_synmane_type_leading_chars.exit.thread ], [ %.sroa.0.4.extract.trunc88, %bb.ap ], [ 14, %bb.ar ], [ 14, %bb.as ], [ 8, %bb.au ], [ %.sroa.0.4.extract.trunc88, %.critedge2 ]
  %i.ec = icmp eq ptr %.2, %i.c
  %i.ed = select i1 %i.ec, i32 %.1, i32 -1
  br label %enc_synmane_type_leading_chars.exit.thread91

enc_synmane_type_leading_chars.exit.thread91:     ; preds = %bb.b, %rb_enc_asciicompat.exit.i, %bb.a, %bb.n, %bb.at, %bb.aq, %bb.an, %enc_synmane_type_leading_chars.exit, %.critedge, %bb.ao
  %.050 = phi i32 [ %i.ed, %.critedge ], [ -1, %bb.aq ], [ -1, %enc_synmane_type_leading_chars.exit ], [ -1, %bb.ao ], [ 8, %bb.an ], [ -1, %bb.at ], [ -1, %bb.n ], [ -1, %bb.a ], [ -1, %rb_enc_asciicompat.exit.i ], [ -1, %bb.b ]
  ret i32 %.050
}

declare i32 @rb_enc_mbclen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 0, 2) i32 @rb_static_id_valid_p(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %0, 8
  %i.b = or disjoint i64 %i.a, 12
  %i.c = icmp ugt i64 %0, 171
  %i.d = lshr i64 %0, 4
end_hunk_0
