inline.NumInlined: 48
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__SCT__WARN_trap
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unpin_user_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @iov_iter_bvec(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @netfs_limit_iter(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.xa_state, align 8           ; 10 uses
  %.val = load i8, ptr %0, align 8
  switch i8 %.val, label %bb.ae [
    i8 4, label %.critedge.i
    i8 2, label %.critedge85.i
    i8 5, label %.critedge.i30
    i8 3, label %.critedge85.i38
  ]

.critedge.i:                                      ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8               ; 2 uses
  %i.e = zext nneg i8 %i.d to i32
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %.thread.i, label %bb.b, !prof !15

.thread.i:                                        ; preds = %.critedge.i
  tail call void asm sideeffect "839: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 839b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 839) #7, !srcloc !27
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 261, i32 2305, i64 16) #7, !srcloc !28
  tail call void asm sideeffect "840: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 840b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 840) #7, !srcloc !29
  br label %netfs_limit_folioq.exit

bb.b:                                             ; preds = %.critedge.i
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %netfs_limit_folioq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = sub nuw i64 %i.g, %1
  %i.k = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.j) ; 2 uses
  %i.l = icmp ugt i8 %i.d, 30
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.b, i64 288
  %i.n = load ptr, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.061.i = phi i32 [ 0, %bb.d ], [ %i.e, %bb.c ]
  %.057.i = phi ptr [ %i.n, %bb.d ], [ %i.b, %bb.c ]
  %i.o = getelementptr i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, %1
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.066.i = phi i64 [ 0, %bb.e ], [ %.167.i, %bb.i ]
  %.162.i = phi i32 [ %.061.i, %bb.e ], [ %.364.i, %bb.i ] ; 3 uses
  %.059.i = phi i32 [ 0, %bb.e ], [ %.160.i, %bb.i ]
  %.158.i = phi ptr [ %.057.i, %bb.e ], [ %.3.i, %bb.i ] ; 3 uses
  %.056.i = phi i64 [ %i.q, %bb.e ], [ %.1.i, %bb.i ] ; 3 uses
  %i.r = getelementptr i8, ptr %.158.i, i64 256
  %i.s = zext nneg i32 %.162.i to i64
  %i.t = getelementptr i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext nneg i8 %i.u to i64
  %i.w = shl i64 4096, %i.v                       ; 3 uses
  %i.x = icmp ult i64 %.056.i, %i.w
  %i.y = tail call i64 @llvm.usub.sat.i64(i64 %i.w, i64 %.056.i)
  %.167.i = add i64 %i.y, %.066.i                 ; 3 uses
  %i.z = zext i1 %i.x to i32
  %.160.i = add i32 %.059.i, %i.z                 ; 2 uses
  %.1.i = tail call i64 @llvm.usub.sat.i64(i64 %.056.i, i64 %i.w)
  %.not.i = icmp ult i64 %.167.i, %i.k
  %i.aa = zext i32 %.160.i to i64
  %.not74.i = icmp ugt i64 %3, %i.aa
  %or.cond76.i = select i1 %.not.i, i1 %.not74.i, i1 false
  br i1 %or.cond76.i, label %bb.g, label %.thread79.i

bb.g:                                             ; preds = %bb.f
  %i.ab = add nuw nsw i32 %.162.i, 1
  %i.ac = icmp ugt i32 %.162.i, 29
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %.158.i, i64 288
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.364.i = phi i32 [ %i.ab, %bb.g ], [ 0, %bb.h ]
  %.3.i = phi ptr [ %.158.i, %bb.g ], [ %i.ae, %bb.h ] ; 2 uses
  %.not75.i = icmp eq ptr %.3.i, null
  br i1 %.not75.i, label %.thread79.i, label %bb.f, !llvm.loop !30

.thread79.i:                                      ; preds = %bb.i, %bb.f
  %i.af = tail call i64 @llvm.umin.i64(i64 %.167.i, i64 %i.k)
  br label %netfs_limit_folioq.exit

.critedge85.i:                                    ; preds = %bb.a
  %i.ag = getelementptr i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = getelementptr i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.al, align 8            ; 3 uses
  %i.an = getelementptr i8, ptr %0, i64 8
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = add i64 %i.ao, %1
  %i.aq = icmp ugt i64 %1, %i.am
  br i1 %i.aq, label %.thread.i27, label %bb.j, !prof !15

.thread.i27:                                      ; preds = %.critedge85.i
  tail call void asm sideeffect "800: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 800b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 800) #7, !srcloc !31
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 133, i32 2305, i64 16) #7, !srcloc !32
  tail call void asm sideeffect "801: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 801b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 801) #7, !srcloc !33
  br label %netfs_limit_folioq.exit

bb.j:                                             ; preds = %.critedge85.i
  %i.ar = icmp eq i64 %i.am, 0
  br i1 %i.ar, label %netfs_limit_folioq.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.j
  %i.as = and i64 %i.aj, 4294967295               ; 3 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.l, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.l ] ; 5 uses
  %.07389.i = phi i64 [ %i.am, %.preheader.preheader.i ], [ %i.bb, %bb.l ] ; 3 uses
  %.07588.i = phi i64 [ %i.ap, %.preheader.preheader.i ], [ %i.ba, %bb.l ] ; 4 uses
  %i.at = icmp samesign ult i64 %indvars.iv.i, %i.as
  %i.au = icmp ne i64 %.07588.i, 0
  %or.cond3.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond3.i, label %bb.k, label %.critedge.i25

bb.k:                                             ; preds = %.preheader.i
  %i.av = getelementptr [16 x i8], ptr %i.ah, i64 %indvars.iv.i
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = zext i32 %i.ax to i64                   ; 3 uses
  %i.az = icmp ult i64 %.07588.i, %i.ay
  br i1 %i.az, label %.critedge.i25, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = sub nuw i64 %.07588.i, %i.ay
  %i.bb = sub i64 %.07389.i, %i.ay                ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %.not.i26 = icmp eq i64 %i.bb, 0
  br i1 %.not.i26, label %netfs_limit_folioq.exit, label %.preheader.i, !llvm.loop !34

.critedge.i25:                                    ; preds = %bb.k, %.preheader.i
  %.069.lcssa.i = trunc i64 %indvars.iv.i to i32
  %i.bc = icmp ult i32 %.069.lcssa.i, %i.ak
  br i1 %i.bc, label %.lr.ph.preheader.i, label %netfs_limit_folioq.exit

.lr.ph.preheader.i:                               ; preds = %.critedge.i25
  %i.bd = and i64 %indvars.iv.i, 4294967295       ; 2 uses
  %i.be = getelementptr [16 x i8], ptr %i.ah, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8
  %i.bh = zext i32 %i.bg to i64
  %i.bi = sub i64 %i.bh, %.07588.i
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 %2)
  %.174..peel.i = tail call i64 @llvm.umin.i64(i64 %.07389.i, i64 %i.bj) ; 5 uses
  %.not82.peel.i = icmp ult i64 %.174..peel.i, %2
  %.not83.peel.i = icmp ugt i64 %3, 1
  %or.cond86.peel.i = and i1 %.not83.peel.i, %.not82.peel.i
  br i1 %or.cond86.peel.i, label %bb.m, label %._crit_edge.loopexit.i

bb.m:                                             ; preds = %.lr.ph.preheader.i
  %indvars.iv.next100.peel.i = add nuw nsw i64 %i.bd, 1 ; 2 uses
  %i.bk = sub i64 %.07389.i, %.174..peel.i        ; 2 uses
  %i.bl = icmp ne i64 %i.bk, 0
  %i.bm = icmp samesign ult i64 %indvars.iv.next100.peel.i, %i.as
  %i.bn = select i1 %i.bl, i1 %i.bm, i1 false
  br i1 %i.bn, label %.lr.ph.i, label %._crit_edge.loopexit.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.n
  %indvars.iv101.i = phi i64 [ %indvars.iv.next102.i, %bb.n ], [ 1, %bb.m ]
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i, %bb.n ], [ %indvars.iv.next100.peel.i, %bb.m ] ; 2 uses
  %.07193.i = phi i64 [ %i.bt, %bb.n ], [ %.174..peel.i, %bb.m ]
  %.17492.i = phi i64 [ %i.bu, %bb.n ], [ %i.bk, %bb.m ] ; 2 uses
  %i.bo = getelementptr [16 x i8], ptr %i.ah, i64 %indvars.iv99.i
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = load i32, ptr %i.bp, align 8
  %i.br = zext i32 %i.bq to i64
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %2)
  %.174..i = tail call i64 @llvm.umin.i64(i64 %.17492.i, i64 %i.bs) ; 2 uses
  %i.bt = add i64 %.174..i, %.07193.i             ; 4 uses
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %.not82.i = icmp ult i64 %i.bt, %2
  %.not83.i = icmp ugt i64 %3, %indvars.iv.next102.i
  %or.cond86.i = select i1 %.not82.i, i1 %.not83.i, i1 false
  br i1 %or.cond86.i, label %bb.n, label %._crit_edge.loopexit.i

bb.n:                                             ; preds = %.lr.ph.i
  %indvars.iv.next100.i = add nuw nsw i64 %indvars.iv99.i, 1 ; 2 uses
  %i.bu = sub i64 %.17492.i, %.174..i             ; 2 uses
  %i.bv = icmp ne i64 %i.bu, 0
  %i.bw = icmp samesign ult i64 %indvars.iv.next100.i, %i.as
  %i.bx = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %i.bx, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !35

._crit_edge.loopexit.i:                           ; preds = %bb.n, %.lr.ph.i, %bb.m, %.lr.ph.preheader.i
  %.lcssa.i = phi i64 [ %.174..peel.i, %.lr.ph.preheader.i ], [ %.174..peel.i, %bb.m ], [ %i.bt, %.lr.ph.i ], [ %i.bt, %bb.n ]
  %i.by = tail call i64 @llvm.umin.i64(i64 %.lcssa.i, i64 %2)
  br label %netfs_limit_folioq.exit

.critedge.i30:                                    ; preds = %bb.a
  %i.bz = getelementptr i8, ptr %0, i64 32
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %0, i64 8
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = add i64 %i.cc, %i.ca                    ; 2 uses
  %i.ce = lshr i64 %i.cd, 12
  %i.cf = getelementptr i8, ptr %0, i64 16
  %i.cg = getelementptr i8, ptr %0, i64 24
  %i.ch = load i64, ptr %i.cg, align 8            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.ci = load ptr, ptr %i.cf, align 8
  store ptr %i.ci, ptr %4, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i64 %i.ce, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 18 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 0, ptr %i.ck, align 8
  store ptr inttoptr (i64 3 to ptr), ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, i8 0, i64 24, i1 false)
  %i.co = icmp ugt i64 %1, %i.ch
  br i1 %i.co, label %.thread.i35, label %bb.o, !prof !15

.thread.i35:                                      ; preds = %.critedge.i30
  tail call void asm sideeffect "822: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 822b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 822) #7, !srcloc !36
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 219, i32 2305, i64 16) #7, !srcloc !37
  tail call void asm sideeffect "823: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 823b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 823) #7, !srcloc !38
  br label %netfs_limit_xarray.exit

bb.o:                                             ; preds = %.critedge.i30
  %i.cp = icmp eq i64 %i.ch, 0
  br i1 %i.cp, label %netfs_limit_xarray.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = sub nuw i64 %i.ch, %1
  %i.cr = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.cq) ; 3 uses
  tail call void @__rcu_read_lock() #8
  %i.cs = call ptr @xas_find(ptr noundef nonnull %4, i64 noundef -1) #8 ; 2 uses
  %.not94.i = icmp eq ptr %i.cs, null
  br i1 %.not94.i, label %.thread88.i, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.p, %xas_next_entry.exit.i
  %.06597.i = phi ptr [ %.0.i85.i, %xas_next_entry.exit.i ], [ %i.cs, %bb.p ] ; 6 uses
  %.06696.i = phi i32 [ %.1.i32, %xas_next_entry.exit.i ], [ 0, %bb.p ] ; 3 uses
  %.06795.i = phi i64 [ %.168.i, %xas_next_entry.exit.i ], [ 0, %bb.p ] ; 5 uses
  %magicptr.i.i = ptrtoint ptr %.06597.i to i64   ; 2 uses
  switch i64 %magicptr.i.i, label %xas_retry.exit.i [
    i64 1030, label %xas_retry.exit.thread.i
    i64 1026, label %bb.q
  ]

bb.q:                                             ; preds = %.lr.ph.i31
  store ptr inttoptr (i64 3 to ptr), ptr %i.cm, align 8
  br label %xas_retry.exit.thread.i

xas_retry.exit.i:                                 ; preds = %.lr.ph.i31
  %i.ct = trunc i64 %magicptr.i.i to i1
  br i1 %i.ct, label %bb.r, label %.critedge76.i, !prof !15

bb.r:                                             ; preds = %xas_retry.exit.i
  call void asm sideeffect "827: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 827b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 827) #7, !srcloc !39
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 229, i32 2305, i64 16) #7, !srcloc !40
  call void asm sideeffect "828: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 828b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 828) #7, !srcloc !41
  br label %.thread88.i

.critedge76.i:                                    ; preds = %xas_retry.exit.i
  %i.cu = getelementptr i8, ptr %.06597.i, i64 48
  %i.cv = load i32, ptr %i.cu, align 16
  %.mask.i.i = and i32 %i.cv, -16777216
  %i.cw = icmp eq i32 %.mask.i.i, -201326592
  br i1 %i.cw, label %bb.s, label %.critedge78.i, !prof !15

bb.s:                                             ; preds = %.critedge76.i
  call void asm sideeffect "829: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 829b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 829) #7, !srcloc !42
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 231, i32 2305, i64 16) #7, !srcloc !43
  call void asm sideeffect "830: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 830b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 830) #7, !srcloc !44
  br label %.thread88.i

.critedge78.i:                                    ; preds = %.critedge76.i
  %i.cx = load volatile i64, ptr %.06597.i, align 16
  %i.cy = and i64 %i.cx, 64
  %.not.i.i.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i.i.i, label %folio_size.exit.i, label %bb.t

bb.t:                                             ; preds = %.critedge78.i
  %i.cz = getelementptr i8, ptr %.06597.i, i64 64
  %.val.i.i.i = load i64, ptr %i.cz, align 16
  %i.da = and i64 %.val.i.i.i, 255
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %bb.t, %.critedge78.i
  %.0.i.i.i = phi i64 [ %i.da, %bb.t ], [ 0, %.critedge78.i ]
  %i.db = shl i64 4096, %.0.i.i.i
  %i.dc = load volatile i64, ptr %.06597.i, align 16
  %i.dd = and i64 %i.dc, 64
  %.not.i.i80.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i80.i, label %folio_size.exit83.i, label %bb.u

bb.u:                                             ; preds = %folio_size.exit.i
  %i.de = getelementptr i8, ptr %.06597.i, i64 64
  %.val.i.i81.i = load i64, ptr %i.de, align 16
  %i.df = and i64 %.val.i.i81.i, 255
  br label %folio_size.exit83.i

folio_size.exit83.i:                              ; preds = %bb.u, %folio_size.exit.i
  %.0.i.i82.i = phi i64 [ %i.df, %bb.u ], [ 0, %folio_size.exit.i ]
  %i.dg = shl i64 4096, %.0.i.i82.i
  %i.dh = add i64 %i.dg, -1
  %i.di = and i64 %i.dh, %i.cd
  %i.dj = sub i64 %i.db, %i.di
  %i.dk = call i64 @llvm.umin.i64(i64 %i.cr, i64 %i.dj)
  %i.dl = add i64 %i.dk, %.06795.i                ; 3 uses
  %i.dm = add i32 %.06696.i, 1                    ; 2 uses
  %.not73.i = icmp ult i64 %i.dl, %i.cr
  %i.dn = zext i32 %i.dm to i64
  %.not74.i34 = icmp ugt i64 %3, %i.dn
  %or.cond79.i = select i1 %.not73.i, i1 %.not74.i34, i1 false
  br i1 %or.cond79.i, label %xas_retry.exit.thread.i, label %.thread88.i

xas_retry.exit.thread.i:                          ; preds = %folio_size.exit83.i, %bb.q, %.lr.ph.i31
  %.168.i = phi i64 [ %.06795.i, %bb.q ], [ %.06795.i, %.lr.ph.i31 ], [ %i.dl, %folio_size.exit83.i ] ; 2 uses
  %.1.i32 = phi i32 [ %.06696.i, %bb.q ], [ %.06696.i, %.lr.ph.i31 ], [ %i.dm, %folio_size.exit83.i ]
  %i.do = load ptr, ptr %i.cm, align 8            ; 4 uses
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = and i64 %i.dp, 3
  %.not.i.i84.i = icmp ne i64 %i.dq, 0
  %.not2.i.i.i = icmp eq ptr %i.do, null
  %spec.select.i.i.i = or i1 %.not2.i.i.i, %.not.i.i84.i
  br i1 %spec.select.i.i.i, label %.loopexit.sink.split.i.i, label %bb.v, !prof !15

bb.v:                                             ; preds = %xas_retry.exit.thread.i
  %i.dr = load i8, ptr %i.do, align 8
  %.not.i.i = icmp eq i8 %i.dr, 0
  br i1 %.not.i.i, label %bb.w, label %.loopexit.sink.split.i.i, !prof !45

bb.w:                                             ; preds = %bb.v
  %i.ds = load i8, ptr %i.cl, align 2             ; 3 uses
  %i.dt = zext i8 %i.ds to i64
  %i.du = load i64, ptr %i.cj, align 8            ; 3 uses
  %i.dv = and i64 %i.du, 63
  %.not26.i.i = icmp eq i64 %i.dv, %i.dt
  br i1 %.not26.i.i, label %.preheader.i.i, label %.loopexit.sink.split.i.i, !prof !45

.preheader.i.i:                                   ; preds = %bb.w
  %i.dw = getelementptr i8, ptr %i.do, i64 48
  %i.dx = icmp eq i64 %i.du, -1
  %i.dy = icmp eq i8 %i.ds, 63
  %or.cond.i.i140 = or i1 %i.dx, %i.dy
  br i1 %or.cond.i.i140, label %.loopexit.sink.split.i.i, label %.lr.ph, !prof !46

bb.x:                                             ; preds = %bb.y
  %i.dz = icmp eq i64 %i.ek, -1
  %i.ea = icmp eq i8 %i.ej, 63
  %or.cond.i.i = or i1 %i.dz, %i.ea
  br i1 %or.cond.i.i, label %.loopexit.sink.split.i.i, label %.lr.ph, !prof !47, !llvm.loop !48

.lr.ph:                                           ; preds = %.preheader.i.i, %bb.x
  %i.eb = phi i64 [ %i.ek, %bb.x ], [ %i.du, %.preheader.i.i ]
  %i.ec = phi i8 [ %i.ej, %bb.x ], [ %i.ds, %.preheader.i.i ] ; 2 uses
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr [8 x i8], ptr %i.dw, i64 %i.ed
  %i.ef = load volatile ptr, ptr %i.ee, align 8   ; 3 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = and i64 %i.eg, 3
  %i.ei = icmp eq i64 %i.eh, 2
  br i1 %i.ei, label %.loopexit.sink.split.i.i, label %bb.y, !prof !15

bb.y:                                             ; preds = %.lr.ph
  %i.ej = add i8 %i.ec, 1                         ; 3 uses
  store i8 %i.ej, ptr %i.cl, align 2
  %i.ek = add nuw i64 %i.eb, 1                    ; 3 uses
  store i64 %i.ek, ptr %i.cj, align 8
  %.not25.i.i = icmp eq ptr %i.ef, null
  br i1 %.not25.i.i, label %bb.x, label %xas_next_entry.exit.i, !llvm.loop !48

.loopexit.sink.split.i.i:                         ; preds = %bb.x, %.lr.ph, %.preheader.i.i, %bb.w, %bb.v, %xas_retry.exit.thread.i
  %i.el = call ptr @xas_find(ptr noundef nonnull %4, i64 noundef -1) #8
  br label %xas_next_entry.exit.i

xas_next_entry.exit.i:                            ; preds = %bb.y, %.loopexit.sink.split.i.i
  %.0.i85.i = phi ptr [ %i.el, %.loopexit.sink.split.i.i ], [ %i.ef, %bb.y ] ; 2 uses
  %.not.i33 = icmp eq ptr %.0.i85.i, null
  br i1 %.not.i33, label %.thread88.i, label %.lr.ph.i31, !llvm.loop !49

.thread88.i:                                      ; preds = %xas_next_entry.exit.i, %folio_size.exit83.i, %bb.s, %bb.r, %bb.p
  %.2.i = phi i64 [ %.06795.i, %bb.r ], [ %.06795.i, %bb.s ], [ 0, %bb.p ], [ %i.dl, %folio_size.exit83.i ], [ %.168.i, %xas_next_entry.exit.i ]
  call void @__rcu_read_unlock() #8
  %i.em = call i64 @llvm.umin.i64(i64 %.2.i, i64 %i.cr)
  br label %netfs_limit_xarray.exit

netfs_limit_xarray.exit:                          ; preds = %.thread.i35, %bb.o, %.thread88.i
  %.0.i29 = phi i64 [ %i.em, %.thread88.i ], [ 0, %bb.o ], [ 0, %.thread.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %netfs_limit_folioq.exit

.critedge85.i38:                                  ; preds = %bb.a
  %i.en = getelementptr i8, ptr %0, i64 16
  %i.eo = load ptr, ptr %i.en, align 8            ; 3 uses
  %i.ep = getelementptr i8, ptr %0, i64 32
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  %i.es = getelementptr i8, ptr %0, i64 24
  %i.et = load i64, ptr %i.es, align 8            ; 3 uses
  %i.eu = getelementptr i8, ptr %0, i64 8
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = add i64 %i.ev, %1
  %i.ex = icmp ugt i64 %1, %i.et
  br i1 %i.ex, label %.thread.i68, label %bb.z, !prof !15

.thread.i68:                                      ; preds = %.critedge85.i38
  tail call void asm sideeffect "811: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 811b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 811) #7, !srcloc !50
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 174, i32 2305, i64 16) #7, !srcloc !51
  tail call void asm sideeffect "812: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 812b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 812) #7, !srcloc !52
  br label %netfs_limit_folioq.exit

bb.z:                                             ; preds = %.critedge85.i38
  %i.ey = icmp eq i64 %i.et, 0
  br i1 %i.ey, label %netfs_limit_folioq.exit, label %.preheader.preheader.i39

.preheader.preheader.i39:                         ; preds = %bb.z
  %i.ez = and i64 %i.eq, 4294967295               ; 3 uses
  br label %.preheader.i40

.preheader.i40:                                   ; preds = %bb.ab, %.preheader.preheader.i39
  %indvars.iv.i41 = phi i64 [ 0, %.preheader.preheader.i39 ], [ %indvars.iv.next.i66, %bb.ab ] ; 5 uses
  %.07389.i42 = phi i64 [ %i.et, %.preheader.preheader.i39 ], [ %i.fh, %bb.ab ] ; 3 uses
  %.07588.i43 = phi i64 [ %i.ew, %.preheader.preheader.i39 ], [ %i.fg, %bb.ab ] ; 4 uses
  %i.fa = icmp samesign ult i64 %indvars.iv.i41, %i.ez
  %i.fb = icmp ne i64 %.07588.i43, 0
  %or.cond3.i44 = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond3.i44, label %bb.aa, label %.critedge.i45

bb.aa:                                            ; preds = %.preheader.i40
  %i.fc = getelementptr [16 x i8], ptr %i.eo, i64 %indvars.iv.i41
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %i.fe = load i64, ptr %i.fd, align 8            ; 3 uses
  %i.ff = icmp ult i64 %.07588.i43, %i.fe
  br i1 %i.ff, label %.critedge.i45, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = sub nuw i64 %.07588.i43, %i.fe
  %i.fh = sub i64 %.07389.i42, %i.fe              ; 2 uses
  %indvars.iv.next.i66 = add nuw nsw i64 %indvars.iv.i41, 1
  %.not.i67 = icmp eq i64 %i.fh, 0
  br i1 %.not.i67, label %netfs_limit_folioq.exit, label %.preheader.i40, !llvm.loop !53

.critedge.i45:                                    ; preds = %bb.aa, %.preheader.i40
  %.069.lcssa.i46 = trunc i64 %indvars.iv.i41 to i32
  %i.fi = icmp ult i32 %.069.lcssa.i46, %i.er
  br i1 %i.fi, label %.lr.ph.preheader.i47, label %netfs_limit_folioq.exit

.lr.ph.preheader.i47:                             ; preds = %.critedge.i45
  %i.fj = and i64 %indvars.iv.i41, 4294967295     ; 2 uses
  %i.fk = getelementptr [16 x i8], ptr %i.eo, i64 %i.fj
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = sub i64 %i.fm, %.07588.i43
  %i.fo = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 %2)
  %.174..peel.i48 = tail call i64 @llvm.umin.i64(i64 %.07389.i42, i64 %i.fo) ; 5 uses
  %.not82.peel.i49 = icmp ult i64 %.174..peel.i48, %2
  %.not83.peel.i50 = icmp ugt i64 %3, 1
  %or.cond86.peel.i51 = and i1 %.not83.peel.i50, %.not82.peel.i49
  br i1 %or.cond86.peel.i51, label %bb.ac, label %._crit_edge.loopexit.i52

bb.ac:                                            ; preds = %.lr.ph.preheader.i47
  %indvars.iv.next100.peel.i54 = add nuw nsw i64 %i.fj, 1 ; 2 uses
  %i.fp = sub i64 %.07389.i42, %.174..peel.i48    ; 2 uses
  %i.fq = icmp ne i64 %i.fp, 0
  %i.fr = icmp samesign ult i64 %indvars.iv.next100.peel.i54, %i.ez
  %i.fs = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %i.fs, label %.lr.ph.i55, label %._crit_edge.loopexit.i52

.lr.ph.i55:                                       ; preds = %bb.ac, %bb.ad
  %indvars.iv101.i56 = phi i64 [ %indvars.iv.next102.i61, %bb.ad ], [ 1, %bb.ac ]
  %indvars.iv99.i57 = phi i64 [ %indvars.iv.next100.i65, %bb.ad ], [ %indvars.iv.next100.peel.i54, %bb.ac ] ; 2 uses
  %.07193.i58 = phi i64 [ %i.fx, %bb.ad ], [ %.174..peel.i48, %bb.ac ]
  %.17492.i59 = phi i64 [ %i.fy, %bb.ad ], [ %i.fp, %bb.ac ] ; 2 uses
  %i.ft = getelementptr [16 x i8], ptr %i.eo, i64 %indvars.iv99.i57
  %i.fu = getelementptr i8, ptr %i.ft, i64 8
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = tail call i64 @llvm.umin.i64(i64 %i.fv, i64 %2)
  %.174..i60 = tail call i64 @llvm.umin.i64(i64 %.17492.i59, i64 %i.fw) ; 2 uses
  %i.fx = add i64 %.174..i60, %.07193.i58         ; 4 uses
  %indvars.iv.next102.i61 = add nuw nsw i64 %indvars.iv101.i56, 1 ; 2 uses
  %.not82.i62 = icmp ult i64 %i.fx, %2
  %.not83.i63 = icmp ugt i64 %3, %indvars.iv.next102.i61
  %or.cond86.i64 = select i1 %.not82.i62, i1 %.not83.i63, i1 false
  br i1 %or.cond86.i64, label %bb.ad, label %._crit_edge.loopexit.i52

bb.ad:                                            ; preds = %.lr.ph.i55
  %indvars.iv.next100.i65 = add nuw nsw i64 %indvars.iv99.i57, 1 ; 2 uses
  %i.fy = sub i64 %.17492.i59, %.174..i60         ; 2 uses
  %i.fz = icmp ne i64 %i.fy, 0
  %i.ga = icmp samesign ult i64 %indvars.iv.next100.i65, %i.ez
  %i.gb = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %i.gb, label %.lr.ph.i55, label %._crit_edge.loopexit.i52, !llvm.loop !54

._crit_edge.loopexit.i52:                         ; preds = %bb.ad, %.lr.ph.i55, %bb.ac, %.lr.ph.preheader.i47
  %.lcssa.i53 = phi i64 [ %.174..peel.i48, %.lr.ph.preheader.i47 ], [ %.174..peel.i48, %bb.ac ], [ %i.fx, %.lr.ph.i55 ], [ %i.fx, %bb.ad ]
  %i.gc = tail call i64 @llvm.umin.i64(i64 %.lcssa.i53, i64 %2)
  br label %netfs_limit_folioq.exit

bb.ae:                                            ; preds = %bb.a
  tail call void asm sideeffect "847: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 847b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 847) #7, !srcloc !55
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 306, i32 0, i64 16) #7, !srcloc !56
  unreachable

netfs_limit_folioq.exit:                          ; preds = %bb.ab, %bb.l, %._crit_edge.loopexit.i52, %.critedge.i45, %bb.z, %.thread.i68, %._crit_edge.loopexit.i, %.critedge.i25, %bb.j, %.thread.i27, %.thread79.i, %bb.b, %.thread.i, %netfs_limit_xarray.exit
  %.0 = phi i64 [ %i.by, %._crit_edge.loopexit.i ], [ 0, %.thread.i ], [ %.0.i29, %netfs_limit_xarray.exit ], [ %i.af, %.thread79.i ], [ 0, %bb.b ], [ 0, %.thread.i27 ], [ 0, %bb.j ], [ %i.gc, %._crit_edge.loopexit.i52 ], [ 0, %.critedge.i25 ], [ 0, %.thread.i68 ], [ 0, %bb.z ], [ 0, %bb.l ], [ 0, %.critedge.i45 ], [ 0, %bb.ab ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_lock() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__rcu_read_unlock() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind "no-builtin-wcslen" }
attributes #9 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"function_return_thunk_extern", i32 1}
!3 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4 = !{i32 1, !"Code Model", i32 2}
!5 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!6 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!7 = !{i32 1, !"override-stack-alignment", i32 8}
!8 = !{i32 4, !"SkipRaxSetup", i32 1}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!10 = !{!"branch_weights", i32 4001, i32 1}
!11 = !{i64 2157978563, i64 2157978438}
!12 = !{i64 2157979086, i64 2157980167, i64 2157980200, i64 2157980235, i64 2157980251, i64 2157985239, i64 2157985297, i64 2157985346, i64 2157985156, i64 2157980310, i64 2157980342, i64 2157980425}
!13 = !{i64 2157985644, i64 2157985520}
!14 = !{!"auto-init"}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{i64 2157992399, i64 2157992426, i64 2157992832, i64 2157992865, i64 2157992900, i64 2157992916, i64 2157993757, i64 2157993815, i64 2157993864, i64 2157993674, i64 2157992975, i64 2157993007}
!17 = !{i64 2157990730}
!18 = !{i64 2157996533, i64 2157996560, i64 2157996964, i64 2157996997, i64 2157997032, i64 2157997048, i64 2157997889, i64 2157997947, i64 2157997996, i64 2157997806, i64 2157997107, i64 2157997139}
!19 = !{i64 2157994828}
!20 = distinct !{!20, !21, !22}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"llvm.loop.peeled.count", i32 1}
!23 = distinct !{!23, !21}
!24 = distinct !{!24, !21}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = !{i64 2158083942, i64 2158083817}
!28 = !{i64 2158084465, i64 2158085519, i64 2158085552, i64 2158085587, i64 2158085603, i64 2158086530, i64 2158086588, i64 2158086637, i64 2158086447, i64 2158085662, i64 2158085694, i64 2158085777}
!29 = !{i64 2158086936, i64 2158086812}
!30 = distinct !{!30, !21}
!31 = !{i64 2158005381, i64 2158005256}
!32 = !{i64 2158005904, i64 2158006958, i64 2158006991, i64 2158007026, i64 2158007042, i64 2158007969, i64 2158008027, i64 2158008076, i64 2158007886, i64 2158007101, i64 2158007133, i64 2158007216}
!33 = !{i64 2158008375, i64 2158008251}
!34 = distinct !{!34, !21}
!35 = distinct !{!35, !21, !22}
!36 = !{i64 2158051507, i64 2158051382}
!37 = !{i64 2158052030, i64 2158053084, i64 2158053117, i64 2158053152, i64 2158053168, i64 2158054095, i64 2158054153, i64 2158054202, i64 2158054012, i64 2158053227, i64 2158053259, i64 2158053342}
!38 = !{i64 2158054501, i64 2158054377}
!39 = !{i64 2158060988, i64 2158060863}
!40 = !{i64 2158061511, i64 2158062567, i64 2158062600, i64 2158062635, i64 2158062651, i64 2158063578, i64 2158063636, i64 2158063685, i64 2158063495, i64 2158062710, i64 2158062742, i64 2158062825}
!41 = !{i64 2158063984, i64 2158063860}
!42 = !{i64 2158065287, i64 2158065162}
!43 = !{i64 2158065810, i64 2158066873, i64 2158066906, i64 2158066941, i64 2158066957, i64 2158067884, i64 2158067942, i64 2158067991, i64 2158067801, i64 2158067016, i64 2158067048, i64 2158067131}
!44 = !{i64 2158068290, i64 2158068166}
!45 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!46 = !{!"branch_weights", i32 1, i32 4000}
!47 = !{!"branch_weights", i32 4000, i32 3996000}
!48 = distinct !{!48, !21}
!49 = distinct !{!49, !21}
!50 = !{i64 2158026163, i64 2158026038}
!51 = !{i64 2158026686, i64 2158027740, i64 2158027773, i64 2158027808, i64 2158027824, i64 2158028751, i64 2158028809, i64 2158028858, i64 2158028668, i64 2158027883, i64 2158027915, i64 2158027998}
!52 = !{i64 2158029157, i64 2158029033}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !21, !22}
!55 = !{i64 2158098572, i64 2158098447}
!56 = !{i64 2158099095, i64 2158099571, i64 2158099604, i64 2158099639, i64 2158099655, i64 2158100496, i64 2158100554, i64 2158100603, i64 2158100413, i64 2158099714, i64 2158099746}
end_hunk_0
