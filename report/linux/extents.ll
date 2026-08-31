Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/extents?download=true
inline.NumInlined: 711
inline.NumDeleted: 166
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ext4_ext_insert_extent:bb.a
  %.val198 = load i16, ptr %i.ct, align 2
  %.val199 = load i32, ptr %i.cu, align 4
  store i32 %.val199, ptr %i.db, align 4
  store i16 %.val198, ptr %i.da, align 2
  %i.dp = xor i16 %.1153.val205, -32768
  %i.dq = select i1 %i.do, i16 %.1153.val205, i16 %i.dp
  %.val200 = load i16, ptr %i.d, align 4          ; 3 uses
  %i.dr = icmp ult i16 %.val200, -32767
  %i.ds = xor i16 %.val200, -32768
  %i.dt = select i1 %i.dr, i16 %.val200, i16 %i.ds
  %i.du = add i16 %i.dt, %i.dq                    ; 3 uses
  store i16 %i.du, ptr %i.ch, align 4
  br i1 %i.do, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dv = and i16 %i.du, 32767
  %i.dw = icmp eq i16 %i.dv, 0
  br i1 %i.dw, label %bb.aa, label %ext4_ext_mark_unwritten.exit226, !prof !12

bb.aa:                                            ; preds = %bb.z
  tail call void asm sideeffect "645: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 645b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 645) #15, !srcloc !45
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.22, i32 193, i32 0, i64 16) #15, !srcloc !46
  unreachable

ext4_ext_mark_unwritten.exit226:                  ; preds = %bb.z
  %i.dx = or i16 %i.du, -32768
  store i16 %i.dx, ptr %i.ch, align 4
  br label %.thread

ext4_can_extents_be_merged.exit221.thread:        ; preds = %.ext4_can_extents_be_merged.exit221.thread_crit_edge, %bb.u, %bb.t, %ext4_can_extents_be_merged.exit.thread, %ext4_can_extents_be_merged.exit221
  %i.dy = phi i16 [ %.pre387, %.ext4_can_extents_be_merged.exit221.thread_crit_edge ], [ %i.v, %bb.u ], [ %i.v, %bb.t ], [ %i.v, %ext4_can_extents_be_merged.exit.thread ], [ %i.v, %ext4_can_extents_be_merged.exit221 ] ; 2 uses
  %i.dz = getelementptr i8, ptr %i.p, i64 4
  %i.ea = load i16, ptr %i.dz, align 4
  %i.eb = icmp ult i16 %i.dy, %i.ea
  br i1 %i.eb, label %ext4_free_ext_path.exit.thread272, label %bb.ab

bb.ab:                                            ; preds = %ext4_can_extents_be_merged.exit221.thread
  %i.ec = zext i16 %i.dy to i64
  %i.ed = getelementptr [12 x i8], ptr %i.p, i64 %i.ec
  %i.ee = load i32, ptr %3, align 4
  %i.ef = load i32, ptr %i.ed, align 4
  %i.eg = icmp ugt i32 %i.ee, %i.ef
  br i1 %i.eg, label %bb.ac, label %ext4_ext_next_leaf_block.exit.thread

bb.ac:                                            ; preds = %bb.ab
  %i.eh = icmp eq ptr %2, null
  br i1 %i.eh, label %bb.ad, label %bb.ae, !prof !12

bb.ad:                                            ; preds = %bb.ac
  tail call void asm sideeffect "1495: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1495b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1495) #15, !srcloc !47
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1676, i32 0, i64 16) #15, !srcloc !48
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ei = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.ej = load i16, ptr %i.ei, align 8            ; 2 uses
  %i.ek = icmp eq i16 %i.ej, 0
  br i1 %i.ek, label %ext4_ext_next_leaf_block.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.el = zext i16 %i.ej to i64
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ah
  %i.em = icmp sgt i64 %indvars.iv.i535, 1
  br i1 %i.em, label %bb.ah, label %ext4_ext_next_leaf_block.exit.thread, !llvm.loop !49

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %indvars.iv.i535 = phi i64 [ %i.el, %bb.af ], [ %indvars.iv.next.i, %bb.ag ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i535, -1 ; 2 uses
  %i.en = getelementptr [48 x i8], ptr %2, i64 %indvars.iv.next.i ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.eq = getelementptr i8, ptr %i.en, i64 32
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = getelementptr i8, ptr %i.er, i64 2
  %i.et = load i16, ptr %i.es, align 2
  %i.eu = zext i16 %i.et to i64
  %i.ev = getelementptr [12 x i8], ptr %i.er, i64 %i.eu
  %.not.i227 = icmp eq ptr %i.ep, %i.ev
  br i1 %.not.i227, label %bb.ag, label %ext4_ext_next_leaf_block.exit, !llvm.loop !49

ext4_ext_next_leaf_block.exit:                    ; preds = %bb.ah
  %i.ew = getelementptr i8, ptr %i.ep, i64 12
  %i.ex = load i32, ptr %i.ew, align 4            ; 2 uses
  %.not184 = icmp eq i32 %i.ex, -1
  br i1 %.not184, label %ext4_ext_next_leaf_block.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %ext4_ext_next_leaf_block.exit
  %i.ey = tail call ptr @ext4_find_extent(ptr noundef %1, i32 noundef %i.ex, ptr noundef null, i32 noundef %4) #16 ; 9 uses
  %i.ez = icmp ugt ptr %i.ey, inttoptr (i64 -4096 to ptr)
  br i1 %i.ez, label %ext4_free_ext_path.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fa = getelementptr i8, ptr %i.ey, i64 8
  %i.fb = load i16, ptr %i.fa, align 8            ; 3 uses
  %i.fc = load i16, ptr %i.ei, align 8
  %.not185 = icmp eq i16 %i.fb, %i.fc
  br i1 %.not185, label %bb.al, label %bb.ak, !prof !20

bb.ak:                                            ; preds = %bb.aj
  tail call void asm sideeffect "1500: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1500b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1500) #15, !srcloc !50
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 2115, i32 0, i64 16) #15, !srcloc !51
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fd = getelementptr [48 x i8], ptr %i.ey, i64 %i.k
  %i.fe = getelementptr i8, ptr %i.fd, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8            ; 4 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 2
  %i.fh = load i16, ptr %i.fg, align 2
  %i.fi = getelementptr i8, ptr %i.ff, i64 4
  %i.fj = load i16, ptr %i.fi, align 4
  %i.fk = icmp ult i16 %i.fh, %i.fj
  br i1 %i.fk, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.fl = icmp ugt ptr %2, inttoptr (i64 -4096 to ptr)
  br i1 %i.fl, label %ext4_free_ext_path.exit.thread272, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fm = zext i16 %i.fb to i32
  br label %bb.ao

bb.ao:                                            ; preds = %ext4_ext_path_brelse.exit.i.i, %bb.an
  %.08.i.i = phi i32 [ 0, %bb.an ], [ %i.fp, %ext4_ext_path_brelse.exit.i.i ] ; 2 uses
  %.067.i.i = phi ptr [ %2, %bb.an ], [ %i.fq, %ext4_ext_path_brelse.exit.i.i ] ; 2 uses
  %i.fn = getelementptr i8, ptr %.067.i.i, i64 40 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fo, null
  br i1 %.not.i.i.i.i, label %ext4_ext_path_brelse.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @__brelse(ptr noundef nonnull %i.fo) #14
  br label %ext4_ext_path_brelse.exit.i.i

ext4_ext_path_brelse.exit.i.i:                    ; preds = %bb.ap, %bb.ao
  store ptr null, ptr %i.fn, align 8
  %i.fp = add nuw nsw i32 %.08.i.i, 1
  %i.fq = getelementptr i8, ptr %.067.i.i, i64 48
  %exitcond.not.i.i = icmp eq i32 %.08.i.i, %i.fm
  br i1 %exitcond.not.i.i, label %ext4_ext_drop_refs.exit.i, label %bb.ao, !llvm.loop !10

ext4_ext_drop_refs.exit.i:                        ; preds = %ext4_ext_path_brelse.exit.i.i
  tail call void @kfree(ptr noundef nonnull %2) #14
  br label %ext4_free_ext_path.exit.thread272

bb.aq:                                            ; preds = %bb.al
  %.not.i.i228 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i228, label %ext4_ext_next_leaf_block.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fr = zext i16 %i.fb to i32
  br label %bb.as

bb.as:                                            ; preds = %ext4_ext_path_brelse.exit.i.i233, %bb.ar
  %.08.i.i230 = phi i32 [ 0, %bb.ar ], [ %i.fu, %ext4_ext_path_brelse.exit.i.i233 ] ; 2 uses
  %.067.i.i231 = phi ptr [ %i.ey, %bb.ar ], [ %i.fv, %ext4_ext_path_brelse.exit.i.i233 ] ; 2 uses
  %i.fs = getelementptr i8, ptr %.067.i.i231, i64 40 ; 2 uses
  %i.ft = load ptr, ptr %i.fs, align 8            ; 2 uses
  %.not.i.i.i.i232 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i232, label %ext4_ext_path_brelse.exit.i.i233, label %bb.at

bb.at:                                            ; preds = %bb.as
  tail call void @__brelse(ptr noundef nonnull %i.ft) #14
  br label %ext4_ext_path_brelse.exit.i.i233

ext4_ext_path_brelse.exit.i.i233:                 ; preds = %bb.at, %bb.as
  store ptr null, ptr %i.fs, align 8
  %i.fu = add nuw nsw i32 %.08.i.i230, 1
  %i.fv = getelementptr i8, ptr %.067.i.i231, i64 48
  %exitcond.not.i.i234 = icmp eq i32 %.08.i.i230, %i.fr
  br i1 %exitcond.not.i.i234, label %ext4_ext_drop_refs.exit.i235, label %bb.as, !llvm.loop !10

ext4_ext_drop_refs.exit.i235:                     ; preds = %ext4_ext_path_brelse.exit.i.i233
  tail call void @kfree(ptr noundef nonnull %i.ey) #14
  br label %ext4_ext_next_leaf_block.exit.thread

ext4_free_ext_path.exit:                          ; preds = %bb.ai
  %i.fw = ptrtoint ptr %i.ey to i64
  %i.fx = trunc i64 %i.fw to i32
  br label %ext4_ext_get_access.exit

ext4_ext_next_leaf_block.exit.thread:             ; preds = %bb.ag, %ext4_ext_drop_refs.exit.i235, %bb.aq, %bb.ae, %bb.ab, %ext4_ext_next_leaf_block.exit
  %spec.select193 = and i32 %i.c, 9216            ; 4 uses
  %i.fy = load i32, ptr %3, align 4               ; 2 uses
  %i.fz = getelementptr i8, ptr %1, i64 40        ; 18 uses
  %i.ga = getelementptr i8, ptr %1, i64 -216      ; 2 uses
  %i.gb = getelementptr i8, ptr %1, i64 -212      ; 2 uses
  %i.gc = or disjoint i32 %spec.select193, 512
  %i.gd = getelementptr i8, ptr %1, i64 -232
  %i.ge = getelementptr i8, ptr %1, i64 808       ; 3 uses
  %i.gf = getelementptr i8, ptr %1, i64 -230
  %i.gg = getelementptr i8, ptr %1, i64 -228
  %.val49.pre.i = load i16, ptr %i.j, align 2
  br label %bb.au

bb.au:                                            ; preds = %bb.df, %ext4_ext_next_leaf_block.exit.thread
  %.val49.i = phi i16 [ %.val49.pre.i, %ext4_ext_next_leaf_block.exit.thread ], [ %.val.i239, %bb.df ] ; 5 uses
  %.044.i = phi ptr [ %2, %ext4_ext_next_leaf_block.exit.thread ], [ %i.sw, %bb.df ] ; 13 uses
  %i.gh = zext i16 %.val49.i to i32               ; 3 uses
  %i.gi = zext i16 %.val49.i to i64               ; 3 uses
  %i.gj = getelementptr [48 x i8], ptr %.044.i, i64 %i.gi ; 6 uses
  %.not71120.i = icmp eq i16 %.val49.i, 0         ; 2 uses
  br i1 %.not71120.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.au, %bb.av
  %.041122.i = phi i32 [ %i.gq, %bb.av ], [ %i.gh, %bb.au ] ; 2 uses
  %.042121.i = phi ptr [ %i.gr, %bb.av ], [ %i.gj, %bb.au ] ; 3 uses
  %i.gk = getelementptr i8, ptr %.042121.i, i64 32
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 2
  %i.gn = load i16, ptr %i.gm, align 2
  %i.go = getelementptr i8, ptr %i.gl, i64 4
  %i.gp = load i16, ptr %i.go, align 4
  %.not.i237 = icmp ult i16 %i.gn, %i.gp
  br i1 %.not.i237, label %.critedge.i, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i
  %i.gq = add nsw i32 %.041122.i, -1              ; 2 uses
  %i.gr = getelementptr i8, ptr %.042121.i, i64 -48 ; 2 uses
  %.not71.i = icmp eq i32 %i.gq, 0
  br i1 %.not71.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !52

.critedge.i:                                      ; preds = %bb.av, %.lr.ph.i, %bb.au
  %.042.lcssa.i = phi ptr [ %i.gj, %bb.au ], [ %.042121.i, %.lr.ph.i ], [ %i.gr, %bb.av ]
  %.041.lcssa.i = phi i32 [ 0, %bb.au ], [ %.041122.i, %.lr.ph.i ], [ 0, %bb.av ] ; 2 uses
  %i.gs = getelementptr i8, ptr %.042.lcssa.i, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8            ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 2
  %i.gv = load i16, ptr %i.gu, align 2
  %i.gw = getelementptr i8, ptr %i.gt, i64 4
  %i.gx = load i16, ptr %i.gw, align 4
  %i.gy = icmp ult i16 %i.gv, %i.gx
  br i1 %i.gy, label %bb.aw, label %bb.cp

bb.aw:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4
  %i.gz = getelementptr i8, ptr %i.gj, i64 16     ; 3 uses
  %i.ha = load ptr, ptr %i.gz, align 8            ; 3 uses
  %i.hb = getelementptr i8, ptr %i.gj, i64 32     ; 3 uses
  %i.hc = load ptr, ptr %i.hb, align 8            ; 2 uses
  %i.hd = getelementptr i8, ptr %i.hc, i64 4
  %i.he = load i16, ptr %i.hd, align 4            ; 2 uses
  %.not.i.i240 = icmp eq i16 %i.he, 0
  %i.hf = zext i16 %i.he to i64
  %i.hg = getelementptr [12 x i8], ptr %i.hc, i64 %i.hf
  %i.hh = select i1 %.not.i.i240, ptr null, ptr %i.hg ; 2 uses
  %i.hi = icmp ugt ptr %i.ha, %i.hh
  br i1 %i.hi, label %bb.ax, label %_kzalloc_noprof.exit.i.i, !prof !12

bb.ax:                                            ; preds = %bb.aw
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1079, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.23) #14
  br label %ext4_ext_split.exit.thread.i

_kzalloc_noprof.exit.i.i:                         ; preds = %bb.aw
  %.not249.i.i = icmp eq ptr %i.ha, %i.hh
  %i.hj = getelementptr i8, ptr %i.ha, i64 12
  %spec.select.i.i241 = select i1 %.not249.i.i, ptr %3, ptr %i.hj
  %.0230.i.i = load i32, ptr %spec.select.i.i241, align 4 ; 2 uses
  %i.hk = icmp ne i16 %.val49.i, 0
  %i.hl = shl nuw nsw i64 %i.gi, 3
  %i.hm = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 3145729) %i.hl, i32 noundef range(i32 3136, 36352) 3392) #17 ; 7 uses
  %.not250.i.i = icmp eq ptr %i.hm, null
  br i1 %.not250.i.i, label %ext4_ext_split.exit.thread.i, label %.preheader317.i.i

.preheader317.i.i:                                ; preds = %_kzalloc_noprof.exit.i.i
  %i.hn = sub nsw i32 %i.gh, %.041.lcssa.i        ; 5 uses
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader317.i.i
  %.not.i.i.i.i242 = icmp eq ptr %.044.i, null
  %i.hp = getelementptr i8, ptr %.044.i, i64 8
  %wide.trip.count373.i.i = zext nneg i32 %i.hn to i64 ; 2 uses
  br i1 %.not.i.i.i.i242, label %ext4_ext_new_meta_block.exit.us.i.i, label %.lr.ph.split.i.i

ext4_ext_new_meta_block.exit.us.i.i:              ; preds = %.lr.ph.i.i, %bb.ay
  %indvars.iv370.i.i = phi i64 [ %indvars.iv.next371.i.i, %bb.ay ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.hq = call i64 @ext4_inode_to_goal_block(ptr noundef %1) #14
  %i.hr = call i64 @ext4_new_meta_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %i.hq, i32 noundef range(i32 0, 10240) %spec.select193, ptr noundef null, ptr noundef nonnull %i.b) #14 ; 3 uses
  %i.hs = icmp eq i64 %i.hr, 0
  br i1 %i.hs, label %.threadthread-pre-split.i.i, label %bb.ay

bb.ay:                                            ; preds = %ext4_ext_new_meta_block.exit.us.i.i
  %i.ht = getelementptr [8 x i8], ptr %i.hm, i64 %indvars.iv370.i.i
  store i64 %i.hr, ptr %i.ht, align 8
  %indvars.iv.next371.i.i = add nuw nsw i64 %indvars.iv370.i.i, 1 ; 2 uses
  %exitcond374.not.i.i = icmp eq i64 %indvars.iv.next371.i.i, %wide.trip.count373.i.i
  br i1 %exitcond374.not.i.i, label %._crit_edge.loopexit.i.i, label %ext4_ext_new_meta_block.exit.us.i.i, !llvm.loop !53

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.bd
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bd ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.hu = load i16, ptr %i.hp, align 8
  %i.hv = zext i16 %i.hu to i64
  %i.hw = getelementptr [48 x i8], ptr %.044.i, i64 %i.hv ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8            ; 4 uses
  %.not29.i.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not29.i.i.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph.split.i.i
  %.val283.i.i = load i32, ptr %3, align 4        ; 3 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 6
  %.val.i.i.i.i = load i16, ptr %i.hz, align 2
  %i.ia = getelementptr i8, ptr %i.hy, i64 8
  %.val31.i.i.i.i = load i32, ptr %i.ia, align 4
  %i.ib = zext i32 %.val31.i.i.i.i to i64
  %i.ic = zext i16 %.val.i.i.i.i to i64
  %i.id = shl nuw nsw i64 %i.ic, 32
  %i.ie = or disjoint i64 %i.id, %i.ib
  %i.if = load i32, ptr %i.hy, align 4            ; 3 uses
  %i.ig = icmp ugt i32 %.val283.i.i, %i.if
  %i.ih = sub nuw i32 %.val283.i.i, %i.if
  %i.ii = zext i32 %i.ih to i64
  %i.ij = sub nuw i32 %i.if, %.val283.i.i
  %i.ik = zext i32 %i.ij to i64
  %i.il = sub nsw i64 0, %i.ik
  %.021.p.i.i.i.i = select i1 %i.ig, i64 %i.ii, i64 %i.il
  %.021.i.i.i.i = add nsw i64 %.021.p.i.i.i.i, %i.ie
  br label %ext4_ext_new_meta_block.exit.i.i

bb.ba:                                            ; preds = %.lr.ph.split.i.i
  %i.im = getelementptr i8, ptr %i.hw, i64 40
  %i.in = load ptr, ptr %i.im, align 8            ; 2 uses
  %.not30.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not30.i.i.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.io = getelementptr i8, ptr %i.in, i64 24
  %i.ip = load i64, ptr %i.io, align 8
  br label %ext4_ext_new_meta_block.exit.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.iq = call i64 @ext4_inode_to_goal_block(ptr noundef %1) #14
  br label %ext4_ext_new_meta_block.exit.i.i

ext4_ext_new_meta_block.exit.i.i:                 ; preds = %bb.bc, %bb.bb, %bb.az
  %.2.i.i.i.i = phi i64 [ %i.iq, %bb.bc ], [ %i.ip, %bb.bb ], [ %.021.i.i.i.i, %bb.az ]
  %i.ir = call i64 @ext4_new_meta_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %.2.i.i.i.i, i32 noundef range(i32 0, 10240) %spec.select193, ptr noundef null, ptr noundef nonnull %i.b) #14 ; 3 uses
  %i.is = icmp eq i64 %i.ir, 0
  br i1 %i.is, label %.threadthread-pre-split.i.i, label %bb.bd

bb.bd:                                            ; preds = %ext4_ext_new_meta_block.exit.i.i
  %i.it = getelementptr [8 x i8], ptr %i.hm, i64 %indvars.iv.i.i
  store i64 %i.ir, ptr %i.it, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i243 = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count373.i.i
  br i1 %exitcond.not.i.i243, label %._crit_edge.loopexit349.i.i, label %.lr.ph.split.i.i, !llvm.loop !53

._crit_edge.loopexit.i.i:                         ; preds = %bb.ay
  %i.iu = trunc nuw nsw i64 %indvars.iv370.i.i to i32
  br label %._crit_edge.thread.i.i

._crit_edge.loopexit349.i.i:                      ; preds = %bb.bd
  %i.iv = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %._crit_edge.thread.i.i

._crit_edge.i.i:                                  ; preds = %.preheader317.i.i
  %.phi.trans.insert.i.i = getelementptr i8, ptr %i.hm, i64 -8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8 ; 2 uses
  %i.iw = icmp eq i64 %.pre.i.i, 0
  br i1 %i.iw, label %bb.be, label %._crit_edge.thread.i.i, !prof !54

bb.be:                                            ; preds = %._crit_edge.i.i
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1123, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.24) #14
  store i32 -117, ptr %i.b, align 4
  br label %.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %._crit_edge.loopexit349.i.i, %._crit_edge.loopexit.i.i
  %.0226.lcssa405.i.i = phi i32 [ -1, %._crit_edge.i.i ], [ %i.iv, %._crit_edge.loopexit349.i.i ], [ %i.iu, %._crit_edge.loopexit.i.i ]
  %i.ix = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ir, %._crit_edge.loopexit349.i.i ], [ %i.hr, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.iy = load ptr, ptr %i.fz, align 8            ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 24
  %.val281.i.i = load i64, ptr %i.iz, align 8
  %i.ja = getelementptr i8, ptr %i.iy, i64 192
  %.val282.i.i = load ptr, ptr %i.ja, align 64
  %i.jb = trunc i64 %.val281.i.i to i32
  %i.jc = call ptr @bdev_getblk(ptr noundef %.val282.i.i, i64 noundef %i.ix, i32 noundef %i.jb, i32 noundef 3144) #14 ; 15 uses
  %.not251.i.i = icmp eq ptr %i.jc, null
  br i1 %.not251.i.i, label %bb.bf, label %bb.bg, !prof !12

bb.bf:                                            ; preds = %._crit_edge.thread.i.i
  store i32 -12, ptr %i.b, align 4
  br label %.thread.i.i

bb.bg:                                            ; preds = %._crit_edge.thread.i.i
  %i.jd = call i32 @__SCT__might_resched() #14    ; 0 uses
  %i.je = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.jc, i64 2, ptr nonnull elementtype(i64) %i.jc) #15, !srcloc !55 ; 2 uses
  %i.jf = icmp ult i8 %i.je, 2
  call void @llvm.assume(i1 %i.jf)
  %.not.not.i.i.i = icmp eq i8 %i.je, 0
  br i1 %.not.not.i.i.i, label %lock_buffer.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @__lock_buffer(ptr noundef nonnull %i.jc) #14
  br label %lock_buffer.exit.i.i

lock_buffer.exit.i.i:                             ; preds = %bb.bh, %bb.bg
  %i.jg = load ptr, ptr %i.fz, align 8
  %i.jh = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1135, ptr noundef %0, ptr noundef %i.jg, ptr noundef nonnull %i.jc, i32 noundef 1) #14 ; 2 uses
  store i32 %i.jh, ptr %i.b, align 4
  %.not252.i.i = icmp eq i32 %i.jh, 0
  br i1 %.not252.i.i, label %bb.bi, label %.loopexit316.i.i

bb.bi:                                            ; preds = %lock_buffer.exit.i.i
  %i.ji = getelementptr i8, ptr %i.jc, i64 40     ; 2 uses
  %.val277.i.i = load ptr, ptr %i.ji, align 8     ; 8 uses
  %i.jj = getelementptr i8, ptr %.val277.i.i, i64 2 ; 3 uses
  store i16 0, ptr %i.jj, align 2
  %.val279.i.i = load ptr, ptr %i.fz, align 8
  %i.jk = getelementptr i8, ptr %.val279.i.i, i64 24
  %.val279.val.i.i = load i64, ptr %i.jk, align 8
  %i.jl = add i64 %.val279.val.i.i, -12
  %i.jm = udiv i64 %i.jl, 12
  %i.jn = trunc i64 %i.jm to i16
  %i.jo = getelementptr i8, ptr %.val277.i.i, i64 4 ; 2 uses
  store i16 %i.jn, ptr %i.jo, align 4
  store i16 -3318, ptr %.val277.i.i, align 4
  %i.jp = getelementptr i8, ptr %.val277.i.i, i64 6
  store i16 0, ptr %i.jp, align 2
  %i.jq = getelementptr i8, ptr %.val277.i.i, i64 8
  store i32 0, ptr %i.jq, align 4
  %i.jr = load ptr, ptr %i.hb, align 8            ; 3 uses
  %i.js = getelementptr i8, ptr %i.jr, i64 2
  %i.jt = load i16, ptr %i.js, align 2            ; 4 uses
  %i.ju = getelementptr i8, ptr %i.jr, i64 4
  %i.jv = load i16, ptr %i.ju, align 4            ; 2 uses
  %.not253.i.i = icmp eq i16 %i.jt, %i.jv
  br i1 %.not253.i.i, label %bb.bk, label %bb.bj, !prof !20

bb.bj:                                            ; preds = %bb.bi
  %i.jw = zext i16 %i.jv to i32
  %i.jx = zext i16 %i.jt to i32
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1151, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.25, i32 noundef %i.jx, i32 noundef %i.jw) #14
  br label %.loopexit316.sink.split.i.i

bb.bk:                                            ; preds = %bb.bi
  %.not254.i.i = icmp eq i16 %i.jt, 0
  %i.jy = zext i16 %i.jt to i64
  %i.jz = getelementptr [12 x i8], ptr %i.jr, i64 %i.jy
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = select i1 %.not254.i.i, i64 0, i64 %i.ka
  %i.kc = load ptr, ptr %i.gz, align 8            ; 2 uses
  %i.kd = getelementptr i8, ptr %i.kc, i64 12     ; 2 uses
  store ptr %i.kd, ptr %i.gz, align 8
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kb, %i.ke
  %i.kg = sdiv exact i64 %i.kf, 12                ; 4 uses
  %i.kh = and i64 %i.kg, 4294967295
  %.not255.i.i = icmp eq i64 %i.kh, 0             ; 2 uses
  %.pre380.i.i = load i16, ptr %i.jj, align 2     ; 2 uses
  br i1 %.not255.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ki = getelementptr i8, ptr %.val277.i.i, i64 12
  %sext.i.i = shl i64 %i.kg, 32
  %i.kj = ashr exact i64 %sext.i.i, 32
  %i.kk = mul nsw i64 %i.kj, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ki, ptr align 4 %i.kd, i64 %i.kk, i1 false)
  %i.kl = trunc i64 %i.kg to i16
  %i.km = add i16 %.pre380.i.i, %i.kl             ; 2 uses
  store i16 %i.km, ptr %i.jj, align 2
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.kn = phi i16 [ %i.km, %bb.bl ], [ %.pre380.i.i, %bb.bk ]
  %i.ko = zext i16 %i.kn to i64
  %i.kp = mul nuw nsw i64 %i.ko, 12
  %i.kq = add nuw nsw i64 %i.kp, 12               ; 2 uses
  %i.kr = load ptr, ptr %i.ji, align 8
  %i.ks = getelementptr i8, ptr %i.kr, i64 %i.kq
  %i.kt = load ptr, ptr %i.fz, align 8
  %i.ku = getelementptr i8, ptr %i.kt, i64 24
  %i.kv = load i64, ptr %i.ku, align 8
  %i.kw = sub i64 %i.kv, %i.kq
  call void @llvm.memset.p0.i64(ptr align 1 %i.ks, i8 0, i64 %i.kw, i1 false)
  %i.kx = load ptr, ptr %i.fz, align 8
  %i.ky = getelementptr i8, ptr %i.kx, i64 864
  %.val.i.i.i = load ptr, ptr %i.ky, align 32
  %i.kz = getelementptr i8, ptr %.val.i.i.i, i64 104
  %.val.val.i.i.i = load ptr, ptr %i.kz, align 8
  %i.la = getelementptr i8, ptr %.val.val.i.i.i, i64 100
  %.val.val.val.i.i.i = load i32, ptr %i.la, align 4
  %i.lb = and i32 %.val.val.val.i.i.i, 1024
  %.not.i.i.i = icmp eq i32 %i.lb, 0
  br i1 %.not.i.i.i, label %ext4_extent_block_csum_set.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lc = load i16, ptr %i.jo, align 4
  %i.ld = zext i16 %i.lc to i64
  %i.le = mul nuw nsw i64 %i.ld, 12               ; 2 uses
  %i.lf = getelementptr i8, ptr %.val277.i.i, i64 %i.le
  %i.lg = getelementptr i8, ptr %i.lf, i64 12
  %.val5.i.i.i = load i32, ptr %i.ge, align 8
  %i.lh = add nuw nsw i64 %i.le, 12
  %i.li = call i32 @crc32c(i32 noundef %.val5.i.i.i, ptr noundef %.val277.i.i, i64 noundef %i.lh) #14
  store i32 %i.li, ptr %i.lg, align 4
  br label %ext4_extent_block_csum_set.exit.i.i

ext4_extent_block_csum_set.exit.i.i:              ; preds = %bb.bm, %bb.bn
  %i.lj = load volatile i64, ptr %i.jc, align 8
  %i.lk = and i64 %i.lj, 1
  %.not311.i.i = icmp eq i64 %i.lk, 0
  br i1 %.not311.i.i, label %bb.bo, label %set_buffer_uptodate.exit276.i.i

bb.bo:                                            ; preds = %ext4_extent_block_csum_set.exit.i.i
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.jc, i32 1, ptr nonnull elementtype(i8) %i.jc) #15, !srcloc !18
  br label %set_buffer_uptodate.exit276.i.i

set_buffer_uptodate.exit276.i.i:                  ; preds = %bb.bo, %ext4_extent_block_csum_set.exit.i.i
  call void @unlock_buffer(ptr noundef nonnull %i.jc) #14
  %i.ll = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1173, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.jc) #14 ; 2 uses
  store i32 %i.ll, ptr %i.b, align 4
  %.not256.i.i = icmp eq i32 %i.ll, 0
  br i1 %.not256.i.i, label %brelse.exit.i.i, label %.loopexit316.i.i

brelse.exit.i.i:                                  ; preds = %set_buffer_uptodate.exit276.i.i
  call void @__brelse(ptr noundef nonnull %i.jc) #14
  br i1 %.not255.i.i, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %brelse.exit.i.i
  %i.lm = getelementptr i8, ptr %i.gj, i64 40     ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8            ; 2 uses
  %.not.i287.i.i = icmp eq ptr %i.ln, null
  br i1 %.not.i287.i.i, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.lo = load ptr, ptr %i.fz, align 8
  %i.lp = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 166, ptr noundef %0, ptr noundef %i.lo, ptr noundef nonnull %i.ln, i32 noundef 1) #14 ; 2 uses
  %.not8.i.i.i = icmp eq i32 %i.lp, 0
  br i1 %.not8.i.i.i, label %bb.br, label %ext4_ext_get_access.exit.i.i

bb.br:                                            ; preds = %bb.bq
  %i.lq = load ptr, ptr %i.lm, align 8
  %i.lr = getelementptr i8, ptr %i.lq, i64 3      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.lr, i32 -3, ptr elementtype(i8) %i.lr) #15, !srcloc !44
  br label %bb.bs

ext4_ext_get_access.exit.i.i:                     ; preds = %bb.bq
  store i32 %i.lp, ptr %i.b, align 4
  br label %.thread.i.i

bb.bs:                                            ; preds = %bb.br, %bb.bp
  store i32 0, ptr %i.b, align 4
  %i.ls = load ptr, ptr %i.hb, align 8
  %i.lt = getelementptr i8, ptr %i.ls, i64 2      ; 2 uses
  %i.lu = trunc i64 %i.kg to i16
  %i.lv = load i16, ptr %i.lt, align 2
  %i.lw = sub i16 %i.lv, %i.lu
  store i16 %i.lw, ptr %i.lt, align 2
  %i.lx = call i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1185, ptr noundef %0, ptr noundef %1, ptr noundef %i.gj) #16 ; 3 uses
  store i32 %i.lx, ptr %i.b, align 4
  %.not258.i.i = icmp eq i32 %i.lx, 0
  br i1 %.not258.i.i, label %bb.bt, label %.thread.i.i

bb.bt:                                            ; preds = %bb.bs, %brelse.exit.i.i
  %i.ly = add nsw i32 %i.hn, -1                   ; 2 uses
  %i.lz = icmp slt i32 %i.hn, 1
  br i1 %i.lz, label %bb.bu, label %.preheader315.i.i, !prof !12

.preheader315.i.i:                                ; preds = %bb.bt
  %.not260339.i.i = icmp eq i32 %i.ly, 0
  br i1 %.not260339.i.i, label %._crit_edge344.i.i, label %.lr.ph343.i.i

.lr.ph343.i.i:                                    ; preds = %.preheader315.i.i
  %i.ma = add nsw i32 %i.hn, -2
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1194, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.26, i32 noundef %i.ly) #14
  store i32 -117, ptr %i.b, align 4
  br label %.thread.i.i

bb.bv:                                            ; preds = %bb.ck, %.lr.ph343.i.i
  %5 = phi i32 [ %i.ma, %.lr.ph343.i.i ], [ %i.qd, %bb.ck ] ; 2 uses
  %.0222342.in.i.i = phi i32 [ %i.gh, %.lr.ph343.i.i ], [ %.0222342.i.i, %bb.ck ]
  %.1227341.i.i = phi i32 [ %.0226.lcssa405.i.i, %.lr.ph343.i.i ], [ %i.mb, %bb.ck ]
  %.0228340.i.i = phi i64 [ %i.ix, %.lr.ph343.i.i ], [ %i.me, %bb.ck ] ; 2 uses
  %.0222342.i.i = add i32 %.0222342.in.i.i, -1    ; 3 uses
  %i.mb = add i32 %.1227341.i.i, -1               ; 2 uses
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr [8 x i8], ptr %i.hm, i64 %i.mc
  %i.me = load i64, ptr %i.md, align 8            ; 3 uses
  %i.mf = load ptr, ptr %i.fz, align 8            ; 2 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 24
  %.val284.i.i = load i64, ptr %i.mg, align 8
  %i.mh = getelementptr i8, ptr %i.mf, i64 192
  %.val285.i.i = load ptr, ptr %i.mh, align 64    ; 2 uses
  %i.mi = trunc i64 %.val284.i.i to i32
  %i.mj = getelementptr i8, ptr %.val285.i.i, i64 56
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = getelementptr i8, ptr %i.mk, i64 56
  %.val.i.i288.i.i = load i32, ptr %i.ml, align 8
  %i.mm = and i32 %.val.i.i288.i.i, -32905
  %i.mn = or disjoint i32 %i.mm, 32776
  %i.mo = call ptr @bdev_getblk(ptr noundef %.val285.i.i, i64 noundef %i.me, i32 noundef %i.mi, i32 noundef %i.mn) #14 ; 15 uses
  %.not261.i.i = icmp eq ptr %i.mo, null
  br i1 %.not261.i.i, label %bb.bw, label %bb.bx, !prof !12

bb.bw:                                            ; preds = %bb.bv
  store i32 -12, ptr %i.b, align 4
  br label %.thread.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.mp = call i32 @__SCT__might_resched() #14    ; 0 uses
  %i.mq = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.mo, i64 2, ptr nonnull elementtype(i64) %i.mo) #15, !srcloc !55 ; 2 uses
  %i.mr = icmp ult i8 %i.mq, 2
  call void @llvm.assume(i1 %i.mr)
  %.not.not.i289.i.i = icmp eq i8 %i.mq, 0
  br i1 %.not.not.i289.i.i, label %lock_buffer.exit290.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @__lock_buffer(ptr noundef nonnull %i.mo) #14
  br label %lock_buffer.exit290.i.i

lock_buffer.exit290.i.i:                          ; preds = %bb.by, %bb.bx
  %i.ms = load ptr, ptr %i.fz, align 8
  %i.mt = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1214, ptr noundef %0, ptr noundef %i.ms, ptr noundef nonnull %i.mo, i32 noundef 1) #14 ; 2 uses
  store i32 %i.mt, ptr %i.b, align 4
  %.not262.i.i = icmp eq i32 %i.mt, 0
  br i1 %.not262.i.i, label %bb.bz, label %.loopexit316.i.i

bb.bz:                                            ; preds = %lock_buffer.exit290.i.i
  %i.mu = getelementptr i8, ptr %i.mo, i64 40     ; 2 uses
  %.val.i.i = load ptr, ptr %i.mu, align 8        ; 11 uses
  %i.mv = getelementptr i8, ptr %.val.i.i, i64 2  ; 3 uses
  store i16 1, ptr %i.mv, align 2
  store i16 -3318, ptr %.val.i.i, align 4
  %.val280.i.i = load ptr, ptr %i.fz, align 8
  %i.mw = getelementptr i8, ptr %.val280.i.i, i64 24
  %.val280.val.i.i = load i64, ptr %i.mw, align 8
  %i.mx = add i64 %.val280.val.i.i, -12
  %i.my = udiv i64 %i.mx, 12
  %i.mz = trunc i64 %i.my to i16
  %i.na = getelementptr i8, ptr %.val.i.i, i64 4  ; 2 uses
  store i16 %i.mz, ptr %i.na, align 4
  %i.nb = trunc i32 %.0222342.i.i to i16
  %i.nc = sub i16 %.val49.i, %i.nb
  %i.nd = getelementptr i8, ptr %.val.i.i, i64 6
  store i16 %i.nc, ptr %i.nd, align 2
  %i.ne = getelementptr i8, ptr %.val.i.i, i64 8
  store i32 0, ptr %i.ne, align 4
  %i.nf = getelementptr i8, ptr %.val.i.i, i64 12
  store i32 %.0230.i.i, ptr %i.nf, align 4
  %i.ng = trunc i64 %.0228340.i.i to i32
  %i.nh = getelementptr i8, ptr %.val.i.i, i64 16
  store i32 %i.ng, ptr %i.nh, align 4
  %i.ni = lshr i64 %.0228340.i.i, 32
  %i.nj = trunc i64 %i.ni to i16
  %i.nk = getelementptr i8, ptr %.val.i.i, i64 20
  store i16 %i.nj, ptr %i.nk, align 4
  %6 = sext i32 %.0222342.i.i to i64
  %i.nl = getelementptr [48 x i8], ptr %.044.i, i64 %6 ; 5 uses
  %i.nm = getelementptr i8, ptr %i.nl, i64 32     ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8            ; 4 uses
  %i.no = getelementptr i8, ptr %i.nn, i64 4
  %i.np = load i16, ptr %i.no, align 4            ; 2 uses
  %.not263.i.i = icmp eq i16 %i.np, 0             ; 2 uses
  %i.nq = zext i16 %i.np to i64                   ; 2 uses
  %i.nr = getelementptr [12 x i8], ptr %i.nn, i64 %i.nq
  %i.ns = select i1 %.not263.i.i, ptr null, ptr %i.nr
  %i.nt = getelementptr i8, ptr %i.nn, i64 12     ; 2 uses
  %i.nu = getelementptr i8, ptr %i.nn, i64 2
  %i.nv = load i16, ptr %i.nu, align 2
  %i.nw = zext i16 %i.nv to i64
  %i.nx = getelementptr [12 x i8], ptr %i.nt, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.nx, i64 -12
  %.not264.i.i = icmp eq ptr %i.ns, %i.ny
  br i1 %.not264.i.i, label %bb.cb, label %bb.ca, !prof !20

bb.ca:                                            ; preds = %bb.bz
  %i.nz = getelementptr i8, ptr %i.nl, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8
  %i.ob = load i32, ptr %i.oa, align 4
  call void (ptr, ptr, i32, i64, i32, ptr, ...) @__ext4_error_inode(ptr noundef %1, ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1236, i64 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %i.ob) #14
  br label %.loopexit316.sink.split.i.i

bb.cb:                                            ; preds = %bb.bz
  %i.oc = getelementptr [12 x i8], ptr %i.nt, i64 %i.nq
  %i.od = getelementptr i8, ptr %i.oc, i64 -12
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = select i1 %.not263.i.i, i64 0, i64 %i.oe
  %i.og = getelementptr i8, ptr %i.nl, i64 24     ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8            ; 2 uses
  %i.oi = getelementptr i8, ptr %i.oh, i64 12     ; 2 uses
  store ptr %i.oi, ptr %i.og, align 8
  %i.oj = ptrtoint ptr %i.oh to i64
  %i.ok = sub i64 %i.of, %i.oj
  %i.ol = sdiv exact i64 %i.ok, 12                ; 4 uses
  %i.om = and i64 %i.ol, 4294967295
  %.not266.i.i = icmp eq i64 %i.om, 0             ; 2 uses
  %.pre381.i.i = load i16, ptr %i.mv, align 2     ; 2 uses
  br i1 %.not266.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.on = getelementptr i8, ptr %.val.i.i, i64 24
  %sext267.i.i = shl i64 %i.ol, 32
  %i.oo = ashr exact i64 %sext267.i.i, 32
  %i.op = mul nsw i64 %i.oo, 12
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.on, ptr align 4 %i.oi, i64 %i.op, i1 false)
  %i.oq = trunc i64 %i.ol to i16
  %i.or = add i16 %.pre381.i.i, %i.oq             ; 2 uses
  store i16 %i.or, ptr %i.mv, align 2
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %i.os = phi i16 [ %i.or, %bb.cc ], [ %.pre381.i.i, %bb.cb ]
  %i.ot = zext i16 %i.os to i64
  %i.ou = mul nuw nsw i64 %i.ot, 12
  %i.ov = add nuw nsw i64 %i.ou, 12               ; 2 uses
  %i.ow = load ptr, ptr %i.mu, align 8
  %i.ox = getelementptr i8, ptr %i.ow, i64 %i.ov
  %i.oy = load ptr, ptr %i.fz, align 8
  %i.oz = getelementptr i8, ptr %i.oy, i64 24
  %i.pa = load i64, ptr %i.oz, align 8
  %i.pb = sub i64 %i.pa, %i.ov
  call void @llvm.memset.p0.i64(ptr align 1 %i.ox, i8 0, i64 %i.pb, i1 false)
  %i.pc = load ptr, ptr %i.fz, align 8
  %i.pd = getelementptr i8, ptr %i.pc, i64 864
  %.val.i291.i.i = load ptr, ptr %i.pd, align 32
  %i.pe = getelementptr i8, ptr %.val.i291.i.i, i64 104
  %.val.val.i292.i.i = load ptr, ptr %i.pe, align 8
  %i.pf = getelementptr i8, ptr %.val.val.i292.i.i, i64 100
  %.val.val.val.i293.i.i = load i32, ptr %i.pf, align 4
  %i.pg = and i32 %.val.val.val.i293.i.i, 1024
  %.not.i294.i.i = icmp eq i32 %i.pg, 0
  br i1 %.not.i294.i.i, label %ext4_extent_block_csum_set.exit296.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ph = load i16, ptr %i.na, align 4
  %i.pi = zext i16 %i.ph to i64
  %i.pj = mul nuw nsw i64 %i.pi, 12               ; 2 uses
  %i.pk = getelementptr i8, ptr %.val.i.i, i64 %i.pj
  %i.pl = getelementptr i8, ptr %i.pk, i64 12
  %.val5.i295.i.i = load i32, ptr %i.ge, align 8
  %i.pm = add nuw nsw i64 %i.pj, 12
  %i.pn = call i32 @crc32c(i32 noundef %.val5.i295.i.i, ptr noundef %.val.i.i, i64 noundef %i.pm) #14
  store i32 %i.pn, ptr %i.pl, align 4
  br label %ext4_extent_block_csum_set.exit296.i.i

ext4_extent_block_csum_set.exit296.i.i:           ; preds = %bb.cd, %bb.ce
  %i.po = load volatile i64, ptr %i.mo, align 8
  %i.pp = and i64 %i.po, 1
  %.not313.i.i = icmp eq i64 %i.pp, 0
  br i1 %.not313.i.i, label %bb.cf, label %set_buffer_uptodate.exit.i.i

bb.cf:                                            ; preds = %ext4_extent_block_csum_set.exit296.i.i
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.mo, i32 1, ptr nonnull elementtype(i8) %i.mo) #15, !srcloc !18
  br label %set_buffer_uptodate.exit.i.i

set_buffer_uptodate.exit.i.i:                     ; preds = %bb.cf, %ext4_extent_block_csum_set.exit296.i.i
  call void @unlock_buffer(ptr noundef nonnull %i.mo) #14
  %i.pq = call i32 @__ext4_handle_dirty_metadata(ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1259, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.mo) #14 ; 2 uses
  store i32 %i.pq, ptr %i.b, align 4
  %.not268.i.i = icmp eq i32 %i.pq, 0
  br i1 %.not268.i.i, label %brelse.exit298.i.i, label %.loopexit316.i.i

brelse.exit298.i.i:                               ; preds = %set_buffer_uptodate.exit.i.i
  call void @__brelse(ptr noundef nonnull %i.mo) #14
  br i1 %.not266.i.i, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %brelse.exit298.i.i
  %i.pr = getelementptr i8, ptr %i.nl, i64 40     ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8            ; 2 uses
  %.not.i299.i.i = icmp eq ptr %i.ps, null
  br i1 %.not.i299.i.i, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pt = load ptr, ptr %i.fz, align 8
  %i.pu = call i32 @__ext4_journal_get_write_access(ptr noundef nonnull @__func__.ext4_ext_get_access, i32 noundef 166, ptr noundef %0, ptr noundef %i.pt, ptr noundef nonnull %i.ps, i32 noundef 1) #14 ; 2 uses
  %.not8.i300.i.i = icmp eq i32 %i.pu, 0
  br i1 %.not8.i300.i.i, label %bb.ci, label %ext4_ext_get_access.exit302.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.pv = load ptr, ptr %i.pr, align 8
  %i.pw = getelementptr i8, ptr %i.pv, i64 3      ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.pw, i32 -3, ptr elementtype(i8) %i.pw) #15, !srcloc !44
  br label %bb.cj

ext4_ext_get_access.exit302.i.i:                  ; preds = %bb.ch
  store i32 %i.pu, ptr %i.b, align 4
  br label %.thread.i.i

bb.cj:                                            ; preds = %bb.ci, %bb.cg
  store i32 0, ptr %i.b, align 4
  %i.px = load ptr, ptr %i.nm, align 8
  %i.py = getelementptr i8, ptr %i.px, i64 2      ; 2 uses
  %i.pz = trunc i64 %i.ol to i16
  %i.qa = load i16, ptr %i.py, align 2
  %i.qb = sub i16 %i.qa, %i.pz
  store i16 %i.qb, ptr %i.py, align 2
  %i.qc = call i32 @__ext4_ext_dirty(ptr noundef nonnull @__func__.ext4_ext_split, i32 noundef 1271, ptr noundef %0, ptr noundef %1, ptr noundef %i.nl) #16 ; 2 uses
  store i32 %i.qc, ptr %i.b, align 4
  %.not270.i.i = icmp eq i32 %i.qc, 0
  br i1 %.not270.i.i, label %bb.ck, label %.thread.i.i

bb.ck:                                            ; preds = %bb.cj, %brelse.exit298.i.i
  %i.qd = add i32 %5, -1
  %.not260.i.i = icmp eq i32 %5, 0
  br i1 %.not260.i.i, label %._crit_edge344.i.i, label %bb.bv, !llvm.loop !56

._crit_edge344.i.i:                               ; preds = %bb.ck, %.preheader315.i.i
  %.0228.lcssa.i.i = phi i64 [ %i.ix, %.preheader315.i.i ], [ %i.me, %bb.ck ]
  %i.qe = zext nneg i32 %.041.lcssa.i to i64
  %i.qf = getelementptr [48 x i8], ptr %.044.i, i64 %i.qe
  %i.qg = call fastcc i32 @ext4_ext_insert_index(ptr noundef %0, ptr noundef %1, ptr noundef %i.qf, i32 noundef %.0230.i.i, i64 noundef %.0228.lcssa.i.i) #16, !srcloc !57 ; 2 uses
  store i32 %i.qg, ptr %i.b, align 4
  br label %.thread.i.i

.loopexit316.sink.split.i.i:                      ; preds = %bb.ca, %bb.bj
  %.1.ph.i.i = phi ptr [ %i.mo, %bb.ca ], [ %i.jc, %bb.bj ]
  store i32 -117, ptr %i.b, align 4
  br label %.loopexit316.i.i

.loopexit316.i.i:                                 ; preds = %lock_buffer.exit290.i.i, %set_buffer_uptodate.exit.i.i, %lock_buffer.exit.i.i, %set_buffer_uptodate.exit276.i.i, %.loopexit316.sink.split.i.i
  %.1.i.i = phi ptr [ %i.jc, %lock_buffer.exit.i.i ], [ %i.jc, %set_buffer_uptodate.exit276.i.i ], [ %.1.ph.i.i, %.loopexit316.sink.split.i.i ], [ %i.mo, %set_buffer_uptodate.exit.i.i ], [ %i.mo, %lock_buffer.exit290.i.i ] ; 3 uses
  %i.qh = load volatile i64, ptr %.1.i.i, align 8
  %i.qi = and i64 %i.qh, 4
  %.not272.i.i = icmp eq i64 %i.qi, 0
  br i1 %.not272.i.i, label %brelse.exit304.i.i, label %bb.cl

bb.cl:                                            ; preds = %.loopexit316.i.i
  call void @unlock_buffer(ptr noundef nonnull %.1.i.i) #14
  br label %brelse.exit304.i.i

brelse.exit304.i.i:                               ; preds = %bb.cl, %.loopexit316.i.i
  call void @__brelse(ptr noundef nonnull %.1.i.i) #14
  br label %.threadthread-pre-split.i.i

.threadthread-pre-split.i.i:                      ; preds = %ext4_ext_new_meta_block.exit.i.i, %ext4_ext_new_meta_block.exit.us.i.i, %brelse.exit304.i.i
  %.pr.i.i = load i32, ptr %i.b, align 4
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cj, %.threadthread-pre-split.i.i, %._crit_edge344.i.i, %ext4_ext_get_access.exit302.i.i, %bb.bw, %bb.bu, %bb.bs, %ext4_ext_get_access.exit.i.i, %bb.bf, %bb.be
  %i.qj = phi i32 [ %.pr.i.i, %.threadthread-pre-split.i.i ], [ %i.qg, %._crit_edge344.i.i ], [ -12, %bb.be ], [ -12, %ext4_ext_get_access.exit302.i.i ], [ -12, %bb.bw ], [ -12, %bb.bu ], [ %i.lx, %bb.bs ], [ -12, %ext4_ext_get_access.exit.i.i ], [ -12, %bb.bf ], [ -12, %bb.cj ]
  %.not273.i.i = icmp ne i32 %i.qj, 0
  %or.cond.i.i = and i1 %i.hk, %.not273.i.i
  br i1 %or.cond.i.i, label %.lr.ph347.i.i, label %ext4_ext_split.exit.i

.lr.ph347.i.i:                                    ; preds = %.thread.i.i, %bb.cn
  %indvars.iv375.i.i.a = phi i64 [ %indvars.iv.next376.i.i.a, %bb.cn ], [ 0, %.thread.i.i ] ; 2 uses
  %i.qk = getelementptr [8 x i8], ptr %i.hm, i64 %indvars.iv375.i.i.a
  %i.ql = load i64, ptr %i.qk, align 8            ; 2 uses
  %.not274.i.i = icmp eq i64 %i.ql, 0
  br i1 %.not274.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph347.i.i
  call void @ext4_free_blocks(ptr noundef %0, ptr noundef %1, ptr noundef null, i64 noundef %i.ql, i64 noundef 1, i32 noundef 1) #14
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph347.i.i
  %indvars.iv.next376.i.i.a = add nuw nsw i64 %indvars.iv375.i.i.a, 1 ; 2 uses
  %exitcond379.not.i.i = icmp eq i64 %indvars.iv.next376.i.i.a, %i.gi
  br i1 %exitcond379.not.i.i, label %ext4_ext_split.exit.i, label %.lr.ph347.i.i, !llvm.loop !58

ext4_ext_split.exit.thread.i:                     ; preds = %_kzalloc_noprof.exit.i.i, %bb.ax
  %.0.i.ph.i = phi i32 [ -12, %_kzalloc_noprof.exit.i.i ], [ -117, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.loopexit.i

ext4_ext_split.exit.i:                            ; preds = %bb.cn, %.thread.i.i
  call void @kfree(ptr noundef nonnull %i.hm) #14
  %i.qm = load i32, ptr %i.b, align 4             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %.not48.i = icmp eq i32 %i.qm, 0
  br i1 %.not48.i, label %bb.co, label %.loopexit.i

bb.co:                                            ; preds = %ext4_ext_split.exit.i
  %i.qn = call ptr @ext4_find_extent(ptr noundef %1, i32 noundef %i.fy, ptr noundef %.044.i, i32 noundef %4) #16
  br label %ext4_ext_create_new_leaf.exit

bb.cp:                                            ; preds = %.critedge.i
  %i.qo = load ptr, ptr %i.fz, align 8
  %i.qp = getelementptr i8, ptr %i.qo, i64 864
  %.val.i50.i = load ptr, ptr %i.qp, align 32
  %i.qq = getelementptr i8, ptr %.val.i50.i, i64 104
  %i.qr = load ptr, ptr %i.qq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  br i1 %.not71120.i, label %.thread.i52.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.val71.i.i = load i32, ptr %i.ga, align 8
  %.val72.i.i = load i16, ptr %i.gb, align 4
  %i.qs = zext i32 %.val71.i.i to i64
  %i.qt = zext i16 %.val72.i.i to i64
  %i.qu = shl nuw nsw i64 %i.qt, 32
  %i.qv = or disjoint i64 %i.qu, %i.qs            ; 2 uses
  %i.qw = getelementptr i8, ptr %i.qr, i64 20
  %i.qx = load i32, ptr %i.qw, align 4
  %i.qy = zext i32 %i.qx to i64
  %i.qz = icmp samesign ugt i64 %i.qv, %i.qy
  br i1 %i.qz, label %bb.cr, label %.thread.i52.i

bb.cr:                                            ; preds = %bb.cq
  %i.ra = add nsw i64 %i.qv, -1
  br label %bb.cs

.thread.i52.i:                                    ; preds = %bb.cq, %bb.cp
  %i.rb = call i64 @ext4_inode_to_goal_block(ptr noundef %1) #14
  br label %bb.cs

bb.cs:                                            ; preds = %.thread.i52.i, %bb.cr
  %.1.i53.i = phi i64 [ %i.ra, %bb.cr ], [ %i.rb, %.thread.i52.i ]
  %.058.i.i = phi i32 [ %i.gc, %bb.cr ], [ %spec.select193, %.thread.i52.i ]
  %i.rc = call i64 @ext4_new_meta_blocks(ptr noundef %0, ptr noundef %1, i64 noundef %.1.i53.i, i32 noundef %.058.i.i, ptr noundef null, ptr noundef nonnull %i.a) #14 ; 4 uses
  %i.rd = icmp eq i64 %i.rc, 0
  br i1 %i.rd, label %ext4_ext_grow_indepth.exit.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.re = load ptr, ptr %i.fz, align 8            ; 2 uses
  %i.rf = getelementptr i8, ptr %i.re, i64 24
  %.val73.i.i = load i64, ptr %i.rf, align 8
  %i.rg = getelementptr i8, ptr %i.re, i64 192
  %.val74.i.i = load ptr, ptr %i.rg, align 64
  %i.rh = trunc i64 %.val73.i.i to i32
  %i.ri = call ptr @bdev_getblk(ptr noundef %.val74.i.i, i64 noundef %i.rc, i32 noundef %i.rh, i32 noundef 3144) #14 ; 15 uses
  %.not61.i.i = icmp eq ptr %i.ri, null
  br i1 %.not61.i.i, label %ext4_ext_grow_indepth.exit.thread.i, label %bb.cu, !prof !12

ext4_ext_grow_indepth.exit.thread.i:              ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit.i

bb.cu:                                            ; preds = %bb.ct
  %i.rj = call i32 @__SCT__might_resched() #14    ; 0 uses
  %i.rk = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock  btsq  $2, $0", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.ri, i64 2, ptr nonnull elementtype(i64) %i.ri) #15, !srcloc !55 ; 2 uses
  %i.rl = icmp ult i8 %i.rk, 2
  call void @llvm.assume(i1 %i.rl)
  %.not.not.i.i54.i = icmp eq i8 %i.rk, 0
  br i1 %.not.not.i.i54.i, label %lock_buffer.exit.i55.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @__lock_buffer(ptr noundef nonnull %i.ri) #14
  br label %lock_buffer.exit.i55.i

lock_buffer.exit.i55.i:                           ; preds = %bb.cv, %bb.cu
  %i.rm = load ptr, ptr %i.fz, align 8
  %i.rn = call i32 @__ext4_journal_get_create_access(ptr noundef nonnull @__func__.ext4_ext_grow_indepth, i32 noundef 1341, ptr noundef %0, ptr noundef %i.rm, ptr noundef nonnull %i.ri, i32 noundef 1) #14 ; 2 uses
  store i32 %i.rn, ptr %i.a, align 4
  %.not62.i.i = icmp eq i32 %i.rn, 0
  br i1 %.not62.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %lock_buffer.exit.i55.i
  call void @unlock_buffer(ptr noundef nonnull %i.ri) #14
  br label %brelse.exit.i56.i

bb.cx:                                            ; preds = %lock_buffer.exit.i55.i
  %i.ro = getelementptr i8, ptr %i.ri, i64 40     ; 3 uses
  %i.rp = load ptr, ptr %i.ro, align 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef align 1 dereferenceable(60) %i.rp, ptr noundef align 8 dereferenceable(60) %i.gd, i64 60, i1 false)
  %i.rq = load ptr, ptr %i.ro, align 8
  %i.rr = getelementptr i8, ptr %i.rq, i64 60
  %i.rs = load ptr, ptr %i.fz, align 8
  %i.rt = getelementptr i8, ptr %i.rs, i64 24
  %i.ru = load i64, ptr %i.rt, align 8
  %i.rv = add i64 %i.ru, -60
  call void @llvm.memset.p0.i64(ptr align 1 %i.rr, i8 0, i64 %i.rv, i1 false)
  %.val66.i.i = load ptr, ptr %i.ro, align 8      ; 4 uses
  %.val69.pn.i.i = load ptr, ptr %i.fz, align 8
  %.in.in.in.in.i.i = getelementptr i8, ptr %.val69.pn.i.i, i64 24
  %.in.in.in.i.i = load i64, ptr %.in.in.in.in.i.i, align 8
  %.in.in.i.i = add i64 %.in.in.in.i.i, -12
  %.in.i.i = udiv i64 %.in.in.i.i, 12             ; 2 uses
  %i.rw = trunc i64 %.in.i.i to i16
  %i.rx = getelementptr i8, ptr %.val66.i.i, i64 4
  store i16 %i.rw, ptr %i.rx, align 4
  store i16 -3318, ptr %.val66.i.i, align 4
  %i.ry = load ptr, ptr %i.fz, align 8
  %i.rz = getelementptr i8, ptr %i.ry, i64 864
  %.val.i.i58.i = load ptr, ptr %i.rz, align 32
  %i.sa = getelementptr i8, ptr %.val.i.i58.i, i64 104
  %.val.val.i.i59.i = load ptr, ptr %i.sa, align 8
  %i.sb = getelementptr i8, ptr %.val.val.i.i59.i, i64 100
  %.val.val.val.i.i60.i = load i32, ptr %i.sb, align 4
  %i.sc = and i32 %.val.val.val.i.i60.i, 1024
  %.not.i.i61.i = icmp eq i32 %i.sc, 0
  br i1 %.not.i.i61.i, label %ext4_extent_block_csum_set.exit.i63.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.sd = and i64 %.in.i.i, 65535
  %i.se = mul nuw nsw i64 %i.sd, 12               ; 2 uses
  %i.sf = getelementptr i8, ptr %.val66.i.i, i64 %i.se
  %i.sg = getelementptr i8, ptr %i.sf, i64 12
  %.val5.i.i62.i = load i32, ptr %i.ge, align 8
  %i.sh = add nuw nsw i64 %i.se, 12
  %i.si = call i32 @crc32c(i32 noundef %.val5.i.i62.i, ptr noundef %.val66.i.i, i64 noundef %i.sh) #14
  store i32 %i.si, ptr %i.sg, align 4
  br label %ext4_extent_block_csum_set.exit.i63.i

ext4_extent_block_csum_set.exit.i63.i:            ; preds = %bb.cx, %bb.cy
  %i.sj = load volatile i64, ptr %i.ri, align 8
  %i.sk = and i64 %i.sj, 1
  %.not77.i.i = icmp eq i64 %i.sk, 0
  br i1 %.not77.i.i, label %bb.cz, label %set_buffer_uptodate.exit.i64.i

bb.cz:                                            ; preds = %ext4_extent_block_csum_set.exit.i63.i
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i8) %i.ri, i32 1, ptr nonnull elementtype(i8) %i.ri) #15, !srcloc !18
  br label %set_buffer_uptodate.exit.i64.i
end_hunk_0
