Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/dm-ioctl?download=true
inline.NumInlined: 170
inline.NumDeleted: 70
begin_hunk_0_@dev_rename:bb.a
  br label %bb.w

bb.w:                                             ; preds = %bb.y, %.lr.ph.i.i.i
  %i.bt = phi ptr [ %i.br, %.lr.ph.i.i.i ], [ %i.bz, %bb.y ] ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call i32 @strcmp(ptr noundef %i.bv, ptr noundef %i.bs) #21 ; 2 uses
  %.not18.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not18.i.i.i, label %bb.x, label %bb.y, !prof !18

bb.x:                                             ; preds = %bb.w
  tail call void asm sideeffect "867: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 867b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 867) #24, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.17, i32 188, i32 0, i64 16) #24, !srcloc !25
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bx = icmp sgt i32 %i.bw, 0
  %.v.i.i.i = select i1 %i.bx, i64 16, i64 8      ; 2 uses
  %i.by = getelementptr i8, ptr %i.bt, i64 %.v.i.i.i
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.w, !llvm.loop !4

._crit_edge.i.i.i:                                ; preds = %bb.y
  %i.ca = getelementptr i8, ptr %i.bt, i64 %.v.i.i.i
  %i.cb = ptrtoint ptr %i.bt to i64
  br label %__set_cell_uuid.exit.i

__set_cell_uuid.exit.i:                           ; preds = %._crit_edge.i.i.i, %__unlink_uuid.exit.i.i.i
  %.016.lcssa.i.i.i = phi i64 [ %i.cb, %._crit_edge.i.i.i ], [ 0, %__unlink_uuid.exit.i.i.i ]
  %.0.lcssa.i.i.i = phi ptr [ %i.ca, %._crit_edge.i.i.i ], [ @uuid_rb_tree, %__unlink_uuid.exit.i.i.i ]
  %i.cc = getelementptr i8, ptr %.01424.i65.i, i64 24 ; 3 uses
  store i64 %.016.lcssa.i.i.i, ptr %i.cc, align 8
  %i.cd = getelementptr i8, ptr %.01424.i65.i, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  store ptr %i.cc, ptr %.0.lcssa.i.i.i, align 8
  tail call void @rb_insert_color(ptr noundef %i.cc, ptr noundef nonnull @uuid_rb_tree) #21
  br label %bb.ae

.critedge.i:                                      ; preds = %bb.r
  %i.ce = getelementptr i8, ptr %.01424.i65.i, i64 48 ; 5 uses
  %i.cf = load i8, ptr %i.ce, align 8, !range !20, !noundef !21
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.z, label %__unlink_name.exit.i.i

bb.z:                                             ; preds = %.critedge.i
  store i8 0, ptr %i.ce, align 8
  tail call void @rb_erase(ptr noundef nonnull %.01424.i65.i, ptr noundef nonnull @name_rb_tree) #21
  br label %__unlink_name.exit.i.i

__unlink_name.exit.i.i:                           ; preds = %bb.z, %.critedge.i
  %i.ch = load ptr, ptr %i.bg, align 8
  tail call void @mutex_lock(ptr noundef nonnull @dm_hash_cells_mutex) #21
  store ptr %i.ae, ptr %i.bg, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @dm_hash_cells_mutex) #21
  %i.ci = load i8, ptr %i.ce, align 8, !range !20, !noundef !21
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.aa, label %__unlink_name.exit.i.i.i

bb.aa:                                            ; preds = %__unlink_name.exit.i.i
  store i8 0, ptr %i.ce, align 8
  tail call void @rb_erase(ptr noundef nonnull %.01424.i65.i, ptr noundef nonnull @name_rb_tree) #21
  br label %__unlink_name.exit.i.i.i

__unlink_name.exit.i.i.i:                         ; preds = %bb.aa, %__unlink_name.exit.i.i
  store i8 1, ptr %i.ce, align 8
  %i.ck = load ptr, ptr @name_rb_tree, align 8    ; 2 uses
  %.not21.i.i74.i = icmp eq ptr %i.ck, null
  br i1 %.not21.i.i74.i, label %__change_cell_name.exit.i, label %.lr.ph.i.i75.i

.lr.ph.i.i75.i:                                   ; preds = %__unlink_name.exit.i.i.i
  %i.cl = load ptr, ptr %i.bg, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %.lr.ph.i.i75.i
  %i.cm = phi ptr [ %i.ck, %.lr.ph.i.i75.i ], [ %i.cs, %bb.ad ] ; 4 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 56
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = tail call i32 @strcmp(ptr noundef %i.co, ptr noundef %i.cl) #21 ; 2 uses
  %.not18.i.i76.i = icmp eq i32 %i.cp, 0
  br i1 %.not18.i.i76.i, label %bb.ac, label %bb.ad, !prof !18

bb.ac:                                            ; preds = %bb.ab
  tail call void asm sideeffect "866: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 866b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 866) #24, !srcloc !22
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.4, ptr nonnull @.str.17, i32 163, i32 0, i64 16) #24, !srcloc !23
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cq = icmp slt i32 %i.cp, 0
  %.v.i.i77.i = select i1 %i.cq, i64 8, i64 16    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cm, i64 %.v.i.i77.i
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not.i.i78.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i78.i, label %._crit_edge.i.i79.i, label %bb.ab, !llvm.loop !2

._crit_edge.i.i79.i:                              ; preds = %bb.ad
  %i.ct = getelementptr i8, ptr %i.cm, i64 %.v.i.i77.i
  %i.cu = ptrtoint ptr %i.cm to i64
  br label %__change_cell_name.exit.i

__change_cell_name.exit.i:                        ; preds = %._crit_edge.i.i79.i, %__unlink_name.exit.i.i.i
  %.016.lcssa.i.i80.i = phi i64 [ %i.cu, %._crit_edge.i.i79.i ], [ 0, %__unlink_name.exit.i.i.i ]
  %.0.lcssa.i.i81.i = phi ptr [ %i.ct, %._crit_edge.i.i79.i ], [ @name_rb_tree, %__unlink_name.exit.i.i.i ]
  store i64 %.016.lcssa.i.i80.i, ptr %.01424.i65.i, align 8
  %i.cv = getelementptr i8, ptr %.01424.i65.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false)
  store ptr %.01424.i65.i, ptr %.0.lcssa.i.i81.i, align 8
  tail call void @rb_insert_color(ptr noundef nonnull %.01424.i65.i, ptr noundef nonnull @name_rb_tree) #21
  br label %bb.ae

bb.ae:                                            ; preds = %__change_cell_name.exit.i, %__set_cell_uuid.exit.i
  %.042.i = phi ptr [ null, %__set_cell_uuid.exit.i ], [ %i.ch, %__change_cell_name.exit.i ]
  %i.cw = load ptr, ptr %i.bh, align 8
  %i.cx = call ptr @dm_get_live_table(ptr noundef %i.cw, ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not52.i = icmp eq ptr %i.cx, null
  br i1 %.not52.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @dm_table_event(ptr noundef nonnull %i.cx) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cy = load ptr, ptr %i.bh, align 8
  %i.cz = load i32, ptr %i.a, align 4
  call void @dm_put_live_table(ptr noundef %i.cy, i32 noundef %i.cz) #21
  %i.da = load ptr, ptr %i.bh, align 8
  %i.db = getelementptr i8, ptr %1, i64 32
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = call i32 @dm_kobject_uevent(ptr noundef %i.da, i32 noundef 2, i32 noundef %i.dc, i1 noundef zeroext false) #21
  %.not53.i = icmp eq i32 %i.dd, 0
  br i1 %.not53.i, label %bb.ah, label %dm_hash_rename.exit

bb.ah:                                            ; preds = %bb.ag
  %i.de = load i32, ptr %i.f, align 4
  %i.df = or i32 %i.de, 8192
  store i32 %i.df, ptr %i.f, align 4
  br label %dm_hash_rename.exit

dm_hash_rename.exit.thread.sink.split:            ; preds = %.loopexit.i, %bb.t, %bb.p
  %.0.i30.ph.ph = phi ptr [ inttoptr (i64 -16 to ptr), %bb.p ], [ inttoptr (i64 -22 to ptr), %bb.t ], [ inttoptr (i64 -6 to ptr), %.loopexit.i ]
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #21
  tail call void @kfree(ptr noundef nonnull %i.ae) #21
  br label %dm_hash_rename.exit.thread

dm_hash_rename.exit.thread:                       ; preds = %dm_hash_rename.exit.thread.sink.split, %check_name.exit.thread
  %.0.i30.ph = phi ptr [ inttoptr (i64 -12 to ptr), %check_name.exit.thread ], [ %.0.i30.ph.ph, %dm_hash_rename.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.ai

dm_hash_rename.exit:                              ; preds = %bb.ag, %bb.ah
  %i.dg = load ptr, ptr %i.bh, align 8            ; 4 uses
  call void @up_write(ptr noundef nonnull @_hash_lock) #21
  call void @kfree(ptr noundef %.042.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.dh = icmp ugt ptr %i.dg, inttoptr (i64 -4096 to ptr)
  br i1 %i.dh, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %dm_hash_rename.exit.thread, %dm_hash_rename.exit
  %.0.i3036 = phi ptr [ %.0.i30.ph, %dm_hash_rename.exit.thread ], [ %i.dg, %dm_hash_rename.exit ]
  %i.di = ptrtoint ptr %.0.i3036 to i64
  %i.dj = trunc i64 %i.di to i32
  br label %check_name.exit

bb.aj:                                            ; preds = %dm_hash_rename.exit
  call fastcc void @__dev_status(ptr noundef %i.dg, ptr noundef %1) #20, !srcloc !59
  call void @dm_put(ptr noundef %i.dg) #21
  br label %check_name.exit

check_name.exit:                                  ; preds = %bb.j, %bb.h, %bb.aj, %bb.ai, %invalid_str.exit
  %.0 = phi i32 [ -22, %invalid_str.exit ], [ %i.dj, %bb.ai ], [ 0, %bb.aj ], [ -22, %bb.h ], [ -22, %bb.j ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_suspend(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 28         ; 7 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @down_read(ptr noundef nonnull @_hash_lock) #21
  %i.d = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %1) #20, !srcloc !27 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %find_device.exit.thread.i, label %find_device.exit.i

find_device.exit.thread.i:                        ; preds = %bb.b
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #21
  br label %do_suspend.exit

find_device.exit.i:                               ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #21
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %do_suspend.exit, label %bb.c

bb.c:                                             ; preds = %find_device.exit.i
  %i.g = load i32, ptr %i.a, align 4              ; 2 uses
  %i.h = tail call i32 @dm_suspended_md(ptr noundef nonnull %i.f) #21
  %.not22.i = icmp eq i32 %i.h, 0
  br i1 %.not22.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %3 = and i32 %i.g, 2048
  %.not21.i = icmp eq i32 %3, 0
  %i.i = lshr i32 %i.g, 10
  %i.j = and i32 %i.i, 1
  %.1.v.i = select i1 %.not21.i, i32 1, i32 3
  %.1.i = xor i32 %.1.v.i, %i.j
  %i.k = tail call i32 @dm_suspend(ptr noundef nonnull %i.f, i32 noundef %.1.i) #21 ; 2 uses
  %.not23.i = icmp eq i32 %i.k, 0
  br i1 %.not23.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @__dev_status(ptr noundef nonnull %i.f, ptr noundef %1) #20, !srcloc !60
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.115.i = phi i32 [ 0, %bb.e ], [ %i.k, %bb.d ]
  tail call void @dm_put(ptr noundef nonnull %i.f) #21
  br label %do_suspend.exit

bb.g:                                             ; preds = %bb.a
  tail call void @down_write(ptr noundef nonnull @_hash_lock) #21
  %i.l = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %1) #20, !srcloc !61 ; 3 uses
  %.not.i3 = icmp eq ptr %i.l, null
  br i1 %.not.i3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #21
  br label %do_suspend.exit

bb.i:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8              ; 15 uses
  %i.o = getelementptr i8, ptr %i.l, i64 80       ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 6 uses
  store ptr null, ptr %i.o, align 8
  %i.q = load i32, ptr %i.a, align 4
  %i.r = and i32 %i.q, -65
  store i32 %i.r, ptr %i.a, align 4
  %.not91.i = icmp eq ptr %i.p, null
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #21
  br i1 %.not91.i, label %.thread118.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.a, align 4              ; 2 uses
  %i.t = tail call i32 @dm_suspended_md(ptr noundef %i.n) #21
  %.not94.i = icmp eq i32 %i.t, 0
  br i1 %.not94.i, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %4 = and i32 %i.s, 2048
  %.not93.i = icmp eq i32 %4, 0
  %i.u = lshr i32 %i.s, 10
  %i.v = and i32 %i.u, 1
  %.177.v.i = select i1 %.not93.i, i32 1, i32 3
  %.177.i = xor i32 %.177.v.i, %i.v
  %i.w = tail call i32 @dm_suspend(ptr noundef %i.n, i32 noundef %.177.i) #21 ; 2 uses
  %.not95.i = icmp eq i32 %i.w, 0
  br i1 %.not95.i, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @down_write(ptr noundef nonnull @_hash_lock) #21
  %i.x = tail call ptr @dm_get_mdptr(ptr noundef %i.n) #21 ; 2 uses
  %.not96.i = icmp eq ptr %i.x, null
  br i1 %.not96.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr i8, ptr %i.x, i64 80       ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %.not97.i = icmp eq ptr %i.z, null
  br i1 %.not97.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #21
  tail call void @dm_sync_table(ptr noundef %i.n) #21
  tail call void @dm_table_destroy(ptr noundef nonnull %i.p) #21
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store ptr %i.p, ptr %i.y, align 8
  tail call void @up_write(ptr noundef nonnull @_hash_lock) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.078113.i = phi i32 [ %i.w, %bb.o ], [ -6, %bb.n ]
  tail call void @dm_put(ptr noundef %i.n) #21
  br label %do_suspend.exit

bb.q:                                             ; preds = %bb.k, %bb.j
  %i.aa = getelementptr i8, ptr %i.n, i64 160     ; 2 uses
  %.val109.i = load ptr, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %.val109.i, i64 64
  %.val109.val.i = load ptr, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %.val109.val.i, i64 8
  %.val109.val.val.i = load i64, ptr %i.ac, align 8 ; 2 uses
  %i.ad = tail call ptr @dm_swap_table(ptr noundef %i.n, ptr noundef nonnull %i.p) #21 ; 3 uses
  %i.ae = icmp ugt ptr %i.ad, inttoptr (i64 -4096 to ptr)
  br i1 %i.ae, label %bb.r, label %.thread118.sink.split.i

bb.r:                                             ; preds = %bb.q
  tail call void @dm_sync_table(ptr noundef %i.n) #21
  tail call void @dm_table_destroy(ptr noundef nonnull %i.p) #21
  tail call void @dm_put(ptr noundef %i.n) #21
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = trunc i64 %i.af to i32
  br label %do_suspend.exit

.thread118.sink.split.i:                          ; preds = %bb.q
  %.val.i = load ptr, ptr %i.aa, align 8
  %i.ah = getelementptr i8, ptr %.val.i, i64 64
  %.val.val.i = load ptr, ptr %i.ah, align 8
  %i.ai = getelementptr i8, ptr %.val.val.i, i64 8
  %.val.val.val.i = load i64, ptr %i.ai, align 8  ; 2 uses
  %i.aj = icmp ne i64 %.val109.val.val.i, 0
  %i.ak = icmp ne i64 %.val.val.val.i, 0
  %or.cond.not127.not130.i = select i1 %i.aj, i1 %i.ak, i1 false
  %.not99.i = icmp ne i64 %.val109.val.val.i, %.val.val.val.i
  %or.cond107.not.i = select i1 %or.cond.not127.not130.i, i1 %.not99.i, i1 false
  %i.al = tail call i32 @dm_table_get_mode(ptr noundef nonnull %i.p) #21
  %i.am = and i32 %i.al, 2
  %.not100.i = icmp eq i32 %i.am, 0
  %i.an = tail call ptr @dm_disk(ptr noundef %i.n) #21
  tail call void @set_disk_ro(ptr noundef %i.an, i1 noundef zeroext %.not100.i) #21
  br label %.thread118.i

.thread118.i:                                     ; preds = %.thread118.sink.split.i, %bb.i
  %.172.i = phi ptr [ null, %bb.i ], [ %i.ad, %.thread118.sink.split.i ] ; 2 uses
  %.2.i = phi i1 [ false, %bb.i ], [ %or.cond107.not.i, %.thread118.sink.split.i ]
  %i.ao = tail call i32 @dm_suspended_md(ptr noundef %i.n) #21
  %.not101.i = icmp eq i32 %i.ao, 0
  br i1 %.not101.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.thread118.i
  %i.ap = tail call i32 @dm_resume(ptr noundef %i.n) #21 ; 2 uses
  %.not102.i = icmp eq i32 %i.ap, 0
  br i1 %.not102.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.aq = getelementptr i8, ptr %1, i64 32
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = tail call i32 @dm_kobject_uevent(ptr noundef %i.n, i32 noundef 2, i32 noundef %i.ar, i1 noundef zeroext %.2.i) #21
  %.not104.i = icmp eq i32 %i.as, 0
  br i1 %.not104.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.at = load i32, ptr %i.a, align 4
  %i.au = or i32 %i.at, 8192
  store i32 %i.au, ptr %i.a, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %.thread118.i
  %.4.i = phi i32 [ %i.ap, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ], [ 0, %.thread118.i ] ; 2 uses
  %.not105.i = icmp eq ptr %.172.i, null
  br i1 %.not105.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @dm_table_destroy(ptr noundef nonnull %.172.i) #21
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.not106.i = icmp eq i32 %.4.i, 0
  br i1 %.not106.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call fastcc void @__dev_status(ptr noundef %i.n, ptr noundef %1) #20, !srcloc !62
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call void @dm_put(ptr noundef %i.n) #21
  br label %do_suspend.exit

do_suspend.exit:                                  ; preds = %bb.z, %bb.r, %bb.p, %bb.h, %bb.f, %find_device.exit.i, %find_device.exit.thread.i
  %.0 = phi i32 [ -6, %find_device.exit.thread.i ], [ %.115.i, %bb.f ], [ -6, %find_device.exit.i ], [ %.4.i, %bb.z ], [ -6, %bb.h ], [ %i.ag, %bb.r ], [ %.078113.i, %bb.p ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -6, 1) i32 @dev_status(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 %2) #0 align 16 prefalign(16) {
bb.a:
  tail call void @down_read(ptr noundef nonnull @_hash_lock) #21
  %i.a = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %1) #20, !srcloc !27 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %find_device.exit.thread, label %find_device.exit

find_device.exit.thread:                          ; preds = %bb.a
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #21
  br label %bb.c

find_device.exit:                                 ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #21
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %find_device.exit
  tail call fastcc void @__dev_status(ptr noundef nonnull %i.c, ptr noundef %1) #20, !srcloc !63
  tail call void @dm_put(ptr noundef nonnull %i.c) #21
  br label %bb.c

bb.c:                                             ; preds = %find_device.exit.thread, %find_device.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -6, %find_device.exit ], [ -6, %find_device.exit.thread ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -512, 1) i32 @dev_wait(ptr nofree readnone captures(none) %0, ptr noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  tail call void @down_read(ptr noundef nonnull @_hash_lock) #21
  %i.b = tail call fastcc ptr @__find_device_hash_cell(ptr noundef %1) #20, !srcloc !27 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %find_device.exit.thread, label %find_device.exit

find_device.exit.thread:                          ; preds = %bb.a
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #21
  br label %bb.j

find_device.exit:                                 ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 7 uses
  tail call void @up_read(ptr noundef nonnull @_hash_lock) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %find_device.exit
  store i32 0, ptr %i.a, align 4, !annotation !19
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call i32 @dm_wait_event(ptr noundef nonnull %i.d, i32 noundef %i.f) #21
  %.not18 = icmp eq i32 %i.g, 0
  br i1 %.not18, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @__dev_status(ptr noundef nonnull %i.d, ptr noundef %1) #20, !srcloc !64
  %i.h = getelementptr i8, ptr %1, i64 28
  %.val = load i32, ptr %i.h, align 4
  %i.i = and i32 %.val, 4096
  %.not.i20 = icmp eq i32 %i.i, 0
  %i.j = call ptr @dm_get_live_table(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #21
  br i1 %.not.i20, label %dm_get_live_or_inactive_table.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @down_read(ptr noundef nonnull @_hash_lock) #21
  %i.k = call ptr @dm_get_mdptr(ptr noundef nonnull %i.d) #21 ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #23 ; 0 uses
  br label %dm_get_inactive_table.exit.i

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.k, i64 80
  %i.n = load ptr, ptr %i.m, align 8
end_hunk_0
