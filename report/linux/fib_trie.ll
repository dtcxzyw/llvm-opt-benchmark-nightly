Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fib_trie?download=true
inline.NumInlined: 290
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@resize:bb.a

bb.h:                                             ; preds = %tnode_alloc.exit.i190
  %i.az = icmp eq i32 %i.aq, 32
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr i8, ptr %.0.i.i191, i64 20
  store i32 1, ptr %i.ba, align 4
  br label %tnode_new.exit198

bb.j:                                             ; preds = %bb.h
  %i.bb = shl nuw nsw i64 1, %i.at
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr i8, ptr %.0.i.i191, i64 16
  store i32 %i.bc, ptr %i.bd, align 8
  br label %tnode_new.exit198

tnode_new.exit198:                                ; preds = %bb.i, %bb.j
  %i.be = getelementptr i8, ptr %.0.i.i191, i64 32 ; 9 uses
  %.not302 = icmp eq i32 %i.ar, 32
  %i.bf = shl nsw i32 -1, %i.ar
  %i.bg = and i32 %i.bf, %i.am
  %i.bh = select i1 %.not302, i32 0, i32 %i.bg
  store i32 %i.bh, ptr %i.be, align 8
  %i.bi = getelementptr i8, ptr %.0.i.i191, i64 36 ; 7 uses
  store i8 %i.ao, ptr %i.bi, align 4
  %i.bj = trunc nuw nsw i32 %i.aq to i8
  %i.bk = getelementptr i8, ptr %.0.i.i191, i64 37 ; 4 uses
  store i8 %i.bj, ptr %i.bk, align 1
  %i.bl = getelementptr i8, ptr %.0.i.i191, i64 38 ; 7 uses
  store i8 %i.ao, ptr %i.bl, align 2
  %.not.i50 = icmp eq ptr %i.be, null
  br i1 %.not.i50, label %should_inflate.exit.thread, label %bb.k

bb.k:                                             ; preds = %tnode_new.exit198
  %i.bm = getelementptr i8, ptr %.037422, i64 -32 ; 3 uses
  store ptr null, ptr %i.bm, align 8
  %.val97.i = load i8, ptr %i.af, align 1
  %i.bn = zext nneg i8 %.val97.i to i64
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bo, -2                       ; 2 uses
  %i.bq = load i8, ptr %i.bi, align 4
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = shl nuw i32 1, %i.br
  %.not89.i415 = icmp eq i64 %i.bp, 0
  br i1 %.not89.i415, label %inflate.exit, label %.lr.ph418

.lr.ph418:                                        ; preds = %bb.k
  %i.bt = getelementptr i8, ptr %.0.i.i191, i64 40 ; 3 uses
  %i.bu = getelementptr i8, ptr %.0.i.i191, i64 16 ; 6 uses
  %i.bv = getelementptr i8, ptr %.0.i.i191, i64 20 ; 12 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph418, %bb.db
  %.080.i416 = phi i64 [ %i.bp, %.lr.ph418 ], [ %i.bw, %bb.db ] ; 2 uses
  %i.bw = add i64 %.080.i416, -1                  ; 4 uses
  %i.bx = getelementptr [8 x i8], ptr %.037422, i64 %.080.i416
  %i.by = load ptr, ptr %i.bx, align 8            ; 14 uses
  %.not90.i = icmp eq ptr %i.by, null
  br i1 %.not90.i, label %bb.db, label %bb.m, !llvm.loop !73

bb.m:                                             ; preds = %bb.l
  %i.bz = getelementptr i8, ptr %i.by, i64 4      ; 4 uses
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = zext i8 %i.ca to i32
  %i.cc = getelementptr i8, ptr %i.by, i64 5      ; 5 uses
  %i.cd = load i8, ptr %i.cc, align 1             ; 3 uses
  %i.ce = zext i8 %i.cd to i32
  %i.cf = add nuw nsw i32 %i.ce, %i.cb            ; 2 uses
  %i.cg = load i8, ptr %i.ag, align 4
  %i.ch = zext i8 %i.cg to i32
  %i.ci = icmp ne i32 %i.cf, %i.ch
  %.not303 = icmp eq i8 %i.cd, 0
  %or.cond = or i1 %.not303, %i.ci
  br i1 %or.cond, label %tnode_full.exit.thread, label %bb.t

tnode_full.exit.thread:                           ; preds = %bb.m
  %i.cj = load i32, ptr %i.by, align 8
  %.val.i51 = load i32, ptr %i.be, align 8
  %.val95.i = load i8, ptr %i.bi, align 4         ; 3 uses
  %i.ck = xor i32 %.val.i51, %i.cj
  %i.cl = zext i32 %i.ck to i64
  %i.cm = zext nneg i8 %.val95.i to i64
  %i.cn = lshr i64 %i.cl, %i.cm                   ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.bt, i64 %i.cn ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 3 uses
  %.val.i170 = load i8, ptr %i.bk, align 1
  %i.cq = zext nneg i8 %.val.i170 to i64
  %i.cr = shl nuw i64 1, %i.cq
  %i.cs = and i64 %i.cr, -2
  %.not.i171 = icmp ult i64 %i.cn, %i.cs
  br i1 %.not.i171, label %empty_child_inc.exit.i173, label %bb.n, !prof !23

bb.n:                                             ; preds = %tnode_full.exit.thread
  tail call void asm sideeffect "1240: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1240b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1240) #14, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 418, i32 0, i64 16) #14, !srcloc !25
  unreachable

empty_child_inc.exit.i173:                        ; preds = %tnode_full.exit.thread
  %.not308.a = icmp eq ptr %i.cp, null
  br i1 %.not308.a, label %bb.o, label %tnode_full.exit40.i178

bb.o:                                             ; preds = %empty_child_inc.exit.i173
  %i.ct = load i32, ptr %i.bu, align 8            ; 2 uses
  %.not.i37.i175 = icmp eq i32 %i.ct, 0
  br i1 %.not.i37.i175, label %bb.p, label %tnode_full.exit40.i178.thread

bb.p:                                             ; preds = %bb.o
  %i.cu = load i32, ptr %i.bv, align 4
  %i.cv = add i32 %i.cu, -1
  store i32 %i.cv, ptr %i.bv, align 4
  br label %tnode_full.exit40.i178.thread

tnode_full.exit40.i178.thread:                    ; preds = %bb.o, %bb.p
  %i.cw = add i32 %i.ct, -1
  store i32 %i.cw, ptr %i.bu, align 8
  %.pre522.a = load i8, ptr %i.bz, align 4
  %.pre523 = load i8, ptr %i.cc, align 1          ; 2 uses
  %.pre529 = zext i8 %.pre522.a to i32
  %.pre531 = zext i8 %.pre523 to i32
  %.pre533 = add nuw nsw i32 %.pre531, %.pre529
  %.pre535 = zext i8 %.val95.i to i32
  %i.cx = icmp eq i32 %.pre533, %.pre535
  %i.cy = icmp ne i8 %.pre523, 0
  %spec.select.i177597 = and i1 %i.cy, %i.cx
  br label %bb.q

tnode_full.exit40.i178:                           ; preds = %empty_child_inc.exit.i173
  %i.cz = getelementptr i8, ptr %i.cp, i64 4
  %i.da = load i8, ptr %i.cz, align 4
  %i.db = zext i8 %i.da to i32
  %i.dc = getelementptr i8, ptr %i.cp, i64 5
  %i.dd = load i8, ptr %i.dc, align 1             ; 2 uses
  %i.de = zext i8 %i.dd to i32
  %i.df = add nuw nsw i32 %i.de, %i.db
  %i.dg = zext i8 %.val95.i to i32                ; 2 uses
  %i.dh = icmp ne i32 %i.df, %i.dg
  %.not309 = icmp eq i8 %i.dd, 0
  %spec.select = or i1 %i.dh, %.not309            ; 2 uses
  %i.di = icmp eq i32 %i.cf, %i.dg
  %i.dj = icmp ne i8 %i.cd, 0
  %spec.select.i177 = and i1 %i.dj, %i.di         ; 2 uses
  %or.cond5.i179 = or i1 %spec.select, %spec.select.i177
  br i1 %or.cond5.i179, label %bb.q, label %.sink.split.i180

bb.q:                                             ; preds = %tnode_full.exit40.i178.thread, %tnode_full.exit40.i178
  %spec.select.i177599 = phi i1 [ %spec.select.i177597, %tnode_full.exit40.i178.thread ], [ %spec.select.i177, %tnode_full.exit40.i178 ]
  %i.dk = phi i1 [ true, %tnode_full.exit40.i178.thread ], [ %spec.select, %tnode_full.exit40.i178 ]
  %or.cond7.i182 = and i1 %i.dk, %spec.select.i177599
  br i1 %or.cond7.i182, label %.sink.split.i180, label %bb.r

.sink.split.i180:                                 ; preds = %bb.q, %tnode_full.exit40.i178
  %.sink48.i181 = phi i32 [ -1, %tnode_full.exit40.i178 ], [ 1, %bb.q ]
  %i.dl = load i32, ptr %i.bv, align 4
  %i.dm = add i32 %i.dl, %.sink48.i181
  store i32 %i.dm, ptr %i.bv, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.sink.split.i180
  %i.dn = load i8, ptr %i.bl, align 2
  %i.do = getelementptr i8, ptr %i.by, i64 6
  %i.dp = load i8, ptr %i.do, align 2             ; 2 uses
  %i.dq = icmp ult i8 %i.dn, %i.dp
  br i1 %i.dq, label %bb.s, label %put_child.exit187

bb.s:                                             ; preds = %bb.r
  store i8 %i.dp, ptr %i.bl, align 2
  br label %put_child.exit187

put_child.exit187:                                ; preds = %bb.r, %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !srcloc !26
  store volatile ptr %i.by, ptr %i.co, align 8
  br label %bb.db, !llvm.loop !73

bb.t:                                             ; preds = %bb.m
  %i.dr = load ptr, ptr %i.bm, align 8
  %i.ds = getelementptr i8, ptr %i.by, i64 -32    ; 2 uses
  store ptr %i.dr, ptr %i.ds, align 8
  store ptr %i.ds, ptr %i.bm, align 8
  %i.dt = load i8, ptr %i.cc, align 1             ; 3 uses
  %i.du = icmp eq i8 %i.dt, 1
  br i1 %i.du, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dv = shl nuw i64 %i.bw, 1                    ; 2 uses
  %i.dw = or disjoint i64 %i.dv, 1
  %i.dx = getelementptr i8, ptr %i.by, i64 8
  %i.dy = getelementptr i8, ptr %i.by, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  tail call fastcc void @put_child(ptr noundef nonnull %i.be, i64 noundef %i.dw, ptr noundef %i.dz) #15, !inline_history !74, !srcloc !83
  %i.ea = load ptr, ptr %i.dx, align 8
  tail call fastcc void @put_child(ptr noundef nonnull %i.be, i64 noundef %i.dv, ptr noundef %i.ea) #15, !inline_history !74, !srcloc !84
  br label %bb.db, !llvm.loop !73

bb.v:                                             ; preds = %bb.t
  %i.eb = zext i8 %i.dt to i32
  %i.ec = load i32, ptr %i.by, align 8
  %i.ed = or i32 %i.ec, %i.bs
  %i.ee = load i8, ptr %i.bz, align 4             ; 3 uses
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add nsw i32 %i.eb, -1                   ; 5 uses
  %i.eh = add nsw i32 %i.eg, %i.ef                ; 3 uses
  %.not.i160 = icmp eq i32 %i.eg, 0
  %i.ei = icmp ugt i32 %i.eh, 32
  %1 = or i1 %.not.i160, %i.ei
  br i1 %1, label %bb.w, label %bb.x, !prof !20

bb.w:                                             ; preds = %bb.v
  tail call void asm sideeffect "1239: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1239b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1239) #14, !srcloc !21
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 378, i32 0, i64 16) #14, !srcloc !22
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.ej = icmp ugt i8 %i.dt, 61
  br i1 %i.ej, label %.lr.ph.i61.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ek = zext nneg i32 %i.eg to i64              ; 2 uses
  %i.el = shl i64 8, %i.ek                        ; 2 uses
  %i.em = add nuw i64 %i.el, 40                   ; 2 uses
  %i.en = icmp ult i64 %i.el, 4057
  br i1 %i.en, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.eo = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4097) %i.em, i32 noundef 3520) #18
  br label %tnode_alloc.exit.i161

bb.aa:                                            ; preds = %bb.y
  %i.ep = tail call noalias ptr @vzalloc_noprof(i64 noundef %i.em) #18
  br label %tnode_alloc.exit.i161

tnode_alloc.exit.i161:                            ; preds = %bb.aa, %bb.z
  %.0.i.i162 = phi ptr [ %i.ep, %bb.aa ], [ %i.eo, %bb.z ] ; 16 uses
  %.not24.i163 = icmp eq ptr %.0.i.i162, null
  br i1 %.not24.i163, label %.lr.ph.i61.preheader, label %bb.ab

bb.ab:                                            ; preds = %tnode_alloc.exit.i161
  %i.eq = icmp eq i32 %i.eg, 32
  br i1 %i.eq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.er = getelementptr i8, ptr %.0.i.i162, i64 20
  store i32 1, ptr %i.er, align 4
  br label %tnode_new.exit169

bb.ad:                                            ; preds = %bb.ab
  %i.es = shl nuw i64 1, %i.ek
  %i.et = trunc i64 %i.es to i32
  %i.eu = getelementptr i8, ptr %.0.i.i162, i64 16
  store i32 %i.et, ptr %i.eu, align 8
  br label %tnode_new.exit169

tnode_new.exit169:                                ; preds = %bb.ac, %bb.ad
  %i.ev = getelementptr i8, ptr %.0.i.i162, i64 32 ; 3 uses
  %2 = icmp samesign ult i32 %i.eh, 32
  %i.ew = shl nsw i32 -1, %i.eh
  %i.ex = and i32 %i.ew, %i.ed
  %i.ey = select i1 %2, i32 %i.ex, i32 0
  store i32 %i.ey, ptr %i.ev, align 8
  %i.ez = getelementptr i8, ptr %.0.i.i162, i64 36 ; 6 uses
  store i8 %i.ee, ptr %i.ez, align 4
  %i.fa = trunc nsw i32 %i.eg to i8
  %i.fb = getelementptr i8, ptr %.0.i.i162, i64 37 ; 4 uses
  store i8 %i.fa, ptr %i.fb, align 1
  %i.fc = getelementptr i8, ptr %.0.i.i162, i64 38 ; 6 uses
  store i8 %i.ee, ptr %i.fc, align 2
  %.not92.i = icmp eq ptr %i.ev, null
  br i1 %.not92.i, label %.lr.ph.i61.preheader, label %bb.ae

bb.ae:                                            ; preds = %tnode_new.exit169
  %i.fd = load i32, ptr %i.by, align 8
  %i.fe = load i8, ptr %i.bz, align 4             ; 3 uses
  %i.ff = zext i8 %i.fe to i32
  %i.fg = load i8, ptr %i.cc, align 1             ; 2 uses
  %i.fh = zext i8 %i.fg to i32
  %i.fi = add nsw i32 %i.fh, -1                   ; 5 uses
  %i.fj = add nsw i32 %i.fi, %i.ff                ; 3 uses
  %.not.i158 = icmp eq i32 %i.fi, 0
  %i.fk = icmp ugt i32 %i.fj, 32
  %i.fl = or i1 %.not.i158, %i.fk
  br i1 %i.fl, label %bb.af, label %bb.ag, !prof !20

bb.af:                                            ; preds = %bb.ae
  tail call void asm sideeffect "1239: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1239b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1239) #14, !srcloc !21
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 378, i32 0, i64 16) #14, !srcloc !22
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.fm = icmp ugt i8 %i.fg, 61
  br i1 %i.fm, label %tnode_new.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fn = zext nneg i32 %i.fi to i64              ; 2 uses
  %i.fo = shl i64 8, %i.fn                        ; 2 uses
  %i.fp = add nuw i64 %i.fo, 40                   ; 2 uses
  %i.fq = icmp ult i64 %i.fo, 4057
  br i1 %i.fq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fr = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 4097) %i.fp, i32 noundef 3520) #18
  br label %tnode_alloc.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.fs = tail call noalias ptr @vzalloc_noprof(i64 noundef %i.fp) #18
  br label %tnode_alloc.exit.i

tnode_alloc.exit.i:                               ; preds = %bb.aj, %bb.ai
  %.0.i.i = phi ptr [ %i.fs, %bb.aj ], [ %i.fr, %bb.ai ] ; 13 uses
  %.not24.i = icmp eq ptr %.0.i.i, null
  br i1 %.not24.i, label %tnode_new.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %tnode_alloc.exit.i
  %i.ft = icmp eq i32 %i.fi, 32
  br i1 %i.ft, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fu = getelementptr i8, ptr %.0.i.i, i64 20
  store i32 1, ptr %i.fu, align 4
  br label %tnode_new.exit

bb.am:                                            ; preds = %bb.ak
  %i.fv = shl nuw i64 1, %i.fn
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = getelementptr i8, ptr %.0.i.i, i64 16
  store i32 %i.fw, ptr %i.fx, align 8
  br label %tnode_new.exit

tnode_new.exit.thread:                            ; preds = %tnode_alloc.exit.i, %bb.ag
  %i.fy = load ptr, ptr %.0.i.i191, align 8
  store ptr %i.fy, ptr %.0.i.i162, align 8
  store ptr %.0.i.i162, ptr %.0.i.i191, align 8
  br label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %tnode_new.exit, %tnode_new.exit169, %tnode_alloc.exit.i161, %bb.x, %tnode_new.exit.thread
  br label %.lr.ph.i61

tnode_new.exit:                                   ; preds = %bb.al, %bb.am
  %i.fz = getelementptr i8, ptr %.0.i.i, i64 32   ; 3 uses
  %i.ga = icmp samesign ult i32 %i.fj, 32
  %i.gb = shl nsw i32 -1, %i.fj
  %i.gc = and i32 %i.gb, %i.fd
  %i.gd = select i1 %i.ga, i32 %i.gc, i32 0
  store i32 %i.gd, ptr %i.fz, align 8
  %i.ge = getelementptr i8, ptr %.0.i.i, i64 36   ; 6 uses
  store i8 %i.fe, ptr %i.ge, align 4
  %i.gf = trunc nsw i32 %i.fi to i8
  %i.gg = getelementptr i8, ptr %.0.i.i, i64 37   ; 4 uses
  store i8 %i.gf, ptr %i.gg, align 1
  %i.gh = getelementptr i8, ptr %.0.i.i, i64 38   ; 6 uses
  store i8 %i.fe, ptr %i.gh, align 2
  %i.gi = load ptr, ptr %.0.i.i191, align 8
  store ptr %i.gi, ptr %.0.i.i162, align 8
  store ptr %.0.i.i162, ptr %.0.i.i191, align 8
  %.not93.i = icmp eq ptr %i.fz, null
  br i1 %.not93.i, label %.lr.ph.i61.preheader, label %bb.an

bb.an:                                            ; preds = %tnode_new.exit
  store ptr %.0.i.i162, ptr %.0.i.i, align 8
  store ptr %.0.i.i, ptr %.0.i.i191, align 8
  %.val96.i = load i8, ptr %i.cc, align 1
  %i.gj = zext nneg i8 %.val96.i to i64
  %i.gk = shl nuw i64 1, %i.gj                    ; 2 uses
  %i.gl = lshr i64 %i.gk, 1                       ; 2 uses
  %.not94.i412 = icmp eq i64 %i.gl, 0
  br i1 %.not94.i412, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an
  %i.gm = and i64 %i.gk, -2
  %i.gn = getelementptr i8, ptr %i.by, i64 8      ; 2 uses
  %i.go = getelementptr i8, ptr %.0.i.i162, i64 40 ; 2 uses
  %i.gp = getelementptr i8, ptr %.0.i.i162, i64 16 ; 8 uses
  %i.gq = getelementptr i8, ptr %.0.i.i162, i64 20 ; 12 uses
  %i.gr = getelementptr i8, ptr %.0.i.i, i64 40   ; 2 uses
  %i.gs = getelementptr i8, ptr %.0.i.i, i64 16   ; 8 uses
  %i.gt = getelementptr i8, ptr %.0.i.i, i64 20   ; 12 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph, %put_child.exit103
  %.082.i414 = phi i64 [ %i.gm, %.lr.ph ], [ %i.ku, %put_child.exit103 ] ; 2 uses
  %.083.i413 = phi i64 [ %i.gl, %.lr.ph ], [ %i.kt, %put_child.exit103 ] ; 3 uses
  %i.gu = add nsw i64 %.083.i413, -1              ; 4 uses
  %i.gv = getelementptr [8 x i8], ptr %i.by, i64 %.082.i414
  %i.gw = load ptr, ptr %i.gv, align 8            ; 5 uses
  %i.gx = getelementptr [8 x i8], ptr %i.go, i64 %i.gu ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8            ; 4 uses
  %.val.i140 = load i8, ptr %i.fb, align 1
  %i.gz = zext nneg i8 %.val.i140 to i64
  %i.ha = shl nuw i64 1, %i.gz
  %i.hb = and i64 %i.ha, -2
  %.not.i141 = icmp ult i64 %i.gu, %i.hb
  br i1 %.not.i141, label %bb.aq, label %bb.ap, !prof !23

bb.ap:                                            ; preds = %bb.ao
  tail call void asm sideeffect "1240: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1240b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 1240) #14, !srcloc !24
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 418, i32 0, i64 16) #14, !srcloc !25
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.hc = icmp eq ptr %i.gw, null                 ; 4 uses
  %i.hd = icmp ne ptr %i.gy, null                 ; 2 uses
  %or.cond.i142 = select i1 %i.hc, i1 %i.hd, i1 false
  br i1 %or.cond.i142, label %bb.ar, label %empty_child_inc.exit.i143

bb.ar:                                            ; preds = %bb.aq
  %i.he = load i32, ptr %i.gp, align 8
  %i.hf = add i32 %i.he, 1                        ; 2 uses
  store i32 %i.hf, ptr %i.gp, align 8
  %.not.i.i156 = icmp eq i32 %i.hf, 0
  br i1 %.not.i.i156, label %bb.as, label %.thread43.i154

bb.as:                                            ; preds = %bb.ar
  %i.hg = load i32, ptr %i.gq, align 4
  %i.hh = add i32 %i.hg, 1
  store i32 %i.hh, ptr %i.gq, align 4
  br label %.thread43.i154

empty_child_inc.exit.i143:                        ; preds = %bb.aq
  %or.cond3.i144 = select i1 %i.hc, i1 true, i1 %i.hd
  br i1 %or.cond3.i144, label %bb.av, label %bb.at

bb.at:                                            ; preds = %empty_child_inc.exit.i143
  %i.hi = load i32, ptr %i.gp, align 8            ; 2 uses
  %.not.i37.i145 = icmp eq i32 %i.hi, 0
  br i1 %.not.i37.i145, label %bb.au, label %tnode_full.exit.thread.i146

bb.au:                                            ; preds = %bb.at
  %i.hj = load i32, ptr %i.gq, align 4
  %i.hk = add i32 %i.hj, -1
  store i32 %i.hk, ptr %i.gq, align 4
  br label %tnode_full.exit.thread.i146

tnode_full.exit.thread.i146:                      ; preds = %bb.au, %bb.at
  %i.hl = add i32 %i.hi, -1
  store i32 %i.hl, ptr %i.gp, align 8
  br label %bb.ax

bb.av:                                            ; preds = %empty_child_inc.exit.i143
  %.not.i38.i153 = icmp eq ptr %i.gy, null
  br i1 %.not.i38.i153, label %tnode_full.exit.i155, label %.thread43.i154

.thread43.i154:                                   ; preds = %bb.av, %bb.as, %bb.ar
  %i.hm = getelementptr i8, ptr %i.gy, i64 4
  %i.hn = load i8, ptr %i.hm, align 4
  %i.ho = zext i8 %i.hn to i32
  %i.hp = getelementptr i8, ptr %i.gy, i64 5
  %i.hq = load i8, ptr %i.hp, align 1             ; 2 uses
  %i.hr = zext i8 %i.hq to i32
  %i.hs = add nuw nsw i32 %i.hr, %i.ho
  %i.ht = load i8, ptr %i.ez, align 4
  %i.hu = zext i8 %i.ht to i32
  %i.hv = icmp eq i32 %i.hs, %i.hu
  br i1 %i.hv, label %bb.aw, label %tnode_full.exit.i155

bb.aw:                                            ; preds = %.thread43.i154
  %i.hw = icmp ne i8 %i.hq, 0
  %i.hx = zext i1 %i.hw to i32
  br label %tnode_full.exit.i155

end_hunk_0
