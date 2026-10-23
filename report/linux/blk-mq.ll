Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/blk-mq?download=true
inline.NumInlined: 959
inline.NumDeleted: 311
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@blk_mq_alloc_request:bb.a

.thread38:                                        ; preds = %bb.q, %blk_mq_alloc_cached_request.exit
  %.1 = phi ptr [ %.0.i, %blk_mq_alloc_cached_request.exit ], [ %i.bn, %bb.q ] ; 5 uses
  %i.bo = getelementptr i8, ptr %.1, i64 44
  store i32 0, ptr %i.bo, align 4
  %i.bp = getelementptr i8, ptr %.1, i64 126
  store i8 0, ptr %i.bp, align 2
  %i.bq = getelementptr i8, ptr %.1, i64 48
  store i64 -1, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %.1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @blk_queue_exit(ptr noundef %0) #23
  br label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r, %.thread38
  %.122 = phi ptr [ %.1, %.thread38 ], [ %i.bm, %.thread ], [ inttoptr (i64 -11 to ptr), %bb.r ]
  ret ptr %.122
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @blk_queue_enter(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @__blk_mq_alloc_requests(ptr noundef initializes((40, 56)) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load volatile i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 1024
  %.not65 = icmp eq i64 %i.e, 0
  br i1 %.not65, label %blk_time_get_ns.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #25, !srcloc !34
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 2360
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @__preempt_count) #26, !srcloc !43
  %i.k = and i32 %i.j, 16711936
  %.not10.i = icmp eq i32 %i.k, 0
  br i1 %.not10.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = tail call i64 @ktime_get() #23
  br label %blk_time_get_ns.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.i, i64 32       ; 2 uses
  %i.n = load volatile i64, ptr %i.m, align 8     ; 2 uses
  %.not11.i = icmp eq i64 %i.n, 0
  br i1 %.not11.i, label %bb.f, label %blk_time_get_ns.exit

bb.f:                                             ; preds = %bb.e
  %i.o = tail call i64 @ktime_get() #23           ; 2 uses
  store volatile i64 %i.o, ptr %i.m, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #22, !srcloc !44
  %i.p = getelementptr i8, ptr %i.g, i64 44       ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = or i32 %i.q, 536870912
  store i32 %i.r, ptr %i.p, align 4
  br label %blk_time_get_ns.exit

blk_time_get_ns.exit:                             ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.f ], [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  %i.s = getelementptr i8, ptr %0, i64 16         ; 5 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 2097152
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %blk_time_get_ns.exit
  %i.v = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = or i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %blk_time_get_ns.exit
  %i.y = getelementptr i8, ptr %i.b, i64 24
  %i.z = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.aa = getelementptr i8, ptr %0, i64 48        ; 6 uses
  %i.ab = getelementptr i8, ptr %0, i64 20        ; 16 uses
  %i.ac = getelementptr i8, ptr %0, i64 8         ; 5 uses
  %i.ad = getelementptr i8, ptr %0, i64 24        ; 5 uses
  %i.ae = getelementptr i8, ptr %0, i64 32        ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.ap, %bb.h
  %i.af = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #22, !srcloc !29
  %.val.i = load ptr, ptr %i.y, align 8
  %i.ag = ptrtoint ptr %.val.i to i64
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = add i64 %i.aj, %i.ag
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  store ptr %i.al, ptr %i.z, align 8
  %i.am = load i32, ptr %i.s, align 8             ; 3 uses
  %i.an = getelementptr i8, ptr %i.al, i64 80
  %i.ao = and i32 %i.am, 4194304
  %.not.i.i = icmp eq i32 %i.ao, 0
  %i.ap = and i32 %i.am, 255                      ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  %spec.select.i.i = zext i1 %i.aq to i64
  %.0.i.i = select i1 %.not.i.i, i64 %spec.select.i.i, i64 2
  %i.ar = getelementptr [8 x i8], ptr %i.an, i64 %.0.i.i
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  store ptr %i.as, ptr %i.aa, align 8
  %i.at = load ptr, ptr %0, align 8               ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %.not.i44 = icmp eq ptr %i.av, null
  br i1 %.not.i44, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr i8, ptr %i.as, i64 168
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = and i64 %i.ax, 2
  %.not.i.i45 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i45, label %blk_mq_limit_depth.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @__blk_mq_tag_busy(ptr noundef %i.as) #23
  br label %blk_mq_limit_depth.exit

bb.l:                                             ; preds = %bb.i
  %i.az = load i32, ptr %i.ab, align 4
  %i.ba = or i32 %i.az, 16                        ; 2 uses
  store i32 %i.ba, ptr %i.ab, align 4
  %i.bb = icmp eq i32 %i.ap, 2
  %i.bc = and i32 %i.am, 254
  %i.bd = icmp eq i32 %i.bc, 34
  %or.cond.i = or i1 %i.bb, %i.bd
  br i1 %or.cond.i, label %blk_mq_limit_depth.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i32, ptr %i.ac, align 8
  %i.bf = and i32 %i.be, 2
  %.not14.i = icmp eq i32 %i.bf, 0
  br i1 %.not14.i, label %bb.o, label %bb.n, !prof !30

bb.n:                                             ; preds = %bb.m
  call void asm sideeffect "892: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 892b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 892) #22, !srcloc !107
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 525, i32 2307, i64 16) #22, !srcloc !108
  call void asm sideeffect "893: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 893b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 893) #22, !srcloc !109
  %.pre.i = load i32, ptr %i.ab, align 4
  %.pre17.i = load ptr, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bg = phi ptr [ %.pre17.i, %bb.n ], [ %i.at, %bb.m ]
  %i.bh = phi i32 [ %.pre.i, %bb.n ], [ %i.ba, %bb.m ]
  %i.bi = or i32 %i.bh, 32
  store i32 %i.bi, ptr %i.ab, align 4
  %i.bj = getelementptr i8, ptr %i.bg, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 104
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %.not15.i = icmp eq ptr %i.bn, null
  br i1 %.not15.i, label %blk_mq_limit_depth.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = load i32, ptr %i.s, align 8
  call void %i.bn(i32 noundef %i.bo, ptr noundef %0) #23, !inline_history !103
  br label %blk_mq_limit_depth.exit

blk_mq_limit_depth.exit:                          ; preds = %bb.j, %bb.k, %bb.l, %bb.o, %bb.p
  %i.bp = load i32, ptr %i.ac, align 8
  %i.bq = and i32 %i.bp, 2
  %.not40 = icmp eq i32 %i.bq, 0
  br i1 %.not40, label %bb.r, label %bb.q

bb.q:                                             ; preds = %blk_mq_limit_depth.exit
  %i.br = load i32, ptr %i.ab, align 4
  %i.bs = or i32 %i.br, 32768
  store i32 %i.bs, ptr %i.ab, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %blk_mq_limit_depth.exit
  %i.bt = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.bu = icmp ugt i32 %i.bt, 1
  br i1 %i.bu, label %bb.s, label %bb.an

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !annotation !35
  br label %bb.t

bb.t:                                             ; preds = %bb.ad, %bb.s
  %i.bv = phi i32 [ %i.bt, %bb.s ], [ %i.ed, %bb.ad ]
  %.0.i47 = phi i32 [ 0, %bb.s ], [ %.2.i, %bb.ad ] ; 4 uses
  %i.bw = sub i32 %i.bv, %.0.i47
  %i.bx = call i64 @blk_mq_get_tags(ptr noundef %0, i32 noundef %i.bw, ptr noundef nonnull %i.a) #23 ; 2 uses
  %.not.i48 = icmp eq i64 %i.bx, 0
  br i1 %.not.i48, label %bb.u, label %bb.v, !prof !36

bb.u:                                             ; preds = %bb.t
  %i.by = icmp eq i32 %.0.i47, 0
  br i1 %i.by, label %bb.am, label %.loopexit.i

bb.v:                                             ; preds = %bb.t
  %i.bz = load i32, ptr %i.ab, align 4
  %i.ca = and i32 %i.bz, 16
  %.not.i.i49 = icmp eq i32 %i.ca, 0
  %i.cb = load ptr, ptr %i.aa, align 8
  %..i.i = select i1 %.not.i.i49, i64 320, i64 328
  %i.cc = getelementptr i8, ptr %i.cb, i64 %..i.i
  %.0.i.i50 = load ptr, ptr %i.cc, align 8
  %i.cd = getelementptr i8, ptr %.0.i.i50, i64 152
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.v
  %.147.i = phi i32 [ %.0.i47, %bb.v ], [ %.2.i, %bb.ac ] ; 2 uses
  %.03146.i = phi i32 [ 0, %bb.v ], [ %i.ec, %bb.ac ] ; 3 uses
  %.03245.i = phi i64 [ %i.bx, %bb.v ], [ %.133.i, %bb.ac ] ; 3 uses
  %i.ce = zext nneg i32 %.03146.i to i64
  %i.cf = shl nuw i64 1, %i.ce                    ; 2 uses
  %i.cg = and i64 %i.cf, %.03245.i
  %.not36.i = icmp eq i64 %i.cg, 0
  br i1 %.not36.i, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = load i32, ptr %i.a, align 4
  %i.ci = add i32 %i.ch, %.03146.i                ; 3 uses
  %i.cj = load ptr, ptr %i.cd, align 8
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr [8 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8            ; 21 uses
  call void @llvm.prefetch.p0(ptr %i.cm, i32 0, i32 3, i32 1)
  %i.cn = xor i64 %i.cf, -1
  %i.co = and i64 %.03245.i, %i.cn
  %i.cp = load ptr, ptr %i.z, align 8
  %i.cq = load ptr, ptr %i.aa, align 8
  %i.cr = load ptr, ptr %0, align 8
  store ptr %i.cr, ptr %i.cm, align 8
  %i.cs = getelementptr i8, ptr %i.cm, i64 8
  store ptr %i.cp, ptr %i.cs, align 8
  %i.ct = getelementptr i8, ptr %i.cm, i64 16
  store ptr %i.cq, ptr %i.ct, align 8
  %i.cu = load i32, ptr %i.s, align 8
  %i.cv = getelementptr i8, ptr %i.cm, i64 24
  store i32 %i.cu, ptr %i.cv, align 8
  %i.cw = load i32, ptr %i.ac, align 8
  %i.cx = and i32 %i.cw, 4
  %.not.i38.i = icmp eq i32 %i.cx, 0
  %.pre.i.i = load i32, ptr %i.ab, align 4        ; 2 uses
  br i1 %.not.i38.i, label %._crit_edge.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = or i32 %.pre.i.i, 512                   ; 2 uses
  store i32 %i.cy, ptr %i.ab, align 4
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.y, %bb.x
  %i.cz = phi i32 [ %i.cy, %bb.y ], [ %.pre.i.i, %bb.x ] ; 2 uses
  %i.da = getelementptr i8, ptr %i.cm, i64 28
  store i32 %i.cz, ptr %i.da, align 4
  %i.db = load i32, ptr %i.ab, align 4
  %i.dc = and i32 %i.db, 16
  %.not44.i.i = icmp eq i32 %i.dc, 0              ; 2 uses
  %spec.select.i.i51 = select i1 %.not44.i.i, i32 %i.ci, i32 -1
  %spec.select2.i.i = select i1 %.not44.i.i, i32 -1, i32 %i.ci
  %i.dd = getelementptr i8, ptr %i.cm, i64 32
  store i32 %spec.select.i.i51, ptr %i.dd, align 8
  %i.de = getelementptr i8, ptr %i.cm, i64 36
  store i32 %spec.select2.i.i, ptr %i.de, align 4
  %i.df = getelementptr i8, ptr %i.cm, i64 40
  store i32 0, ptr %i.df, align 8
  %i.dg = getelementptr i8, ptr %i.cm, i64 88
  store ptr null, ptr %i.dg, align 8
  %i.dh = getelementptr i8, ptr %i.cm, i64 112
  %i.di = getelementptr i8, ptr %i.cm, i64 232
  %i.dj = getelementptr i8, ptr %i.cm, i64 72     ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(14) %i.dh, i8 0, i64 14, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  store volatile ptr %i.dj, ptr %i.dj, align 8
  %i.dk = getelementptr i8, ptr %i.cm, i64 80
  store volatile ptr %i.dj, ptr %i.dk, align 8
  %i.dl = getelementptr i8, ptr %i.cm, i64 136
  store volatile i64 0, ptr %i.dl, align 8
  %i.dm = getelementptr i8, ptr %i.cm, i64 132
  store volatile i32 1, ptr %i.dm, align 4
  %i.dn = and i32 %i.cz, 32
  %.not45.i.i = icmp eq i32 %i.dn, 0
  br i1 %.not45.i.i, label %blk_mq_rq_ctx_init.exit.i, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.do = load ptr, ptr %0, align 8
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = getelementptr i8, ptr %i.cm, i64 144
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.dr, i8 0, i64 16, i1 false)
  %i.ds = getelementptr i8, ptr %i.cm, i64 160    ; 2 uses
  %i.dt = ptrtoint ptr %i.ds to i64
  store i64 %i.dt, ptr %i.ds, align 8
  %i.du = load ptr, ptr %i.dq, align 8
  %i.dv = getelementptr i8, ptr %i.du, i64 112
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not46.i.i = icmp eq ptr %i.dw, null
  br i1 %.not46.i.i, label %blk_mq_rq_ctx_init.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void %i.dw(ptr noundef %i.cm) #23, !inline_history !104
  br label %blk_mq_rq_ctx_init.exit.i

blk_mq_rq_ctx_init.exit.i:                        ; preds = %bb.aa, %bb.z, %._crit_edge.i.i
  %i.dx = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8
  store ptr %i.dy, ptr %i.dj, align 8
  store ptr %i.cm, ptr %i.dx, align 8
  %i.dz = getelementptr i8, ptr %i.dx, i64 8      ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8
  %.not.i39.i = icmp eq ptr %i.ea, null
  br i1 %.not.i39.i, label %bb.ab, label %rq_list_add_head.exit.i

bb.ab:                                            ; preds = %blk_mq_rq_ctx_init.exit.i
  store ptr %i.cm, ptr %i.dz, align 8
  br label %rq_list_add_head.exit.i

rq_list_add_head.exit.i:                          ; preds = %bb.ab, %blk_mq_rq_ctx_init.exit.i
  %i.eb = add i32 %.147.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %rq_list_add_head.exit.i, %bb.w
  %.133.i = phi i64 [ %i.co, %rq_list_add_head.exit.i ], [ %.03245.i, %bb.w ] ; 2 uses
  %.2.i = phi i32 [ %i.eb, %rq_list_add_head.exit.i ], [ %.147.i, %bb.w ] ; 4 uses
  %i.ec = add i32 %.03146.i, 1
  %.not35.i = icmp eq i64 %.133.i, 0
  br i1 %.not35.i, label %bb.ad, label %bb.w, !llvm.loop !105

bb.ad:                                            ; preds = %bb.ac
  %i.ed = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.ee = icmp ugt i32 %i.ed, %.2.i
  br i1 %i.ee, label %bb.t, label %.loopexit.i, !llvm.loop !106

.loopexit.i:                                      ; preds = %bb.ad, %bb.u
  %.3.i = phi i32 [ %.0.i47, %bb.u ], [ %.2.i, %bb.ad ] ; 4 uses
  %i.ef = load i32, ptr %i.ab, align 4
  %i.eg = and i32 %i.ef, 16
  %.not37.i = icmp eq i32 %i.eg, 0
  br i1 %.not37.i, label %bb.ae, label %blk_mq_add_active_requests.exit.i

bb.ae:                                            ; preds = %.loopexit.i
  %i.eh = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 168
  %i.ej = load i64, ptr %i.ei, align 8            ; 2 uses
  %i.ek = and i64 %i.ej, 2
  %.not.i40.i = icmp eq i64 %i.ek, 0
  br i1 %.not.i40.i, label %blk_mq_add_active_requests.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.el = and i64 %i.ej, 8
  %.not.i.i.i = icmp eq i64 %i.el, 0
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.em = getelementptr i8, ptr %i.eh, i64 184
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = getelementptr i8, ptr %i.en, i64 448    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.eo, i32 %.3.i, ptr elementtype(i32) %i.eo) #22, !srcloc !45
  br label %blk_mq_add_active_requests.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.ep = getelementptr i8, ptr %i.eh, i64 344    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addl $1, $0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ep, i32 %.3.i, ptr elementtype(i32) %i.ep) #22, !srcloc !45
  br label %blk_mq_add_active_requests.exit.i

blk_mq_add_active_requests.exit.i:                ; preds = %bb.ah, %bb.ag, %bb.ae, %.loopexit.i
  %i.eq = load ptr, ptr %0, align 8               ; 2 uses
  %i.er = getelementptr i8, ptr %i.eq, i64 64
  %i.es = add i32 %.3.i, -1
  %i.et = sext i32 %i.es to i64                   ; 2 uses
  call void @__rcu_read_lock() #23
  %i.eu = load volatile i64, ptr %i.er, align 8   ; 2 uses
  %i.ev = and i64 %i.eu, 3
  %.not.i.i41.i = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i41.i, label %bb.ai, label %__ref_is_percpu.exit.i.i, !prof !30

bb.ai:                                            ; preds = %blk_mq_add_active_requests.exit.i
  %i.ew = inttoptr i64 %i.eu to ptr               ; 2 uses
  call void asm sideeffect "addq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ew, i64 range(i64 -2147483648, 2147483648) %i.et, ptr elementtype(i64) %i.ew) #22, !srcloc !110
  br label %percpu_ref_get_many.exit.i

__ref_is_percpu.exit.i.i:                         ; preds = %blk_mq_add_active_requests.exit.i
  %i.ex = getelementptr i8, ptr %i.eq, i64 72
  %i.ey = load ptr, ptr %i.ex, align 8            ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock addq $1, $0", "=*m,er,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ey, i64 range(i64 -2147483648, 2147483648) %i.et, ptr elementtype(i64) %i.ey) #22, !srcloc !46
  br label %percpu_ref_get_many.exit.i

percpu_ref_get_many.exit.i:                       ; preds = %__ref_is_percpu.exit.i.i, %bb.ai
  call void @__rcu_read_unlock() #23
  %i.ez = load i32, ptr %i.ad, align 8
end_hunk_0
