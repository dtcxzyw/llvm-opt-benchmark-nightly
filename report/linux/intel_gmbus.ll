Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_gmbus?download=true
inline.NumInlined: 129
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@gmbus_xfer_read:bb.a
  %i.ar = load ptr, ptr %i.am, align 8
  %i.as = zext i32 %.0.i.i.i to i64
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.as
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.i, ptr elementtype(i32) %i.at) #11, !srcloc !27
  br label %bb.k

bb.k:                                             ; preds = %intel_de_write_fw.exit.i, %bb.e
  %.152.i = phi i1 [ %i.w, %intel_de_write_fw.exit.i ], [ false, %bb.e ]
  %.050.i = phi i32 [ %i.y, %intel_de_write_fw.exit.i ], [ %i.r, %bb.e ] ; 2 uses
  %.147.i = phi i32 [ %spec.select.i, %intel_de_write_fw.exit.i ], [ %i.r, %bb.e ] ; 2 uses
  %i.au = load i32, ptr %i.h, align 8
  %i.av = add i32 %i.au, 20740                    ; 4 uses
  %i.aw = shl nuw nsw i32 %.050.i, 16
  %i.ax = zext i16 %i.s to i32
  %i.ay = shl nuw nsw i32 %i.ax, 1
  %i.az = or i32 %3, %i.ay
  %i.ba = or i32 %i.az, %i.aw
  %i.bb = or i32 %i.ba, 1107296257                ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit.i65.i [label %arch_test_bit.exit.i.i.i64.i], !srcloc !20

arch_test_bit.exit.i.i.i64.i:                     ; preds = %bb.k
  %i.bd = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !21
  %i.be = zext i32 %i.bd to i64
  %i.bf = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.be) #11, !srcloc !22 ; 2 uses
  %i.bg = icmp ult i8 %i.bf, 2
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = trunc nuw i8 %i.bf to i1
  br i1 %i.bh, label %bb.l, label %trace_i915_reg_rw.exit.i65.i

bb.l:                                             ; preds = %arch_test_bit.exit.i.i.i64.i
  %i.bi = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bi, ptr elementtype(i64) %i.bi) #11, !srcloc !23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !24
  %i.bj = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i68.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i68.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.bl, i1 noundef zeroext true, i32 %i.av, i64 noundef range(i64 0, 4294967296) %i.bc, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !25
  %i.bn = getelementptr i8, ptr %i.bi, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bn, ptr elementtype(i64) %i.bn) #11, !srcloc !26
  br label %trace_i915_reg_rw.exit.i65.i

trace_i915_reg_rw.exit.i65.i:                     ; preds = %bb.n, %arch_test_bit.exit.i.i.i64.i, %bb.k
  %.val.i66.i = load ptr, ptr %0, align 8
  %i.bo = tail call ptr @to_intel_uncore(ptr noundef %.val.i66.i) #10 ; 2 uses
  %i.bp = icmp ult i32 %i.av, 262144
  br i1 %i.bp, label %bb.o, label %intel_de_write_fw.exit71.i

bb.o:                                             ; preds = %trace_i915_reg_rw.exit.i65.i
  %i.bq = getelementptr i8, ptr %i.bo, i64 36
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = add i32 %i.br, %i.av
  br label %intel_de_write_fw.exit71.i

intel_de_write_fw.exit71.i:                       ; preds = %bb.o, %trace_i915_reg_rw.exit.i65.i
  %.0.i.i67.i = phi i32 [ %i.bs, %bb.o ], [ %i.av, %trace_i915_reg_rw.exit.i65.i ]
  %i.bt = load ptr, ptr %i.bo, align 8
  %i.bu = zext i32 %.0.i.i67.i to i64
  %i.bv = getelementptr i8, ptr %i.bt, i64 %i.bu
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %i.bb, ptr elementtype(i32) %i.bv) #11, !srcloc !27
  %.not90.i = icmp eq i32 %.147.i, 0
  br i1 %.not90.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %intel_de_write_fw.exit71.i
  %i.bw = add nsw i32 %.050.i, -4
  br label %bb.p

bb.p:                                             ; preds = %bb.ab, %.lr.ph.i
  %.04092.i = phi ptr [ %.030, %.lr.ph.i ], [ %.us-phi89.i, %bb.ab ] ; 11 uses
  %.24891.i = phi i32 [ %.147.i, %.lr.ph.i ], [ %.us-phi.i, %bb.ab ] ; 9 uses
  %i.bx = tail call fastcc i32 @gmbus_wait(ptr noundef %0, i32 noundef 2048, i32 noundef 1) #12, !srcloc !47 ; 2 uses
  %.not59.i = icmp eq i32 %i.bx, 0
  br i1 %.not59.i, label %bb.q, label %gmbus_xfer_read_chunk.exit

bb.q:                                             ; preds = %bb.p
  %i.by = load i32, ptr %i.h, align 8
  %i.bz = add i32 %i.by, 20748                    ; 4 uses
  %.val63.i = load ptr, ptr %0, align 8
  %i.ca = tail call ptr @to_intel_uncore(ptr noundef %.val63.i) #10 ; 2 uses
  %i.cb = icmp ult i32 %i.bz, 262144
  br i1 %i.cb, label %bb.r, label %__raw_uncore_read32.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr i8, ptr %i.ca, i64 36
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = add i32 %i.cd, %i.bz
  br label %__raw_uncore_read32.exit.i.i

__raw_uncore_read32.exit.i.i:                     ; preds = %bb.r, %bb.q
  %.0.i.i72.i = phi i32 [ %i.ce, %bb.r ], [ %i.bz, %bb.q ]
  %i.cf = load ptr, ptr %i.ca, align 8
  %i.cg = zext i32 %.0.i.i72.i to i64
  %i.ch = getelementptr i8, ptr %i.cf, i64 %i.cg
  %i.ci = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ch) #11, !srcloc !29 ; 9 uses
  %i.cj = zext i32 %i.ci to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %intel_de_read_fw.exit.i [label %arch_test_bit.exit.i.i.i73.i], !srcloc !20

arch_test_bit.exit.i.i.i73.i:                     ; preds = %__raw_uncore_read32.exit.i.i
  %i.ck = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !21
  %i.cl = zext i32 %i.ck to i64
  %i.cm = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.cl) #11, !srcloc !22 ; 2 uses
  %i.cn = icmp ult i8 %i.cm, 2
  tail call void @llvm.assume(i1 %i.cn)
  %i.co = trunc nuw i8 %i.cm to i1
  br i1 %i.co, label %bb.s, label %intel_de_read_fw.exit.i

bb.s:                                             ; preds = %arch_test_bit.exit.i.i.i73.i
  %i.cp = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cp, ptr elementtype(i64) %i.cp) #11, !srcloc !23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !24
  %i.cq = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i75.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i75.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.cs, i1 noundef zeroext false, i32 %i.bz, i64 noundef range(i64 0, 4294967296) %i.cj, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !25
  %i.cu = getelementptr i8, ptr %i.cp, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cu, ptr elementtype(i64) %i.cu) #11, !srcloc !26
  br label %intel_de_read_fw.exit.i

intel_de_read_fw.exit.i:                          ; preds = %bb.u, %arch_test_bit.exit.i.i.i73.i, %__raw_uncore_read32.exit.i.i
  br i1 %.152.i, label %intel_de_read_fw.exit.split.preheader.i, label %intel_de_read_fw.exit.split.us.preheader.i

intel_de_read_fw.exit.split.us.preheader.i:       ; preds = %intel_de_read_fw.exit.i
  %i.cv = trunc i32 %i.ci to i8
  %i.cw = getelementptr i8, ptr %.04092.i, i64 1  ; 2 uses
  store i8 %i.cv, ptr %.04092.i, align 1
  %.not60.us.i = icmp eq i32 %.24891.i, 1
  br i1 %.not60.us.i, label %.critedge.i, label %intel_de_read_fw.exit.split.us.1.i

intel_de_read_fw.exit.split.preheader.i:          ; preds = %intel_de_read_fw.exit.i
  %i.cx = icmp eq i32 %.24891.i, 1
  br i1 %i.cx, label %.critedge.i, label %intel_de_read_fw.exit.split.1.i

intel_de_read_fw.exit.split.us.1.i:               ; preds = %intel_de_read_fw.exit.split.us.preheader.i
  %i.cy = lshr i32 %i.ci, 8
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr i8, ptr %.04092.i, i64 2  ; 2 uses
  store i8 %i.cz, ptr %i.cw, align 1
  %.not60.us.1.i = icmp eq i32 %.24891.i, 2
  br i1 %.not60.us.1.i, label %.critedge.i, label %intel_de_read_fw.exit.split.us.2.i

intel_de_read_fw.exit.split.us.2.i:               ; preds = %intel_de_read_fw.exit.split.us.1.i
  %i.db = lshr i32 %i.ci, 16
  %i.dc = trunc i32 %i.db to i8
  %i.dd = getelementptr i8, ptr %.04092.i, i64 3  ; 2 uses
  store i8 %i.dc, ptr %i.da, align 1
  %.not60.us.2.i = icmp eq i32 %.24891.i, 3
  br i1 %.not60.us.2.i, label %.critedge.i, label %intel_de_read_fw.exit.split.us.3.i

intel_de_read_fw.exit.split.us.3.i:               ; preds = %intel_de_read_fw.exit.split.us.2.i
  %i.de = lshr i32 %i.ci, 24
  %i.df = trunc nuw i32 %i.de to i8
  %i.dg = getelementptr i8, ptr %.04092.i, i64 4
  store i8 %i.df, ptr %i.dd, align 1
  %i.dh = add nsw i32 %.24891.i, -4
  br label %.critedge.i

intel_de_read_fw.exit.split.1.i:                  ; preds = %intel_de_read_fw.exit.split.preheader.i
  %i.di = trunc i32 %i.ci to i8
  %i.dj = getelementptr i8, ptr %.04092.i, i64 1  ; 2 uses
  store i8 %i.di, ptr %.04092.i, align 1
  %i.dk = icmp eq i32 %.24891.i, 2
  br i1 %i.dk, label %.critedge.i, label %intel_de_read_fw.exit.split.2.i

intel_de_read_fw.exit.split.2.i:                  ; preds = %intel_de_read_fw.exit.split.1.i
  %i.dl = lshr i32 %i.ci, 8
  %i.dm = trunc i32 %i.dl to i8
  %i.dn = getelementptr i8, ptr %.04092.i, i64 2  ; 2 uses
  store i8 %i.dm, ptr %i.dj, align 1
  %i.do = icmp eq i32 %.24891.i, 3
  br i1 %i.do, label %.critedge.i, label %intel_de_read_fw.exit.split.3.i

intel_de_read_fw.exit.split.3.i:                  ; preds = %intel_de_read_fw.exit.split.2.i
  %i.dp = lshr i32 %i.ci, 16
  %i.dq = trunc i32 %i.dp to i8
  %i.dr = getelementptr i8, ptr %.04092.i, i64 3  ; 2 uses
  store i8 %i.dq, ptr %i.dn, align 1
  %i.ds = icmp eq i32 %.24891.i, 4
  br i1 %i.ds, label %.critedge.i, label %bb.v

bb.v:                                             ; preds = %intel_de_read_fw.exit.split.3.i
  %i.dt = lshr i32 %i.ci, 24
  %i.du = trunc nuw i32 %i.dt to i8
  %4 = getelementptr i8, ptr %.04092.i, i64 4
  store i8 %i.du, ptr %i.dr, align 1
  %i.dv = add nsw i32 %.24891.i, -4
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.v, %intel_de_read_fw.exit.split.3.i, %intel_de_read_fw.exit.split.2.i, %intel_de_read_fw.exit.split.1.i, %intel_de_read_fw.exit.split.us.3.i, %intel_de_read_fw.exit.split.us.2.i, %intel_de_read_fw.exit.split.us.1.i, %intel_de_read_fw.exit.split.preheader.i, %intel_de_read_fw.exit.split.us.preheader.i
  %.us-phi.i = phi i32 [ 0, %intel_de_read_fw.exit.split.2.i ], [ %i.dv, %bb.v ], [ 0, %intel_de_read_fw.exit.split.preheader.i ], [ 0, %intel_de_read_fw.exit.split.1.i ], [ 0, %intel_de_read_fw.exit.split.3.i ], [ 0, %intel_de_read_fw.exit.split.us.2.i ], [ 0, %intel_de_read_fw.exit.split.us.preheader.i ], [ 0, %intel_de_read_fw.exit.split.us.1.i ], [ %i.dh, %intel_de_read_fw.exit.split.us.3.i ] ; 3 uses
  %.us-phi89.i = phi ptr [ %i.dn, %intel_de_read_fw.exit.split.2.i ], [ %4, %bb.v ], [ %.04092.i, %intel_de_read_fw.exit.split.preheader.i ], [ %i.dj, %intel_de_read_fw.exit.split.1.i ], [ %i.dr, %intel_de_read_fw.exit.split.3.i ], [ %i.dd, %intel_de_read_fw.exit.split.us.2.i ], [ %i.cw, %intel_de_read_fw.exit.split.us.preheader.i ], [ %i.da, %intel_de_read_fw.exit.split.us.1.i ], [ %i.dg, %intel_de_read_fw.exit.split.us.3.i ]
  %i.dw = icmp eq i32 %.us-phi.i, %i.bw
  %or.cond62.i = select i1 %i.v, i1 %i.dw, i1 false
  br i1 %or.cond62.i, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %.critedge.i
  %i.dx = load i32, ptr %i.h, align 8
  %i.dy = add i32 %i.dx, 20736                    ; 4 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit.i79.i [label %arch_test_bit.exit.i.i.i78.i], !srcloc !20

arch_test_bit.exit.i.i.i78.i:                     ; preds = %bb.w
  %i.dz = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !21
  %i.ea = zext i32 %i.dz to i64
  %i.eb = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ea) #11, !srcloc !22 ; 2 uses
  %i.ec = icmp ult i8 %i.eb, 2
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = trunc nuw i8 %i.eb to i1
  br i1 %i.ed, label %bb.x, label %trace_i915_reg_rw.exit.i79.i

bb.x:                                             ; preds = %arch_test_bit.exit.i.i.i78.i
  %i.ee = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ee, ptr elementtype(i64) %i.ee) #11, !srcloc !23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !24
  %i.ef = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i82.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i82.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.eh, i1 noundef zeroext true, i32 %i.dy, i64 noundef range(i64 0, 4294967296) %i.k, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !25
  %i.ej = getelementptr i8, ptr %i.ee, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ej, ptr elementtype(i64) %i.ej) #11, !srcloc !26
  br label %trace_i915_reg_rw.exit.i79.i

trace_i915_reg_rw.exit.i79.i:                     ; preds = %bb.z, %arch_test_bit.exit.i.i.i78.i, %bb.w
  %.val.i80.i = load ptr, ptr %0, align 8
  %i.ek = tail call ptr @to_intel_uncore(ptr noundef %.val.i80.i) #10 ; 2 uses
  %i.el = icmp ult i32 %i.dy, 262144
  br i1 %i.el, label %bb.aa, label %intel_de_write_fw.exit85.i

bb.aa:                                            ; preds = %trace_i915_reg_rw.exit.i79.i
  %i.em = getelementptr i8, ptr %i.ek, i64 36
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = add i32 %i.en, %i.dy
  br label %intel_de_write_fw.exit85.i

intel_de_write_fw.exit85.i:                       ; preds = %bb.aa, %trace_i915_reg_rw.exit.i79.i
  %.0.i.i81.i = phi i32 [ %i.eo, %bb.aa ], [ %i.dy, %trace_i915_reg_rw.exit.i79.i ]
  %i.ep = load ptr, ptr %i.ek, align 8
  %i.eq = zext i32 %.0.i.i81.i to i64
  %i.er = getelementptr i8, ptr %i.ep, i64 %i.eq
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %2, ptr elementtype(i32) %i.er) #11, !srcloc !27
  br label %bb.ab

bb.ab:                                            ; preds = %intel_de_write_fw.exit85.i, %.critedge.i
  %.not.i = icmp eq i32 %.us-phi.i, 0
  br i1 %.not.i, label %.loopexit, label %bb.p, !llvm.loop !45

.loopexit:                                        ; preds = %bb.ab, %intel_de_write_fw.exit71.i
  %i.es = sub i32 %.031, %i.r                     ; 2 uses
  %i.et = zext nneg i32 %i.r to i64
  %i.eu = getelementptr i8, ptr %.030, i64 %i.et
  %.not36 = icmp eq i32 %i.es, 0
  br i1 %.not36, label %gmbus_xfer_read_chunk.exit, label %bb.b, !llvm.loop !46

gmbus_xfer_read_chunk.exit:                       ; preds = %.loopexit, %bb.p
  %.0 = phi i32 [ %i.bx, %bb.p ], [ 0, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -110, 1) i32 @gmbus_xfer_write(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 67174400) %2) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = load i16, ptr %i.c, align 4
  %i.e = zext i16 %i.d to i32
  %i.f = getelementptr i8, ptr %0, i64 1168
  %i.g = getelementptr i8, ptr %0, i64 928        ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.p, %bb.a
  %.022 = phi i32 [ %i.e, %bb.a ], [ %i.dw, %bb.p ] ; 3 uses
  %.021 = phi ptr [ %i.b, %bb.a ], [ %i.dv, %bb.p ] ; 7 uses
  %.val = load i16, ptr %i.f, align 8
  %i.h = icmp ugt i16 %.val, 8
  %i.i = select i1 %i.h, i32 511, i32 256
  %i.j = tail call i32 @llvm.umin.i32(i32 %.022, i32 %i.i) ; 4 uses
  %i.k = load i16, ptr %1, align 8
  %.not71.i = icmp eq i32 %.022, 0
  br i1 %.not71.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.l = add nsw i32 %i.j, -1                     ; 5 uses
  %i.m = load i8, ptr %.021, align 1
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.l, 0
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.preheader.i
  %i.o = getelementptr i8, ptr %.021, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = or disjoint i32 %i.r, %i.n               ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.l, 1
  br i1 %exitcond.not.i.1, label %._crit_edge.i.loopexit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.t = getelementptr i8, ptr %.021, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 16
  %i.x = or disjoint i32 %i.w, %i.s               ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.l, 2
  br i1 %exitcond.not.i.2, label %._crit_edge.i.loopexit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.y = getelementptr i8, ptr %.021, i64 3
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw i32 %i.aa, 24
  %i.ac = or disjoint i32 %i.ab, %i.x
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.preheader.i
  %.lcssa = phi i32 [ %i.n, %.lr.ph.preheader.i ], [ %i.s, %.lr.ph.i.1 ], [ %i.x, %.lr.ph.i.2 ], [ %i.ac, %.lr.ph.i.3 ]
  %scevgep = getelementptr i8, ptr %.021, i64 1
  %i.ad = tail call i32 @llvm.umin.i32(i32 %i.l, i32 3)
  %umin = zext nneg i32 %i.ad to i64
  %scevgep42 = getelementptr i8, ptr %scevgep, i64 %umin
  %i.ae = tail call i32 @llvm.usub.sat.i32(i32 %i.l, i32 3)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.b
  %.039.lcssa.i = phi i32 [ 0, %bb.b ], [ %.lcssa, %._crit_edge.i.loopexit ] ; 2 uses
  %.034.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.ae, %._crit_edge.i.loopexit ]
  %.031.lcssa.i = phi ptr [ %.021, %bb.b ], [ %scevgep42, %._crit_edge.i.loopexit ]
  %i.af = load i32, ptr %i.g, align 8
  %i.ag = add i32 %i.af, 20748                    ; 4 uses
  %i.ah = zext i32 %.039.lcssa.i to i64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 8), i1 false) #11
          to label %trace_i915_reg_rw.exit.i.i [label %arch_test_bit.exit.i.i.i.i], !srcloc !20

arch_test_bit.exit.i.i.i.i:                       ; preds = %._crit_edge.i
  %i.ai = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !21
  %i.aj = zext i32 %i.ai to i64
  %i.ak = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.aj) #11, !srcloc !22 ; 2 uses
  %i.al = icmp ult i8 %i.ak, 2
  tail call void @llvm.assume(i1 %i.al)
  %i.am = trunc nuw i8 %i.ak to i1
  br i1 %i.am, label %bb.c, label %trace_i915_reg_rw.exit.i.i

bb.c:                                             ; preds = %arch_test_bit.exit.i.i.i.i
  %i.an = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.an, ptr elementtype(i64) %i.an) #11, !srcloc !23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !24
  %i.ao = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_i915_reg_rw, i64 56), align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i32 @__SCT__tp_func_i915_reg_rw(ptr noundef %i.aq, i1 noundef zeroext true, i32 %i.ag, i64 noundef range(i64 0, 4294967296) %i.ah, i32 noundef 4, i1 noundef zeroext true) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !25
  %i.as = getelementptr i8, ptr %i.an, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.as, ptr elementtype(i64) %i.as) #11, !srcloc !26
  br label %trace_i915_reg_rw.exit.i.i

trace_i915_reg_rw.exit.i.i:                       ; preds = %bb.e, %arch_test_bit.exit.i.i.i.i, %._crit_edge.i
  %.val.i.i = load ptr, ptr %0, align 8
  %i.at = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #10 ; 2 uses
  %i.au = icmp ult i32 %i.ag, 262144
  br i1 %i.au, label %bb.f, label %intel_de_write_fw.exit.i

bb.f:                                             ; preds = %trace_i915_reg_rw.exit.i.i
  %i.av = getelementptr i8, ptr %i.at, i64 36
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = add i32 %i.aw, %i.ag
  br label %intel_de_write_fw.exit.i

intel_de_write_fw.exit.i:                         ; preds = %bb.f, %trace_i915_reg_rw.exit.i.i
  %.0.i.i.i = phi i32 [ %i.ax, %bb.f ], [ %i.ag, %trace_i915_reg_rw.exit.i.i ]
  %i.ay = load ptr, ptr %i.at, align 8
  %i.az = zext i32 %.0.i.i.i to i64
  %i.ba = getelementptr i8, ptr %i.ay, i64 %i.az
  tail call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %.039.lcssa.i, ptr elementtype(i32) %i.ba) #11, !srcloc !27
  %i.bb = load i32, ptr %i.g, align 8
  %i.bc = add i32 %i.bb, 20740                    ; 4 uses
  %i.bd = shl nuw nsw i32 %i.j, 16
end_hunk_0
