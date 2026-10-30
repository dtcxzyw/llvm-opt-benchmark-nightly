Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/vmscan?download=true
inline.NumInlined: 1147
inline.NumDeleted: 343
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@kswapd:bb.a
bb.bg:                                            ; preds = %bb.bf, %.lr.ph.i.i.1
  %i.jf = phi i64 [ %i.ix, %.lr.ph.i.i.1 ], [ %i.je, %bb.bf ] ; 2 uses
  %i.jg = getelementptr i8, ptr %.037.i.i, i64 2688 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !148

._crit_edge.i.i.loopexit.unr-lcssa:               ; preds = %bb.bg
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.jf, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %.037.i.i.epil.init = phi ptr [ %0, %.lr.ph.preheader.i.i ], [ %i.jg, %._crit_edge.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod121 = trunc i8 %narrow to i1
  call void @llvm.assume(i1 %lcmp.mod121)
  %i.jh = getelementptr i8, ptr %.037.i.i.epil.init, i64 144
  %i.ji = load volatile i64, ptr %i.jh, align 8
  %.not34.i.i.epil = icmp eq i64 %i.ji, 0
  br i1 %.not34.i.i.epil, label %._crit_edge.i.i, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i.epil.preheader
  %i.jj = getelementptr i8, ptr %.037.i.i.epil.init, i64 16
  %.0.val.i.i.epil = load i64, ptr %i.jj, align 8
  %i.jk = getelementptr i8, ptr %.037.i.i.epil.init, i64 32
  %.0.val33.i.i.epil = load i64, ptr %i.jk, align 32
  %i.jl = add i64 %.0.val33.i.i.epil, %.0.val.i.i.epil
  %i.jm = call i64 @llvm.umax.i64(i64 %i.jl, i64 32)
  %i.jn = add i64 %i.jm, %.epil.init
  store i64 %i.jn, ptr %2, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %bb.bh, %.lr.ph.i.i.epil.preheader, %kswapd_age_node.exit.i
  call fastcc void @shrink_node(ptr noundef %0, ptr noundef nonnull %2) #18, !srcloc !157
  %i.jo = load i8, ptr %i.y, align 1              ; 2 uses
  %.not31.i.i = icmp eq i8 %i.jo, 0
  %.pre.i.i = load i64, ptr %i.ad, align 8        ; 2 uses
  br i1 %.not31.i.i, label %kswapd_shrink_node.exit.i, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i.i
  %i.jp = zext nneg i8 %i.jo to i64
  %i.jq = shl i64 2, %i.jp
  %i.jr = call range(i64 0, 33) i64 @llvm.umin.i64(i64 %i.jq, i64 32)
  %.not32.i.i = icmp ult i64 %.pre.i.i, %i.jr
  br i1 %.not32.i.i, label %kswapd_shrink_node.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i8 0, ptr %i.y, align 1
  br label %kswapd_shrink_node.exit.i

kswapd_shrink_node.exit.i:                        ; preds = %bb.bj, %bb.bi, %._crit_edge.i.i
  %i.js = load i64, ptr %i.ah, align 8
  %i.jt = sub i64 %.pre.i.i, %i.il
  %i.ju = call i64 @llvm.umax.i64(i64 %i.js, i64 %i.jt)
  %i.jv = load i64, ptr %2, align 8
  %i.jw = icmp uge i64 %i.ju, %i.jv
  %spec.select.i = select i1 %i.jw, i1 true, i1 %or.cond7.i
  %i.jx = load volatile ptr, ptr %i.r, align 8
  %.not154.i = icmp eq ptr %i.jx, %i.r
  br i1 %.not154.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %kswapd_shrink_node.exit.i
  %i.jy = call fastcc zeroext i1 @allow_direct_reclaim(ptr noundef %0) #18, !srcloc !158
  br i1 %i.jy, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jz = call i32 @__wake_up(ptr noundef %i.s, i32 noundef 3, i32 noundef 0, ptr noundef null) #14 ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %kswapd_shrink_node.exit.i
  %i.ka = call zeroext i1 @kthread_freezable_should_stop(ptr noundef nonnull %i.b) #14
  %i.kb = load i8, ptr %i.b, align 1, !range !25, !noundef !41
  %i.kc = trunc nuw i8 %i.kb to i1
  %or.cond9.i = select i1 %i.kc, i1 true, i1 %i.ka
  %.pre178.pre.i = load i64, ptr %i.ad, align 8   ; 5 uses
  br i1 %or.cond9.i, label %.thread146.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kd = sub i64 %.pre178.pre.i, %i.fk           ; 2 uses
  %i.ke = call i64 @llvm.usub.sat.i64(i64 %.3.i, i64 %i.kd) ; 3 uses
  %i.kf = icmp ule i64 %.3.i, %i.kd
  %i.kg = icmp ne i64 %.pre178.pre.i, %i.fk       ; 2 uses
  %or.cond11.i = or i1 %i.kg, %i.kf
  br i1 %or.cond11.i, label %bb.bo, label %.thread146.i

bb.bo:                                            ; preds = %bb.bn
  %or.cond14.i = and i1 %spec.select.i, %i.kg
  %.pr.i = load i8, ptr %i.ac, align 4            ; 2 uses
  br i1 %or.cond14.i, label %thread-pre-split.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kh = add i8 %.pr.i, -1                       ; 2 uses
  store i8 %i.kh, ptr %i.ac, align 4
  br label %thread-pre-split.i

.thread146.i:                                     ; preds = %bb.bn, %bb.bm
  %.pre178.pre.i.lcssa = phi i64 [ %i.fk, %bb.bn ], [ %.pre178.pre.i, %bb.bm ]
  %.4.ph.i = phi i64 [ %i.ke, %bb.bn ], [ %.3.i, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %.pre179.i = load i8, ptr %i.ac, align 4
  %i.ki = icmp slt i8 %.pre179.i, 1
  br label %.loopexit156.i

bb.bq:                                            ; preds = %pgdat_balanced.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.backedge.i.backedge

thread-pre-split.i:                               ; preds = %bb.bp, %bb.bo
  %i.kj = phi i8 [ %i.kh, %bb.bp ], [ %.pr.i, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.kk = icmp sgt i8 %i.kj, 0
  br i1 %i.kk, label %bb.ap, label %.loopexit156.i, !llvm.loop !149

.loopexit156.i:                                   ; preds = %thread-pre-split.i, %.thread146.i
  %.pre178.pre.i82 = phi i64 [ %.pre178.pre.i.lcssa, %.thread146.i ], [ %.pre178.pre.i, %thread-pre-split.i ] ; 2 uses
  %i.kl = phi i1 [ %i.ki, %.thread146.i ], [ true, %thread-pre-split.i ]
  %.4144.i = phi i64 [ %.4.ph.i, %.thread146.i ], [ %i.ke, %thread-pre-split.i ]
  %i.km = icmp eq i64 %.pre178.pre.i82, 0
  %or.cond18.i = select i1 %i.km, i1 %i.kl, i1 false
  br i1 %or.cond18.i, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %.loopexit156.i
  %i.kn = load i16, ptr %i.x, align 8             ; 2 uses
  %i.ko = and i16 %i.kn, 384
  %or.cond129.not.i = icmp eq i16 %i.ko, 256
  br i1 %or.cond129.not.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.kp = or disjoint i16 %i.kn, 128
  store i16 %i.kp, ptr %i.x, align 8
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.bs, %bb.bq
  %.2115.i.be = phi i64 [ %.4144.i, %bb.bs ], [ 0, %bb.bq ]
  br label %.backedge.i

bb.bt:                                            ; preds = %bb.br, %.loopexit156.i
  %i.kq = icmp ne i64 %.pre178.pre.i82, 0
  %or.cond20.i = select i1 %i.kq, i1 true, i1 %i.fd
  br i1 %or.cond20.i, label %trace_mm_vmscan_kswapd_reclaim_fail.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kr = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.t, i32 1, ptr elementtype(i32) %i.t) #15, !srcloc !27
  %i.ks = add i32 %i.kr, 1
  %i.kt = load i32, ptr %i.w, align 64
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_vmscan_kswapd_reclaim_fail, i64 8), i1 false) #15
          to label %trace_mm_vmscan_kswapd_reclaim_fail.exit.i [label %cpumask_test_cpu.exit.i.i131.i], !srcloc !28

cpumask_test_cpu.exit.i.i131.i:                   ; preds = %bb.bu
  %i.ku = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #15, !srcloc !159
  %i.kv = zext i32 %i.ku to i64
  %i.kw = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.kv) #15, !srcloc !29 ; 2 uses
  %i.kx = icmp ult i8 %i.kw, 2
  call void @llvm.assume(i1 %i.kx)
  %i.ky = trunc nuw i8 %i.kw to i1
  br i1 %i.ky, label %bb.bv, label %trace_mm_vmscan_kswapd_reclaim_fail.exit.i

bb.bv:                                            ; preds = %cpumask_test_cpu.exit.i.i131.i
  %i.kz = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.kz, ptr elementtype(i64) %i.kz) #15, !srcloc !30
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !31
  %i.la = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_vmscan_kswapd_reclaim_fail, i64 56), align 8 ; 2 uses
  %.not.i.i132.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i132.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.lb = getelementptr i8, ptr %i.la, i64 8
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = call i32 @__SCT__tp_func_mm_vmscan_kswapd_reclaim_fail(ptr noundef %i.lc, i32 noundef %i.kt, i32 noundef %i.ks) #14 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !32
  %i.le = getelementptr i8, ptr %i.kz, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.le, ptr elementtype(i64) %i.le) #15, !srcloc !33
  br label %trace_mm_vmscan_kswapd_reclaim_fail.exit.i

trace_mm_vmscan_kswapd_reclaim_fail.exit.i:       ; preds = %bb.bx, %cpumask_test_cpu.exit.i.i131.i, %bb.bu, %bb.bt, %.thread149.i
  br i1 %.not122165.i, label %clear_reclaim_active.exit.thread.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %trace_mm_vmscan_kswapd_reclaim_fail.exit.i, %bb.bz
  %.012.i.i.i = phi ptr [ %i.lj, %bb.bz ], [ %0, %trace_mm_vmscan_kswapd_reclaim_fail.exit.i ] ; 3 uses
  %.0811.i.i.i = phi i32 [ %i.li, %bb.bz ], [ 0, %trace_mm_vmscan_kswapd_reclaim_fail.exit.i ]
  %i.lf = getelementptr i8, ptr %.012.i.i.i, i64 144
  %i.lg = load volatile i64, ptr %i.lf, align 8
  %.not9.i.i.i = icmp eq i64 %i.lg, 0
  br i1 %.not9.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.lr.ph.split.i.i.i
  %i.lh = getelementptr i8, ptr %.012.i.i.i, i64 984 ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %i.lh, i32 -3, ptr elementtype(i8) %i.lh) #15, !srcloc !37
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.lr.ph.split.i.i.i
  %i.li = add i32 %.0811.i.i.i, 1                 ; 2 uses
  %i.lj = getelementptr i8, ptr %.012.i.i.i, i64 1344
  %.not.i.i135.i = icmp sgt i32 %i.li, %i.dp
  br i1 %.not.i.i135.i, label %clear_reclaim_active.exit.i, label %.lr.ph.split.i.i.i, !llvm.loop !147

clear_reclaim_active.exit.i:                      ; preds = %bb.bz
  br i1 %i.fd, label %.lr.ph172.i, label %bb.cc

clear_reclaim_active.exit.thread.i:               ; preds = %trace_mm_vmscan_kswapd_reclaim_fail.exit.i
  br i1 %i.fd, label %._crit_edge173.i, label %bb.cc

.lr.ph172.i:                                      ; preds = %clear_reclaim_active.exit.i, %bb.cb
  %.2171.i = phi i32 [ %5, %bb.cb ], [ 0, %clear_reclaim_active.exit.i ] ; 2 uses
  %4 = sext i32 %.2171.i to i64                   ; 2 uses
  %i.lk = getelementptr [8 x i8], ptr %i.a, i64 %4
  %i.ll = load i64, ptr %i.lk, align 8            ; 2 uses
  %.not128.i = icmp eq i64 %i.ll, 0
  br i1 %.not128.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph172.i
  %i.lm = getelementptr [1344 x i8], ptr %0, i64 %4 ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 992    ; 2 uses
  %i.lo = call i64 @_raw_spin_lock_irqsave(ptr noundef %i.ln) #14
  %i.lp = getelementptr i8, ptr %i.lm, i64 32     ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 32
  %i.lr = call i64 @llvm.usub.sat.i64(i64 %i.lq, i64 %i.ll)
  store i64 %i.lr, ptr %i.lp, align 32
  call void @_raw_spin_unlock_irqrestore(ptr noundef %i.ln, i64 noundef %i.lo) #14
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.lr.ph172.i
  %5 = add i32 %.2171.i, 1                        ; 2 uses
  %.not127.i = icmp sgt i32 %5, %i.dp
  br i1 %.not127.i, label %._crit_edge173.i, label %.lr.ph172.i, !llvm.loop !150

._crit_edge173.i:                                 ; preds = %bb.cb, %clear_reclaim_active.exit.thread.i
  call void @wakeup_kcompactd(ptr noundef %0, i32 noundef 9, i32 noundef %i.dp) #14
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge173.i, %clear_reclaim_active.exit.thread.i, %clear_reclaim_active.exit.i
  %i.ls = call i64 @node_page_state(ptr noundef %0, i32 noundef 12) #14
  store i64 %i.ls, ptr %i.am, align 16
  %i.lt = call i64 @node_page_state(ptr noundef %0, i32 noundef 13) #14
  store i64 %i.lt, ptr %i.an, align 8
  %i.lu = load ptr, ptr %i.ab, align 64
  %.not11.i136.i = icmp eq ptr %i.lu, null
  br i1 %.not11.i136.i, label %bb.cd, label %set_task_reclaim_state.exit137.i, !prof !18

bb.cd:                                            ; preds = %bb.cc
  call void asm sideeffect "970: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 970b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 970) #15, !srcloc !53
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.51, ptr @.str.50, i32 277, i32 2307, i64 16) #15, !srcloc !54
  call void asm sideeffect "971: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 971b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 971) #15, !srcloc !55
  br label %set_task_reclaim_state.exit137.i

set_task_reclaim_state.exit137.i:                 ; preds = %bb.cd, %bb.cc
  store ptr null, ptr %i.ab, align 64
  %i.lv = load i32, ptr %i.w, align 64
  %i.lw = load i8, ptr %i.y, align 1
  %i.lx = sext i8 %i.lw to i32
  %i.ly = load i64, ptr %i.ad, align 8
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_vmscan_balance_pgdat_end, i64 8), i1 false) #15
          to label %balance_pgdat.exit [label %cpumask_test_cpu.exit.i.i138.i], !srcloc !28

cpumask_test_cpu.exit.i.i138.i:                   ; preds = %set_task_reclaim_state.exit137.i
  %i.lz = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #15, !srcloc !160
  %i.ma = zext i32 %i.lz to i64
  %i.mb = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @__cpu_online_mask, i64 range(i64 -2147483648, 4294967296) %i.ma) #15, !srcloc !29 ; 2 uses
  %i.mc = icmp ult i8 %i.mb, 2
  call void @llvm.assume(i1 %i.mc)
  %i.md = trunc nuw i8 %i.mb to i1
  br i1 %i.md, label %bb.ce, label %balance_pgdat.exit

bb.ce:                                            ; preds = %cpumask_test_cpu.exit.i.i138.i
  %i.me = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.me, ptr elementtype(i64) %i.me) #15, !srcloc !30
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !31
  %i.mf = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_mm_vmscan_balance_pgdat_end, i64 56), align 8 ; 2 uses
  %.not.i.i139.i = icmp eq ptr %i.mf, null
  br i1 %.not.i.i139.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mg = getelementptr i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = call i32 @__SCT__tp_func_mm_vmscan_balance_pgdat_end(ptr noundef %i.mh, i32 noundef %i.lv, i32 noundef range(i32 -128, 128) %i.lx, i32 noundef %i.dp, i64 noundef %i.ly) #14 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !32
  %i.mj = getelementptr i8, ptr %i.me, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.mj, ptr elementtype(i64) %i.mj) #15, !srcloc !33
  br label %balance_pgdat.exit

balance_pgdat.exit:                               ; preds = %set_task_reclaim_state.exit137.i, %cpumask_test_cpu.exit.i.i138.i, %bb.cg
  %i.mk = load i8, ptr %i.y, align 1
  %i.ml = sext i8 %i.mk to i32                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.mm = icmp ugt i32 %i.dm, %i.ml
  br i1 %i.mm, label %bb.c, label %bb.ch

bb.ch:                                            ; preds = %balance_pgdat.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.b

bb.ci:                                            ; preds = %kswapd_try_to_sleep.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %i.mn = load i32, ptr %i.f, align 4
  %i.mo = and i32 %i.mn, -133121
  store i32 %i.mo, ptr %i.f, align 4
  ret i32 0
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @kswapd_stop(i32 noundef %0) local_unnamed_addr #6 section ".init.text" align 16 prefalign(16) {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = getelementptr [8 x i8], ptr @node_data, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 13800    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @kthread_stop(ptr noundef nonnull %i.e) #14 ; 0 uses
  store ptr null, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @kswapd_init() #6 section ".init.text" align 16 prefalign(16) {
bb.a:
  tail call void @swap_setup() #14
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8 ; 2 uses
  %.not.i3 = icmp eq i64 %i.a, 0
  br i1 %.not.i3, label %._crit_edge, label %find_first_bit.exit

find_first_bit.exit:                              ; preds = %bb.a
  %i.b = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.a) #17, !srcloc !23 ; 2 uses
  %i.c = icmp ult i64 %i.b, 64
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %find_first_bit.exit, %find_next_bit.exit
  %.0.in4 = phi i64 [ %i.i, %find_next_bit.exit ], [ %i.b, %find_first_bit.exit ] ; 3 uses
  %.0 = trunc nuw nsw i64 %.0.in4 to i32
  tail call void @kswapd_run(i32 noundef %.0) #20
  %i.d = icmp eq i64 %.0.in4, 63
  br i1 %i.d, label %._crit_edge, label %bb.b, !prof !18

bb.b:                                             ; preds = %.lr.ph
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @node_states, i64 24), align 8
  %i.f = shl nsw i64 -2, %.0.in4
  %i.g = and i64 %i.e, %i.f                       ; 2 uses
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %._crit_edge, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.b
  %i.h = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.g) #17, !srcloc !23 ; 2 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 64)
  %i.j = icmp ult i64 %i.h, 64
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !161

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %find_next_bit.exit, %bb.a, %find_first_bit.exit
  tail call void @__register_sysctl_init(ptr noundef @.str.203, ptr noundef @vmscan_sysctl_table, ptr noundef @.str.204, i64 noundef 2) #14
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2, 2) i32 @node_reclaim(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %3 = alloca %struct.scan_control, align 8       ; 10 uses
  %i.a = shl nuw i32 1, %2
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.b, i64 32)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  store i64 %i.c, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.f = load i32, ptr @node_reclaim_mode, align 4 ; 2 uses
  %i.g = trunc i32 %i.f to i16
  %i.h = shl i16 %i.g, 3
  %i.i = and i16 %i.h, 48
  %i.j = or disjoint i16 %i.i, 64
  store i16 %i.j, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 51
  %i.l = trunc i32 %2 to i8
  store i8 %i.l, ptr %i.k, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i8 4, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 53
  %i.o = shl i32 %1, 1
  %i.p = and i32 %i.o, 30
  %i.q = lshr i32 20054306, %i.p
  %i.r = trunc i32 %i.q to i8
  %i.s = and i8 %i.r, 3
  store i8 %i.s, ptr %i.n, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.u = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #17, !srcloc !26
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr i8, ptr %i.v, i64 44       ; 2 uses
  %i.x = load volatile i32, ptr %i.w, align 4     ; 4 uses
  %i.y = and i32 %i.x, 269221888
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %current_gfp_context.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.z = and i32 %i.x, 524288
  %.not9.i = icmp eq i32 %i.z, 0
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = and i32 %1, -193
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ab = and i32 %i.x, 262144
  %.not10.i = icmp eq i32 %i.ab, 0
  %i.ac = and i32 %1, -129
  %spec.select.i = select i1 %.not10.i, i32 %1, i32 %i.ac
  br label %bb.e

end_hunk_0
