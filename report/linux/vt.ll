Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vt?download=true
inline.NumInlined: 364
inline.NumDeleted: 106
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 24
begin_hunk_0_@redraw_screen:bb.a

bb.j:                                             ; preds = %bb.i
  tail call void asm sideeffect "622: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 622b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 622) #26, !srcloc !32
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 4368, i32 2305, i64 16) #26, !srcloc !33
  tail call void asm sideeffect "623: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 623b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 623) #26, !srcloc !34
  br label %con_is_visible.exit53

con_is_visible.exit53:                            ; preds = %con_is_visible.exit, %bb.i, %bb.j
  %i.t = getelementptr i8, ptr %i.g, i64 776
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = icmp eq ptr %i.v, %i.g
  br i1 %i.w, label %bb.o, label %bb.k

bb.k:                                             ; preds = %con_is_visible.exit53
  %i.x = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %.not.i54 = icmp eq i32 %i.x, 0
  br i1 %.not.i54, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.y = tail call i32 @is_console_locked() #25
  %.not5.i55 = icmp eq i32 %i.y, 0
  %i.z = load i32, ptr @oops_in_progress, align 4
  %.not6.i = icmp eq i32 %i.z, 0
  %or.cond.i56 = select i1 %.not5.i55, i1 %.not6.i, i1 false, !prof !24
  br i1 %or.cond.i56, label %bb.m, label %.critedge.i, !prof !24

bb.m:                                             ; preds = %bb.l
  tail call void asm sideeffect "517: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 517b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 517) #26, !srcloc !39
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 917, i32 2305, i64 16) #26, !srcloc !40
  tail call void asm sideeffect "518: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 518b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 518) #26, !srcloc !41
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.m, %bb.l, %bb.k
  %i.aa = getelementptr i8, ptr %i.g, i64 456
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not7.i = icmp eq ptr %i.ad, null
  br i1 %.not7.i, label %save_screen.exit, label %bb.n

bb.n:                                             ; preds = %.critedge.i
  tail call void %i.ad(ptr noundef %i.g) #25, !inline_history !7
  br label %save_screen.exit

save_screen.exit:                                 ; preds = %.critedge.i, %bb.n
  tail call fastcc void @set_origin(ptr noundef %i.g) #28, !srcloc !85
  br label %bb.o

bb.o:                                             ; preds = %save_screen.exit, %con_is_visible.exit53
  %i.ae = load ptr, ptr @tty0dev, align 8         ; 2 uses
  %.not42 = icmp eq ptr %i.ae, null
  br i1 %.not42, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @sysfs_notify(ptr noundef nonnull %i.ae, ptr noundef null, ptr noundef nonnull @.str.2) #25
  br label %bb.q

.thread:                                          ; preds = %bb.d
  tail call fastcc void @hide_cursor(ptr noundef nonnull %0) #28, !srcloc !86
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not68, label %do_update_region.exit, label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q
  %i.af = getelementptr i8, ptr %0, i64 664       ; 2 uses
  %i.ag = load i16, ptr %i.af, align 8
  tail call fastcc void @set_origin(ptr noundef nonnull %0) #28, !srcloc !87
  %i.ah = getelementptr i8, ptr %0, i64 456       ; 4 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call zeroext i1 %i.ak(ptr noundef nonnull %0) #25
  %i.am = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %.not.i57 = icmp eq i32 %i.am, 0
  br i1 %.not.i57, label %bb.s, label %.critedge.i58

bb.s:                                             ; preds = %bb.r
  %i.an = tail call i32 @is_console_locked() #25
  %.not6.i59 = icmp eq i32 %i.an, 0
  %i.ao = load i32, ptr @oops_in_progress, align 4
  %.not7.i60 = icmp eq i32 %i.ao, 0
  %or.cond.i61 = select i1 %.not6.i59, i1 %.not7.i60, i1 false, !prof !24
  br i1 %or.cond.i61, label %bb.t, label %.critedge.i58, !prof !24

bb.t:                                             ; preds = %bb.s
  tail call void asm sideeffect "649: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 649b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 649) #26, !srcloc !42
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 4824, i32 2305, i64 16) #26, !srcloc !43
  tail call void asm sideeffect "650: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 650b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 650) #26, !srcloc !44
  br label %.critedge.i58

.critedge.i58:                                    ; preds = %bb.t, %bb.s, %bb.r
  %i.ap = getelementptr i8, ptr %0, i64 476       ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4
  %.not8.i = icmp eq i8 %i.aq, 1
  br i1 %.not8.i, label %set_palette.exit, label %bb.u

bb.u:                                             ; preds = %.critedge.i58
  %i.ar = load ptr, ptr %i.ah, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 120
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not9.i = icmp eq ptr %i.at, null
  br i1 %.not9.i, label %set_palette.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void %i.at(ptr noundef nonnull %0, ptr noundef nonnull @color_table) #25, !inline_history !45
  br label %set_palette.exit

set_palette.exit:                                 ; preds = %.critedge.i58, %bb.u, %bb.v
  %i.au = load i16, ptr %i.af, align 8
  %i.av = xor i16 %i.au, %i.ag
  %i.aw = and i16 %i.av, 2048
  %.not45 = icmp eq i16 %i.aw, 0
  br i1 %.not45, label %clear_buffer_attributes.exit, label %bb.w

bb.w:                                             ; preds = %set_palette.exit
  tail call fastcc void @update_attr(ptr noundef nonnull %0) #28, !srcloc !88
  %i.ax = getelementptr i8, ptr %0, i64 472
  %i.ay = load i32, ptr %i.ax, align 8            ; 2 uses
  %i.az = lshr i32 %i.ay, 1                       ; 4 uses
  %i.ba = getelementptr i8, ptr %0, i64 504
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = or i16 %i.bb, 255                       ; 4 uses
  %.not.i62 = icmp eq i32 %i.az, 0
  br i1 %.not.i62, label %clear_buffer_attributes.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w
  %i.bd = getelementptr i8, ptr %0, i64 424
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = inttoptr i64 %i.be to ptr               ; 4 uses
  %i.bg = getelementptr i8, ptr %0, i64 536       ; 3 uses
  %i.bh = xor i16 %i.bc, -1                       ; 3 uses
  %i.bi = and i32 %i.ay, 2
  %lcmp.mod.not = icmp eq i32 %i.bi, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.bj = load i16, ptr %i.bf, align 2
  %i.bk = and i16 %i.bj, %i.bc
  %i.bl = load i16, ptr %i.bg, align 8
  %i.bm = and i16 %i.bl, %i.bh
  %i.bn = or i16 %i.bm, %i.bk
  store i16 %i.bn, ptr %i.bf, align 2
  %i.bo = add nsw i32 %i.az, -1
  %i.bp = getelementptr i8, ptr %i.bf, i64 2
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %.012.i.unr = phi i32 [ %i.az, %.lr.ph.i ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %.01011.i.unr = phi ptr [ %i.bf, %.lr.ph.i ], [ %i.bp, %.prol.loopexit.unr-lcssa ]
  %i.bq = icmp eq i32 %i.az, 1
  br i1 %i.bq, label %clear_buffer_attributes.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %.012.i = phi i32 [ %i.cc, %.lr.ph.i.new ], [ %.012.i.unr, %.prol.loopexit ] ; 2 uses
  %.01011.i = phi ptr [ %i.cd, %.lr.ph.i.new ], [ %.01011.i.unr, %.prol.loopexit ] ; 4 uses
  %i.br = load i16, ptr %.01011.i, align 2
  %i.bs = and i16 %i.br, %i.bc
  %i.bt = load i16, ptr %i.bg, align 8
  %i.bu = and i16 %i.bt, %i.bh
  %i.bv = or i16 %i.bu, %i.bs
  store i16 %i.bv, ptr %.01011.i, align 2
  %i.bw = getelementptr i8, ptr %.01011.i, i64 2  ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2
  %i.by = and i16 %i.bx, %i.bc
  %i.bz = load i16, ptr %i.bg, align 8
  %i.ca = and i16 %i.bz, %i.bh
  %i.cb = or i16 %i.ca, %i.by
  store i16 %i.cb, ptr %i.bw, align 2
  %i.cc = add nsw i32 %.012.i, -2
  %i.cd = getelementptr i8, ptr %.01011.i, i64 4
  %i.ce = icmp sgt i32 %.012.i, 2
  br i1 %i.ce, label %.lr.ph.i.new, label %clear_buffer_attributes.exit, !llvm.loop !6

clear_buffer_attributes.exit:                     ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.w, %set_palette.exit
  br i1 %i.al, label %bb.x, label %do_update_region.exit

bb.x:                                             ; preds = %clear_buffer_attributes.exit
  %i.cf = load i8, ptr %i.ap, align 4
  %.not46 = icmp eq i8 %i.cf, 1
  br i1 %.not46, label %do_update_region.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr i8, ptr %0, i64 472
  %i.ch = load i32, ptr %i.cg, align 8
  %i.ci = lshr i32 %i.ch, 1                       ; 2 uses
  %i.cj = getelementptr i8, ptr %0, i64 404       ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 4            ; 2 uses
  %i.cl = icmp ne i32 %i.ci, 0                    ; 2 uses
  %i.cm = icmp ne i32 %i.ck, 0
  %i.cn = select i1 %i.cm, i1 %i.cl, i1 false
  br i1 %i.cn, label %.outer.i.split.us.preheader, label %.outer.i.split

.outer.i.split.us.preheader:                      ; preds = %bb.y
  %i.co = getelementptr i8, ptr %0, i64 424
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = inttoptr i64 %i.cp to ptr
  br label %.outer.i.split.us

.outer.i.split:                                   ; preds = %bb.y
  br i1 %i.cl, label %._crit_edge.thread.i.preheader, label %do_update_region.exit

._crit_edge.thread.i.preheader:                   ; preds = %.outer.backedge.i, %.outer.i.split
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.thread.i.preheader, %._crit_edge.thread.i
  br label %._crit_edge.thread.i

.outer.i.split.us:                                ; preds = %.outer.i.split.us.preheader, %.outer.backedge.i
  %i.cr = phi i32 [ %i.dy, %.outer.backedge.i ], [ %i.ck, %.outer.i.split.us.preheader ] ; 3 uses
  %.046.ph.i78 = phi ptr [ %i.dj, %.outer.backedge.i ], [ %i.cq, %.outer.i.split.us.preheader ] ; 3 uses
  %.048.ph.i77 = phi i32 [ %.048.ph.be.i, %.outer.backedge.i ], [ 0, %.outer.i.split.us.preheader ] ; 3 uses
  %.052.ph.i76 = phi i32 [ %i.dl, %.outer.backedge.i ], [ %i.ci, %.outer.i.split.us.preheader ]
  %i.cs = load i16, ptr %.046.ph.i78, align 2
  %i.ct = and i16 %i.cs, -256
  br label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %bb.ab, %.outer.i.split.us
  %i.cu = phi i32 [ %i.dh, %bb.ab ], [ %i.cr, %.outer.i.split.us ] ; 2 uses
  %.pre6768.i = phi i32 [ %.pre6769.i, %bb.ab ], [ %i.cr, %.outer.i.split.us ] ; 3 uses
  %i.cv = phi i32 [ %i.di, %bb.ab ], [ %i.cr, %.outer.i.split.us ]
  %.04159.i = phi ptr [ %.1.i, %bb.ab ], [ %.046.ph.i78, %.outer.i.split.us ] ; 4 uses
  %.04258.i = phi i32 [ %.143.i, %bb.ab ], [ 0, %.outer.i.split.us ] ; 2 uses
  %.04457.i = phi i16 [ %.145.i, %bb.ab ], [ %i.ct, %.outer.i.split.us ] ; 2 uses
  %.14756.i = phi ptr [ %i.dj, %bb.ab ], [ %.046.ph.i78, %.outer.i.split.us ] ; 7 uses
  %.15155.i = phi i32 [ %i.dk, %bb.ab ], [ 0, %.outer.i.split.us ] ; 3 uses
  %.15354.i = phi i32 [ %i.dl, %bb.ab ], [ %.052.ph.i76, %.outer.i.split.us ]
  %i.cw = load i16, ptr %.14756.i, align 2
  %i.cx = and i16 %i.cw, -256                     ; 2 uses
  %.not.i64 = icmp eq i16 %.04457.i, %i.cx
  br i1 %.not.i64, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i63
  %i.cy = icmp ugt ptr %.14756.i, %.04159.i
  br i1 %i.cy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cz = load ptr, ptr %i.ah, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = ptrtoint ptr %.14756.i to i64
  %i.dd = ptrtoint ptr %.04159.i to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = lshr exact i64 %i.de, 1
  %i.dg = trunc i64 %i.df to i32
  tail call void %i.db(ptr noundef nonnull %0, ptr noundef %.04159.i, i32 noundef %i.dg, i32 noundef %.048.ph.i77, i32 noundef %.04258.i) #25, !inline_history !36
  %.pre.i = load i16, ptr %.14756.i, align 2
  %.pre67.pre.i = load i32, ptr %i.cj, align 4    ; 3 uses
  %.pre71.i = and i16 %.pre.i, -256
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.lr.ph.i63
  %i.dh = phi i32 [ %i.cu, %.lr.ph.i63 ], [ %.pre67.pre.i, %bb.aa ], [ %i.cu, %bb.z ] ; 2 uses
  %.pre6769.i = phi i32 [ %.pre6768.i, %.lr.ph.i63 ], [ %.pre67.pre.i, %bb.aa ], [ %.pre6768.i, %bb.z ]
  %i.di = phi i32 [ %i.cv, %.lr.ph.i63 ], [ %.pre67.pre.i, %bb.aa ], [ %.pre6768.i, %bb.z ] ; 2 uses
  %.145.i = phi i16 [ %.04457.i, %.lr.ph.i63 ], [ %.pre71.i, %bb.aa ], [ %i.cx, %bb.z ]
  %.143.i = phi i32 [ %.04258.i, %.lr.ph.i63 ], [ %.15155.i, %bb.aa ], [ %.15155.i, %bb.z ] ; 2 uses
  %.1.i = phi ptr [ %.04159.i, %.lr.ph.i63 ], [ %.14756.i, %bb.aa ], [ %.14756.i, %bb.z ] ; 4 uses
  %i.dj = getelementptr i8, ptr %.14756.i, i64 2  ; 4 uses
  %i.dk = add nuw i32 %.15155.i, 1                ; 2 uses
  %i.dl = add nsw i32 %.15354.i, -1               ; 3 uses
  %i.dm = icmp ult i32 %i.dk, %i.di
  %i.dn = icmp ne i32 %i.dl, 0                    ; 4 uses
  %i.do = select i1 %i.dm, i1 %i.dn, i1 false
  br i1 %i.do, label %.lr.ph.i63, label %._crit_edge.i, !llvm.loop !3

._crit_edge.i:                                    ; preds = %bb.ab
  %i.dp = icmp ugt ptr %i.dj, %.1.i
  br i1 %i.dp, label %.split.i, label %bb.ac

.split.i:                                         ; preds = %._crit_edge.i
  %i.dq = load ptr, ptr %i.ah, align 8
  %i.dr = getelementptr i8, ptr %i.dq, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = ptrtoint ptr %i.dj to i64
  %i.du = ptrtoint ptr %.1.i to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = lshr exact i64 %i.dv, 1
  %i.dx = trunc i64 %i.dw to i32
  tail call void %i.ds(ptr noundef nonnull %0, ptr noundef %.1.i, i32 noundef %i.dx, i32 noundef %.048.ph.i77, i32 noundef %.143.i) #25, !inline_history !36
  br i1 %i.dn, label %.split.i..outer.backedge.i_crit_edge, label %do_update_region.exit

.split.i..outer.backedge.i_crit_edge:             ; preds = %.split.i
  %.pre = load i32, ptr %i.cj, align 4
  br label %.outer.backedge.i

bb.ac:                                            ; preds = %._crit_edge.i
  br i1 %i.dn, label %.outer.backedge.i, label %do_update_region.exit

.outer.backedge.i:                                ; preds = %.split.i..outer.backedge.i_crit_edge, %bb.ac
  %i.dy = phi i32 [ %.pre, %.split.i..outer.backedge.i_crit_edge ], [ %i.dh, %bb.ac ] ; 2 uses
  %.048.ph.be.i = add i32 %.048.ph.i77, 1
  %i.dz = icmp ne i32 %i.dy, 0
  %i.ea = select i1 %i.dz, i1 %i.dn, i1 false
  br i1 %i.ea, label %.outer.i.split.us, label %._crit_edge.thread.i.preheader

do_update_region.exit:                            ; preds = %bb.ac, %.split.i, %.outer.i.split, %clear_buffer_attributes.exit, %bb.x, %bb.q
  %i.eb = getelementptr i8, ptr %0, i64 400
  %.val.i = load i16, ptr %i.eb, align 8
  %i.ec = zext i16 %.val.i to i32
  %i.ed = load i32, ptr @fg_console, align 4
  %i.ee = icmp eq i32 %i.ed, %i.ec
  %i.ef = load i32, ptr @console_blanked, align 4
  %i.eg = icmp eq i32 %i.ef, 0
  %or.cond.not.i = select i1 %i.ee, i1 %i.eg, i1 false
  br i1 %or.cond.not.i, label %bb.ad, label %set_cursor.exit

bb.ad:                                            ; preds = %do_update_region.exit
  %i.eh = getelementptr i8, ptr %0, i64 476
  %i.ei = load i8, ptr %i.eh, align 4
  %i.ej = icmp eq i8 %i.ei, 1
  br i1 %i.ej, label %set_cursor.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ek = getelementptr i8, ptr %0, i64 664
  %i.el = load i16, ptr %i.ek, align 8
  %i.em = and i16 %i.el, 32
  %.not.i65 = icmp eq i16 %i.em, 0
  br i1 %.not.i65, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.en = tail call zeroext i1 @vc_is_sel(ptr noundef nonnull %0) #25
  br i1 %i.en, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void @clear_selection() #25
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  tail call fastcc void @add_softcursor(ptr noundef nonnull %0) #28, !srcloc !37
  %i.eo = getelementptr i8, ptr %0, i64 484
  %i.ep = load i32, ptr %i.eo, align 4
  %i.eq = and i32 %i.ep, 15
  %.not11.i = icmp eq i32 %i.eq, 1
  br i1 %.not11.i, label %set_cursor.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr i8, ptr %0, i64 456
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = getelementptr i8, ptr %i.es, i64 56
  %i.eu = load ptr, ptr %i.et, align 8
  tail call void %i.eu(ptr noundef nonnull %0, i1 noundef zeroext true) #25, !inline_history !4
  br label %set_cursor.exit

bb.aj:                                            ; preds = %bb.ae
  tail call fastcc void @hide_cursor(ptr noundef nonnull %0) #28, !srcloc !38
  br label %set_cursor.exit

set_cursor.exit:                                  ; preds = %do_update_region.exit, %bb.ad, %bb.ah, %bb.ai, %bb.aj
  br i1 %.not41, label %.critedge48, label %bb.ak

bb.ak:                                            ; preds = %set_cursor.exit
  tail call void @vt_set_leds_compute_shiftstate() #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %0, ptr %2, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.ew, align 4
  %i.ex = call i32 @atomic_notifier_call_chain(ptr noundef nonnull @vt_notifier_list, i64 noundef 4, ptr noundef nonnull %2) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %.critedge48

.critedge48:                                      ; preds = %bb.e, %set_cursor.exit, %bb.ak, %.critedge
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @con_is_visible(ptr nofree noundef readonly captures(address) %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @is_console_locked() #25
  %.not4 = icmp eq i32 %i.b, 0
  %i.c = load i32, ptr @oops_in_progress, align 4
  %.not5 = icmp eq i32 %i.c, 0
  %or.cond = select i1 %.not4, i1 %.not5, i1 false, !prof !24
  br i1 %or.cond, label %bb.c, label %.critedge, !prof !24

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "622: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 622b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 622) #26, !srcloc !32
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 4368, i32 2305, i64 16) #26, !srcloc !33
  tail call void asm sideeffect "623: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 623b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 623) #26, !srcloc !34
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.d = getelementptr i8, ptr %0, i64 776
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.f, %0
  ret i1 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @set_origin(ptr noundef %0) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @is_console_locked() #25
  %.not18 = icmp eq i32 %i.b, 0
  %i.c = load i32, ptr @oops_in_progress, align 4
  %.not19 = icmp eq i32 %i.c, 0
  %or.cond = select i1 %.not18, i1 %.not19, i1 false, !prof !24
  br i1 %or.cond, label %bb.c, label %.critedge, !prof !24

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "515: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 515b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 515) #26, !srcloc !89
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 903, i32 2305, i64 16) #26, !srcloc !90
  tail call void asm sideeffect "516: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 516b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 516) #26, !srcloc !91
  br label %.critedge

end_hunk_0
begin_hunk_1_@csi_DEC_hl:bb.a
  %i.fq = load i32, ptr %i.u, align 8             ; 2 uses
  %i.fr = load ptr, ptr %i.x, align 8             ; 4 uses
  br i1 %.not81.i, label %.preheader.i.i, label %.lr.ph.i59.i

.lr.ph.i59.i:                                     ; preds = %.preheader27.i.i
  %i.fs = zext i32 %i.cn to i64                   ; 2 uses
  %i.ft = shl nuw nsw i64 %i.fs, 2                ; 4 uses
  %.not26.i.i = icmp eq i32 %i.fp, %i.cn
  %i.fu = sub i32 %i.fp, %i.cn
  %i.fv = zext i32 %i.fu to i64
  %zext86.i = zext i32 %i.ck to i64               ; 3 uses
  br i1 %.not26.i.i, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i59.i
  %xtraiter90 = and i64 %zext86.i, 1
  %i.fw = icmp eq i32 %i.ck, 1
  br i1 %i.fw, label %.lr.ph.split.us.i.i.epil.preheader, label %.lr.ph.split.us.i.i.preheader.new

.lr.ph.split.us.i.i.preheader.new:                ; preds = %.lr.ph.split.us.i.i.preheader
  %unroll_iter94 = and i64 %zext86.i, 4294967294
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i, %.lr.ph.split.us.i.i.preheader.new
  %indvars.iv41.i.i = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader.new ], [ %indvars.iv.next42.i.i.1, %.lr.ph.split.us.i.i ] ; 4 uses
  %niter95 = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader.new ], [ %niter95.next.1, %.lr.ph.split.us.i.i ]
  %i.fx = getelementptr [8 x i8], ptr %i.fr, i64 %indvars.iv41.i.i
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = getelementptr [8 x i8], ptr %i.ek, i64 %indvars.iv41.i.i
  %i.ga = load ptr, ptr %i.fz, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ga, ptr align 4 %i.fy, i64 %i.ft, i1 false)
  %indvars.iv.next42.i.i = or disjoint i64 %indvars.iv41.i.i, 1 ; 2 uses
  %i.gb = getelementptr [8 x i8], ptr %i.fr, i64 %indvars.iv.next42.i.i
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = getelementptr [8 x i8], ptr %i.ek, i64 %indvars.iv.next42.i.i
  %i.ge = load ptr, ptr %i.gd, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ge, ptr align 4 %i.gc, i64 %i.ft, i1 false)
  %indvars.iv.next42.i.i.1 = add nuw nsw i64 %indvars.iv41.i.i, 2 ; 2 uses
  %niter95.next.1 = add i64 %niter95, 2           ; 2 uses
  %niter95.ncmp.1 = icmp eq i64 %niter95.next.1, %unroll_iter94
  br i1 %niter95.ncmp.1, label %.preheader.i.i.loopexit.unr-lcssa, label %.lr.ph.split.us.i.i, !llvm.loop !9

.preheader.i.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.i.i
  %lcmp.mod92.not = icmp eq i64 %xtraiter90, 0
  br i1 %lcmp.mod92.not, label %.preheader.i.i, label %.lr.ph.split.us.i.i.epil.preheader

.lr.ph.split.us.i.i.epil.preheader:               ; preds = %.preheader.i.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.i.preheader
  %indvars.iv41.i.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.i.preheader ], [ %indvars.iv.next42.i.i.1, %.preheader.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i32 %i.ck to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.gf = getelementptr [8 x i8], ptr %i.fr, i64 %indvars.iv41.i.i.epil.init
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr [8 x i8], ptr %i.ek, i64 %indvars.iv41.i.i.epil.init
  %i.gi = load ptr, ptr %i.gh, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gi, ptr align 4 %i.gg, i64 %i.ft, i1 false)
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i.epil.preheader, %.preheader.i.i.loopexit.unr-lcssa, %.preheader27.i.i
  %i.gj = icmp ult i32 %i.ck, %i.fq
  br i1 %i.gj, label %.lr.ph31.i.i, label %vc_uniscr_copy_area.exit.i

.lr.ph31.i.i:                                     ; preds = %.preheader.i.i
  %i.gk = zext i32 %i.fp to i64
  %i.gl = zext i32 %i.ck to i64
  br label %bb.ac

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i59.i, %.lr.ph.split.i.i
  %indvars.iv34.i.i = phi i64 [ %indvars.iv.next35.i.i, %.lr.ph.split.i.i ], [ 0, %.lr.ph.i59.i ] ; 3 uses
  %i.gm = getelementptr [8 x i8], ptr %i.fr, i64 %indvars.iv34.i.i
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = getelementptr [8 x i8], ptr %i.ek, i64 %indvars.iv34.i.i
  %i.gp = load ptr, ptr %i.go, align 8            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gp, ptr align 4 %i.gn, i64 %i.ft, i1 false)
  %i.gq = getelementptr [4 x i8], ptr %i.gp, i64 %i.fs
  %i.gr = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32, ptr %i.gq, i64 range(i64 0, 4294967296) %i.fv) #26, !srcloc !49 ; 0 uses
  %indvars.iv.next35.i.i = add nuw nsw i64 %indvars.iv34.i.i, 1 ; 2 uses
  %i.gs = icmp eq i64 %indvars.iv.next35.i.i, %zext86.i
  br i1 %i.gs, label %.preheader.i.i, label %.lr.ph.split.i.i, !llvm.loop !9

bb.ac:                                            ; preds = %bb.ac, %.lr.ph31.i.i
  %indvars.iv48.i.i = phi i64 [ %i.gl, %.lr.ph31.i.i ], [ %indvars.iv.next49.i.i, %bb.ac ] ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.ek, i64 %indvars.iv48.i.i
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = tail call { ptr, i64 } asm sideeffect "rep stosl", "={di},={cx},{ax},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 32, ptr %i.gu, i64 range(i64 0, 4294967296) %i.gk) #26, !srcloc !49 ; 0 uses
  %indvars.iv.next49.i.i = add nuw nsw i64 %indvars.iv48.i.i, 1 ; 2 uses
  %lftr.wideiv51.i.i = trunc i64 %indvars.iv.next49.i.i to i32
  %exitcond52.not.i.i = icmp eq i32 %i.fq, %lftr.wideiv51.i.i
  br i1 %exitcond52.not.i.i, label %vc_uniscr_copy_area.exit.i, label %bb.ac, !llvm.loop !10

vc_uniscr_copy_area.exit.i:                       ; preds = %bb.ac, %.preheader.i.i, %vc_uniscr_alloc.exit.i
  %i.gw = load ptr, ptr %i.x, align 8
  tail call void @vfree(ptr noundef %i.gw) #25
  store ptr %i.ek, ptr %i.x, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %vc_uniscr_copy_area.exit.i, %bb.y, %._crit_edge.i
  %i.gx = phi ptr [ %i.ek, %vc_uniscr_copy_area.exit.i ], [ %i.de, %bb.y ], [ null, %._crit_edge.i ]
  %i.gy = load ptr, ptr %i.y, align 8
  tail call void @vfree(ptr noundef %i.gy) #25
  store ptr %i.gx, ptr %i.y, align 8
  store ptr null, ptr %i.x, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(20) %i.l, ptr noundef align 4 dereferenceable(20) %i.z, i64 20, i1 false)
  %i.gz = load i32, ptr %i.l, align 8             ; 3 uses
  %i.ha = load i32, ptr %i.n, align 4             ; 3 uses
  %i.hb = icmp slt i32 %i.gz, 0
  br i1 %i.hb, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hc = load i32, ptr %i.k, align 4             ; 2 uses
  %.not.i.i.i = icmp ult i32 %i.gz, %i.hc
  %i.hd = add nsw i32 %i.hc, -1
  %spec.select.i.i.i = select i1 %.not.i.i.i, i32 %i.gz, i32 %i.hd
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  store i32 %.sink.i.i.i, ptr %i.l, align 8
  %i.he = load i16, ptr %i.c, align 8             ; 2 uses
  %i.hf = and i16 %i.he, 8
  %.not31.i.i.i = icmp eq i16 %i.hf, 0
  br i1 %.not31.i.i.i, label %restore_cur.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hg = load i32, ptr %i.m, align 8
  br label %restore_cur.exit.i

restore_cur.exit.i:                               ; preds = %bb.ag, %bb.af
  %.sink37.i.i.i = phi i64 [ 452, %bb.ag ], [ 408, %bb.af ]
  %.027.i.i.i = phi i32 [ %i.hg, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.hh = getelementptr i8, ptr %0, i64 %.sink37.i.i.i
  %.0.i.i.i = load i32, ptr %i.hh, align 4        ; 2 uses
  %i.hi = icmp slt i32 %i.ha, %.027.i.i.i
  %.not32.i.i.i = icmp slt i32 %i.ha, %.0.i.i.i
  %i.hj = add i32 %.0.i.i.i, -1
  %spec.select40.i.i.i = select i1 %.not32.i.i.i, i32 %i.ha, i32 %i.hj
  %.sink38.i.i.i = select i1 %i.hi, i32 %.027.i.i.i, i32 %spec.select40.i.i.i ; 2 uses
  store i32 %.sink38.i.i.i, ptr %i.n, align 4
  %i.hk = load i64, ptr %i.o, align 8
  %i.hl = load i32, ptr %i.p, align 4
  %i.hm = mul i32 %i.hl, %.sink38.i.i.i
  %i.hn = zext i32 %i.hm to i64
  %i.ho = shl i32 %.sink.i.i.i, 1
  %i.hp = zext i32 %i.ho to i64
  %i.hq = add i64 %i.hk, %i.hp
  %i.hr = add i64 %i.hq, %i.hn
  store i64 %i.hr, ptr %i.q, align 8
  %i.hs = and i16 %i.he, -1025
  store i16 %i.hs, ptr %i.c, align 8
  %i.ht = load i8, ptr %i.ab, align 1
  %i.hu = and i8 %i.ht, 1
  %i.hv = zext nneg i8 %i.hu to i64
  %i.hw = getelementptr i8, ptr %i.aa, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = zext i8 %i.hx to i32
  %i.hz = tail call ptr @set_translate(i32 noundef %i.hy, ptr noundef %0) #25
  store ptr %i.hz, ptr %i.ac, align 8
  tail call fastcc void @update_attr(ptr noundef %0) #28, !srcloc !57
  %i.ia = load i16, ptr %i.c, align 8
  %i.ib = and i16 %i.ia, -1025
  store i16 %i.ib, ptr %i.c, align 8
  %i.ic = load volatile i32, ptr @ignore_console_lock_warning, align 4
  %.not.i.i63.i = icmp eq i32 %i.ic, 0
  br i1 %.not.i.i63.i, label %bb.ah, label %con_should_update.exit.i

bb.ah:                                            ; preds = %restore_cur.exit.i
  %i.id = tail call i32 @is_console_locked() #25
  %.not4.i.i.i = icmp eq i32 %i.id, 0
  %i.ie = load i32, ptr @oops_in_progress, align 4
  %.not5.i.i.i = icmp eq i32 %i.ie, 0
  %or.cond.i.i.i = select i1 %.not4.i.i.i, i1 %.not5.i.i.i, i1 false, !prof !24
  br i1 %or.cond.i.i.i, label %bb.ai, label %con_should_update.exit.i, !prof !24

bb.ai:                                            ; preds = %bb.ah
  tail call void asm sideeffect "622: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 622b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 622) #26, !srcloc !32
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 4368, i32 2305, i64 16) #26, !srcloc !33
  tail call void asm sideeffect "623: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 623b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 623) #26, !srcloc !34
  br label %con_should_update.exit.i

con_should_update.exit.i:                         ; preds = %bb.ai, %bb.ah, %restore_cur.exit.i
  %i.if = load ptr, ptr %i.ad, align 8
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = icmp eq ptr %i.ig, %0
  %i.ii = load i32, ptr @console_blanked, align 4
  %.not.i64.i = icmp eq i32 %i.ii, 0
  %i.ij = select i1 %i.ih, i1 %.not.i64.i, i1 false
  br i1 %i.ij, label %bb.aj, label %do_update_region.exit.i

bb.aj:                                            ; preds = %con_should_update.exit.i
  %i.ik = load i32, ptr %i.s, align 8
  %i.il = lshr i32 %i.ik, 1                       ; 2 uses
  %i.im = load i32, ptr %i.k, align 4             ; 2 uses
  %i.in = icmp ne i32 %i.il, 0                    ; 2 uses
  %i.io = icmp ne i32 %i.im, 0
  %i.ip = select i1 %i.io, i1 %i.in, i1 false
  br i1 %i.ip, label %.outer.i.split.us.preheader.i, label %.outer.i.split.i

.outer.i.split.us.preheader.i:                    ; preds = %bb.aj
  %i.iq = load i64, ptr %i.o, align 8
  %i.ir = inttoptr i64 %i.iq to ptr
  br label %.outer.i.split.us.i

.outer.i.split.i:                                 ; preds = %bb.aj
  br i1 %i.in, label %._crit_edge.thread.i.i.preheader, label %do_update_region.exit.i

._crit_edge.thread.i.i.preheader:                 ; preds = %.outer.i.split.i, %.outer.backedge.i.i
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.thread.i.i.preheader, %._crit_edge.thread.i.i
  br label %._crit_edge.thread.i.i

.outer.i.split.us.i:                              ; preds = %.outer.backedge.i.i, %.outer.i.split.us.preheader.i
  %i.is = phi i32 [ %i.jz, %.outer.backedge.i.i ], [ %i.im, %.outer.i.split.us.preheader.i ] ; 3 uses
  %.046.ph.i79.i = phi ptr [ %i.jk, %.outer.backedge.i.i ], [ %i.ir, %.outer.i.split.us.preheader.i ] ; 3 uses
  %.048.ph.i78.i = phi i32 [ %.048.ph.be.i.i, %.outer.backedge.i.i ], [ 0, %.outer.i.split.us.preheader.i ] ; 3 uses
  %.052.ph.i77.i = phi i32 [ %i.jm, %.outer.backedge.i.i ], [ %i.il, %.outer.i.split.us.preheader.i ]
  %i.it = load i16, ptr %.046.ph.i79.i, align 2
  %i.iu = and i16 %i.it, -256
  br label %.lr.ph.i65.i

.lr.ph.i65.i:                                     ; preds = %bb.am, %.outer.i.split.us.i
  %i.iv = phi i32 [ %i.ji, %bb.am ], [ %i.is, %.outer.i.split.us.i ] ; 2 uses
  %.pre6768.i.i = phi i32 [ %.pre6769.i.i, %bb.am ], [ %i.is, %.outer.i.split.us.i ] ; 3 uses
  %i.iw = phi i32 [ %i.jj, %bb.am ], [ %i.is, %.outer.i.split.us.i ]
  %.04159.i.i = phi ptr [ %.1.i.i, %bb.am ], [ %.046.ph.i79.i, %.outer.i.split.us.i ] ; 4 uses
  %.04258.i.i = phi i32 [ %.143.i.i, %bb.am ], [ 0, %.outer.i.split.us.i ] ; 2 uses
  %.04457.i.i = phi i16 [ %.145.i.i, %bb.am ], [ %i.iu, %.outer.i.split.us.i ] ; 2 uses
  %.14756.i.i = phi ptr [ %i.jk, %bb.am ], [ %.046.ph.i79.i, %.outer.i.split.us.i ] ; 7 uses
  %.15155.i.i = phi i32 [ %i.jl, %bb.am ], [ 0, %.outer.i.split.us.i ] ; 3 uses
  %.15354.i.i = phi i32 [ %i.jm, %bb.am ], [ %.052.ph.i77.i, %.outer.i.split.us.i ]
  %i.ix = load i16, ptr %.14756.i.i, align 2
  %i.iy = and i16 %i.ix, -256                     ; 2 uses
  %.not.i66.i = icmp eq i16 %.04457.i.i, %i.iy
  br i1 %.not.i66.i, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i65.i
  %i.iz = icmp ugt ptr %.14756.i.i, %.04159.i.i
  br i1 %i.iz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ja = load ptr, ptr %i.ae, align 8
  %i.jb = getelementptr i8, ptr %i.ja, i64 48
  %i.jc = load ptr, ptr %i.jb, align 8
  %i.jd = ptrtoint ptr %.14756.i.i to i64
  %i.je = ptrtoint ptr %.04159.i.i to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = lshr exact i64 %i.jf, 1
  %i.jh = trunc i64 %i.jg to i32
  tail call void %i.jc(ptr noundef %0, ptr noundef %.04159.i.i, i32 noundef %i.jh, i32 noundef %.048.ph.i78.i, i32 noundef %.04258.i.i) #25, !inline_history !236
  %.pre.i.i = load i16, ptr %.14756.i.i, align 2
  %.pre67.pre.i.i = load i32, ptr %i.k, align 4   ; 3 uses
  %.pre71.i.i = and i16 %.pre.i.i, -256
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.lr.ph.i65.i
  %i.ji = phi i32 [ %i.iv, %.lr.ph.i65.i ], [ %.pre67.pre.i.i, %bb.al ], [ %i.iv, %bb.ak ] ; 2 uses
  %.pre6769.i.i = phi i32 [ %.pre6768.i.i, %.lr.ph.i65.i ], [ %.pre67.pre.i.i, %bb.al ], [ %.pre6768.i.i, %bb.ak ]
  %i.jj = phi i32 [ %i.iw, %.lr.ph.i65.i ], [ %.pre67.pre.i.i, %bb.al ], [ %.pre6768.i.i, %bb.ak ] ; 2 uses
  %.145.i.i = phi i16 [ %.04457.i.i, %.lr.ph.i65.i ], [ %.pre71.i.i, %bb.al ], [ %i.iy, %bb.ak ]
  %.143.i.i = phi i32 [ %.04258.i.i, %.lr.ph.i65.i ], [ %.15155.i.i, %bb.al ], [ %.15155.i.i, %bb.ak ] ; 2 uses
  %.1.i.i = phi ptr [ %.04159.i.i, %.lr.ph.i65.i ], [ %.14756.i.i, %bb.al ], [ %.14756.i.i, %bb.ak ] ; 4 uses
  %i.jk = getelementptr i8, ptr %.14756.i.i, i64 2 ; 4 uses
  %i.jl = add nuw i32 %.15155.i.i, 1              ; 2 uses
  %i.jm = add nsw i32 %.15354.i.i, -1             ; 3 uses
  %i.jn = icmp ult i32 %i.jl, %i.jj
  %i.jo = icmp ne i32 %i.jm, 0                    ; 4 uses
  %i.jp = select i1 %i.jn, i1 %i.jo, i1 false
  br i1 %i.jp, label %.lr.ph.i65.i, label %._crit_edge.i.i, !llvm.loop !3

._crit_edge.i.i:                                  ; preds = %bb.am
  %i.jq = icmp ugt ptr %i.jk, %.1.i.i
  br i1 %i.jq, label %.split.i.i, label %bb.an

.split.i.i:                                       ; preds = %._crit_edge.i.i
  %i.jr = load ptr, ptr %i.ae, align 8
  %i.js = getelementptr i8, ptr %i.jr, i64 48
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = ptrtoint ptr %i.jk to i64
  %i.jv = ptrtoint ptr %.1.i.i to i64
  %i.jw = sub i64 %i.ju, %i.jv
  %i.jx = lshr exact i64 %i.jw, 1
  %i.jy = trunc i64 %i.jx to i32
  tail call void %i.jt(ptr noundef %0, ptr noundef %.1.i.i, i32 noundef %i.jy, i32 noundef %.048.ph.i78.i, i32 noundef %.143.i.i) #25, !inline_history !236
  br i1 %i.jo, label %.split.i..outer.backedge.i_crit_edge.i, label %do_update_region.exit.i

.split.i..outer.backedge.i_crit_edge.i:           ; preds = %.split.i.i
  %.pre87.i = load i32, ptr %i.k, align 4
  br label %.outer.backedge.i.i

bb.an:                                            ; preds = %._crit_edge.i.i
  br i1 %i.jo, label %.outer.backedge.i.i, label %do_update_region.exit.i

.outer.backedge.i.i:                              ; preds = %bb.an, %.split.i..outer.backedge.i_crit_edge.i
  %i.jz = phi i32 [ %.pre87.i, %.split.i..outer.backedge.i_crit_edge.i ], [ %i.ji, %bb.an ] ; 2 uses
  %.048.ph.be.i.i = add i32 %.048.ph.i78.i, 1
  %i.ka = icmp ne i32 %i.jz, 0
  %i.kb = select i1 %i.ka, i1 %i.jo, i1 false
  br i1 %i.kb, label %.outer.i.split.us.i, label %._crit_edge.thread.i.i.preheader

do_update_region.exit.i:                          ; preds = %bb.an, %.split.i.i, %.outer.i.split.i, %con_should_update.exit.i
  %i.kc = load ptr, ptr %i.w, align 8
  tail call void @kfree(ptr noundef %i.kc) #25
  store ptr null, ptr %i.w, align 8
  br label %enter_alt_screen.exit

enter_alt_screen.exit:                            ; preds = %do_update_region.exit.i, %bb.v, %bb.u, %bb.t, %bb.s, %bb.b, %gotoxay.exit, %bb.j, %bb.n, %bb.o, %bb.p, %bb.q, %bb.e, %bb.d, %bb.g, %bb.f, %bb.m, %bb.l
  %i.kd = add i32 %.046, 1                        ; 2 uses
  %i.ke = load i32, ptr %i.a, align 8
  %.not = icmp ugt i32 %i.kd, %i.ke
  br i1 %.not, label %bb.ao, label %bb.b, !llvm.loop !237

bb.ao:                                            ; preds = %enter_alt_screen.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @status_report(ptr %.24.val) unnamed_addr #22 align 16 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1
  %i.b = call i64 @__tty_insert_flip_string_flags(ptr noundef %.24.val, ptr noundef nonnull @status_report.teminal_ok, ptr noundef nonnull %i.a, i1 noundef zeroext false, i64 noundef range(i64 -2147483648, 2147483648) 4) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @tty_flip_buffer_push(ptr noundef %.24.val) #25
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @cursor_report(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [40 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  %i.c = getelementptr i8, ptr %0, i64 364
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %0, i64 664
  %i.f = load i16, ptr %i.e, align 8
  %i.g = and i16 %i.f, 8
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 448
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add i32 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ %i.j, %bb.b ], [ 1, %bb.a ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.b, i8 0, i64 40, i1 false), !annotation !48
  %i.l = getelementptr i8, ptr %0, i64 360
  %i.m = add i32 %i.k, %i.d
  %i.n = load i32, ptr %i.l, align 8
  %i.o = add i32 %i.n, 1
  %i.p = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %i.m, i32 noundef %i.o) #25
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 0, ptr %i.a, align 1
  %i.t = call i64 @__tty_insert_flip_string_flags(ptr noundef %i.s, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i1 noundef zeroext false, i64 noundef range(i64 -2147483648, 2147483648) %i.q) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @tty_flip_buffer_push(ptr noundef %i.s) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite)
define internal fastcc void @gotoxay(ptr nofree noundef captures(none) initializes((360, 364)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 664        ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 8
  %.not = icmp eq i16 %i.c, 0                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 448
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.e, %2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ %2, %bb.a ]   ; 3 uses
  %i.h = icmp slt i32 %1, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 404
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not.i = icmp ult i32 %1, %i.j
  %i.k = add nsw i32 %i.j, -1
  %spec.select.i = select i1 %.not.i, i32 %1, i32 %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi i32 [ %spec.select.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 360
  store i32 %.sink.i, ptr %i.l, align 8
  br i1 %.not, label %gotoxy.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 448
  %i.n = load i32, ptr %i.m, align 8
  br label %gotoxy.exit

gotoxy.exit:                                      ; preds = %bb.e, %bb.f
  %.sink37.i = phi i64 [ 452, %bb.f ], [ 408, %bb.e ]
  %.027.i = phi i32 [ %i.n, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 %.sink37.i
  %.0.i = load i32, ptr %i.o, align 4             ; 2 uses
  %i.p = icmp slt i32 %i.g, %.027.i
  %.not32.i = icmp slt i32 %i.g, %.0.i
  %i.q = add i32 %.0.i, -1
  %spec.select40.i = select i1 %.not32.i, i32 %i.g, i32 %i.q
  %.sink38.i = select i1 %i.p, i32 %.027.i, i32 %spec.select40.i ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 364
  store i32 %.sink38.i, ptr %i.r, align 4
  %i.s = getelementptr i8, ptr %0, i64 424
  %i.t = load i64, ptr %i.s, align 8
end_hunk_1
