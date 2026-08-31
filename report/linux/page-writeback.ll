Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/page-writeback?download=true
inline.NumInlined: 386
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@balance_dirty_pages:bb.a
  %i.bj = getelementptr i8, ptr %i.bi, i64 44
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = and i32 %i.bk, 1048576
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %.wb_dirty_freerun.exit_crit_edge.i, label %wb_dirty_freerun.exit.i

.wb_dirty_freerun.exit_crit_edge.i:               ; preds = %bb.i
  %.pre.i = load i8, ptr %i.k, align 8, !range !43
  %i.bm = trunc nuw i8 %.pre.i to i1
  br i1 %i.bm, label %balance_wb_limits.exit, label %wb_dirty_freerun.exit.thread.i

wb_dirty_freerun.exit.i:                          ; preds = %bb.i
  %i.bn = load i64, ptr %.sink14.i.i.sroa.gep, align 8
  %i.bo = load i64, ptr %.sink13.i.i.sroa.gep, align 8
  %i.bp = load i64, ptr %.sink.i.i.sroa.gep, align 8
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = lshr i64 %i.bq, 1
  %i.bs = icmp ult i64 %i.bn, %i.br               ; 2 uses
  %i.bt = zext i1 %i.bs to i8
  store i8 %i.bt, ptr %i.k, align 8
  br i1 %i.bs, label %balance_wb_limits.exit, label %wb_dirty_freerun.exit.thread.i

wb_dirty_freerun.exit.thread.i:                   ; preds = %wb_dirty_freerun.exit.i, %.wb_dirty_freerun.exit_crit_edge.i, %bb.h
  %i.bu = load i64, ptr %.sink14.i.i.sroa.gep, align 8 ; 8 uses
  %i.bv = load i64, ptr %.sink13.i.i.sroa.gep, align 8 ; 7 uses
  %i.bw = icmp ugt i64 %i.bu, %i.bv
  %.pre207 = load i64, ptr %.sink13.i.i.sroa.gep176, align 8 ; 7 uses
  %.pre208 = load i64, ptr %.sink14.i.i.sroa.gep175, align 8 ; 3 uses
  %i.bx = icmp ugt i64 %.pre208, %.pre207
  %i.by = or i1 %i.h, %i.bx
  %narrow = select i1 %i.bw, i1 %i.by, i1 false
  %i.bz = zext i1 %narrow to i8
  store i8 %i.bz, ptr %i.m, align 1
  %i.ca = load ptr, ptr %3, align 8               ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 328
  %i.cc = load volatile i64, ptr %i.cb, align 8
  %i.cd = load i64, ptr %.sink.i.i.sroa.gep177, align 8
  %i.ce = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_wb_domain, i64 112), align 8
  %i.cf = call i64 @llvm.umax.i64(i64 %.pre207, i64 %i.ce) ; 4 uses
  store i64 %i.cf, ptr %i.n, align 8
  store i64 0, ptr %i.o, align 8
  %.not.i5.i = icmp ult i64 %.pre208, %i.cf
  br i1 %.not.i5.i, label %bb.j, label %bb.w, !prof !26

bb.j:                                             ; preds = %wb_dirty_freerun.exit.thread.i
  %i.cg = add i64 %i.cd, %.pre207
  %i.ch = lshr i64 %i.cg, 1
  %i.ci = add i64 %i.ch, %i.cf
  %i.cj = lshr i64 %i.ci, 1                       ; 3 uses
  %i.ck = sub i64 %i.cj, %.pre208
  %i.cl = shl i64 %i.ck, 10
  %i.cm = sub i64 %i.cf, %i.cj
  %i.cn = or i64 %i.cm, 1
  %i.co = sdiv i64 %i.cl, %i.cn                   ; 3 uses
  %i.cp = mul i64 %i.co, %i.co
  %i.cq = ashr i64 %i.cp, 10
  %i.cr = mul i64 %i.cq, %i.co
  %i.cs = ashr i64 %i.cr, 10                      ; 2 uses
  %i.ct = icmp sgt i64 %i.cs, 1023
  %i.cu = call i64 @llvm.smax.i64(i64 %i.cs, i64 -1024)
  %i.cv = add nsw i64 %i.cu, 1024
  %i.cw = select i1 %i.ct, i64 2048, i64 %i.cv    ; 3 uses
  %i.cx = load ptr, ptr %i.ca, align 8
  %i.cy = getelementptr i8, ptr %i.cx, i64 68
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = and i32 %i.cz, 2
  %.not81.i.i = icmp eq i32 %i.da, 0
  br i1 %.not81.i.i, label %bb.n, label %bb.k, !prof !26

bb.k:                                             ; preds = %bb.j
  %.not82.i.i = icmp ult i64 %i.bu, %i.bv
  br i1 %.not82.i.i, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.db = load i64, ptr %.sink.i.i.sroa.gep, align 8
  %i.dc = add i64 %i.db, %i.bv
  %i.dd = lshr i64 %i.dc, 1                       ; 4 uses
  %i.de = icmp eq i64 %i.dd, 0
  %i.df = icmp eq i64 %i.dd, %i.bv
  %or.cond.i.i = or i1 %i.de, %i.df
  br i1 %or.cond.i.i, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = sub i64 %i.dd, %i.bu
  %i.dh = shl i64 %i.dg, 10
  %i.di = sub i64 %i.bv, %i.dd
  %i.dj = or i64 %i.di, 1
  %i.dk = sdiv i64 %i.dh, %i.dj                   ; 3 uses
  %i.dl = mul i64 %i.dk, %i.dk
  %i.dm = ashr i64 %i.dl, 10
  %i.dn = mul i64 %i.dm, %i.dk
  %i.do = ashr i64 %i.dn, 10                      ; 2 uses
  %i.dp = icmp sgt i64 %i.do, 1023
  %i.dq = call i64 @llvm.smax.i64(i64 %i.do, i64 -1024)
  %i.dr = add nsw i64 %i.dq, 1024
  %i.ds = select i1 %i.dp, i64 2048, i64 %i.dr
  %i.dt = call i64 @llvm.umin.i64(i64 %i.cw, i64 %i.ds)
  br label %.sink.split.i.i

bb.n:                                             ; preds = %bb.j
  %i.du = icmp ugt i64 %i.bv, %.pre207
  br i1 %i.du, label %bb.o, label %bb.p, !prof !23

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.072.i.i = phi i64 [ %.pre207, %bb.o ], [ %i.bv, %bb.n ] ; 4 uses
  %i.dv = shl i64 %.072.i.i, 16
  %i.dw = and i64 %.pre207, 4294967294
  %i.dx = or disjoint i64 %i.dw, 1
  %i.dy = udiv i64 %i.dv, %i.dx                   ; 2 uses
  %i.dz = mul i64 %i.dy, %i.cj
  %i.ea = lshr i64 %i.dz, 16
  %i.eb = shl i64 %i.cc, 3
  %i.ec = add i64 %i.eb, %.pre207
  %i.ed = sub i64 %i.ec, %.072.i.i
  %i.ee = mul i64 %i.ed, %i.dy                    ; 2 uses
  %i.ef = lshr i64 %i.ee, 16                      ; 2 uses
  %i.eg = add nuw nsw i64 %i.ef, %i.ea            ; 2 uses
  %i.eh = lshr i64 %i.ee, 18
  %i.ei = sub nsw i64 %i.eg, %i.eh
  %i.ej = icmp ult i64 %i.bu, %i.ei
  br i1 %i.ej, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ek = sub i64 %i.eg, %i.bu
  %i.el = mul i64 %i.ek, %i.cw
  %i.em = or i64 %i.ef, 1
  %i.en = udiv i64 %i.el, %i.em
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.eo = lshr i64 %i.cw, 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i.i166 = phi i64 [ %i.en, %bb.q ], [ %i.eo, %bb.r ] ; 3 uses
  %i.ep = lshr i64 %.072.i.i, 1                   ; 2 uses
  %i.eq = icmp ult i64 %i.bu, %i.ep
  br i1 %i.eq, label %bb.t, label %.sink.split.i.i

bb.t:                                             ; preds = %bb.s
  %i.er = lshr i64 %.072.i.i, 4
  %i.es = icmp samesign ugt i64 %i.bu, %i.er
  br i1 %i.es, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.et = mul i64 %.0.i.i166, %i.ep
  %i.eu = and i64 %i.bu, 4294967295
  %i.ev = udiv i64 %i.et, %i.eu
  br label %.sink.split.i.i

bb.v:                                             ; preds = %bb.t
  %i.ew = shl i64 %.0.i.i166, 3
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.v, %bb.u, %bb.s, %bb.m
  %.sink.i.i165 = phi i64 [ %i.dt, %bb.m ], [ %i.ev, %bb.u ], [ %i.ew, %bb.v ], [ %.0.i.i166, %bb.s ]
  store i64 %.sink.i.i165, ptr %i.o, align 8
  br label %bb.w

bb.w:                                             ; preds = %wb_dirty_freerun.exit.thread.i, %bb.k, %bb.l, %.sink.split.i.i
  %i.ex = load i8, ptr %i.m, align 1, !range !43, !noundef !46
  %i.ey = zext nneg i8 %i.ex to i32
  store i32 %i.ey, ptr %i.p, align 8
  %i.ez = load volatile i64, ptr %i.q, align 8
  %i.fa = add i64 %i.ez, 200
  %i.fb = load volatile i64, ptr @jiffies, align 64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = icmp slt i64 %i.fc, 0
  br i1 %i.fd, label %bb.x, label %fls64.exit.i

bb.x:                                             ; preds = %bb.w
  call fastcc void @__wb_update_bandwidth(ptr noundef nonnull %3, i1 noundef zeroext true) #12
  br label %fls64.exit.i

fls64.exit.i:                                     ; preds = %bb.w, %bb.x
  %i.fe = load volatile i64, ptr %i.r, align 8    ; 6 uses
  %i.ff = load i64, ptr %i.o, align 8
  %i.fg = mul i64 %i.ff, %i.fe
  %i.fh = lshr i64 %i.fg, 10                      ; 7 uses
  %i.fi = load i64, ptr %.sink14.i.i.sroa.gep, align 8
  %i.fj = load volatile i64, ptr %i.s, align 8
  %i.fk = lshr i64 %i.fj, 7
  %i.fl = add nuw nsw i64 %i.fk, 1
  %i.fm = udiv i64 %i.fi, %i.fl
  %i.fn = add i64 %i.fm, 1
  %i.fo = call range(i64 0, 201) i64 @llvm.umin.i64(i64 %i.fn, i64 200) ; 12 uses
  %i.fp = load volatile i64, ptr %i.s, align 8
  %i.fq = call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.fp, i32 -1) #13, !srcloc !44 ; 2 uses
  %i.fr = load volatile i64, ptr %i.r, align 8
  %i.fs = call i32 asm "bsrq $1,${0:q}", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.fr, i32 -1) #13, !srcloc !44 ; 2 uses
  %i.ft = icmp sgt i32 %i.fq, %i.fs
  br i1 %i.ft, label %bb.y, label %bb.z

bb.y:                                             ; preds = %fls64.exit.i
  %i.fu = sext i32 %i.fq to i64
  %i.fv = sext i32 %i.fs to i64
  %i.fw = sub nsw i64 %i.fu, %i.fv
  %i.fx = mul nsw i64 %i.fw, 625
  %4 = sdiv i64 %i.fx, 64
  %i.fy = add nsw i64 %4, 10
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %fls64.exit.i
  %.048.i = phi i64 [ %i.fy, %bb.y ], [ 10, %fls64.exit.i ]
  %.zext = lshr i64 %i.fo, 1
  %i.fz = add nuw nsw i64 %.zext, 1
  %i.ga = call i64 @llvm.smin.i64(i64 %.048.i, i64 %i.fz) ; 2 uses
  %i.gb = mul i64 %i.ga, %i.fe
  %i.gc = lshr i64 %i.gb, 10
  %i.gd = trunc i64 %i.gc to i32                  ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 32
  br i1 %i.ge, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.gf = mul i64 %i.fo, %i.fe
  %i.gg = lshr i64 %i.gf, 10
  %i.gh = trunc i64 %i.gg to i32                  ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, 32
  br i1 %i.gi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gj = udiv i64 32000, %i.fe
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %.149.i = phi i64 [ %i.gj, %bb.ab ], [ %i.fo, %bb.aa ], [ %i.ga, %bb.z ]
  %.0.i168 = phi i32 [ 32, %bb.ab ], [ %i.gh, %bb.aa ], [ %i.gd, %bb.z ] ; 2 uses
  %i.gk = mul i32 %.0.i168, 1000
  %i.gl = sext i32 %i.gk to i64
  %i.gm = add nuw nsw i64 %i.fh, 1
  %i.gn = udiv i64 %i.gl, %i.gm
  %i.go = icmp sgt i64 %i.gn, %i.fo               ; 2 uses
  %i.gp = mul nuw nsw i64 %i.fo, %i.fh
  %i.gq = lshr i64 %i.gp, 10
  %i.gr = trunc i64 %i.gq to i32
  %.2.i = select i1 %i.go, i64 %i.fo, i64 %.149.i ; 2 uses
  %.1.i = select i1 %i.go, i32 %i.gr, i32 %.0.i168 ; 2 uses
  %5 = icmp sgt i32 %.1.i, 31
  br i1 %5, label %6, label %wb_min_pause.exit

6:                                                ; preds = %bb.ac
  %7 = sdiv i64 %.2.i, 2
  %8 = add nsw i64 %7, 1
  br label %wb_min_pause.exit

wb_min_pause.exit:                                ; preds = %bb.ac, %6
  %9 = phi i64 [ %8, %6 ], [ %.2.i, %bb.ac ]
  %10 = icmp eq i64 %i.fh, 0                      ; 2 uses
  br i1 %10, label %bb.ap, label %bb.ad, !prof !23

bb.ad:                                            ; preds = %wb_min_pause.exit
  %i.gs = udiv i64 %i.t, %i.fh                    ; 5 uses
  %i.gt = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #13, !srcloc !12
  %i.gu = inttoptr i64 %i.gt to ptr               ; 5 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 2832
  %i.gw = load i64, ptr %i.gv, align 16           ; 2 uses
  %.not = icmp eq i64 %i.gw, 0
  %.neg = sub i64 %i.gw, %i.w
  %i.gx = select i1 %.not, i64 0, i64 %.neg
  %.0141 = add i64 %i.gx, %i.gs                   ; 6 uses
  %i.gy = icmp slt i64 %.0141, %9
  br i1 %i.gy, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.gz = getelementptr i8, ptr %i.gu, i64 2832   ; 3 uses
  %i.ha = call i64 @llvm.smin.i64(i64 %.0141, i64 0)
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_balance_dirty_pages, i64 8), i1 false) #11
          to label %trace_balance_dirty_pages.exit [label %arch_test_bit.exit.i.i], !srcloc !13

arch_test_bit.exit.i.i:                           ; preds = %bb.ae
  %i.hb = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !47
  %i.hc = zext i32 %i.hb to i64
  %i.hd = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.hc) #11, !srcloc !15 ; 2 uses
  %i.he = icmp ult i8 %i.hd, 2
  call void @llvm.assume(i1 %i.he)
  %i.hf = trunc nuw i8 %i.hd to i1
  br i1 %i.hf, label %bb.af, label %trace_balance_dirty_pages.exit

bb.af:                                            ; preds = %arch_test_bit.exit.i.i
  %i.hg = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hg, ptr elementtype(i64) %i.hg) #11, !srcloc !16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !17
  %i.hh = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_balance_dirty_pages, i64 56), align 8 ; 2 uses
  %.not.i.i169 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i169, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hi = getelementptr i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = call i32 @__SCT__tp_func_balance_dirty_pages(ptr noundef %i.hj, ptr noundef %0, ptr noundef nonnull %3, i64 noundef %i.fe, i64 noundef range(i64 0, 18014398509481984) %i.fh, i64 noundef range(i64 -2147483648, 2147483648) %1, i64 noundef %i.gs, i64 noundef %i.ha, i64 noundef %i.i) #14 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  %i.hl = getelementptr i8, ptr %i.hg, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hl, ptr elementtype(i64) %i.hl) #11, !srcloc !19
  br label %trace_balance_dirty_pages.exit

trace_balance_dirty_pages.exit:                   ; preds = %bb.ae, %arch_test_bit.exit.i.i, %bb.ah
  %i.hm = icmp slt i64 %.0141, -1000
  br i1 %i.hm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %trace_balance_dirty_pages.exit
  store i64 %i.w, ptr %i.gz, align 16
  %i.hn = getelementptr i8, ptr %i.gu, i64 2824
  store i32 0, ptr %i.hn, align 8
  br label %.loopexit

bb.aj:                                            ; preds = %trace_balance_dirty_pages.exit
  %.not151 = icmp ugt i64 %i.fh, %i.t
  br i1 %.not151, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ho = load i64, ptr %i.gz, align 16
  %i.hp = add i64 %i.ho, %i.gs
  store i64 %i.hp, ptr %i.gz, align 16
  %i.hq = getelementptr i8, ptr %i.gu, i64 2824
  store i32 0, ptr %i.hq, align 8
  br label %.loopexit

bb.al:                                            ; preds = %bb.aj
  %i.hr = getelementptr i8, ptr %i.gu, i64 2828   ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4            ; 2 uses
  %i.ht = sext i32 %i.hs to i64
  %.not152 = icmp ult i64 %1, %i.ht
  br i1 %.not152, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hu = trunc nsw i64 %1 to i32
  %i.hv = add i32 %i.hs, %i.hu
  store i32 %i.hv, ptr %i.hr, align 4
  br label %.loopexit

bb.an:                                            ; preds = %bb.ad
  %11 = icmp sgt i64 %.0141, %i.fo
  br i1 %11, label %bb.ao, label %bb.ap, !prof !23

bb.ao:                                            ; preds = %bb.an
  %i.hw = sub nuw nsw i64 %.0141, %i.fo
  %i.hx = call i64 @llvm.umin.i64(i64 %i.hw, i64 %i.fo)
  %i.hy = add i64 %i.hx, %i.w
  br label %bb.ap

bb.ap:                                            ; preds = %wb_min_pause.exit, %bb.an, %bb.ao
  %.0144 = phi i64 [ %i.w, %bb.an ], [ %i.hy, %bb.ao ], [ %i.w, %wb_min_pause.exit ]
  %.1 = phi i64 [ %.0141, %bb.an ], [ %i.fo, %bb.ao ], [ %i.fo, %wb_min_pause.exit ] ; 3 uses
  %.0140 = phi i64 [ %i.gs, %bb.an ], [ %i.gs, %bb.ao ], [ %i.fo, %wb_min_pause.exit ]
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_balance_dirty_pages, i64 8), i1 false) #11
          to label %trace_balance_dirty_pages.exit174 [label %arch_test_bit.exit.i.i170], !srcloc !13

arch_test_bit.exit.i.i170:                        ; preds = %bb.ap
  %i.hz = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #11, !srcloc !47
  %i.ia = zext i32 %i.hz to i64
  %i.ib = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ia) #11, !srcloc !15 ; 2 uses
  %i.ic = icmp ult i8 %i.ib, 2
  call void @llvm.assume(i1 %i.ic)
  %i.id = trunc nuw i8 %i.ib to i1
  br i1 %i.id, label %bb.aq, label %trace_balance_dirty_pages.exit174

bb.aq:                                            ; preds = %arch_test_bit.exit.i.i170
  %i.ie = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ie, ptr elementtype(i64) %i.ie) #11, !srcloc !16
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !17
  %i.if = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_balance_dirty_pages, i64 56), align 8 ; 2 uses
  %.not.i.i171 = icmp eq ptr %i.if, null
  br i1 %.not.i.i171, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ig = getelementptr i8, ptr %i.if, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = call i32 @__SCT__tp_func_balance_dirty_pages(ptr noundef %i.ih, ptr noundef %0, ptr noundef nonnull %3, i64 noundef %i.fe, i64 noundef range(i64 0, 18014398509481984) %i.fh, i64 noundef range(i64 -2147483648, 2147483648) %1, i64 noundef %.0140, i64 noundef %.1, i64 noundef %i.i) #14 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !srcloc !18
  %i.ij = getelementptr i8, ptr %i.ie, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ij, ptr elementtype(i64) %i.ij) #11, !srcloc !19
  br label %trace_balance_dirty_pages.exit174

trace_balance_dirty_pages.exit174:                ; preds = %bb.ap, %arch_test_bit.exit.i.i170, %bb.as
  br i1 %.not153, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %trace_balance_dirty_pages.exit174
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_sched_set_state_tp, i64 8), i1 false) #11
          to label %arch_static_branch.exit [label %bb.au], !srcloc !13

bb.au:                                            ; preds = %bb.at
  call void @__trace_set_current_state(i32 noundef 258) #14
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %bb.at, %bb.au
  %i.ik = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #13, !srcloc !12
  %i.il = inttoptr i64 %i.ik to ptr               ; 6 uses
  %i.im = getelementptr i8, ptr %i.il, i64 24
  store volatile i32 258, ptr %i.im, align 8
  %i.in = load volatile i64, ptr @jiffies, align 64
  store i64 %i.in, ptr %i.v, align 8
  %i.io = call i64 @io_schedule_timeout(i64 noundef %.1) #14 ; 0 uses
  %i.ip = add i64 %.1, %.0144
  %i.iq = getelementptr i8, ptr %i.il, i64 2832
  store i64 %i.ip, ptr %i.iq, align 16
  %i.ir = getelementptr i8, ptr %i.il, i64 2824
  store i32 0, ptr %i.ir, align 8
  %i.is = getelementptr i8, ptr %i.il, i64 2828
  store i32 %.1.i, ptr %i.is, align 4
  br i1 %10, label %wb_stat_error.exit, label %.loopexit

wb_stat_error.exit:                               ; preds = %arch_static_branch.exit
  %i.it = load i64, ptr %.sink14.i.i.sroa.gep, align 8
  %i.iu = load i32, ptr @nr_cpu_ids, align 4      ; 2 uses
  %i.iv = call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.iu, i32 -1) #13, !srcloc !22
  %i.iw = shl i32 %i.iv, 3
  %i.ix = add i32 %i.iw, 8
  %i.iy = mul i32 %i.ix, %i.iu
  %i.iz = zext i32 %i.iy to i64
  %.not155 = icmp ugt i64 %i.it, %i.iz
  br i1 %.not155, label %task_sigpending.exit.i, label %.loopexit

task_sigpending.exit.i:                           ; preds = %wb_stat_error.exit
  %i.ja = load volatile i64, ptr %i.il, align 16
  %i.jb = and i64 %i.ja, 2
  %.not.i = icmp eq i64 %i.jb, 0
  br i1 %.not.i, label %fatal_signal_pending.exit.thread.backedge, label %fatal_signal_pending.exit

fatal_signal_pending.exit.thread.backedge:        ; preds = %task_sigpending.exit.i, %fatal_signal_pending.exit
  br label %fatal_signal_pending.exit.thread

fatal_signal_pending.exit:                        ; preds = %task_sigpending.exit.i
  %i.jc = getelementptr i8, ptr %i.il, i64 2152
  %.val.i = load i64, ptr %i.jc, align 8
  %.val.i.fr = freeze i64 %.val.i
  %i.jd = and i64 %.val.i.fr, 256
  %.not156 = icmp eq i64 %i.jd, 0
  br i1 %.not156, label %fatal_signal_pending.exit.thread.backedge, label %.loopexit

.loopexit:                                        ; preds = %trace_balance_dirty_pages.exit174, %arch_static_branch.exit, %wb_stat_error.exit, %fatal_signal_pending.exit, %domain_poll_intv.exit, %bb.ai, %bb.al, %bb.ak, %bb.am
  %.1146.ph = phi i32 [ 0, %bb.ai ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %domain_poll_intv.exit ], [ 0, %bb.al ], [ -11, %trace_balance_dirty_pages.exit174 ], [ 0, %arch_static_branch.exit ], [ 0, %wb_stat_error.exit ], [ 0, %fatal_signal_pending.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret i32 %.1146.ph
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @balance_dirty_pages_ratelimited(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @balance_dirty_pages_ratelimited_flags(ptr noundef %0, i32 noundef 0) #12 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local zeroext i1 @wb_over_bg_thresh(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.dirty_throttle_control, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  store ptr %0, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 352
  store ptr %i.e, ptr %i.d, align 8
  %i.f = load volatile i64, ptr @vm_zone_stat, align 16
  %spec.store.select.i.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.f, i64 0)
  %i.g = load i64, ptr @totalreserve_pages, align 8
  %i.h = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 16), align 16
  %spec.store.select.i.i.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.h, i64 0)
  %i.i = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 24), align 8
  %spec.store.select.i.i12.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.i, i64 0)
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 %spec.store.select.i.i.i.i, i64 %i.g)
  %i.k = add nuw i64 %i.j, 1
  %i.l = add nuw i64 %i.k, %spec.store.select.i.i.i.i.i
  %i.m = add i64 %i.l, %spec.store.select.i.i12.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.m, ptr %i.n, align 8
  %i.o = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 160), align 16
  %spec.store.select.i.i9.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.o, i64 0)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 %spec.store.select.i.i9.i.i, ptr %i.p, align 8
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %1) #12, !srcloc !48
  %i.q = load i64, ptr %i.p, align 8              ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8              ; 6 uses
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %domain_over_bg_thresh.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %1, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 0, ptr %i.b, align 8, !annotation !25
  %i.v = load ptr, ptr %i.d, align 8
  call void @fprop_fraction_percpu(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @global_wb_domain, i64 8), ptr noundef %i.v, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #14
  %i.w = load i32, ptr @bdi_min_ratio, align 4
  %i.x = sub i32 1000000, %i.w
  %i.y = zext i32 %i.x to i64
  %i.z = mul i64 %i.s, %i.y
  %i.aa = udiv i64 %i.z, 1000000
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = load i64, ptr %i.b, align 8
  %i.ae = udiv i64 %i.ac, %i.ad
  %i.af = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 72
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %i.af, i64 76
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = mul i64 %i.s, %i.ai
  %i.am = udiv i64 %i.al, 1000000
  %i.an = add i64 %i.am, %i.ae                    ; 3 uses
  %i.ao = icmp ugt i64 %i.s, %i.q
  br i1 %i.ao, label %bb.c, label %__wb_calc_thresh.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr i8, ptr %i.af, i64 68
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, 2
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  %i.as = sub nuw i64 %i.s, %i.q                  ; 2 uses
  br i1 %.not.i.i.i, label %bb.e, label %bb.d, !prof !26

bb.d:                                             ; preds = %bb.c
  %i.at = udiv i64 %i.as, 100
  %i.au = call i64 @llvm.umax.i64(i64 %i.an, i64 %i.at)
  br label %__wb_calc_thresh.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.av = lshr i64 %i.as, 3
  %i.aw = call i64 @llvm.umax.i64(i64 %i.an, i64 %i.av)
  br label %__wb_calc_thresh.exit.i.i

__wb_calc_thresh.exit.i.i:                        ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i = phi i64 [ %i.au, %bb.d ], [ %i.aw, %bb.e ], [ %i.an, %bb.b ]
  %i.ax = zext i32 %i.ak to i64
  %i.ay = mul i64 %i.s, %i.ax
  %i.az = udiv i64 %i.ay, 1000000
  %spec.select.i.i.i = call range(i64 0, 18446744073710) i64 @llvm.umin.i64(i64 %.0.i.i.i, i64 %i.az) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ba = load i32, ptr @nr_cpu_ids, align 4      ; 2 uses
  %i.bb = call i32 asm "bsrl $1,$0", "=r,r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ba, i32 -1) #13, !srcloc !22
  %i.bc = shl i32 %i.bb, 3
  %i.bd = add i32 %i.bc, 8
  %i.be = mul i32 %i.bd, %i.ba
  %i.bf = zext i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bf, 1
  %i.bh = icmp samesign ult i64 %spec.select.i.i.i, %i.bg
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %__wb_calc_thresh.exit.i.i
  %i.bi = getelementptr i8, ptr %i.u, i64 96
  %i.bj = call i64 @__percpu_counter_sum(ptr noundef %i.bi) #14
  br label %domain_over_bg_thresh.exit

bb.g:                                             ; preds = %__wb_calc_thresh.exit.i.i
  %i.bk = getelementptr i8, ptr %i.u, i64 104
  %i.bl = load volatile i64, ptr %i.bk, align 8
  br label %domain_over_bg_thresh.exit

domain_over_bg_thresh.exit:                       ; preds = %bb.f, %bb.g
  %.sink.i.i = phi i64 [ %i.bl, %bb.g ], [ %i.bj, %bb.f ]
  %i.bm = icmp sgt i64 %.sink.i.i, %spec.select.i.i.i
  br label %domain_over_bg_thresh.exit.thread

domain_over_bg_thresh.exit.thread:                ; preds = %domain_over_bg_thresh.exit, %bb.a
  %.0.i4 = phi i1 [ true, %bb.a ], [ %i.bm, %domain_over_bg_thresh.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i1 %.0.i4
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @writeback_set_ratelimit() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %0 = alloca %struct.dirty_throttle_control, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  %i.a = load volatile i64, ptr @vm_zone_stat, align 16
  %spec.store.select.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.a, i64 0)
  %i.b = load i64, ptr @totalreserve_pages, align 8
  %i.c = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 16), align 16
  %spec.store.select.i.i.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.c, i64 0)
  %i.d = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @vm_node_stat, i64 24), align 8
  %spec.store.select.i.i12.i.i = tail call range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.d, i64 0)
  %i.e = tail call i64 @llvm.usub.sat.i64(i64 %spec.store.select.i.i.i, i64 %i.b)
  %i.f = add nuw i64 %i.e, 1
  %i.g = add nuw i64 %i.f, %spec.store.select.i.i.i.i
  %i.h = add i64 %i.g, %spec.store.select.i.i12.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.i, align 8
  call fastcc void @domain_dirty_limits(ptr noundef nonnull %0) #12, !srcloc !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  store i64 %i.k, ptr getelementptr inbounds nuw (i8, ptr @global_wb_domain, i64 112), align 8
  %i.l = load volatile i32, ptr @__num_online_cpus, align 4
  %i.m = shl i32 %i.l, 5
  %i.n = zext i32 %i.m to i64
  %i.o = udiv i64 %i.k, %i.n
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.o, i64 16)
  store i64 %spec.store.select, ptr @ratelimit_pages, align 8
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define dso_local void @page_writeback_init() local_unnamed_addr #6 section ".init.text" align 16 prefalign(16) {
end_hunk_0
