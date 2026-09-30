Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/seq_buf?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@seq_buf_putmem:bb.a
bb.e:                                             ; preds = %bb.c
  %i.k = add nuw i64 %.val, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge = phi i64 [ %i.k, %bb.e ], [ %i.j, %bb.d ]
  %.0 = phi i32 [ -1, %bb.e ], [ 0, %bb.d ]
  store i64 %storemerge, ptr %i.e, align 8
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 1) i32 @seq_buf_putmem_hex(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.a, i8 0, i64 17, i1 false)
  %i.b = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  %.2.gep.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.4.gep62.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.6.gep63.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.8.gep64.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.10.gep65.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.12.gep66.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.14.gep67.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.16.gep68.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %i.d, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "435: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 435b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 435) #10, !srcloc !30
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 272, i32 2305, i64 16) #10, !srcloc !31
  tail call void asm sideeffect "436: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 436b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 436) #10, !srcloc !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not46 = icmp eq i32 %2, 0
  br i1 %.not46, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.e = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.5..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %.6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.7..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.13..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %.14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.15..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.o
  %.03648 = phi i32 [ %2, %.lr.ph ], [ %i.df, %bb.o ] ; 11 uses
  %.03747 = phi ptr [ %1, %.lr.ph ], [ %i.dh, %bb.o ] ; 9 uses
  %i.f = tail call i32 @llvm.umin.i32(i32 %.03648, i32 8) ; 2 uses
  %i.g = tail call i32 @llvm.umin.i32(i32 %.03648, i32 8)
  %umin = zext nneg i32 %i.g to i64               ; 8 uses
  %i.h = getelementptr i8, ptr %.03747, i64 %umin
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = lshr i8 %i.j, 4
  %i.l = zext nneg i8 %i.k to i64
  %i.m = getelementptr i8, ptr @hex_asc, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  store i8 %i.n, ptr %i.a, align 16
  %i.o = and i8 %i.j, 15
  %i.p = zext nneg i8 %i.o to i64
  %i.q = getelementptr i8, ptr @hex_asc, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  store i8 %i.r, ptr %.1..sroa_idx, align 1
  %i.s = icmp ugt i32 %.03648, 1
  br i1 %i.s, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %.03747, i64 %umin
  %i.u = getelementptr i8, ptr %i.t, i64 -2
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = lshr i8 %i.v, 4
  %i.x = zext nneg i8 %i.w to i64
  %i.y = getelementptr i8, ptr @hex_asc, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  store i8 %i.z, ptr %.2..sroa_idx, align 2
  %i.aa = and i8 %i.v, 15
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = getelementptr i8, ptr @hex_asc, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  store i8 %i.ad, ptr %.3..sroa_idx, align 1
  %.not69 = icmp eq i32 %.03648, 2
  br i1 %.not69, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %.03747, i64 %umin
  %i.af = getelementptr i8, ptr %i.ae, i64 -3
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = lshr i8 %i.ag, 4
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = getelementptr i8, ptr @hex_asc, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  store i8 %i.ak, ptr %.4..sroa_idx, align 4
  %i.al = and i8 %i.ag, 15
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr i8, ptr @hex_asc, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  store i8 %i.ao, ptr %.5..sroa_idx, align 1
  %i.ap = icmp ugt i32 %.03648, 3
  br i1 %i.ap, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr i8, ptr %.03747, i64 %umin
  %i.ar = getelementptr i8, ptr %i.aq, i64 -4
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %i.at = lshr i8 %i.as, 4
  %i.au = zext nneg i8 %i.at to i64
  %i.av = getelementptr i8, ptr @hex_asc, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  store i8 %i.aw, ptr %.6..sroa_idx, align 2
  %i.ax = and i8 %i.as, 15
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr i8, ptr @hex_asc, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  store i8 %i.ba, ptr %.7..sroa_idx, align 1
  %.not70 = icmp eq i32 %.03648, 4
  br i1 %.not70, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr i8, ptr %.03747, i64 %umin
  %i.bc = getelementptr i8, ptr %i.bb, i64 -5
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %i.be = lshr i8 %i.bd, 4
  %i.bf = zext nneg i8 %i.be to i64
  %i.bg = getelementptr i8, ptr @hex_asc, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1
  store i8 %i.bh, ptr %.8..sroa_idx, align 8
  %i.bi = and i8 %i.bd, 15
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = getelementptr i8, ptr @hex_asc, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  store i8 %i.bl, ptr %.9..sroa_idx, align 1
  %i.bm = icmp ugt i32 %.03648, 5
  br i1 %i.bm, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bn = getelementptr i8, ptr %.03747, i64 %umin
  %i.bo = getelementptr i8, ptr %i.bn, i64 -6
  %i.bp = load i8, ptr %i.bo, align 1             ; 2 uses
  %i.bq = lshr i8 %i.bp, 4
  %i.br = zext nneg i8 %i.bq to i64
  %i.bs = getelementptr i8, ptr @hex_asc, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1
  store i8 %i.bt, ptr %.10..sroa_idx, align 2
  %i.bu = and i8 %i.bp, 15
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = getelementptr i8, ptr @hex_asc, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  store i8 %i.bx, ptr %.11..sroa_idx, align 1
  %.not71 = icmp eq i32 %.03648, 6
  br i1 %.not71, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr i8, ptr %.03747, i64 %umin
  %i.bz = getelementptr i8, ptr %i.by, i64 -7
  %i.ca = load i8, ptr %i.bz, align 1             ; 2 uses
  %i.cb = lshr i8 %i.ca, 4
  %i.cc = zext nneg i8 %i.cb to i64
  %i.cd = getelementptr i8, ptr @hex_asc, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  store i8 %i.ce, ptr %.12..sroa_idx, align 4
  %i.cf = and i8 %i.ca, 15
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = getelementptr i8, ptr @hex_asc, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1
  store i8 %i.ci, ptr %.13..sroa_idx, align 1
  %i.cj = icmp ugt i32 %.03648, 7
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr i8, ptr %.03747, i64 %umin
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = load i8, ptr %i.cl, align 1             ; 2 uses
  %i.cn = lshr i8 %i.cm, 4
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = getelementptr i8, ptr @hex_asc, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1
  store i8 %i.cq, ptr %.14..sroa_idx, align 2
  %i.cr = and i8 %i.cm, 15
  %i.cs = zext nneg i8 %i.cr to i64
  %i.ct = getelementptr i8, ptr @hex_asc, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1
  store i8 %i.cu, ptr %.15..sroa_idx, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %indvars.iv.next51.lcssa.a = phi i64 [ 3, %bb.d ], [ 5, %bb.e ], [ 7, %bb.f ], [ 9, %bb.g ], [ 11, %bb.h ], [ 13, %bb.i ], [ 15, %bb.j ], [ 17, %bb.k ] ; 3 uses
  %indvars.iv.next51.lcssa.sroa.phi = phi ptr [ %.2.gep.sroa_idx, %bb.d ], [ %.4.gep62.sroa_idx, %bb.e ], [ %.6.gep63.sroa_idx, %bb.f ], [ %.8.gep64.sroa_idx, %bb.g ], [ %.10.gep65.sroa_idx, %bb.h ], [ %.12.gep66.sroa_idx, %bb.i ], [ %.14.gep67.sroa_idx, %bb.j ], [ %.16.gep68.sroa_idx, %bb.k ]
  %indvars.iv.next51.lcssa = phi i32 [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ]
  %i.cv = icmp ugt i32 %indvars.iv.next51.lcssa, %.03648
  br i1 %i.cv, label %.critedge41, label %.critedge, !prof !33

.critedge41:                                      ; preds = %bb.l
  tail call void asm sideeffect "441: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 441b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 441) #10, !srcloc !34
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 286, i32 2307, i64 16) #10, !srcloc !35
  tail call void asm sideeffect "442: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 442b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 442) #10, !srcloc !36
  br label %.loopexit

.critedge:                                        ; preds = %bb.l
  store i8 32, ptr %indvars.iv.next51.lcssa.sroa.phi, align 1
  %i.cw = load i64, ptr %i.b, align 8             ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.m, label %bb.n, !prof !10

bb.m:                                             ; preds = %.critedge
  tail call void asm sideeffect "433: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 433b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 433) #10, !srcloc !16
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 238, i32 2305, i64 16) #10, !srcloc !17
  tail call void asm sideeffect "434: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 434b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 434) #10, !srcloc !18
  %.val.pre.i = load i64, ptr %i.b, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.critedge
  %.val.i = phi i64 [ %.val.pre.i, %bb.m ], [ %i.cw, %.critedge ] ; 2 uses
  %.val13.i = load i64, ptr %i.e, align 8         ; 2 uses
  %i.cy = add i64 %.val13.i, %indvars.iv.next51.lcssa.a
  %.not.i = icmp ugt i64 %i.cy, %.val.i
  br i1 %.not.i, label %seq_buf_putmem.exit.thread, label %seq_buf_putmem.exit

seq_buf_putmem.exit.thread:                       ; preds = %bb.n
  %i.cz = add nuw i64 %.val.i, 1
  store i64 %i.cz, ptr %i.e, align 8
  br label %.loopexit

seq_buf_putmem.exit:                              ; preds = %bb.n
  %i.da = load ptr, ptr %0, align 8
  %i.db = getelementptr i8, ptr %i.da, i64 %.val13.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.db, ptr noundef nonnull readonly align 16 dereferenceable(1) %i.a, i64 %indvars.iv.next51.lcssa.a, i1 false)
  %i.dc = load i64, ptr %i.e, align 8
  %i.dd = add i64 %i.dc, %indvars.iv.next51.lcssa.a ; 2 uses
  %.val.pre = load i64, ptr %i.b, align 8
  %i.de = icmp ugt i64 %i.dd, %.val.pre
  store i64 %i.dd, ptr %i.e, align 8
  br i1 %i.de, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %seq_buf_putmem.exit
  %i.df = sub nuw i32 %.03648, %i.f               ; 2 uses
  %i.dg = zext nneg i32 %i.f to i64
  %i.dh = getelementptr i8, ptr %.03747, i64 %i.dg
  %.not = icmp eq i32 %i.df, 0
  br i1 %.not, label %.loopexit, label %bb.d, !llvm.loop !29

.loopexit:                                        ; preds = %seq_buf_putmem.exit, %bb.o, %seq_buf_putmem.exit.thread, %bb.c, %.critedge41
  %.0 = phi i32 [ 0, %.critedge41 ], [ 0, %bb.c ], [ -1, %seq_buf_putmem.exit.thread ], [ -1, %seq_buf_putmem.exit ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @seq_buf_path(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1
  %i.f = icmp ugt i64 %i.b, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "418: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 418b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 418) #10, !srcloc !37
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.6, i32 121, i32 2305, i64 16) #10, !srcloc !38
  tail call void asm sideeffect "419: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 419b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 419) #10, !srcloc !39
  %.pre.i = load i64, ptr %i.a, align 8
  %.pre14.i = load i64, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i64 [ %.pre14.i, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.h = phi i64 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.g
  br i1 %i.i, label %bb.e, label %seq_buf_get_buf.exit

seq_buf_get_buf.exit:                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.d, label %.thread, !prof !40

bb.d:                                             ; preds = %seq_buf_get_buf.exit
  tail call void asm sideeffect "444: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 444b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 444) #10, !srcloc !41
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 319, i32 2305, i64 16) #10, !srcloc !42
  tail call void asm sideeffect "445: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 445b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 445) #10, !srcloc !43
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 %i.h     ; 3 uses
  %i.m = sub nuw i64 %i.g, %i.h
  %i.n = trunc i64 %i.m to i32
  %i.o = tail call ptr @d_path(ptr noundef %1, ptr noundef %i.l, i32 noundef %i.n) #9 ; 2 uses
  %i.p = icmp ugt ptr %i.o, inttoptr (i64 -4096 to ptr)
  br i1 %i.p, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call ptr @mangle_path(ptr noundef %i.l, ptr noundef %i.o, ptr noundef %2) #9 ; 2 uses
  %.not17 = icmp eq ptr %i.q, null
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.l to i64
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  br i1 %.not17, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %.thread, label %bb.h

.thread:                                          ; preds = %seq_buf_get_buf.exit, %bb.d, %bb.f, %bb.e, %bb.g
  %.223 = phi i32 [ %i.u, %bb.g ], [ -1, %seq_buf_get_buf.exit ], [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.d ]
  %i.w = load i64, ptr %i.c, align 8
  %i.x = add i64 %i.w, 1
  br label %seq_buf_commit.exit

bb.h:                                             ; preds = %bb.g
  %i.y = load i64, ptr %i.a, align 8
  %i.z = and i64 %i.t, 2147483647
  %i.aa = add i64 %i.y, %i.z                      ; 2 uses
  %i.ab = load i64, ptr %i.c, align 8
  %i.ac = icmp ugt i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.i, label %seq_buf_commit.exit, !prof !10

bb.i:                                             ; preds = %bb.h
  tail call void asm sideeffect "420: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 420b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 420) #10, !srcloc !44
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.6, i32 147, i32 0, i64 16) #10, !srcloc !45
  unreachable

seq_buf_commit.exit:                              ; preds = %bb.h, %.thread
  %storemerge = phi i64 [ %i.x, %.thread ], [ %i.aa, %bb.h ]
  %.222 = phi i32 [ %.223, %.thread ], [ %i.u, %bb.h ]
  store i64 %storemerge, ptr %i.a, align 8
  ret i32 %.222
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @d_path(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @mangle_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @seq_buf_to_user(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 16
  %.val26 = load i64, ptr %i.b, align 8
  %i.c = tail call i64 @llvm.umin.i64(i64 %.val26, i64 %.val) ; 2 uses
  %sext = shl i64 %i.c, 32
  %i.d = ashr exact i64 %sext, 32
  %.not23 = icmp ult i64 %2, %i.d
  br i1 %.not23, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = trunc i64 %i.c to i32
  %i.f = trunc i64 %2 to i32
  %i.g = sub i32 %i.e, %i.f
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.g) ; 5 uses
  %i.h = icmp slt i32 %spec.select, 0
  br i1 %i.h, label %bb.d, label %check_copy_size.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "275: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 275b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 275) #10, !srcloc !46
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.7, i32 57, i32 2307, i64 16) #10, !srcloc !47
  tail call void asm sideeffect "276: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 276b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 276) #10, !srcloc !48
  br label %copy_to_user.exit

check_copy_size.exit:                             ; preds = %bb.c
  %i.i = sext i32 %spec.select to i64
  %i.j = load ptr, ptr %0, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 %2
  %i.l = tail call i64 @_copy_to_user(ptr noundef %1, ptr noundef %i.k, i64 noundef range(i64 -2147483648, 2147483648) %i.i) #9
  %i.m = trunc i64 %i.l to i32
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %bb.d, %check_copy_size.exit
  %.0.i = phi i32 [ %i.m, %check_copy_size.exit ], [ %spec.select, %bb.d ] ; 2 uses
  %i.n = icmp eq i32 %spec.select, %.0.i
  %i.o = sub i32 %spec.select, %.0.i
  %spec.select24 = select i1 %i.n, i32 -14, i32 %i.o
  br label %bb.e

bb.e:                                             ; preds = %copy_to_user.exit, %bb.b, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ -16, %bb.b ], [ %spec.select24, %copy_to_user.exit ]
  ret i32 %.017
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 1) i32 @seq_buf_hex_dump(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i64 noundef %6, i1 noundef zeroext %7) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [131 x i8], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not = icmp eq i32 %3, 32
  %spec.store.select = select i1 %.not, i32 32, i32 16 ; 12 uses
  %.not61 = icmp eq i64 %6, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(131) %i.a, i8 0, i64 131, i1 false), !annotation !14
  %i.b = trunc i64 %6 to i32                      ; 3 uses
  switch i32 %2, label %.lr.ph.split [
    i32 1, label %.lr.ph.split.us
    i32 2, label %.lr.ph.split.us50
  ]

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.b
  %i.c = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph ]
  %.04146.us = phi i32 [ %i.j, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %.04245.us = phi i32 [ %i.i, %bb.b ], [ 0, %.lr.ph ]
  %i.d = call i32 @llvm.smin.i32(i32 %.04146.us, i32 %spec.store.select)
  %i.e = getelementptr i8, ptr %5, i64 %i.c       ; 2 uses
  %i.f = sext i32 %i.d to i64
  %i.g = call i32 @hex_dump_to_buffer(ptr noundef %i.e, i64 noundef %i.f, i32 noundef %spec.store.select, i32 noundef %4, ptr noundef nonnull %i.a, i64 noundef 131, i1 noundef zeroext %7) #9 ; 0 uses
  %i.h = call i32 (ptr, ptr, ...) @seq_buf_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull %i.a) #12
  %.not44.us = icmp eq i32 %i.h, 0
  br i1 %.not44.us, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.i = add i32 %.04245.us, %spec.store.select   ; 2 uses
  %i.j = sub i32 %.04146.us, %spec.store.select
  %i.k = sext i32 %i.i to i64                     ; 2 uses
  %i.l = icmp ugt i64 %6, %i.k
  br i1 %i.l, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !49

.lr.ph.split.us50:                                ; preds = %.lr.ph, %bb.c
  %i.m = phi i64 [ %i.u, %bb.c ], [ 0, %.lr.ph ]
  %.04146.us51 = phi i32 [ %i.t, %bb.c ], [ %i.b, %.lr.ph ] ; 2 uses
  %.04245.us52 = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %i.n = call i32 @llvm.smin.i32(i32 %.04146.us51, i32 %spec.store.select)
end_hunk_0
