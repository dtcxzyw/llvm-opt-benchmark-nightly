Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/trans_virtio?download=true
inline.NumInlined: 65
inline.NumDeleted: 42
begin_hunk_0_@p9_mount_tag_show:bb.a
  %i.a = getelementptr i8, ptr %0, i64 824
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 4152
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call i64 @strlen(ptr noundef %i.d) #12
  %i.f = shl i64 %i.e, 32
  %sext = add i64 %i.f, 4294967296
  %i.g = ashr exact i64 %sext, 32                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %i.d, i64 %i.g, i1 false)
  ret i64 %i.g
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @p9_virtio_create(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @mutex_lock(ptr noundef nonnull @virtio_9p_lock) #12
  %.pn29 = load ptr, ptr @virtio_chan_list, align 8 ; 2 uses
  %.not31 = icmp eq ptr %.pn29, @virtio_chan_list
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.pn33 = phi ptr [ %.pn, %bb.d ], [ %.pn29, %bb.b ] ; 5 uses
  %.02132 = phi i32 [ %.1, %bb.d ], [ -2, %bb.b ]
  %i.d = getelementptr i8, ptr %.pn33, i64 -8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef %i.e) #12
  %.not24 = icmp eq i32 %i.f, 0
  br i1 %.not24, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %.02034 = getelementptr i8, ptr %.pn33, i64 -4160
  %i.g = load i8, ptr %.02034, align 8, !range !23, !noundef !24
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.1 = phi i32 [ %.02132, %.lr.ph ], [ -16, %bb.c ] ; 2 uses
  %.pn = load ptr, ptr %.pn33, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, @virtio_chan_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %.021.lcssa = phi i32 [ -2, %bb.b ], [ %.1, %bb.d ]
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_9p_lock) #12
  %i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull %i.b) #13 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.02034.le = getelementptr i8, ptr %.pn33, i64 -4160 ; 2 uses
  store i8 1, ptr %.02034.le, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_9p_lock) #12
  %i.j = getelementptr i8, ptr %0, i64 32
  store ptr %.02034.le, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr i8, ptr %.pn33, i64 -4152
  store ptr %0, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e, %._crit_edge
  %.0 = phi i32 [ %.021.lcssa, %._crit_edge ], [ 0, %bb.e ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @p9_virtio_close(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  tail call void @mutex_lock(ptr noundef nonnull @virtio_9p_lock) #12
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_9p_lock) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -512, 1) i32 @p9_virtio_request(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %2 = alloca %struct.wait_queue_entry, align 8   ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !10
  store volatile i32 2, ptr %1, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 4        ; 3 uses
  %i.e = getelementptr i8, ptr %i.c, i64 56       ; 7 uses
  %i.f = getelementptr i8, ptr %1, i64 40
  %i.g = getelementptr i8, ptr %1, i64 72
  %i.h = getelementptr i8, ptr %1, i64 120        ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 104        ; 2 uses
  %i.j = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  %i.k = getelementptr i8, ptr %i.c, i64 32       ; 4 uses
  %i.l = getelementptr i8, ptr %i.c, i64 40       ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.m = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.d) #12 ; 2 uses
  %i.n = load i32, ptr %i.f, align 8              ; 3 uses
  %.not30.i = icmp eq i32 %i.n, 0
  br i1 %.not30.i, label %.split, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.critedge
  %i.o = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = trunc i64 %i.p to i32
  %i.r = and i32 %i.q, 4095                       ; 2 uses
  %i.s = sub nuw nsw i32 4096, %i.r
  %spec.select.i164 = call i32 @llvm.smin.i32(i32 %i.s, i32 %i.n)
  br label %bb.c

.lr.ph.i:                                         ; preds = %sg_set_buf.exit.i
  %i.t = sext i32 %spec.select.i168 to i64
  %i.u = getelementptr i8, ptr %.02531.i167, i64 %i.t ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = and i32 %i.w, 4095                       ; 2 uses
  %i.y = sub nuw nsw i32 4096, %i.x
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.at)
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 128
  br i1 %exitcond.i, label %bb.b, label %bb.c, !prof !28, !llvm.loop !29

bb.b:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "965: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 965b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 965) #15, !srcloc !30
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.16, i32 180, i32 0, i64 16) #15, !srcloc !31
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %spec.select.i168 = phi i32 [ %spec.select.i164, %.lr.ph.i.preheader ], [ %spec.select.i, %.lr.ph.i ] ; 3 uses
  %i.z = phi i32 [ %i.r, %.lr.ph.i.preheader ], [ %i.x, %.lr.ph.i ]
  %i.aa = phi i64 [ %i.p, %.lr.ph.i.preheader ], [ %i.v, %.lr.ph.i ]
  %.02531.i167 = phi ptr [ %i.o, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i ] ; 2 uses
  %.02432.i166 = phi i32 [ %i.n, %.lr.ph.i.preheader ], [ %i.at, %.lr.ph.i ]
  %indvars.iv.i165 = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.ab = getelementptr [32 x i8], ptr %i.e, i64 %indvars.iv.i165 ; 5 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = and i64 %i.ac, -3
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = load i64, ptr @vmemmap_base, align 8    ; 2 uses
  %i.af = and i64 %i.ae, 3
  %.not.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i, label %sg_set_buf.exit.i, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  call void asm sideeffect "536: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 536b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 536) #15, !srcloc !32
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.17, i32 137, i32 0, i64 16) #15, !srcloc !33
  unreachable

sg_set_buf.exit.i:                                ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i165, 1 ; 4 uses
  %i.ag = add i64 %i.aa, 2147483648
  %i.ah = icmp ugt ptr %.02531.i167, inttoptr (i64 -2147483649 to ptr)
  %i.ai = load i64, ptr @phys_base, align 8
  %i.aj = load i64, ptr @page_offset_base, align 8
  %i.ak = sub i64 -2147483648, %i.aj
  %i.al = select i1 %i.ah, i64 %i.ai, i64 %i.ak
  %i.am = add i64 %i.ag, %i.al
  %i.an = lshr i64 %i.am, 6
  %.idx.i.i = and i64 %i.an, 288230376151711680
  %i.ao = add i64 %.idx.i.i, %i.ae
  %i.ap = and i64 %i.ac, 1
  %i.aq = or disjoint i64 %i.ao, %i.ap
  store i64 %i.aq, ptr %i.ab, align 8
  %i.ar = getelementptr i8, ptr %i.ab, i64 8
  store i32 %i.z, ptr %i.ar, align 8
  %i.as = getelementptr i8, ptr %i.ab, i64 12
  store i32 %spec.select.i168, ptr %i.as, align 4
  %i.at = sub i32 %.02432.i166, %spec.select.i168 ; 3 uses
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %pack_sg_list.exit, label %.lr.ph.i, !llvm.loop !29

pack_sg_list.exit:                                ; preds = %sg_set_buf.exit.i
  %sext.i = shl nuw nsw i64 %indvars.iv.i165, 5
  %i.au = getelementptr i8, ptr %i.e, i64 %sext.i ; 2 uses
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = and i64 %i.av, -4
  %i.ax = or disjoint i64 %i.aw, 2
  store i64 %i.ax, ptr %i.au, align 8
  %i.ay = trunc nsw i64 %indvars.iv.next.i to i32
  store ptr %i.e, ptr %i.a, align 16
  %i.az = load ptr, ptr %i.h, align 8
  %i.ba = load i64, ptr %i.i, align 8
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = call fastcc i32 @pack_sg_list(ptr noundef %i.e, i32 noundef %i.ay, ptr noundef %i.az, i32 noundef %i.bb) #17
  %.not56 = icmp eq i32 %i.bc, 0
  br i1 %.not56, label %pack_sg_list.exit77.thread, label %bb.h

.split:                                           ; preds = %.critedge
  %i.bd = load i64, ptr %i.i, align 8
  %i.be = trunc i64 %i.bd to i32                  ; 3 uses
  %.not30.i61 = icmp eq i32 %i.be, 0
  br i1 %.not30.i61, label %pack_sg_list.exit77.thread, label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %.split
  %i.bf = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64               ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = and i32 %i.bh, 4095                     ; 2 uses
  %i.bj = sub nuw nsw i32 4096, %i.bi
  %spec.select.i67169 = call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.be)
  br label %bb.f

.lr.ph.i63:                                       ; preds = %sg_set_buf.exit.i70
  %i.bk = sext i32 %spec.select.i67173 to i64
  %i.bl = getelementptr i8, ptr %.02531.i66172, i64 %i.bk ; 2 uses
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i64170, 1 ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64               ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = and i32 %i.bn, 4095                     ; 2 uses
  %i.bp = sub nuw nsw i32 4096, %i.bo
  %spec.select.i67 = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.ck)
  %exitcond.i68 = icmp eq i64 %indvars.iv.next.i71, 128
  br i1 %exitcond.i68, label %bb.e, label %bb.f, !prof !28, !llvm.loop !29

bb.e:                                             ; preds = %.lr.ph.i63
  call void asm sideeffect "965: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 965b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 965) #15, !srcloc !30
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.16, i32 180, i32 0, i64 16) #15, !srcloc !31
  unreachable

bb.f:                                             ; preds = %.lr.ph.i63.preheader, %.lr.ph.i63
  %spec.select.i67173 = phi i32 [ %spec.select.i67169, %.lr.ph.i63.preheader ], [ %spec.select.i67, %.lr.ph.i63 ] ; 3 uses
  %i.bq = phi i32 [ %i.bi, %.lr.ph.i63.preheader ], [ %i.bo, %.lr.ph.i63 ]
  %i.br = phi i64 [ %i.bg, %.lr.ph.i63.preheader ], [ %i.bm, %.lr.ph.i63 ]
  %.02531.i66172 = phi ptr [ %i.bf, %.lr.ph.i63.preheader ], [ %i.bl, %.lr.ph.i63 ] ; 2 uses
  %.02432.i65171 = phi i32 [ %i.be, %.lr.ph.i63.preheader ], [ %i.ck, %.lr.ph.i63 ]
  %indvars.iv.i64170 = phi i64 [ 0, %.lr.ph.i63.preheader ], [ %indvars.iv.next.i71, %.lr.ph.i63 ] ; 3 uses
  %i.bs = getelementptr [32 x i8], ptr %i.e, i64 %indvars.iv.i64170 ; 5 uses
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = and i64 %i.bt, -3
  store i64 %i.bu, ptr %i.bs, align 8
  %i.bv = load i64, ptr @vmemmap_base, align 8    ; 2 uses
  %i.bw = and i64 %i.bv, 3
  %.not.i.i.i.i69 = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i69, label %sg_set_buf.exit.i70, label %bb.g, !prof !19

bb.g:                                             ; preds = %bb.f
  call void asm sideeffect "536: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 536b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 536) #15, !srcloc !32
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.17, i32 137, i32 0, i64 16) #15, !srcloc !33
  unreachable

sg_set_buf.exit.i70:                              ; preds = %bb.f
  %i.bx = add i64 %i.br, 2147483648
  %i.by = icmp ugt ptr %.02531.i66172, inttoptr (i64 -2147483649 to ptr)
  %i.bz = load i64, ptr @phys_base, align 8
  %i.ca = load i64, ptr @page_offset_base, align 8
  %i.cb = sub i64 -2147483648, %i.ca
  %i.cc = select i1 %i.by, i64 %i.bz, i64 %i.cb
  %i.cd = add i64 %i.bx, %i.cc
  %i.ce = lshr i64 %i.cd, 6
  %.idx.i.i72 = and i64 %i.ce, 288230376151711680
  %i.cf = add i64 %.idx.i.i72, %i.bv
  %i.cg = and i64 %i.bt, 1
  %i.ch = or disjoint i64 %i.cf, %i.cg
  store i64 %i.ch, ptr %i.bs, align 8
  %i.ci = getelementptr i8, ptr %i.bs, i64 8
  store i32 %i.bq, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %i.bs, i64 12
  store i32 %spec.select.i67173, ptr %i.cj, align 4
  %i.ck = sub i32 %.02432.i65171, %spec.select.i67173 ; 3 uses
  %.not.i73 = icmp eq i32 %i.ck, 0
  br i1 %.not.i73, label %pack_sg_list.exit77.thread87, label %.lr.ph.i63, !llvm.loop !29

pack_sg_list.exit77.thread87:                     ; preds = %sg_set_buf.exit.i70
  %sext.i75 = shl nuw nsw i64 %indvars.iv.i64170, 5
  %i.cl = getelementptr i8, ptr %i.e, i64 %sext.i75 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = and i64 %i.cm, -4
  %i.co = or disjoint i64 %i.cn, 2
  store i64 %i.co, ptr %i.cl, align 8
  br label %bb.h

bb.h:                                             ; preds = %pack_sg_list.exit77.thread87, %pack_sg_list.exit
  %.04693 = phi i32 [ 0, %pack_sg_list.exit77.thread87 ], [ 1, %pack_sg_list.exit ] ; 2 uses
  %.0.lcssa38.i8092 = phi i64 [ 0, %pack_sg_list.exit77.thread87 ], [ %indvars.iv.next.i, %pack_sg_list.exit ]
  %i.cp = getelementptr [32 x i8], ptr %i.e, i64 %.0.lcssa38.i8092
  %i.cq = zext nneg i32 %.04693 to i64
  %i.cr = getelementptr [8 x i8], ptr %i.a, i64 %i.cq
  store ptr %i.cp, ptr %i.cr, align 8
  br label %pack_sg_list.exit77.thread

pack_sg_list.exit77.thread:                       ; preds = %.split, %bb.h, %pack_sg_list.exit
  %.04686 = phi i32 [ %.04693, %bb.h ], [ 1, %pack_sg_list.exit ], [ 0, %.split ]
  %.050 = phi i32 [ 1, %bb.h ], [ 0, %pack_sg_list.exit ], [ 0, %.split ]
  %i.cs = load ptr, ptr %i.j, align 8
  %i.ct = call i32 @virtqueue_add_sgs(ptr noundef %i.cs, ptr noundef nonnull %i.a, i32 noundef %.04686, i32 noundef %.050, ptr noundef %1, i32 noundef 2080) #12 ; 2 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %bb.i, label %bb.o

bb.i:                                             ; preds = %pack_sg_list.exit77.thread
  %i.cv = icmp eq i32 %i.ct, -28
  br i1 %i.cv, label %bb.j, label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.k, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.d, i64 noundef %i.m) #12
  %i.cw = call i32 @__SCT__might_resched() #12    ; 0 uses
  %i.cx = load i32, ptr %i.k, align 8
  %.not57 = icmp eq i32 %i.cx, 0
  br i1 %.not57, label %bb.k, label %.critedge.backedge

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %i.cy = load ptr, ptr %i.l, align 8
  %i.cz = call i64 @prepare_to_wait_event(ptr noundef %i.cy, ptr noundef nonnull %2, i32 noundef 258) #12 ; 2 uses
  %i.da = load i32, ptr %i.k, align 8
  %.not58 = icmp eq i32 %i.da, 0
  br i1 %.not58, label %bb.m, label %.thread98.thread

bb.m:                                             ; preds = %bb.l
  %.not59 = icmp eq i64 %i.cz, 0
  br i1 %.not59, label %bb.n, label %.thread98

bb.n:                                             ; preds = %bb.m
  call void @io_schedule() #12
  %i.db = load i32, ptr %i.k, align 8
  %.not60 = icmp eq i32 %i.db, 0
  br i1 %.not60, label %bb.l, label %.thread98.thread

.thread98.thread:                                 ; preds = %bb.n, %bb.l
  %i.dc = load ptr, ptr %i.l, align 8
  call void @finish_wait(ptr noundef %i.dc, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %.thread98.thread, %bb.j, %.thread98
  br label %.critedge

.thread98:                                        ; preds = %bb.m
  %i.dd = and i64 %i.cz, 4294967295
  %i.de = icmp eq i64 %i.dd, 4294966784
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %i.de, label %.loopexit, label %.critedge.backedge

bb.o:                                             ; preds = %pack_sg_list.exit77.thread
  %i.df = load ptr, ptr %i.j, align 8
  %i.dg = call zeroext i1 @virtqueue_kick(ptr noundef %i.df) #12 ; 0 uses
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.i, %bb.o
  %.0.ph = phi i32 [ 0, %bb.o ], [ -5, %bb.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.d, i64 noundef %i.m) #12
  br label %.loopexit

.loopexit:                                        ; preds = %.thread98, %.loopexit.sink.split
  %.0 = phi i32 [ %.0.ph, %.loopexit.sink.split ], [ -512, %.thread98 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal noundef i32 @p9_virtio_cancel(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #10 align 16 prefalign(16) {
bb.a:
  ret i32 1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @p9_virtio_cancelled(ptr noundef %0, ptr noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @p9_req_put(ptr noundef %0, ptr noundef %1) #12 ; 0 uses
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p9_virtio_zc_request(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca [4 x ptr], align 16               ; 8 uses
  %i.d = alloca i64, align 8                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %7 = alloca %struct.wait_queue_entry, align 8   ; 7 uses
  %8 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i32 0, ptr %i.e, align 4
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call fastcc i32 @p9_get_mapped_pages(ptr noundef %i.g, ptr noundef nonnull %i.b, ptr noundef %3, i32 noundef %5, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17, !srcloc !34 ; 6 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.d, align 8
  %narrow = add nuw i32 %i.h, 4095
  %i.k = zext i32 %narrow to i64
  %i.l = add i64 %i.j, %i.k
  %i.m = lshr i64 %i.l, 12
  %i.n = trunc i64 %i.m to i32
  %.not169 = icmp eq i32 %i.h, %5
  br i1 %.not169, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %1, i64 40
  %i.p = getelementptr i8, ptr %1, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i32, ptr %i.o, align 8
  %i.s = add i32 %i.r, -4
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  store i32 %i.h, ptr %i.u, align 1
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  %.0127 = phi i32 [ %i.h, %bb.d ], [ %5, %bb.c ] ; 2 uses
  %i.v = getelementptr i8, ptr %1, i64 40
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, %.0127
  %i.y = getelementptr i8, ptr %1, i64 72
  %i.z = load ptr, ptr %i.y, align 8
  store i32 %i.x, ptr %i.z, align 1
  br label %.thread189

bb.e:                                             ; preds = %bb.a
  %.not167 = icmp eq ptr %2, null
  br i1 %.not167, label %.thread189, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = call fastcc i32 @p9_get_mapped_pages(ptr noundef %i.g, ptr noundef nonnull %i.a, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17, !srcloc !35 ; 6 uses
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.d, align 8
  %narrow239 = add nuw i32 %i.aa, 4095
  %i.ad = zext i32 %narrow239 to i64
  %i.ae = add i64 %i.ac, %i.ad
  %i.af = lshr i64 %i.ae, 12
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %.not168 = icmp eq i32 %i.aa, %4
  br i1 %.not168, label %.thread189, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr i8, ptr %1, i64 40
  %i.ai = getelementptr i8, ptr %1, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load i32, ptr %i.ah, align 8
  %i.al = add i32 %i.ak, -4
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr i8, ptr %i.aj, i64 %i.am
  store i32 %i.aa, ptr %i.an, align 1
  br label %.thread189

.thread189:                                       ; preds = %bb.g, %bb.h, %.thread, %bb.e
  %.1145 = phi i32 [ %i.n, %.thread ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.g ] ; 6 uses
  %.1142 = phi i32 [ 0, %.thread ], [ 0, %bb.e ], [ %i.ag, %bb.h ], [ %i.ag, %bb.g ] ; 6 uses
  %.2129 = phi i32 [ %.0127, %.thread ], [ %5, %bb.e ], [ %5, %bb.h ], [ %5, %bb.g ]
  %.2 = phi i32 [ %4, %.thread ], [ %4, %bb.e ], [ %i.aa, %bb.h ], [ %4, %bb.g ]
  store volatile i32 2, ptr %1, align 8
  %i.ao = getelementptr i8, ptr %i.g, i64 4       ; 4 uses
  %i.ap = getelementptr i8, ptr %i.g, i64 56      ; 9 uses
  %i.aq = getelementptr i8, ptr %1, i64 40
  %i.ar = getelementptr i8, ptr %1, i64 72
  %i.as = getelementptr i8, ptr %1, i64 120       ; 2 uses
  %i.at = getelementptr i8, ptr %i.g, i64 24      ; 2 uses
  %i.au = getelementptr i8, ptr %i.g, i64 32      ; 4 uses
  %i.av = getelementptr i8, ptr %i.g, i64 40      ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.thread189
  %i.aw = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ao) #12 ; 3 uses
  %i.ax = load i32, ptr %i.aq, align 8            ; 3 uses
  %.not30.i = icmp eq i32 %i.ax, 0
  br i1 %.not30.i, label %pack_sg_list.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.critedge
  %i.ay = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 4095                     ; 2 uses
  %i.bc = sub nuw nsw i32 4096, %i.bb
  %spec.select.i280 = call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.ax)
  br label %bb.j

.lr.ph.i:                                         ; preds = %sg_set_buf.exit.i
  %i.bd = sext i32 %spec.select.i284 to i64
  %i.be = getelementptr i8, ptr %.02531.i283, i64 %i.bd ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 4095                     ; 2 uses
  %i.bi = sub nuw nsw i32 4096, %i.bh
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.bi, i32 %i.cd)
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 128
  br i1 %exitcond.i, label %bb.i, label %bb.j, !prof !28, !llvm.loop !29

bb.i:                                             ; preds = %.lr.ph.i
  call void asm sideeffect "965: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 965b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 965) #15, !srcloc !30
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.16, i32 180, i32 0, i64 16) #15, !srcloc !31
  unreachable

bb.j:                                             ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %spec.select.i284 = phi i32 [ %spec.select.i280, %.lr.ph.i.preheader ], [ %spec.select.i, %.lr.ph.i ] ; 3 uses
  %i.bj = phi i32 [ %i.bb, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i ]
  %i.bk = phi i64 [ %i.az, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i ]
  %.02531.i283 = phi ptr [ %i.ay, %.lr.ph.i.preheader ], [ %i.be, %.lr.ph.i ] ; 2 uses
  %.02432.i282 = phi i32 [ %i.ax, %.lr.ph.i.preheader ], [ %i.cd, %.lr.ph.i ]
  %indvars.iv.i281 = phi i64 [ 0, %.lr.ph.i.preheader ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.bl = getelementptr [32 x i8], ptr %i.ap, i64 %indvars.iv.i281 ; 5 uses
  %i.bm = load i64, ptr %i.bl, align 8            ; 2 uses
  %i.bn = and i64 %i.bm, -3
  store i64 %i.bn, ptr %i.bl, align 8
  %i.bo = load i64, ptr @vmemmap_base, align 8    ; 2 uses
  %i.bp = and i64 %i.bo, 3
  %.not.i.i.i.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i.i.i.i, label %sg_set_buf.exit.i, label %bb.k, !prof !19

bb.k:                                             ; preds = %bb.j
  call void asm sideeffect "536: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 536b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 536) #15, !srcloc !32
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.6, ptr nonnull @.str.17, i32 137, i32 0, i64 16) #15, !srcloc !33
  unreachable

sg_set_buf.exit.i:                                ; preds = %bb.j
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i281, 1 ; 3 uses
  %i.bq = add i64 %i.bk, 2147483648
  %i.br = icmp ugt ptr %.02531.i283, inttoptr (i64 -2147483649 to ptr)
  %i.bs = load i64, ptr @phys_base, align 8
  %i.bt = load i64, ptr @page_offset_base, align 8
  %i.bu = sub i64 -2147483648, %i.bt
  %i.bv = select i1 %i.br, i64 %i.bs, i64 %i.bu
  %i.bw = add i64 %i.bq, %i.bv
  %i.bx = lshr i64 %i.bw, 6
  %.idx.i.i = and i64 %i.bx, 288230376151711680
  %i.by = add i64 %.idx.i.i, %i.bo
  %i.bz = and i64 %i.bm, 1
  %i.ca = or disjoint i64 %i.by, %i.bz
  store i64 %i.ca, ptr %i.bl, align 8
  %i.cb = getelementptr i8, ptr %i.bl, i64 8
  store i32 %i.bj, ptr %i.cb, align 8
  %i.cc = getelementptr i8, ptr %i.bl, i64 12
  store i32 %spec.select.i284, ptr %i.cc, align 4
  %i.cd = sub i32 %.02432.i282, %spec.select.i284 ; 3 uses
  %.not.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i, label %pack_sg_list.exit, label %.lr.ph.i, !llvm.loop !29

pack_sg_list.exit:                                ; preds = %sg_set_buf.exit.i
  %sext.i = shl nuw nsw i64 %indvars.iv.i281, 5
  %i.ce = getelementptr i8, ptr %i.ap, i64 %sext.i ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = and i64 %i.cf, -4
  %i.ch = or disjoint i64 %i.cg, 2
  store i64 %i.ch, ptr %i.ce, align 8
  %i.ci = trunc nsw i64 %indvars.iv.next.i to i32
  store ptr %i.ap, ptr %i.c, align 16
  br label %pack_sg_list.exit.thread

pack_sg_list.exit.thread:                         ; preds = %.critedge, %pack_sg_list.exit
  %.0.lcssa38.i196 = phi i32 [ %i.ci, %pack_sg_list.exit ], [ 0, %.critedge ] ; 4 uses
  %.0137 = phi i32 [ 1, %pack_sg_list.exit ], [ 0, %.critedge ] ; 3 uses
  %i.cj = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not171 = icmp eq ptr %i.cj, null
  br i1 %.not171, label %bb.m, label %bb.l

bb.l:                                             ; preds = %pack_sg_list.exit.thread
  %i.ck = sext i32 %.0.lcssa38.i196 to i64
  %i.cl = getelementptr [32 x i8], ptr %i.ap, i64 %i.ck
  %i.cm = add nuw nsw i32 %.0137, 1
  %i.cn = zext nneg i32 %.0137 to i64
  %i.co = getelementptr [8 x i8], ptr %i.c, i64 %i.cn
  store ptr %i.cl, ptr %i.co, align 8
  %i.cp = load i64, ptr %i.d, align 8
  %i.cq = call fastcc i32 @pack_sg_list_p(ptr noundef %i.ap, i32 noundef %.0.lcssa38.i196, ptr noundef nonnull %i.cj, i32 noundef %.1145, i64 noundef %i.cp, i32 noundef %.2129) #17
  %i.cr = add i32 %i.cq, %.0.lcssa38.i196
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %pack_sg_list.exit.thread
  %.1138 = phi i32 [ %i.cm, %bb.l ], [ %.0137, %pack_sg_list.exit.thread ] ; 3 uses
  %.0130 = phi i32 [ %i.cr, %bb.l ], [ %.0.lcssa38.i196, %pack_sg_list.exit.thread ] ; 4 uses
  %i.cs = load ptr, ptr %i.as, align 8
  %i.ct = call fastcc i32 @pack_sg_list(ptr noundef %i.ap, i32 noundef %.0130, ptr noundef %i.cs, i32 noundef %6) #17 ; 3 uses
  %.not172 = icmp eq i32 %i.ct, 0
  br i1 %.not172, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cu = sext i32 %.0130 to i64
  %i.cv = getelementptr [32 x i8], ptr %i.ap, i64 %i.cu
  %i.cw = zext nneg i32 %.1138 to i64
  %i.cx = getelementptr [8 x i8], ptr %i.c, i64 %i.cw
  store ptr %i.cv, ptr %i.cx, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0139 = phi i32 [ 1, %bb.n ], [ 0, %bb.m ]     ; 3 uses
  %i.cy = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not173 = icmp eq ptr %i.cy, null
  br i1 %.not173, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cz = sext i32 %.0130 to i64
  %i.da = getelementptr [32 x i8], ptr %i.ap, i64 %i.cz
  %i.db = sext i32 %i.ct to i64
  %i.dc = getelementptr [32 x i8], ptr %i.da, i64 %i.db
  %i.dd = add nuw nsw i32 %.0139, 1
  %i.de = add nuw nsw i32 %.0139, %.1138
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr [8 x i8], ptr %i.c, i64 %i.df
  store ptr %i.dc, ptr %i.dg, align 8
  %i.dh = add i32 %i.ct, %.0130
  %i.di = load i64, ptr %i.d, align 8
  %i.dj = call fastcc i32 @pack_sg_list_p(ptr noundef %i.ap, i32 noundef %i.dh, ptr noundef nonnull %i.cy, i32 noundef %.1142, i64 noundef %i.di, i32 noundef %.2) #17 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1140 = phi i32 [ %i.dd, %bb.p ], [ %.0139, %bb.o ]
  %i.dk = load ptr, ptr %i.at, align 8
  %i.dl = call i32 @virtqueue_add_sgs(ptr noundef %i.dk, ptr noundef nonnull %i.c, i32 noundef %.1138, i32 noundef %.1140, ptr noundef %1, i32 noundef 2080) #12 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.dn = icmp eq i32 %i.dl, -28
  br i1 %i.dn, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.au, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ao, i64 noundef %i.aw) #12
  %i.do = call i32 @__SCT__might_resched() #12    ; 0 uses
  %i.dp = load i32, ptr %i.au, align 8
  %.not175 = icmp eq i32 %i.dp, 0
  br i1 %.not175, label %bb.t, label %.critedge.backedge

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %7, i32 noundef 0) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %i.dq = load ptr, ptr %i.av, align 8
  %i.dr = call i64 @prepare_to_wait_event(ptr noundef %i.dq, ptr noundef nonnull %7, i32 noundef 258) #12 ; 2 uses
  %i.ds = load i32, ptr %i.au, align 8
  %.not176 = icmp eq i32 %i.ds, 0
  br i1 %.not176, label %bb.v, label %.thread203.thread

bb.v:                                             ; preds = %bb.u
  %.not177 = icmp eq i64 %i.dr, 0
  br i1 %.not177, label %bb.w, label %.thread203

bb.w:                                             ; preds = %bb.v
  call void @io_schedule() #12
  %i.dt = load i32, ptr %i.au, align 8
  %.not178 = icmp eq i32 %i.dt, 0
  br i1 %.not178, label %bb.u, label %.thread203.thread

.thread203.thread:                                ; preds = %bb.w, %bb.u
  %i.du = load ptr, ptr %i.av, align 8
  call void @finish_wait(ptr noundef %i.du, ptr noundef nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %.thread203.thread, %bb.s, %.thread203
  br label %.critedge

.thread203:                                       ; preds = %bb.v
  %i.dv = and i64 %i.dr, 4294967295
  %i.dw = icmp eq i64 %i.dv, 4294966784
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br i1 %i.dw, label %.loopexit, label %.critedge.backedge

bb.x:                                             ; preds = %bb.r
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ao, i64 noundef %i.aw) #12
  br label %.loopexit

bb.y:                                             ; preds = %bb.q
  %i.dx = load ptr, ptr %i.at, align 8
  %i.dy = call zeroext i1 @virtqueue_kick(ptr noundef %i.dx) #12 ; 0 uses
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ao, i64 noundef %i.aw) #12
  %i.dz = call i32 @__SCT__might_resched() #12    ; 0 uses
  %i.ea = load volatile i32, ptr %1, align 8
  %i.eb = icmp sgt i32 %i.ea, 2
  br i1 %i.eb, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %8, i32 noundef 0) #12
  %i.ec = getelementptr i8, ptr %1, i64 16        ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ac, %bb.z
  %i.ed = call i64 @prepare_to_wait_event(ptr noundef %i.ec, ptr noundef nonnull %8, i32 noundef 258) #12 ; 2 uses
  %i.ee = load volatile i32, ptr %1, align 8
  %i.ef = icmp sgt i32 %i.ee, 2
  br i1 %i.ef, label %select.unfold206, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not174 = icmp eq i64 %i.ed, 0
  br i1 %.not174, label %bb.ac, label %.thread213.loopexit

bb.ac:                                            ; preds = %bb.ab
  call void @io_schedule() #12
  %i.eg = load volatile i32, ptr %1, align 8
  %i.eh = icmp sgt i32 %i.eg, 2
  br i1 %i.eh, label %select.unfold206, label %bb.aa

select.unfold206:                                 ; preds = %bb.ac, %bb.aa
  call void @finish_wait(ptr noundef %i.ec, ptr noundef nonnull %8) #12
  br label %.thread213

.thread213.loopexit:                              ; preds = %bb.ab
  %i.ei = trunc i64 %i.ed to i32
  br label %.thread213

.thread213:                                       ; preds = %.thread213.loopexit, %select.unfold206
  %.1132211 = phi i32 [ 0, %select.unfold206 ], [ %i.ei, %.thread213.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %bb.ad

bb.ad:                                            ; preds = %.thread213, %bb.y
  %.0136 = phi i32 [ 0, %bb.y ], [ %.1132211, %.thread213 ] ; 3 uses
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !36
  %i.ej = load volatile i32, ptr %1, align 8
  %i.ek = icmp eq i32 %i.ej, 3
  br i1 %i.ek, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.el = load ptr, ptr %i.as, align 8
  %i.em = getelementptr i8, ptr %i.el, i64 4
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = icmp eq i8 %i.en, 107
  br i1 %i.eo, label %bb.af, label %.loopexit, !prof !37

bb.af:                                            ; preds = %bb.ae
  %i.ep = load i64, ptr %i.d, align 8
  %i.eq = load ptr, ptr %i.a, align 8
  call fastcc void @handle_rerror(ptr noundef %1, i32 noundef %6, i64 noundef %i.ep, ptr noundef %i.eq) #17, !srcloc !38
  br label %.loopexit

.loopexit:                                        ; preds = %.thread203, %bb.f, %bb.b, %bb.ad, %bb.ae, %bb.af, %bb.x
  %.not182 = phi i1 [ true, %bb.f ], [ true, %bb.x ], [ false, %bb.af ], [ false, %bb.ae ], [ false, %bb.ad ], [ true, %bb.b ], [ true, %.thread203 ]
  %.2146 = phi i32 [ 0, %bb.f ], [ %.1145, %bb.x ], [ %.1145, %bb.af ], [ %.1145, %bb.ae ], [ %.1145, %bb.ad ], [ 0, %bb.b ], [ %.1145, %.thread203 ] ; 2 uses
  %.2143 = phi i32 [ 0, %bb.f ], [ %.1142, %bb.x ], [ %.1142, %bb.af ], [ %.1142, %bb.ae ], [ %.1142, %bb.ad ], [ 0, %bb.b ], [ %.1142, %.thread203 ] ; 2 uses
  %.2135 = phi i32 [ %i.aa, %bb.f ], [ -5, %bb.x ], [ %.0136, %bb.af ], [ %.0136, %bb.ae ], [ %.0136, %bb.ad ], [ %i.h, %bb.b ], [ -512, %.thread203 ]
  %i.er = load i32, ptr %i.e, align 4
  %.not179 = icmp eq i32 %i.er, 0
  br i1 %.not179, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
end_hunk_0
