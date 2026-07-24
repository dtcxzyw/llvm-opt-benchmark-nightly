inline.NumInlined: 19
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@LexGetToken:bb.a
  %i.bc = load ptr, ptr @fp, align 8, !tbaa !32   ; 2 uses
  %.not260 = icmp eq ptr %i.bc, null
  br i1 %.not260, label %._crit_edge436, label %bb.r

._crit_edge436:                                   ; preds = %bb.q
  %.pr.pre = load i16, ptr @this_file, align 2, !tbaa !31
  br label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bd = call i32 @fclose(ptr noundef nonnull %i.bc) ; 0 uses
  store ptr null, ptr @fp, align 8, !tbaa !32
  %i.be = load i16, ptr @ftype, align 2, !tbaa !31
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = load i16, ptr @this_file, align 2, !tbaa !31
  %i.bh = call zeroext i16 @NextFile(i16 noundef zeroext %i.bg) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bi = phi i16 [ %i.bh, %bb.s ], [ 0, %bb.r ]  ; 2 uses
  store i16 %i.bi, ptr @this_file, align 2, !tbaa !31
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge436, %bb.t
  %.pr = phi i16 [ %.pr.pre, %._crit_edge436 ], [ %i.bi, %bb.t ] ; 2 uses
  %.not261339 = icmp eq i16 %.pr, 0
  br i1 %.not261339, label %.loopexit297, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.w
  %i.bj = phi i16 [ %i.br, %bb.w ], [ %.pr, %bb.u ] ; 2 uses
  store i16 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 2), align 2, !tbaa !41
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.bk = call ptr @OpenFile(i16 noundef zeroext %i.bj, i32 noundef 0, i32 noundef 1) #10 ; 3 uses
  store ptr %i.bk, ptr @fp, align 8, !tbaa !32
  %.not262 = icmp eq ptr %i.bk, null
  br i1 %.not262, label %bb.v, label %.thread

bb.v:                                             ; preds = %.lr.ph
  %i.bl = load i16, ptr @this_file, align 2, !tbaa !31
  %i.bm = call ptr @FullFileName(i16 noundef zeroext %i.bl) #10
  %i.bn = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 7, ptr noundef nonnull @.str.28, i32 noundef 2, ptr noundef nonnull @file_pos, ptr noundef %i.bm) #10 ; 0 uses
  %i.bo = load i16, ptr @ftype, align 2, !tbaa !31
  %i.bp = icmp eq i16 %i.bo, 0
  br i1 %i.bp, label %bb.w, label %.thread465

.thread465:                                       ; preds = %bb.v
  store i16 0, ptr @this_file, align 2, !tbaa !31
  br label %.loopexit297

bb.w:                                             ; preds = %bb.v
  %i.bq = load i16, ptr @this_file, align 2, !tbaa !31
  %i.br = call zeroext i16 @NextFile(i16 noundef zeroext %i.bq) #10 ; 3 uses
  store i16 %i.br, ptr @this_file, align 2, !tbaa !31
  %.not261 = icmp eq i16 %i.br, 0
  br i1 %.not261, label %.loopexit297, label %.lr.ph, !llvm.loop !44

.loopexit297:                                     ; preds = %bb.w, %.thread465, %bb.u, %bb.p
  %.pr277 = load ptr, ptr @fp, align 8, !tbaa !32 ; 2 uses
  %.not263 = icmp eq ptr %.pr277, null
  br i1 %.not263, label %bb.z, label %.thread

.thread:                                          ; preds = %.lr.ph, %.loopexit297
  %i.bs = phi ptr [ %.pr277, %.loopexit297 ], [ %i.bk, %.lr.ph ]
  %i.bt = load i32, ptr @offset, align 4, !tbaa !4 ; 2 uses
  %.not264 = icmp eq i32 %i.bt, 0
  br i1 %.not264, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread
  %i.bu = sext i32 %i.bt to i64
  %i.bv = call i32 @fseek(ptr noundef nonnull %i.bs, i64 noundef %i.bu, i32 noundef 0) ; 0 uses
  store i32 0, ptr @offset, align 4, !tbaa !4
  %i.bw = load i32, ptr @first_line_num, align 4, !tbaa !4
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.by = and i32 %i.bw, 1048575
  %i.bz = and i32 %i.bx, -1048576
  %i.ca = or disjoint i32 %i.bz, %i.by
  store i32 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread
  %i.cb = load ptr, ptr @buf, align 8, !tbaa !23  ; 3 uses
  store ptr %i.cb, ptr @chpt, align 8, !tbaa !23
  store ptr %i.cb, ptr @limit, align 8, !tbaa !23
  store ptr %i.cb, ptr @frst, align 8, !tbaa !23
  store i32 0, ptr @blksize, align 4, !tbaa !4
  store i8 10, ptr @last_char, align 1, !tbaa !8
  call fastcc void @srcnext()
  %i.cc = load ptr, ptr @chpt, align 8, !tbaa !23 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -1
  store ptr %i.cd, ptr @startline, align 8, !tbaa !23
  br label %.loopexit

bb.z:                                             ; preds = %.loopexit297
  %i.ce = load i16, ptr @ftype, align 2, !tbaa !31
  switch i16 %i.ce, label %bb.ad [
    i16 0, label %bb.aa
    i16 3, label %bb.aa
    i16 10, label %bb.ab
    i16 1, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.cf = load ptr, ptr @StartSym, align 8, !tbaa !35
  %i.cg = call ptr @NewToken(i8 noundef zeroext 105, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef %i.cf) #10
  %i.ch = call ptr @NewToken(i8 noundef zeroext 111, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #10
  store ptr %i.ch, ptr @next_token, align 8, !tbaa !35
  store ptr %.0187, ptr @startline, align 8, !tbaa !23
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.ci = load ptr, ptr @FilterOutSym, align 8, !tbaa !35
  %i.cj = call ptr @NewToken(i8 noundef zeroext 105, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef %i.ci) #10
  store ptr %.0187, ptr @startline, align 8, !tbaa !23
  br label %.loopexit

bb.ac:                                            ; preds = %bb.z
  call void @LexPop()
  %i.ck = load ptr, ptr @chpt, align 8, !tbaa !23
  br label %.loopexit

bb.ad:                                            ; preds = %bb.z
  %i.cl = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.cm = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %i.cl, ptr noundef nonnull @.str.29) #10 ; 0 uses
  br label %.loopexit

bb.ae:                                            ; preds = %bb.f
  %i.cn = load ptr, ptr @startline, align 8, !tbaa !23
  %i.co = ptrtoint ptr %.0187 to i64              ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.ct = shl i32 %i.cr, 20
  %i.cu = and i32 %i.cs, 1048575
  %i.cv = or disjoint i32 %i.ct, %i.cu
  store i32 %i.cv, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.2 = phi ptr [ %i.l, %bb.ae ], [ %i.cw, %bb.af ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 3 uses
  %i.cx = load i8, ptr %.2, align 1, !tbaa !8
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !8
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.af, label %bb.ag, !llvm.loop !45

bb.ag:                                            ; preds = %bb.af
  %i.dc = ptrtoint ptr %i.cw to i64
  %i.dd = xor i64 %i.co, -1
  %i.de = add i64 %i.dc, %i.dd
  %i.df = trunc i64 %i.de to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0199 = phi i32 [ %i.df, %bb.ag ], [ %i.dh, %bb.ah ] ; 3 uses
  %.3 = phi ptr [ %i.cw, %bb.ag ], [ %i.di, %bb.ah ]
  %i.dg = call ptr @SearchSym(ptr noundef nonnull %.0187, i32 noundef %.0199) #10 ; 2 uses
  %i.dh = add nsw i32 %.0199, -1
  %i.di = getelementptr inbounds i8, ptr %.3, i64 -1 ; 2 uses
  %i.dj = icmp sgt i32 %.0199, 1
  %i.dk = icmp eq ptr %i.dg, null
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %bb.ah, label %.loopexit298, !llvm.loop !46

bb.ai:                                            ; preds = %bb.f
  %i.dm = load ptr, ptr @startline, align 8, !tbaa !23
  %i.dn = ptrtoint ptr %.0187 to i64              ; 2 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.ds = shl i32 %i.dq, 20
  %i.dt = and i32 %i.dr, 1048575
  %i.du = or disjoint i32 %i.ds, %i.dt
  store i32 %i.du, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.4 = phi ptr [ %i.l, %bb.ai ], [ %i.dv, %bb.aj ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.4, i64 1
  %i.dw = load i8, ptr %.4, align 1, !tbaa !8
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !8
  %i.ea = icmp eq i8 %i.dz, 1
  br i1 %i.ea, label %bb.aj, label %bb.ak, !llvm.loop !47

bb.ak:                                            ; preds = %bb.aj
  %i.eb = ptrtoint ptr %.4 to i64
  %i.ec = sub i64 %i.eb, %i.dn
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = call ptr @SearchSym(ptr noundef nonnull %.0187, i32 noundef %i.ed) #10
  br label %.loopexit298

.loopexit298:                                     ; preds = %bb.ah, %bb.ak
  %.1194 = phi ptr [ %i.ee, %bb.ak ], [ %i.dg, %bb.ah ] ; 11 uses
  %.5 = phi ptr [ %.4, %bb.ak ], [ %i.di, %bb.ah ] ; 12 uses
  %i.ef = icmp eq ptr %.1194, null
  br i1 %i.ef, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %.loopexit298
  %.0187543.le758 = ptrtoaddr ptr %.0187 to i64
  %i.eg = ptrtoint ptr %.5 to i64                 ; 3 uses
  %i.eh = ptrtoint ptr %.0187 to i64              ; 3 uses
  %i.ei = sub i64 %i.eg, %i.eh                    ; 14 uses
  %i.ej = shl i64 %i.ei, 32
  %sext258 = add i64 %i.ej, 292057776128
  %i.ek = ashr exact i64 %sext258, 32
  %i.el = lshr i64 %i.ek, 3
  %i.em = trunc i64 %i.el to i32
  %i.en = add i32 %i.em, 1                        ; 4 uses
  store i32 %i.en, ptr @zz_size, align 4, !tbaa !4
  %i.eo = icmp ugt i32 %i.en, 264
  br i1 %i.eo, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ep = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %.pre435 = load ptr, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.eq = zext nneg i32 %i.en to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.eq ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !35 ; 4 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eu = call ptr @GetMemory(i32 noundef %i.en, ptr noundef nonnull @file_pos) #10 ; 2 uses
  store ptr %i.eu, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  store ptr %i.es, ptr @zz_hold, align 8, !tbaa !35
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !8
  store ptr %i.ev, ptr %i.er, align 8, !tbaa !35
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.am
  %i.ew = phi ptr [ %i.eu, %bb.ao ], [ %i.es, %bb.ap ], [ %.pre435, %bb.am ] ; 16 uses
  %i.ex = ptrtoaddr ptr %i.ew to i64
  %i.ey = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.ez = trunc i32 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 33
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store i8 11, ptr %i.fb, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store ptr %i.ew, ptr %i.fc, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store ptr %i.ew, ptr %i.fd, align 8, !tbaa !8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.ew, ptr %i.fe, align 8, !tbaa !8
  store ptr %i.ew, ptr %i.ew, align 8, !tbaa !8
  %i.ff = load i16, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 2), align 2, !tbaa !41
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 34
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !8
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 36
  store i32 %i.fh, ptr %i.fi, align 4
  %i.fj = icmp sgt i64 %i.ei, 0
  br i1 %i.fj, label %iter.check658, label %._crit_edge360

iter.check658:                                    ; preds = %bb.aq
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 64 ; 7 uses
  %min.iters.check644 = icmp ult i64 %i.ei, 4
  br i1 %min.iters.check644, label %vec.epilog.scalar.ph659.preheader, label %vector.memcheck642

vector.memcheck642:                               ; preds = %iter.check658
  %i.fl = sub i64 %i.ex, %.0187543.le758
  %i.fm = add i64 %i.fl, 63
  %diff.check643 = icmp ult i64 %i.fm, 31
  br i1 %diff.check643, label %vec.epilog.scalar.ph659.preheader, label %vector.main.loop.iter.check645

vector.main.loop.iter.check645:                   ; preds = %vector.memcheck642
  %min.iters.check646 = icmp ult i64 %i.ei, 32
  br i1 %min.iters.check646, label %vec.epilog.ph662, label %vector.ph647

vector.ph647:                                     ; preds = %vector.main.loop.iter.check645
  %n.mod.vf648 = and i64 %i.ei, 28
  %n.vec649 = and i64 %i.ei, 9223372036854775776  ; 4 uses
  br label %vector.body650

vector.body650:                                   ; preds = %vector.body650, %vector.ph647
  %index651 = phi i64 [ 0, %vector.ph647 ], [ %index.next654, %vector.body650 ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0187, i64 %index651 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load652 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !8
  %wide.load653 = load <16 x i8>, ptr %i.fo, align 1, !tbaa !8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index651 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <16 x i8> %wide.load652, ptr %i.fp, align 1, !tbaa !8
  store <16 x i8> %wide.load653, ptr %i.fq, align 1, !tbaa !8
  %index.next654 = add nuw i64 %index651, 32      ; 2 uses
  %i.fr = icmp eq i64 %index.next654, %n.vec649
  br i1 %i.fr, label %middle.block655, label %vector.body650, !llvm.loop !48

middle.block655:                                  ; preds = %vector.body650
  %cmp.n656 = icmp eq i64 %i.ei, %n.vec649
  br i1 %cmp.n656, label %._crit_edge360, label %vec.epilog.iter.check660

vec.epilog.iter.check660:                         ; preds = %middle.block655
  %min.epilog.iters.check661 = icmp eq i64 %n.mod.vf648, 0
  br i1 %min.epilog.iters.check661, label %vec.epilog.scalar.ph659.preheader, label %vec.epilog.ph662, !prof !51

vec.epilog.ph662:                                 ; preds = %vector.main.loop.iter.check645, %vec.epilog.iter.check660
  %vec.epilog.resume.val657 = phi i64 [ %n.vec649, %vec.epilog.iter.check660 ], [ 0, %vector.main.loop.iter.check645 ]
  %n.vec664 = and i64 %i.ei, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body665

vec.epilog.vector.body665:                        ; preds = %vec.epilog.vector.body665, %vec.epilog.ph662
  %index666 = phi i64 [ %vec.epilog.resume.val657, %vec.epilog.ph662 ], [ %index.next668, %vec.epilog.vector.body665 ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0187, i64 %index666
  %wide.load667 = load <4 x i8>, ptr %i.fs, align 1, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index666
  store <4 x i8> %wide.load667, ptr %i.ft, align 1, !tbaa !8
  %index.next668 = add nuw i64 %index666, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next668, %n.vec664
  br i1 %i.fu, label %vec.epilog.middle.block669, label %vec.epilog.vector.body665, !llvm.loop !52

vec.epilog.middle.block669:                       ; preds = %vec.epilog.vector.body665
  %cmp.n670 = icmp eq i64 %i.ei, %n.vec664
  br i1 %cmp.n670, label %._crit_edge360, label %vec.epilog.scalar.ph659.preheader

vec.epilog.scalar.ph659.preheader:                ; preds = %vector.memcheck642, %iter.check658, %vec.epilog.iter.check660, %vec.epilog.middle.block669
  %indvars.iv428.ph = phi i64 [ 0, %iter.check658 ], [ 0, %vector.memcheck642 ], [ %n.vec649, %vec.epilog.iter.check660 ], [ %n.vec664, %vec.epilog.middle.block669 ] ; 3 uses
  %i.fv = sub i64 %i.eg, %i.eh
  %xtraiter714 = and i64 %i.fv, 3                 ; 2 uses
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %vec.epilog.scalar.ph659.prol.loopexit, label %vec.epilog.scalar.ph659.prol

vec.epilog.scalar.ph659.prol:                     ; preds = %vec.epilog.scalar.ph659.preheader, %vec.epilog.scalar.ph659.prol
  %indvars.iv428.prol = phi i64 [ %indvars.iv.next429.prol, %vec.epilog.scalar.ph659.prol ], [ %indvars.iv428.ph, %vec.epilog.scalar.ph659.preheader ] ; 3 uses
  %prol.iter716 = phi i64 [ %prol.iter716.next, %vec.epilog.scalar.ph659.prol ], [ 0, %vec.epilog.scalar.ph659.preheader ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv428.prol
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv428.prol
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !8
  %indvars.iv.next429.prol = add nuw nsw i64 %indvars.iv428.prol, 1 ; 2 uses
  %prol.iter716.next = add i64 %prol.iter716, 1   ; 2 uses
  %prol.iter716.cmp.not = icmp eq i64 %prol.iter716.next, %xtraiter714
  br i1 %prol.iter716.cmp.not, label %vec.epilog.scalar.ph659.prol.loopexit, label %vec.epilog.scalar.ph659.prol, !llvm.loop !53

vec.epilog.scalar.ph659.prol.loopexit:            ; preds = %vec.epilog.scalar.ph659.prol, %vec.epilog.scalar.ph659.preheader
  %indvars.iv428.unr = phi i64 [ %indvars.iv428.ph, %vec.epilog.scalar.ph659.preheader ], [ %indvars.iv.next429.prol, %vec.epilog.scalar.ph659.prol ]
  %i.fz = sub i64 %indvars.iv428.ph, %i.eg
  %i.ga = add i64 %i.fz, %i.eh
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %._crit_edge360, label %vec.epilog.scalar.ph659

vec.epilog.scalar.ph659:                          ; preds = %vec.epilog.scalar.ph659.prol.loopexit, %vec.epilog.scalar.ph659
  %indvars.iv428 = phi i64 [ %indvars.iv.next429.3, %vec.epilog.scalar.ph659 ], [ %indvars.iv428.unr, %vec.epilog.scalar.ph659.prol.loopexit ] ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv428
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv428
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !8
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv.next429
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next429
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !8
  %indvars.iv.next429.1 = add nuw nsw i64 %indvars.iv428, 2 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv.next429.1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next429.1
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !8
  %indvars.iv.next429.2 = add nuw nsw i64 %indvars.iv428, 3 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv.next429.2
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next429.2
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !8
  %indvars.iv.next429.3 = add nuw nsw i64 %indvars.iv428, 4 ; 2 uses
  %exitcond431.not.3 = icmp eq i64 %indvars.iv.next429.3, %i.ei
  br i1 %exitcond431.not.3, label %._crit_edge360, label %vec.epilog.scalar.ph659, !llvm.loop !55

._crit_edge360:                                   ; preds = %vec.epilog.scalar.ph659.prol.loopexit, %vec.epilog.scalar.ph659, %middle.block655, %vec.epilog.middle.block669, %bb.aq
  %.lcssa = phi i64 [ 0, %bb.aq ], [ %i.ei, %middle.block655 ], [ %i.ei, %vec.epilog.middle.block669 ], [ %i.ei, %vec.epilog.scalar.ph659 ], [ %i.ei, %vec.epilog.scalar.ph659.prol.loopexit ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %.lcssa
  store i8 0, ptr %i.gp, align 1, !tbaa !8
  br label %.thread287

bb.ar:                                            ; preds = %.loopexit298
  %i.gq = getelementptr inbounds nuw i8, ptr %.1194, i64 32
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !8
  %i.gs = icmp eq i8 %i.gr, -114
  br i1 %i.gs, label %bb.as, label %bb.bd

bb.as:                                            ; preds = %bb.ar
  %i.gt = getelementptr inbounds nuw i8, ptr %.1194, i64 41
  %i.gu = load i16, ptr %i.gt, align 1
  %i.gv = and i16 %i.gu, 1024
  %.not255 = icmp eq i16 %i.gv, 0
  br i1 %.not255, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.0187543.le = ptrtoaddr ptr %.0187 to i64
  %i.gw = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 8, ptr noundef nonnull @.str.31, i32 noundef 2, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %i.gx = ptrtoint ptr %.5 to i64                 ; 3 uses
  %i.gy = ptrtoint ptr %.0187 to i64              ; 3 uses
  %i.gz = sub i64 %i.gx, %i.gy                    ; 14 uses
  %i.ha = shl i64 %i.gz, 32
  %sext257 = add i64 %i.ha, 292057776128
  %i.hb = ashr exact i64 %sext257, 32
  %i.hc = lshr i64 %i.hb, 3
  %i.hd = trunc i64 %i.hc to i32
  %i.he = add i32 %i.hd, 1                        ; 4 uses
  store i32 %i.he, ptr @zz_size, align 4, !tbaa !4
  %i.hf = icmp ugt i32 %i.he, 264
  br i1 %i.hf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hg = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %.pre434 = load ptr, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.hh = zext nneg i32 %i.he to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.hh ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !35 ; 4 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hl = call ptr @GetMemory(i32 noundef %i.he, ptr noundef nonnull @file_pos) #10 ; 2 uses
  store ptr %i.hl, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  store ptr %i.hj, ptr @zz_hold, align 8, !tbaa !35
  %i.hm = load ptr, ptr %i.hj, align 8, !tbaa !8
  store ptr %i.hm, ptr %i.hi, align 8, !tbaa !35
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.au
  %i.hn = phi ptr [ %i.hl, %bb.aw ], [ %i.hj, %bb.ax ], [ %.pre434, %bb.au ] ; 16 uses
  %i.ho = ptrtoaddr ptr %i.hn to i64
  %i.hp = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.hq = trunc i32 %i.hp to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 33
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  store i8 11, ptr %i.hs, align 8, !tbaa !8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store ptr %i.hn, ptr %i.ht, align 8, !tbaa !8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store ptr %i.hn, ptr %i.hu, align 8, !tbaa !8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store ptr %i.hn, ptr %i.hv, align 8, !tbaa !8
  store ptr %i.hn, ptr %i.hn, align 8, !tbaa !8
  %i.hw = load i16, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 2), align 2, !tbaa !41
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 34
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !8
  %i.hy = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 36
  store i32 %i.hy, ptr %i.hz, align 4
  %i.ia = icmp sgt i64 %i.gz, 0
  br i1 %i.ia, label %iter.check628, label %._crit_edge355

iter.check628:                                    ; preds = %bb.ay
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 64 ; 7 uses
  %min.iters.check614 = icmp ult i64 %i.gz, 4
  br i1 %min.iters.check614, label %vec.epilog.scalar.ph629.preheader, label %vector.memcheck612

vector.memcheck612:                               ; preds = %iter.check628
  %i.ic = sub i64 %i.ho, %.0187543.le
  %i.id = add i64 %i.ic, 63
  %diff.check613 = icmp ult i64 %i.id, 31
  br i1 %diff.check613, label %vec.epilog.scalar.ph629.preheader, label %vector.main.loop.iter.check615

vector.main.loop.iter.check615:                   ; preds = %vector.memcheck612
  %min.iters.check616 = icmp ult i64 %i.gz, 32
  br i1 %min.iters.check616, label %vec.epilog.ph632, label %vector.ph617

vector.ph617:                                     ; preds = %vector.main.loop.iter.check615
  %n.mod.vf618 = and i64 %i.gz, 28
  %n.vec619 = and i64 %i.gz, 9223372036854775776  ; 4 uses
  br label %vector.body620

vector.body620:                                   ; preds = %vector.body620, %vector.ph617
  %index621 = phi i64 [ 0, %vector.ph617 ], [ %index.next624, %vector.body620 ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0187, i64 %index621 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %wide.load622 = load <16 x i8>, ptr %i.ie, align 1, !tbaa !8
  %wide.load623 = load <16 x i8>, ptr %i.if, align 1, !tbaa !8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 %index621 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store <16 x i8> %wide.load622, ptr %i.ig, align 1, !tbaa !8
  store <16 x i8> %wide.load623, ptr %i.ih, align 1, !tbaa !8
  %index.next624 = add nuw i64 %index621, 32      ; 2 uses
  %i.ii = icmp eq i64 %index.next624, %n.vec619
  br i1 %i.ii, label %middle.block625, label %vector.body620, !llvm.loop !56

middle.block625:                                  ; preds = %vector.body620
  %cmp.n626 = icmp eq i64 %i.gz, %n.vec619
  br i1 %cmp.n626, label %._crit_edge355, label %vec.epilog.iter.check630

vec.epilog.iter.check630:                         ; preds = %middle.block625
  %min.epilog.iters.check631 = icmp eq i64 %n.mod.vf618, 0
  br i1 %min.epilog.iters.check631, label %vec.epilog.scalar.ph629.preheader, label %vec.epilog.ph632, !prof !51

vec.epilog.ph632:                                 ; preds = %vector.main.loop.iter.check615, %vec.epilog.iter.check630
  %vec.epilog.resume.val627 = phi i64 [ %n.vec619, %vec.epilog.iter.check630 ], [ 0, %vector.main.loop.iter.check615 ]
  %n.vec634 = and i64 %i.gz, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body635

vec.epilog.vector.body635:                        ; preds = %vec.epilog.vector.body635, %vec.epilog.ph632
  %index636 = phi i64 [ %vec.epilog.resume.val627, %vec.epilog.ph632 ], [ %index.next638, %vec.epilog.vector.body635 ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.0187, i64 %index636
  %wide.load637 = load <4 x i8>, ptr %i.ij, align 1, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 %index636
  store <4 x i8> %wide.load637, ptr %i.ik, align 1, !tbaa !8
  %index.next638 = add nuw i64 %index636, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next638, %n.vec634
  br i1 %i.il, label %vec.epilog.middle.block639, label %vec.epilog.vector.body635, !llvm.loop !57

vec.epilog.middle.block639:                       ; preds = %vec.epilog.vector.body635
  %cmp.n640 = icmp eq i64 %i.gz, %n.vec634
  br i1 %cmp.n640, label %._crit_edge355, label %vec.epilog.scalar.ph629.preheader

vec.epilog.scalar.ph629.preheader:                ; preds = %vector.memcheck612, %iter.check628, %vec.epilog.iter.check630, %vec.epilog.middle.block639
  %indvars.iv419.ph = phi i64 [ 0, %iter.check628 ], [ 0, %vector.memcheck612 ], [ %n.vec619, %vec.epilog.iter.check630 ], [ %n.vec634, %vec.epilog.middle.block639 ] ; 3 uses
  %i.im = sub i64 %i.gx, %i.gy
  %xtraiter = and i64 %i.im, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph629.prol.loopexit, label %vec.epilog.scalar.ph629.prol

vec.epilog.scalar.ph629.prol:                     ; preds = %vec.epilog.scalar.ph629.preheader, %vec.epilog.scalar.ph629.prol
  %indvars.iv419.prol = phi i64 [ %indvars.iv.next420.prol, %vec.epilog.scalar.ph629.prol ], [ %indvars.iv419.ph, %vec.epilog.scalar.ph629.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph629.prol ], [ 0, %vec.epilog.scalar.ph629.preheader ]
  %i.in = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv419.prol
  %i.io = load i8, ptr %i.in, align 1, !tbaa !8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv419.prol
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !8
  %indvars.iv.next420.prol = add nuw nsw i64 %indvars.iv419.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph629.prol.loopexit, label %vec.epilog.scalar.ph629.prol, !llvm.loop !58

vec.epilog.scalar.ph629.prol.loopexit:            ; preds = %vec.epilog.scalar.ph629.prol, %vec.epilog.scalar.ph629.preheader
  %indvars.iv419.unr = phi i64 [ %indvars.iv419.ph, %vec.epilog.scalar.ph629.preheader ], [ %indvars.iv.next420.prol, %vec.epilog.scalar.ph629.prol ]
  %i.iq = sub i64 %indvars.iv419.ph, %i.gx
  %i.ir = add i64 %i.iq, %i.gy
  %i.is = icmp ugt i64 %i.ir, -4
  br i1 %i.is, label %._crit_edge355, label %vec.epilog.scalar.ph629

vec.epilog.scalar.ph629:                          ; preds = %vec.epilog.scalar.ph629.prol.loopexit, %vec.epilog.scalar.ph629
  %indvars.iv419 = phi i64 [ %indvars.iv.next420.3, %vec.epilog.scalar.ph629 ], [ %indvars.iv419.unr, %vec.epilog.scalar.ph629.prol.loopexit ] ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv419
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv419
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !8
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv.next420
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.next420
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !8
  %indvars.iv.next420.1 = add nuw nsw i64 %indvars.iv419, 2 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv.next420.1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.next420.1
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !8
  %indvars.iv.next420.2 = add nuw nsw i64 %indvars.iv419, 3 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv.next420.2
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !8
  %i.je = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.next420.2
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !8
  %indvars.iv.next420.3 = add nuw nsw i64 %indvars.iv419, 4 ; 2 uses
  %exitcond422.not.3 = icmp eq i64 %indvars.iv.next420.3, %i.gz
  br i1 %exitcond422.not.3, label %._crit_edge355, label %vec.epilog.scalar.ph629, !llvm.loop !59

._crit_edge355:                                   ; preds = %vec.epilog.scalar.ph629.prol.loopexit, %vec.epilog.scalar.ph629, %middle.block625, %vec.epilog.middle.block639, %bb.ay
  %.lcssa299 = phi i64 [ 0, %bb.ay ], [ %i.gz, %middle.block625 ], [ %i.gz, %vec.epilog.middle.block639 ], [ %i.gz, %vec.epilog.scalar.ph629 ], [ %i.gz, %vec.epilog.scalar.ph629.prol.loopexit ]
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.lcssa299
  store i8 0, ptr %i.jg, align 1, !tbaa !8
  br label %.thread287

bb.az:                                            ; preds = %bb.as
  %i.jh = getelementptr inbounds nuw i8, ptr %.1194, i64 56
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !8
  %i.jj = call ptr @CopyTokenList(ptr noundef %i.ji, ptr noundef nonnull @file_pos) #10 ; 8 uses
  %.not256 = icmp eq ptr %i.jj, null
  br i1 %.not256, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr %i.jj, ptr @zz_hold, align 8, !tbaa !35
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !8  ; 5 uses
  %i.jm = icmp eq ptr %i.jl, %i.jj
  br i1 %i.jm, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.jl, ptr @zz_res, align 8, !tbaa !35
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !8  ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  store ptr %i.jl, ptr %i.jq, align 8, !tbaa !8
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !8
  store ptr %i.jj, ptr %i.jn, align 8, !tbaa !8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.jr = phi ptr [ %i.jl, %bb.bb ], [ null, %bb.ba ]
  store ptr %i.jr, ptr @next_token, align 8, !tbaa !35
  br label %.thread287

bb.bd:                                            ; preds = %bb.ar
  %i.js = getelementptr inbounds nuw i8, ptr %.1194, i64 120 ; 2 uses
  %i.jt = load i16, ptr %i.js, align 8, !tbaa !8  ; 2 uses
  switch i16 %i.jt, label %bb.bt [
    i16 0, label %bb.be
    i16 112, label %bb.bf
    i16 113, label %bb.bf
    i16 105, label %bb.bs
  ]

bb.be:                                            ; preds = %bb.bd
  %i.ju = getelementptr inbounds nuw i8, ptr %.1194, i64 40
  %i.jv = load i8, ptr %i.ju, align 8, !tbaa !8
  %i.jw = call ptr @NewToken(i8 noundef zeroext 2, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %i.jv, ptr noundef nonnull %.1194) #10
  br label %.loopexit

bb.bf:                                            ; preds = %bb.bd, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr %.5, ptr @chpt, align 8, !tbaa !23
  %i.jx = call ptr @LexGetToken()                 ; 4 uses
  store ptr %i.jx, ptr %i.a, align 8, !tbaa !35
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32 ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 8, !tbaa !8
  switch i8 %i.jz, label %.tail.thread [
    i8 11, label %sub_0
    i8 102, label %.thread281
  ]

sub_0:                                            ; preds = %bb.bf
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 64
  %i.kb = load i8, ptr %i.ka, align 8
  %.not362 = icmp eq i8 %i.kb, 123
  br i1 %.not362, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 65
  %i.kd = load i8, ptr %i.kc, align 1
  %i.ke = icmp eq i8 %i.kd, 0
  br i1 %i.ke, label %bb.bg, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %bb.bf, %.tail
  %i.kf = call ptr @SymName(ptr noundef nonnull %.1194) #10
  %i.kg = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 9, ptr noundef nonnull @.str.33, i32 noundef 2, ptr noundef nonnull %i.jy, ptr noundef nonnull @.str.32, ptr noundef %i.kf) #10 ; 0 uses
  %i.kh = load ptr, ptr %i.a, align 8, !tbaa !35  ; 4 uses
  store ptr %i.kh, ptr @zz_hold, align 8, !tbaa !35
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kj = load i8, ptr %i.ki, align 8, !tbaa !8   ; 2 uses
  %.off = add i8 %i.kj, -11
  %switch = icmp ult i8 %.off, 2
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 33
  %i.kl = zext i8 %i.kj to i64
  %i.km = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.kl
  %.in.in = select i1 %switch, ptr %i.kk, ptr %i.km
  %.in = load i8, ptr %.in.in, align 1, !tbaa !8  ; 2 uses
  %i.kn = zext i8 %.in to i32
  store i32 %i.kn, ptr @zz_size, align 4, !tbaa !4
  %i.ko = zext i8 %.in to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !35
  store ptr %i.kq, ptr %i.kh, align 8, !tbaa !8
  %i.kr = load ptr, ptr @zz_hold, align 8, !tbaa !35
  %i.ks = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.kt
  store ptr %i.kr, ptr %i.ku, align 8, !tbaa !35
  br label %bb.br

bb.bg:                                            ; preds = %.tail
  call void @UnSuppressScope() #10
  %i.kv = load ptr, ptr %i.a, align 8, !tbaa !35  ; 4 uses
  store ptr %i.kv, ptr @zz_hold, align 8, !tbaa !35
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kx = load i8, ptr %i.kw, align 8, !tbaa !8   ; 2 uses
  %.off267 = add i8 %i.kx, -11
  %switch268 = icmp ult i8 %.off267, 2
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 33
  %i.kz = zext i8 %i.kx to i64
  %i.la = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.kz
  %.in252.in = select i1 %switch268, ptr %i.ky, ptr %i.la
  %.in252 = load i8, ptr %.in252.in, align 1, !tbaa !8 ; 2 uses
  %i.lb = zext i8 %.in252 to i32
  store i32 %i.lb, ptr @zz_size, align 4, !tbaa !4
  %i.lc = zext i8 %.in252 to i64
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !35
  store ptr %i.le, ptr %i.kv, align 8, !tbaa !8
  %i.lf = load ptr, ptr @zz_hold, align 8, !tbaa !35
  %i.lg = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.lh
  store ptr %i.lf, ptr %i.li, align 8, !tbaa !35
  %i.lj = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 102), align 1, !tbaa !8 ; 2 uses
  %i.lk = zext i8 %i.lj to i32                    ; 2 uses
  store i32 %i.lk, ptr @zz_size, align 4, !tbaa !4
  %i.ll = zext i8 %i.lj to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ll ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !35 ; 4 uses
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lp = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.lq = call ptr @GetMemory(i32 noundef %i.lk, ptr noundef %i.lp) #10 ; 2 uses
  store ptr %i.lq, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  store ptr %i.ln, ptr @zz_hold, align 8, !tbaa !35
  %i.lr = load ptr, ptr %i.ln, align 8, !tbaa !8
  store ptr %i.lr, ptr %i.lm, align 8, !tbaa !35
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.ls = phi ptr [ %i.lq, %bb.bh ], [ %i.ln, %bb.bi ] ; 10 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  store i8 102, ptr %i.lt, align 8, !tbaa !8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  store ptr %i.ls, ptr %i.lu, align 8, !tbaa !8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store ptr %i.ls, ptr %i.lv, align 8, !tbaa !8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr %i.ls, ptr %i.lw, align 8, !tbaa !8
  store ptr %i.ls, ptr %i.ls, align 8, !tbaa !8
  store ptr %i.ls, ptr %i.a, align 8, !tbaa !35
  br label %.thread281

.thread281:                                       ; preds = %bb.bf, %bb.bj
  %i.lx = phi i1 [ false, %bb.bf ], [ true, %bb.bj ]
  %i.ly = call ptr @Parse(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %i.lz = call ptr @ReplaceWithTidy(ptr noundef %i.ly, i32 noundef 0) #10 ; 8 uses
  br i1 %i.lx, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread281
  call void @SuppressScope() #10
end_hunk_0
