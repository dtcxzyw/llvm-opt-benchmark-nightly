Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/build_utility?download=true
inline.NumInlined: 1069
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@cpu_attach_domain:bb.a
  %.01115.us.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.split.us.i.i ], [ null, %lowest_flag_domain.exit72.i ]
  %i.fk = getelementptr i8, ptr %.016.us.i.i, i64 60
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = and i32 %i.fl, 2048
  %.not12.us.i.i = icmp eq i32 %i.fm, 0
  %spec.select.i.i = select i1 %.not12.us.i.i, ptr %.01115.us.i.i, ptr %.016.us.i.i ; 2 uses
  %i.fn = load ptr, ptr %.016.us.i.i, align 8     ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.fn, null
  br i1 %.not.us.i.i, label %highest_flag_domain.exit76.i, label %.lr.ph.split.us.i.i, !llvm.loop !368

highest_flag_domain.exit76.i:                     ; preds = %.lr.ph.split.us.i.i, %lowest_flag_domain.exit72.i
  %.011.lcssa.i75.i = phi ptr [ null, %lowest_flag_domain.exit72.i ], [ %spec.select.i.i, %.lr.ph.split.us.i.i ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !378
  %i.fo = load i64, ptr %i.b, align 8
  %i.fp = add i64 %i.fo, ptrtoint (ptr @sd_asym_packing to i64)
  %i.fq = inttoptr i64 %i.fp to ptr
  store volatile ptr %.011.lcssa.i75.i, ptr %i.fq, align 8
  %i.fr = load i64, ptr %i.b, align 8
  %i.fs = add i64 %i.fr, ptrtoint (ptr @runqueues to i64)
  %i.ft = inttoptr i64 %i.fs to ptr
  %i.fu = getelementptr i8, ptr %i.ft, i64 2768
  %i.fv = load volatile ptr, ptr %i.fu, align 16  ; 2 uses
  %.not10.i77.i = icmp eq ptr %i.fv, null
  br i1 %.not10.i77.i, label %update_top_cache_domain.exit, label %.lr.ph.i78.i

.lr.ph.i78.i:                                     ; preds = %highest_flag_domain.exit76.i, %bb.ac
  %.011.i79.i = phi ptr [ %i.fz, %bb.ac ], [ %i.fv, %highest_flag_domain.exit76.i ] ; 4 uses
  %i.fw = getelementptr i8, ptr %.011.i79.i, i64 60
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = and i32 %i.fx, 64
  %.not9.i80.i = icmp eq i32 %i.fy, 0
  br i1 %.not9.i80.i, label %bb.ac, label %lowest_flag_domain.exit83.i

bb.ac:                                            ; preds = %.lr.ph.i78.i
  %i.fz = load ptr, ptr %.011.i79.i, align 8      ; 2 uses
  %.not.i82.i = icmp eq ptr %i.fz, null
  br i1 %.not.i82.i, label %update_top_cache_domain.exit, label %.lr.ph.i78.i, !llvm.loop !14

lowest_flag_domain.exit83.i:                      ; preds = %.lr.ph.i78.i
  %i.ga = getelementptr i8, ptr %.011.i79.i, i64 360
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %.not58.i = icmp eq ptr %i.gb, null
  %spec.select.i79 = select i1 %.not58.i, ptr %.0.i78, ptr %i.gb
  br label %update_top_cache_domain.exit

update_top_cache_domain.exit:                     ; preds = %bb.ac, %highest_flag_domain.exit76.i, %lowest_flag_domain.exit83.i
  %.0.lcssa.i8191.i = phi ptr [ %.011.i79.i, %lowest_flag_domain.exit83.i ], [ null, %highest_flag_domain.exit76.i ], [ null, %bb.ac ]
  %.1.i = phi ptr [ %spec.select.i79, %lowest_flag_domain.exit83.i ], [ %.0.i78, %highest_flag_domain.exit76.i ], [ %.0.i78, %bb.ac ]
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !379
  %i.gc = load i64, ptr %i.b, align 8
  %i.gd = add i64 %i.gc, ptrtoint (ptr @sd_asym_cpucapacity to i64)
  %i.ge = inttoptr i64 %i.gd to ptr
  store volatile ptr %.0.lcssa.i8191.i, ptr %i.ge, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !380
  %i.gf = load i64, ptr %i.b, align 8
  %i.gg = add i64 %i.gf, ptrtoint (ptr @sd_balance_shared to i64)
  %i.gh = inttoptr i64 %i.gg to ptr
  store volatile ptr %.1.i, ptr %i.gh, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @static_key_slow_inc_cpuslocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(3)
declare dso_local noalias ptr @__kmalloc_cache_node_noprof(ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #39

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_node_noprof(i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #32

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @update_group_capacity(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @destroy_sched_domain(ptr noundef nonnull %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %free_sched_groups.exit, label %.preheader.split.i

.preheader.split.i:                               ; preds = %bb.a, %bb.e
  %.0.i = phi ptr [ %i.c, %bb.e ], [ %i.b, %bb.a ] ; 4 uses
  %i.c = load ptr, ptr %.0.i, align 8             ; 2 uses
  %i.d = getelementptr i8, ptr %.0.i, i64 24      ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.e, ptr elementtype(i32) %i.e) #42, !srcloc !80 ; 2 uses
  %i.g = icmp ult i8 %i.f, 2
  tail call void @llvm.assume(i1 %i.g)
  %i.h = trunc nuw i8 %i.f to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader.split.i
  %i.i = load ptr, ptr %i.d, align 8
  tail call void @kfree(ptr noundef %i.i) #43
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader.split.i
  %i.j = getelementptr i8, ptr %.0.i, i64 8       ; 2 uses
  %i.k = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.j, ptr elementtype(i32) %i.j) #42, !srcloc !80 ; 2 uses
  %i.l = icmp ult i8 %i.k, 2
  tail call void @llvm.assume(i1 %i.l)
  %i.m = trunc nuw i8 %i.k to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @kfree(ptr noundef %.0.i) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not13.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i, label %free_sched_groups.exit, label %.preheader.split.i, !llvm.loop !12

free_sched_groups.exit:                           ; preds = %bb.e, %bb.a
  %i.n = getelementptr i8, ptr %0, i64 360
  %i.o = load ptr, ptr %i.n, align 8              ; 4 uses
  %.not.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i4, label %free_sched_domain_shared.exit, label %bb.f

bb.f:                                             ; preds = %free_sched_groups.exit
  %i.p = tail call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.o, ptr nonnull elementtype(i32) %i.o) #42, !srcloc !80 ; 2 uses
  %i.q = icmp ult i8 %i.p, 2
  tail call void @llvm.assume(i1 %i.q)
  %i.r = trunc nuw i8 %i.p to i1
  br i1 %i.r, label %bb.g, label %free_sched_domain_shared.exit

bb.g:                                             ; preds = %bb.f
  tail call void @kfree(ptr noundef nonnull %i.o) #43
  br label %free_sched_domain_shared.exit

free_sched_domain_shared.exit:                    ; preds = %free_sched_groups.exit, %bb.f, %bb.g
  %i.s = getelementptr i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @kfree(ptr noundef %i.t) #43
  tail call void @kfree(ptr noundef nonnull %0) #43
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @sched_domain_debug_one(ptr noundef nonnull %0, i32 noundef range(i32 0, 64) %1, i32 noundef %2) unnamed_addr #30 align 16 {
arch_test_bit.exit85:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 60         ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  store i64 0, ptr @sched_domains_tmpmask, align 8
  %i.e = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.355, i32 noundef %2, ptr noundef @.str.2, i32 noundef %2) #49 ; 0 uses
  %i.f = load i32, ptr @nr_cpu_ids, align 4
  %i.g = getelementptr i8, ptr %0, i64 376        ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 336
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.356, i32 noundef %i.f, ptr noundef %i.g, ptr noundef %i.i) #49 ; 0 uses
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  %i.l = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.g, i64 range(i64 -2147483648, 4294967296) %i.k) #42, !srcloc !50 ; 2 uses
  %i.m = icmp ult i8 %i.l, 2
  tail call void @llvm.assume(i1 %i.m)
  %i.n = trunc nuw i8 %i.l to i1
  br i1 %i.n, label %bb.b, label %bb.a

bb.a:                                             ; preds = %arch_test_bit.exit85
  %i.o = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.357, i32 noundef %1) #49 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %arch_test_bit.exit85
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %arch_test_bit.exit

arch_test_bit.exit:                               ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.b, i64 40
  %i.q = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.p, i64 range(i64 -2147483648, 4294967296) %i.k) #42, !srcloc !50 ; 2 uses
  %i.r = icmp ult i8 %i.q, 2
  tail call void @llvm.assume(i1 %i.r)
  %i.s = trunc nuw i8 %i.q to i1
  br i1 %i.s, label %bb.d, label %bb.c

bb.c:                                             ; preds = %arch_test_bit.exit
  %i.t = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.358, i32 noundef %1) #49 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %arch_test_bit.exit, %bb.b
  %i.u = and i32 %i.d, 16383
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr i8, ptr %0, i64 8          ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.n
  %i.x = phi i64 [ 0, %bb.d ], [ %i.aw, %bb.n ]
  %i.y = shl nsw i64 -1, %i.x
  %i.z = and i64 %i.y, %i.v                       ; 2 uses
  %.not23.i = icmp eq i64 %i.z, 0
  br i1 %.not23.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.e
  %i.aa = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.z) #48, !srcloc !54 ; 3 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = icmp ult i32 %i.ab, 14
  br i1 %i.ac, label %bb.f, label %find_next_bit.exit.thread

bb.f:                                             ; preds = %find_next_bit.exit
  %i.ad = and i64 %i.aa, 15                       ; 2 uses
  %i.ae = shl nuw nsw i64 1, %i.ad
  %i.af = trunc nuw nsw i64 %i.ae to i32          ; 2 uses
  %i.ag = getelementptr [16 x i8], ptr @sd_flag_debug, i64 %i.ad ; 3 uses
  %3 = load i32, ptr %i.ag, align 16              ; 2 uses
  %4 = and i32 %3, 1
  %.not77.not = icmp eq i32 %4, 0
  br i1 %.not77.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not78 = icmp eq ptr %i.ah, null
  br i1 %.not78, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %i.ah, i64 60
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, %i.af
  %.not79 = icmp eq i32 %i.ak, 0
  br i1 %.not79, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr i8, ptr %i.ag, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.359, ptr noundef %i.am) #49 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %5 = and i32 %3, 2
  %.not80.not = icmp eq i32 %5, 0
  br i1 %.not80.not, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %0, align 8               ; 2 uses
  %.not81 = icmp eq ptr %i.ao, null
  br i1 %.not81, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %i.ao, i64 60
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = and i32 %i.aq, %i.af
  %.not82 = icmp eq i32 %i.ar, 0
  br i1 %.not82, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr i8, ptr %i.ag, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.360, ptr noundef %i.at) #49 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  %i.av = add nuw nsw i64 %i.aa, 1
  %i.aw = and i64 %i.av, 31                       ; 2 uses
  %.not.i = icmp samesign ult i64 %i.aw, 14
  br i1 %.not.i, label %bb.e, label %find_next_bit.exit.thread, !prof !57, !llvm.loop !381

find_next_bit.exit.thread:                        ; preds = %bb.n, %bb.e, %find_next_bit.exit
  %i.ax = add i32 %2, 1
  %i.ay = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.361, i32 noundef %i.ax, ptr noundef @.str.2) #49 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.ab, %find_next_bit.exit.thread
  %.0 = phi ptr [ %i.b, %find_next_bit.exit.thread ], [ %i.ce, %bb.ab ] ; 5 uses
  %.not69 = icmp eq ptr %.0, null
  br i1 %.not69, label %.loopexit.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr i8, ptr %.0, i64 40       ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8            ; 3 uses
  %.not.i83 = icmp eq i64 %i.ba, 0
  br i1 %.not.i83, label %.loopexit.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load i32, ptr %i.c, align 4
  %i.bc = and i32 %i.bb, 8192
  %.not70 = icmp ne i32 %i.bc, 0
  %.pre = load i64, ptr @sched_domains_tmpmask, align 8 ; 2 uses
  %i.bd = and i64 %.pre, %i.ba
  %.not5 = icmp eq i64 %i.bd, 0
  %or.cond = select i1 %.not70, i1 true, i1 %.not5
  br i1 %or.cond, label %bb.r, label %.loopexit.sink.split

bb.r:                                             ; preds = %bb.q
  %i.be = or i64 %.pre, %i.ba
  store i64 %i.be, ptr @sched_domains_tmpmask, align 8
  %i.bf = getelementptr i8, ptr %.0, i64 24       ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr i8, ptr %i.bg, i64 44
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = load i32, ptr @nr_cpu_ids, align 4
  %i.bk = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.365, i32 noundef %i.bi, i32 noundef %i.bj, ptr noundef %i.az) #49 ; 0 uses
  %i.bl = load i32, ptr %i.c, align 4
  %i.bm = and i32 %i.bl, 8192
  %.not71 = icmp eq i32 %i.bm, 0
  %.pre7 = load ptr, ptr %i.bf, align 8           ; 3 uses
  br i1 %.not71, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr i8, ptr %.pre7, i64 48    ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = load i64, ptr %i.az, align 8
  %.not.i87 = icmp eq i64 %i.bo, %i.bp
  br i1 %.not.i87, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = load i32, ptr @nr_cpu_ids, align 4
  %i.br = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.366, i32 noundef %i.bq, ptr noundef %i.bn) #49 ; 0 uses
  %.pre6 = load ptr, ptr %i.bf, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.bs = phi ptr [ %.pre6, %bb.t ], [ %.pre7, %bb.s ], [ %.pre7, %bb.r ]
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %.not72 = icmp eq i64 %i.bu, 1024
  br i1 %.not72, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.367, i64 noundef %i.bu) #49 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bw = load ptr, ptr %i.a, align 8
  %i.bx = icmp eq ptr %.0, %i.bw
  br i1 %i.bx, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not73 = icmp eq ptr %i.by, null
  br i1 %.not73, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr i8, ptr %i.by, i64 376
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = load i64, ptr %i.az, align 8
  %.not.i88 = icmp eq i64 %i.ca, %i.cb
  br i1 %.not.i88, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.368) #49 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %bb.x, %bb.y, %bb.z
  %i.cd = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.369) #49 ; 0 uses
  %i.ce = load ptr, ptr %.0, align 8              ; 3 uses
  %i.cf = load ptr, ptr %i.a, align 8
  %.not74 = icmp eq ptr %i.ce, %i.cf
  br i1 %.not74, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.370) #49 ; 0 uses
  %.pre8 = load ptr, ptr %i.a, align 8
  %i.ch = icmp eq ptr %i.ce, %.pre8
  br i1 %i.ch, label %.loopexit, label %bb.o, !llvm.loop !382

.loopexit.sink.split:                             ; preds = %bb.q, %bb.p, %bb.o
  %.str.7.sink = phi ptr [ @.str.8, %bb.p ], [ @.str.7, %bb.o ], [ @.str.8, %bb.q ]
  %.str.362.sink = phi ptr [ @.str.363, %bb.p ], [ @.str.362, %bb.o ], [ @.str.364, %bb.q ]
  %i.ci = tail call i32 (ptr, ...) @_printk(ptr noundef %.str.7.sink) #49 ; 0 uses
  %i.cj = tail call i32 (ptr, ...) @_printk(ptr noundef %.str.362.sink) #49 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aa, %bb.ab, %.loopexit.sink.split
  %i.ck = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #49 ; 0 uses
  %i.cl = load i64, ptr %i.g, align 8
  %i.cm = load i64, ptr @sched_domains_tmpmask, align 8
  %.not.i89 = icmp eq i64 %i.cl, %i.cm
  br i1 %.not.i89, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %i.cn = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.371) #49 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit
  %i.co = load ptr, ptr %0, align 8               ; 2 uses
  %.not76 = icmp eq ptr %i.co, null
  br i1 %.not76, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = getelementptr i8, ptr %i.co, i64 376
  %i.cq = load i64, ptr @sched_domains_tmpmask, align 8
  %i.cr = load i64, ptr %i.cp, align 8
  %i.cs = xor i64 %i.cr, -1
  %i.ct = and i64 %i.cq, %i.cs
  %.not.i86 = icmp eq i64 %i.ct, 0
  br i1 %.not.i86, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cu = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.372) #49 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @destroy_sched_domains_rcu(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -344       ; 2 uses
  %.not7 = icmp eq ptr %i.a, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %i.b, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.b = load ptr, ptr %.08, align 8              ; 2 uses
  tail call fastcc void @destroy_sched_domain(ptr noundef %.08) #44, !srcloc !384
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !383

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dl_rebuild_rd_accounting() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @static_key_slow_dec_cpuslocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -1, 1) i32 @membarrier_private_expedited(i32 noundef range(i32 0, 3) %0, i32 noundef %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca [1 x %struct.cpumask], align 8      ; 6 uses
  %i.a = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr @current_task) #48, !srcloc !70
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 1400
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 128
  %i.f = load volatile i32, ptr %i.e, align 4     ; 3 uses
  switch i32 %0, label %default.unreachable [
    i32 1, label %bb.b
end_hunk_0
