Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/build_utility?download=true
inline.NumInlined: 1069
inline.NumDeleted: 269
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@build_sched_domains:bb.a
  %i.eh = shl i32 %i.dj, 1
  %i.ei = sext i32 %i.eh to i64
  %i.ej = or disjoint i32 %i.ef, 4119             ; 2 uses
  %i.ek = load volatile i64, ptr @jiffies, align 64
  %i.el = load volatile i64, ptr @jiffies, align 64
  %i.em = getelementptr i8, ptr %.0128423, i64 48
  %i.en = load ptr, ptr %i.em, align 8
  store ptr null, ptr %i.cx, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  store ptr %.0114425, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %.sroa.35.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 %i.eg, ptr %.sroa.35.0..sroa_idx.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  store i64 %i.ei, ptr %.sroa.4.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  store i32 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 44 ; 3 uses
  store i32 117, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.7.0..sroa_idx.i.i = getelementptr i8, ptr %i.cx, i64 48 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(12) %.sroa.7.0..sroa_idx.i.i, i8 0, i64 12, i1 false)
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 60 ; 8 uses
  store i32 %i.ej, ptr %.sroa.76.0..sroa_idx.i.i, align 4
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 64 ; 3 uses
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8
  %.sroa.87.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 72
  store i64 %i.ek, ptr %.sroa.87.0..sroa_idx.i.i, align 8
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 80
  store i32 %i.dj, ptr %.sroa.9.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 84
  store i32 0, ptr %.sroa.10.0..sroa_idx.i.i, align 4
  %.sroa.108.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  store i32 512, ptr %.sroa.108.0..sroa_idx.i.i, align 8
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 92
  store i32 256, ptr %.sroa.11.0..sroa_idx.i.i, align 4
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 96
  store i32 512, ptr %.sroa.12.0..sroa_idx.i.i, align 8
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 100
  store i32 0, ptr %.sroa.13.0..sroa_idx.i.i, align 4
  %.sroa.139.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 104
  store i64 %i.cy, ptr %.sroa.139.0..sroa_idx.i.i, align 8
  %.sroa.14.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 112
  store i64 0, ptr %.sroa.14.0..sroa_idx.i.i, align 8
  %.sroa.1410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 120
  store i64 %i.el, ptr %.sroa.1410.0..sroa_idx.i.i, align 8
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.15.0..sroa_idx.i.i, i8 0, i64 208, i1 false)
  %.sroa.1511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 336 ; 2 uses
  store ptr %i.en, ptr %.sroa.1511.0..sroa_idx.i.i, align 8
  %.sroa.16.0..sroa_idx.i.i = getelementptr i8, ptr %i.cx, i64 344 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(32) %.sroa.16.0..sroa_idx.i.i, i8 0, i64 32, i1 false)
  %i.eo = and i32 %i.ef, 160
  %i.ep = icmp eq i32 %i.eo, 160
  br i1 %i.ep, label %bb.y, label %bb.z, !prof !32

bb.y:                                             ; preds = %bb.x
  %i.eq = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.352, ptr nonnull @.str.137, i32 1993, i32 2323, i64 16) #42, !srcloc !251
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.eq) #43
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !252
  %.pre.i.i = load i32, ptr %.sroa.76.0..sroa_idx.i.i, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.er = phi i32 [ %.pre.i.i, %bb.y ], [ %i.ej, %bb.x ] ; 3 uses
  %i.es = and i32 %i.er, 32
  %.not68.i.i = icmp eq i32 %i.es, 0
  br i1 %.not68.i.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.et = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 2 uses
  %.not69.i.i = icmp eq ptr %i.et, null
  br i1 %.not69.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = getelementptr i8, ptr %i.et, i64 60     ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4
  %i.ew = and i32 %i.ev, -4097
  store i32 %i.ew, ptr %i.eu, align 4
  %.pre82.i.i = load i32, ptr %.sroa.76.0..sroa_idx.i.i, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.ex = phi i32 [ %.pre82.i.i, %bb.ab ], [ %i.er, %bb.aa ], [ %i.er, %bb.z ] ; 4 uses
  %i.ey = and i32 %i.ex, 128
  %.not70.i.i186 = icmp eq i32 %i.ey, 0
  br i1 %.not70.i.i186, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 110, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  br label %sd_init.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.ez = and i32 %i.ex, 512
  %.not71.i.i190 = icmp eq i32 %i.ez, 0
  br i1 %.not71.i.i190, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i32 117, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  store i32 1, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  br label %sd_init.exit.i

bb.ag:                                            ; preds = %bb.ae
  %i.fa = and i32 %i.ex, 8192
  %.not72.i.i191 = icmp eq i32 %i.fa, 0
  br i1 %.not72.i.i191, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i32 2, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  %i.fb = and i32 %i.ex, -5761
  %i.fc = or disjoint i32 %i.fb, 1024             ; 2 uses
  store i32 %i.fc, ptr %.sroa.76.0..sroa_idx.i.i, align 4
  %i.fd = load ptr, ptr @sched_domains_numa_distance, align 8
  %i.fe = getelementptr i8, ptr %.0128423, i64 16
  %i.ff = load i32, ptr %i.fe, align 8
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr [4 x i8], ptr %i.fd, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = load i32, ptr @node_reclaim_distance, align 4
  %i.fk = icmp sgt i32 %i.fi, %i.fj
  br i1 %i.fk, label %bb.ai, label %sd_init.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.fl = and i32 %i.fc, -4759
  store i32 %i.fl, ptr %.sroa.76.0..sroa_idx.i.i, align 4
  br label %sd_init.exit.i

bb.aj:                                            ; preds = %bb.ag
  store i32 1, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  br label %sd_init.exit.i

sd_init.exit.i:                                   ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad
  store ptr %i.cr, ptr %.sroa.16.0..sroa_idx.i.i, align 8
  %.not.i187 = icmp eq ptr %.0114425, null
  br i1 %.not.i187, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %sd_init.exit.i
  %i.fm = getelementptr i8, ptr %.0114425, i64 64
  %i.fn = load i32, ptr %i.fm, align 8
  %i.fo = add i32 %i.fn, 1                        ; 2 uses
  store i32 %i.fo, ptr %.sroa.8.0..sroa_idx.i.i, align 8
  %i.fp = load i32, ptr @sched_domain_level_max, align 4
  %i.fq = tail call i32 @llvm.smax.i32(i32 %i.fp, i32 %i.fo)
  store i32 %i.fq, ptr @sched_domain_level_max, align 4
  store ptr %i.cx, ptr %.0114425, align 8
  %i.fr = getelementptr i8, ptr %.0114425, i64 376 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = load i64, ptr %i.cz, align 8
  %i.fu = xor i64 %i.ft, -1
  %i.fv = and i64 %i.fs, %i.fu
  %.not.i.i188 = icmp eq i64 %i.fv, 0
  br i1 %.not.i.i188, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fw = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.349) #49 ; 0 uses
  %i.fx = getelementptr i8, ptr %.0114425, i64 336
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = load ptr, ptr %.sroa.1511.0..sroa_idx.i.i, align 8
  %i.ga = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.350, ptr noundef %i.fy, ptr noundef %i.fz) #49 ; 0 uses
  %i.gb = load i64, ptr %i.cz, align 8
  %i.gc = load i64, ptr %i.fr, align 8
  %i.gd = or i64 %i.gc, %i.gb
  store i64 %i.gd, ptr %i.cz, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %sd_init.exit.i
  br i1 %.not.i29.i, label %._crit_edge481, label %bb.an

._crit_edge481:                                   ; preds = %bb.am
  %.pre475.pre479.pre = load i32, ptr %.sroa.76.0..sroa_idx.i.i, align 4
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ge = load i32, ptr %1, align 4               ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 0
  %.pre475.pre479.pre482 = load i32, ptr %.sroa.76.0..sroa_idx.i.i, align 4 ; 2 uses
  br i1 %i.gf, label %bb.ao, label %._crit_edge478

bb.ao:                                            ; preds = %._crit_edge481, %bb.an
  %.pre475.pre479 = phi i32 [ %.pre475.pre479.pre, %._crit_edge481 ], [ %.pre475.pre479.pre482, %bb.an ] ; 2 uses
  %i.gg = load i32, ptr @default_relax_domain_level, align 4 ; 2 uses
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %build_sched_domain.exit, label %._crit_edge478

._crit_edge478:                                   ; preds = %bb.an, %bb.ao
  %.pre475 = phi i32 [ %.pre475.pre479, %bb.ao ], [ %.pre475.pre479.pre482, %bb.an ] ; 2 uses
  %.0.i.i189 = phi i32 [ %i.gg, %bb.ao ], [ %i.ge, %bb.an ]
  %i.gi = load i32, ptr %.sroa.8.0..sroa_idx.i.i, align 8
  %.not8.i.i = icmp slt i32 %i.gi, %.0.i.i189
  br i1 %.not8.i.i, label %build_sched_domain.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge478
  %i.gj = and i32 %.pre475, -10                   ; 2 uses
  store i32 %i.gj, ptr %.sroa.76.0..sroa_idx.i.i, align 4
  br label %build_sched_domain.exit

build_sched_domain.exit:                          ; preds = %bb.ao, %._crit_edge478, %bb.ap
  %i.gk = phi i32 [ %i.gj, %bb.ap ], [ %.pre475, %._crit_edge478 ], [ %.pre475.pre479, %bb.ao ]
  %i.gl = and i32 %i.gk, 32
  %i.gm = zext nneg i8 %.1124424 to i32
  %i.gn = or disjoint i32 %i.gl, %i.gm
  %i.go = icmp ne i32 %i.gn, 0
  %i.gp = zext i1 %i.go to i8                     ; 3 uses
  %i.gq = load ptr, ptr @sched_domain_topology, align 8
  %i.gr = icmp eq ptr %.0128423, %i.gq
  br i1 %i.gr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %build_sched_domain.exit
  %i.gs = load i64, ptr %i.co, align 8
  %i.gt = add i64 %i.gs, %i.ce
  %i.gu = inttoptr i64 %i.gt to ptr
  store ptr %i.cx, ptr %i.gu, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %build_sched_domain.exit
  %i.gv = load i64, ptr %0, align 8
  %i.gw = load i64, ptr %i.cz, align 8
  %.not.i180 = icmp eq i64 %i.gv, %i.gw
  br i1 %.not.i180, label %._crit_edge, label %bb.o

._crit_edge:                                      ; preds = %bb.ar, %bb.o, %bb.n
  %.2125 = phi i8 [ %.0123433, %bb.n ], [ %i.gp, %bb.o ], [ %i.gp, %bb.ar ] ; 2 uses
  %i.gx = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %.pre486 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = add i64 %i.gy, ptrtoint (ptr @sd_llc_id to i64)
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = load i32, ptr %i.ha, align 4
  %i.hc = icmp eq i32 %i.hb, -1
  br i1 %i.hc, label %bb.as, label %__visit_domain_allocation_hell.exit

bb.as:                                            ; preds = %._crit_edge
  %i.hd = tail call ptr @cpu_coregroup_mask(i32 noundef %i.ck) #43
  %i.he = load i64, ptr %i.hd, align 8            ; 2 uses
  %.not.i178 = icmp eq i64 %i.he, 0
  br i1 %.not.i178, label %find_first_bit.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hf = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.he) #48, !srcloc !54
  br label %find_first_bit.exit

find_first_bit.exit:                              ; preds = %bb.as, %bb.at
  %.0.i = phi i64 [ 64, %bb.as ], [ %i.hf, %bb.at ] ; 2 uses
  %.0132428 = trunc i64 %.0.i to i32              ; 2 uses
  %i.hg = load i32, ptr @nr_cpu_ids, align 4      ; 2 uses
  %.not156429 = icmp ugt i32 %i.hg, %.0132428
  br i1 %.not156429, label %.lr.ph432, label %.critedge160

.lr.ph432:                                        ; preds = %find_first_bit.exit, %cpumask_next.exit
  %.0132431 = phi i32 [ %.0132, %cpumask_next.exit ], [ %.0132428, %find_first_bit.exit ]
  %.0132.in430 = phi i64 [ %.1.i.i, %cpumask_next.exit ], [ %.0.i, %find_first_bit.exit ]
  %i.hh = icmp eq i32 %.0132431, %i.ck
  %.pre488 = shl i64 %.0132.in430, 32             ; 2 uses
  br i1 %i.hh, label %.lr.ph432._crit_edge, label %bb.au

bb.au:                                            ; preds = %.lr.ph432
  %i.hi = ashr exact i64 %.pre488, 29
  %i.hj = getelementptr i8, ptr @__per_cpu_offset, i64 %i.hi
  %i.hk = load i64, ptr %i.hj, align 8
  %i.hl = add i64 %i.hk, ptrtoint (ptr @sd_llc_id to i64)
  %i.hm = inttoptr i64 %i.hl to ptr
  %i.hn = load i32, ptr %i.hm, align 4            ; 2 uses
  %.not155 = icmp eq i32 %i.hn, -1
  br i1 %.not155, label %.lr.ph432._crit_edge, label %__visit_domain_allocation_hell.exit.sink.split

.lr.ph432._crit_edge:                             ; preds = %.lr.ph432, %bb.au
  %i.ho = tail call ptr @cpu_coregroup_mask(i32 noundef %i.ck) #43
  %sext403 = add i64 %.pre488, 4294967296
  %i.hp = ashr exact i64 %sext403, 32             ; 2 uses
  %.not.i.i = icmp ult i64 %i.hp, 64
  br i1 %.not.i.i, label %bb.av, label %cpumask_next.exit, !prof !39

bb.av:                                            ; preds = %.lr.ph432._crit_edge
  %i.hq = load i64, ptr %i.ho, align 8
  %i.hr = shl nsw i64 -1, %i.hp
  %i.hs = and i64 %i.hq, %i.hr                    ; 2 uses
  %.not23.i.i = icmp eq i64 %i.hs, 0
  br i1 %.not23.i.i, label %cpumask_next.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ht = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.hs) #48, !srcloc !54
  br label %cpumask_next.exit

cpumask_next.exit:                                ; preds = %.lr.ph432._crit_edge, %bb.av, %bb.aw
  %.1.i.i = phi i64 [ 64, %bb.av ], [ 64, %.lr.ph432._crit_edge ], [ %i.ht, %bb.aw ] ; 2 uses
  %.0132 = trunc i64 %.1.i.i to i32               ; 2 uses
  %i.hu = load i32, ptr @nr_cpu_ids, align 4      ; 2 uses
  %.not156 = icmp ugt i32 %i.hu, %.0132
  br i1 %.not156, label %.lr.ph432, label %.critedge160, !llvm.loop !210

.critedge160:                                     ; preds = %cpumask_next.exit, %find_first_bit.exit
  %i.hv = phi i32 [ %i.hg, %find_first_bit.exit ], [ %i.hu, %cpumask_next.exit ]
  %i.hw = load i64, ptr @sched_domains_llc_id_allocmask, align 8 ; 2 uses
  %i.hx = icmp eq i64 %i.hw, -1
  br i1 %i.hx, label %find_first_zero_bit.exit.i, label %bb.ax

bb.ax:                                            ; preds = %.critedge160
  %i.hy = xor i64 %i.hw, -1
  %i.hz = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.hy) #48, !srcloc !54
  br label %find_first_zero_bit.exit.i

find_first_zero_bit.exit.i:                       ; preds = %bb.ax, %.critedge160
  %i.ia = phi i64 [ %i.hz, %bb.ax ], [ 64, %.critedge160 ] ; 2 uses
  %i.ib = trunc i64 %i.ia to i32                  ; 3 uses
  %.not.i192 = icmp ugt i32 %i.hv, %i.ib
  br i1 %.not.i192, label %bb.ay, label %__visit_domain_allocation_hell.exit.sink.split

bb.ay:                                            ; preds = %find_first_zero_bit.exit.i
  %i.ic = and i64 %i.ia, 4294967295
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @sched_domains_llc_id_allocmask, i64 range(i64 0, 4294967296) %i.ic) #42, !srcloc !58
  %i.id = load i64, ptr @sched_domains_llc_id_allocmask, align 8 ; 2 uses
  %.not.i.i194 = icmp eq i64 %i.id, 0
  br i1 %.not.i.i194, label %find_last_bit.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ie = tail call i64 asm "bsr $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.id) #48, !srcloc !82
  %i.if = trunc i64 %i.ie to i32
  br label %find_last_bit.exit.i

find_last_bit.exit.i:                             ; preds = %bb.az, %bb.ay
  %i.ig = phi i32 [ 64, %bb.ay ], [ %i.if, %bb.az ] ; 2 uses
  %i.ih = load i32, ptr @max_lid, align 4
  %i.ii = icmp slt i32 %i.ih, %i.ig
  br i1 %i.ii, label %bb.ba, label %__visit_domain_allocation_hell.exit.sink.split

bb.ba:                                            ; preds = %find_last_bit.exit.i
  store i32 %i.ig, ptr @max_lid, align 4
  br label %__visit_domain_allocation_hell.exit.sink.split

__visit_domain_allocation_hell.exit.sink.split:   ; preds = %bb.au, %bb.ba, %find_last_bit.exit.i, %find_first_zero_bit.exit.i
  %.lcssa632.sink = phi i32 [ %i.ib, %find_last_bit.exit.i ], [ -1, %find_first_zero_bit.exit.i ], [ %i.ib, %bb.ba ], [ %i.hn, %bb.au ]
  %i.ij = load i64, ptr %i.gx, align 8
  %i.ik = add i64 %i.ij, ptrtoint (ptr @sd_llc_id to i64)
  %i.il = inttoptr i64 %i.ik to ptr
  store i32 %.lcssa632.sink, ptr %i.il, align 4
  br label %__visit_domain_allocation_hell.exit

__visit_domain_allocation_hell.exit:              ; preds = %__visit_domain_allocation_hell.exit.sink.split, %._crit_edge
  %i.im = add nuw nsw i64 %i.cj, 1
  %i.in = and i64 %i.im, 127                      ; 2 uses
  %.not.i172 = icmp samesign ult i64 %i.in, 64
  br i1 %.not.i172, label %bb.m, label %find_next_bit.exit175.thread, !prof !57, !llvm.loop !211

find_next_bit.exit175.thread:                     ; preds = %__visit_domain_allocation_hell.exit, %bb.m, %find_next_bit.exit175
  %.0123.lcssa = phi i8 [ %.2125, %__visit_domain_allocation_hell.exit ], [ %.0123433, %bb.m ], [ %.0123433, %find_next_bit.exit175 ]
  %i.io = load ptr, ptr @sched_domain_topology, align 8 ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8
  %.not50.i = icmp eq ptr %i.ip, null
  br i1 %.not50.i, label %topology_span_sane.exit.preheader, label %.lr.ph.i

topology_span_sane.exit.preheader:                ; preds = %find_next_bit.exit.thread.i, %find_next_bit.exit175.thread
  br label %topology_span_sane.exit

.lr.ph.i:                                         ; preds = %find_next_bit.exit175.thread, %find_next_bit.exit.thread.i
  %.03251.i = phi ptr [ %i.ju, %find_next_bit.exit.thread.i ], [ %i.io, %find_next_bit.exit175.thread ] ; 6 uses
  %i.iq = getelementptr i8, ptr %.03251.i, i64 8
  %i.ir = load ptr, ptr %i.iq, align 8            ; 2 uses
  %.not37.i = icmp eq ptr %i.ir, null
  br i1 %.not37.i, label %.critedge.i, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i
  %i.is = tail call i32 %i.ir() #43, !inline_history !212
  %i.it = and i32 %i.is, 8192
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %.critedge.i, label %find_next_bit.exit.thread.i

.critedge.i:                                      ; preds = %bb.bb, %.lr.ph.i
  store i64 0, ptr @sched_domains_tmpmask, align 8
  store i64 0, ptr @sched_domains_tmpmask2, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge40.i, %.critedge.i
  %i.iv = phi i64 [ 0, %.critedge.i ], [ %i.jt, %.critedge40.i ]
  %i.iw = load i64, ptr %0, align 8
  %i.ix = shl nsw i64 -1, %i.iv
  %i.iy = and i64 %i.iw, %i.ix                    ; 2 uses
  %.not23.i.i196 = icmp eq i64 %i.iy, 0
  br i1 %.not23.i.i196, label %find_next_bit.exit.thread.i, label %find_next_bit.exit.i

find_next_bit.exit.i:                             ; preds = %bb.bc
  %i.iz = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.iy) #48, !srcloc !54 ; 2 uses
  %i.ja = trunc i64 %i.iz to i32                  ; 2 uses
  %i.jb = icmp ult i32 %i.ja, 64
  br i1 %i.jb, label %bb.bd, label %find_next_bit.exit.thread.i

bb.bd:                                            ; preds = %find_next_bit.exit.i
  %i.jc = load ptr, ptr %.03251.i, align 8
  %i.jd = tail call ptr %i.jc(ptr noundef %.03251.i, i32 noundef %i.ja) #43, !inline_history !212 ; 3 uses
  %i.je = load i64, ptr %i.jd, align 8            ; 2 uses
  %.not.i41.i = icmp eq i64 %i.je, 0
  br i1 %.not.i41.i, label %find_first_bit.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.jf = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.je) #48, !srcloc !54
  br label %find_first_bit.exit.i

find_first_bit.exit.i:                            ; preds = %bb.be, %bb.bd
  %.0.i.i198 = phi i64 [ 64, %bb.bd ], [ %i.jf, %bb.be ] ; 2 uses
  %i.jg = and i64 %.0.i.i198, 4294967295          ; 2 uses
  %i.jh = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @sched_domains_tmpmask2, i64 range(i64 -2147483648, 4294967296) %i.jg) #42, !srcloc !50 ; 2 uses
  %i.ji = icmp ult i8 %i.jh, 2
  tail call void @llvm.assume(i1 %i.ji)
end_hunk_0
begin_hunk_1_@partition_sched_domains:bb.a
find_next_bit.exit.i.i:                           ; preds = %bb.r
  %i.at = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.as) #48, !srcloc !54 ; 2 uses
  %i.au = trunc i64 %i.at to i32                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 64
  br i1 %i.av, label %bb.s, label %detach_destroy_domains.exit.i

bb.s:                                             ; preds = %find_next_bit.exit.i.i
  tail call fastcc void @cpu_attach_domain(ptr noundef null, ptr noundef nonnull @def_root_domain, i32 noundef %i.au) #44, !srcloc !294
  %i.aw = add nuw nsw i64 %i.at, 1
  %i.ax = and i64 %i.aw, 127                      ; 2 uses
  %.not.i.i.i = icmp samesign ult i64 %i.ax, 64
  br i1 %.not.i.i.i, label %bb.r, label %detach_destroy_domains.exit.i, !prof !57, !llvm.loop !285

detach_destroy_domains.exit.i:                    ; preds = %bb.s, %find_next_bit.exit.i.i, %bb.r
  tail call void @__rcu_read_unlock() #43
  %.pre207.i = load i32, ptr @ndoms_cur, align 4
  %.pre.pre.i = load ptr, ptr @doms_cur, align 8
  br label %.loopexit125.split.us.i

.loopexit125.split.us.i:                          ; preds = %.lr.ph.split.split.i, %dattrs_equal.exit.us.i, %dattrs_equal.exit.us.us136.i, %detach_destroy_domains.exit.i
  %.pre210.i = phi ptr [ %.pre.pre.i, %detach_destroy_domains.exit.i ], [ %.pre.i, %dattrs_equal.exit.us.i ], [ %.pre.i, %dattrs_equal.exit.us.us136.i ], [ %.pre.i, %.lr.ph.split.split.i ]
  %i.ay = phi i32 [ %.pre207.i, %detach_destroy_domains.exit.i ], [ %i.o, %dattrs_equal.exit.us.i ], [ %i.o, %dattrs_equal.exit.us.us136.i ], [ %i.o, %.lr.ph.split.split.i ] ; 3 uses
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = icmp slt i64 %indvars.iv.next190.i, %i.az
  br i1 %i.ba, label %.preheader124.i, label %._crit_edge.i, !llvm.loop !286

._crit_edge.i:                                    ; preds = %.loopexit125.split.us.i, %bb.j
  %.lcssa128.i = phi i32 [ %i.k, %bb.j ], [ %i.ay, %.loopexit125.split.us.i ]
  %.not83.i = icmp eq ptr %.0.i, null
  br i1 %.not83.i, label %bb.t, label %bb.w

bb.t:                                             ; preds = %._crit_edge.i
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @housekeeping_overridden, i1 false) #42
          to label %housekeeping_cpumask.exit110.i [label %bb.u], !srcloc !59

bb.u:                                             ; preds = %bb.t
  %i.bb = load volatile i64, ptr getelementptr inbounds nuw (i8, ptr @housekeeping, i64 32), align 8
  %i.bc = and i64 %i.bb, 2
  %.not.i105.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i105.i, label %housekeeping_cpumask.exit110.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @housekeeping, i64 8), align 8
  br label %housekeeping_cpumask.exit110.i

housekeeping_cpumask.exit110.i:                   ; preds = %bb.v, %bb.u, %bb.t
  %.0.i107.i = phi ptr [ %i.bd, %bb.v ], [ null, %bb.u ], [ null, %bb.t ] ; 2 uses
  %.not6.i108.i = icmp eq ptr %.0.i107.i, null
  %spec.store.select.i109.i = select i1 %.not6.i108.i, ptr @__cpu_possible_mask, ptr %.0.i107.i
  %i.be = load i64, ptr @__cpu_active_mask, align 8
  %i.bf = load i64, ptr %spec.store.select.i109.i, align 8
  %i.bg = and i64 %i.bf, %i.be
  store i64 %i.bg, ptr @fallback_doms, align 8
  br label %bb.w

bb.w:                                             ; preds = %housekeeping_cpumask.exit110.i, %._crit_edge.i
  %.171.i = phi i32 [ %.lcssa128.i, %._crit_edge.i ], [ 0, %housekeeping_cpumask.exit110.i ] ; 2 uses
  %.1.i = phi ptr [ %.0.i, %._crit_edge.i ], [ @fallback_doms, %housekeeping_cpumask.exit110.i ] ; 3 uses
  %i.bh = icmp sgt i32 %0, 0
  br i1 %i.bh, label %.preheader.lr.ph.i, label %._crit_edge159.i

.preheader.lr.ph.i:                               ; preds = %bb.w
  %i.bi = icmp slt i32 %.171.i, 1
  %brmerge96141.i = or i1 %.not.i, %i.bi
  %i.bj = icmp ne ptr %2, null                    ; 2 uses
  %.not85.i = icmp eq ptr %2, null
  %wide.trip.count204.i = zext nneg i32 %0 to i64
  %wide.trip.count195.i = zext nneg i32 %.171.i to i64 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.af, %.preheader.lr.ph.i
  %indvars.iv202.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next203.i, %bb.af ] ; 5 uses
  %.064156.i = phi i8 [ 0, %.preheader.lr.ph.i ], [ %.2.i, %bb.af ] ; 6 uses
  br i1 %brmerge96141.i, label %.critedge2.i, label %.lr.ph143.i

.lr.ph143.i:                                      ; preds = %.preheader.i
  %i.bk = getelementptr [8 x i8], ptr %.1.i, i64 %indvars.iv202.i
  %i.bl = load ptr, ptr @doms_cur, align 8        ; 2 uses
  %i.bm = load ptr, ptr @dattr_cur, align 8
  %.fr165.i = freeze ptr %i.bm                    ; 2 uses
  %i.bn = icmp ne ptr %.fr165.i, null             ; 2 uses
  %or.cond.i111.i = or i1 %i.bj, %i.bn
  %i.bo = getelementptr [4 x i8], ptr %2, i64 %indvars.iv202.i
  %i.bp = select i1 %i.bj, ptr %i.bo, ptr %3
  %.pre208.i = load i64, ptr %i.bk, align 8       ; 4 uses
  br i1 %or.cond.i111.i, label %.lr.ph143.split.split.us.i, label %.lr.ph143.split.split.i

.lr.ph143.split.split.us.i:                       ; preds = %.lr.ph143.i, %bb.x
  %indvars.iv197.i = phi i64 [ %indvars.iv.next198.i, %bb.x ], [ 0, %.lr.ph143.i ] ; 3 uses
  %i.bq = getelementptr [8 x i8], ptr %i.bl, i64 %indvars.iv197.i
  %i.br = load i64, ptr %i.bq, align 8
  %.not.i99.us146.i = icmp eq i64 %.pre208.i, %i.br
  br i1 %.not.i99.us146.i, label %dattrs_equal.exit115.us147.i, label %bb.x

dattrs_equal.exit115.us147.i:                     ; preds = %.lr.ph143.split.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  store i32 -1, ptr %3, align 4
  %i.bs = getelementptr [4 x i8], ptr %.fr165.i, i64 %indvars.iv197.i
  %i.bt = select i1 %i.bn, ptr %i.bs, ptr %3
  %i.bu = load i32, ptr %i.bp, align 1
  %i.bv = load i32, ptr %i.bt, align 1
  %i.bw = icmp ne i32 %i.bu, %i.bv
  %i.bx = zext i1 %i.bw to i32
  %.not.i114.not.us149.i = icmp eq i32 %i.bx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  br i1 %.not.i114.not.us149.i, label %.loopexit.i, label %bb.x

bb.x:                                             ; preds = %dattrs_equal.exit115.us147.i, %.lr.ph143.split.split.us.i
  %indvars.iv.next198.i = add nuw nsw i64 %indvars.iv197.i, 1 ; 2 uses
  %exitcond201.not.i = icmp eq i64 %indvars.iv.next198.i, %wide.trip.count195.i
  br i1 %exitcond201.not.i, label %.critedge2.i, label %.lr.ph143.split.split.us.i, !llvm.loop !287

.lr.ph143.split.split.i:                          ; preds = %.lr.ph143.i, %bb.ae
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i, %bb.ae ], [ 0, %.lr.ph143.i ] ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %i.bl, i64 %indvars.iv192.i
  %i.bz = load i64, ptr %i.by, align 8
  %.not.i99.i = icmp eq i64 %.pre208.i, %i.bz
  br i1 %.not.i99.i, label %.loopexit.i, label %bb.ae

.loopexit.i:                                      ; preds = %.lr.ph143.split.split.i, %dattrs_equal.exit115.us147.i
  %.not.i.i = icmp eq i64 %.pre208.i, 0
  br i1 %.not.i.i, label %find_first_bit.exit.i, label %bb.y

bb.y:                                             ; preds = %.loopexit.i
  %i.ca = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %.pre208.i) #48, !srcloc !54
  %i.cb = shl i64 %i.ca, 32
  %i.cc = ashr exact i64 %i.cb, 29
  br label %find_first_bit.exit.i

find_first_bit.exit.i:                            ; preds = %bb.y, %.loopexit.i
  %.0.i.i = phi i64 [ 512, %.loopexit.i ], [ %i.cc, %bb.y ]
  tail call void @__rcu_read_lock() #43
  %i.cd = getelementptr i8, ptr @__per_cpu_offset, i64 %.0.i.i
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = add i64 %i.ce, ptrtoint (ptr @runqueues to i64)
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr i8, ptr %i.cg, i64 2768
  %i.ci = load volatile ptr, ptr %i.ch, align 16
  br label %bb.z

bb.z:                                             ; preds = %bb.ab, %find_first_bit.exit.i
  %.072.i = phi ptr [ %i.ci, %find_first_bit.exit.i ], [ %i.cj, %bb.ab ] ; 5 uses
  %.not87.i = icmp eq ptr %.072.i, null
  br i1 %.not87.i, label %.critedge97.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = load ptr, ptr %.072.i, align 8          ; 3 uses
  %.not88.i = icmp eq ptr %i.cj, null
  br i1 %.not88.i, label %.critedge97.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = getelementptr i8, ptr %i.cj, i64 60
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = and i32 %i.cl, 512
  %.not89.i = icmp eq i32 %i.cm, 0
  br i1 %.not89.i, label %.critedge4.thread.i, label %bb.z, !llvm.loop !288

.critedge4.thread.i:                              ; preds = %bb.ab
  %i.cn = getelementptr i8, ptr %.072.i, i64 60
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = and i32 %i.co, 512
  %.not90121.i = icmp eq i32 %i.cp, 0
  br i1 %.not90121.i, label %.critedge97.i, label %bb.ac

bb.ac:                                            ; preds = %.critedge4.thread.i
  %i.cq = getelementptr i8, ptr %.072.i, i64 368
  %i.cr = load i32, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 1
  br i1 %i.cs, label %.critedge97.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ac, %bb.ad
  %.0.in.i.i = phi ptr [ %.0.i116.i, %bb.ad ], [ %.072.i, %bb.ac ]
  %.0.i116.i = load ptr, ptr %.0.in.i.i, align 8  ; 3 uses
  %.not.not.i.i = icmp eq ptr %.0.i116.i, null
  br i1 %.not.not.i.i, label %.critedge97.i, label %bb.ad

bb.ad:                                            ; preds = %.preheader.i.i
  %i.ct = getelementptr i8, ptr %.0.i116.i, i64 368
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = icmp eq i32 %i.cu, %i.cr
  br i1 %i.cv, label %.preheader.i.i, label %.critedge97.i, !llvm.loop !13

.critedge97.i:                                    ; preds = %bb.aa, %bb.z, %bb.ad, %.preheader.i.i, %bb.ac, %.critedge4.thread.i
  %.165.i = phi i8 [ %.064156.i, %bb.ac ], [ %.064156.i, %.preheader.i.i ], [ %.064156.i, %.critedge4.thread.i ], [ 1, %bb.ad ], [ %.064156.i, %bb.z ], [ %.064156.i, %bb.aa ]
  tail call void @__rcu_read_unlock() #43
  br label %bb.af

bb.ae:                                            ; preds = %.lr.ph143.split.split.i
  %indvars.iv.next193.i = add nuw nsw i64 %indvars.iv192.i, 1 ; 2 uses
  %exitcond196.not.i = icmp eq i64 %indvars.iv.next193.i, %wide.trip.count195.i
  br i1 %exitcond196.not.i, label %.critedge2.i, label %.lr.ph143.split.split.i, !llvm.loop !287

.critedge2.i:                                     ; preds = %bb.ae, %bb.x, %.preheader.i
  %i.cw = getelementptr [8 x i8], ptr %.1.i, i64 %indvars.iv202.i
  %i.cx = getelementptr [4 x i8], ptr %2, i64 %indvars.iv202.i
  %i.cy = select i1 %.not85.i, ptr null, ptr %i.cx
  %i.cz = call fastcc i32 @build_sched_domains(ptr noundef %i.cw, ptr noundef %i.cy, ptr noundef nonnull %i.a) #44, !srcloc !295 ; 0 uses
  %i.da = load i8, ptr %i.a, align 1, !range !51, !noundef !52
  %i.db = or i8 %i.da, %.064156.i
  br label %bb.af

bb.af:                                            ; preds = %.critedge2.i, %.critedge97.i
  %.2.i = phi i8 [ %.165.i, %.critedge97.i ], [ %i.db, %.critedge2.i ] ; 2 uses
  %indvars.iv.next203.i = add nuw nsw i64 %indvars.iv202.i, 1 ; 2 uses
  %exitcond205.not.i = icmp eq i64 %indvars.iv.next203.i, %wide.trip.count204.i
  br i1 %exitcond205.not.i, label %._crit_edge159.loopexit.i, label %.preheader.i, !llvm.loop !289

._crit_edge159.loopexit.i:                        ; preds = %bb.af
  %i.dc = trunc nuw i8 %.2.i to i1
  br label %._crit_edge159.i

._crit_edge159.i:                                 ; preds = %._crit_edge159.loopexit.i, %bb.w
  %.064.lcssa.i = phi i1 [ false, %bb.w ], [ %i.dc, %._crit_edge159.loopexit.i ]
  tail call fastcc void @sched_cache_set(i1 noundef zeroext %.064.lcssa.i) #44, !srcloc !296
  %i.dd = load ptr, ptr @doms_cur, align 8        ; 2 uses
  %.not84.i = icmp eq ptr %i.dd, @fallback_doms
  br i1 %.not84.i, label %partition_sched_domains_locked.exit, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge159.i
  tail call void @kfree(ptr noundef %i.dd) #43
  br label %partition_sched_domains_locked.exit

partition_sched_domains_locked.exit:              ; preds = %._crit_edge159.i, %bb.ag
  %i.de = load ptr, ptr @dattr_cur, align 8
  tail call void @kfree(ptr noundef %i.de) #43
  store ptr %.1.i, ptr @doms_cur, align 8
  store ptr %2, ptr @dattr_cur, align 8
  store i32 %0, ptr @ndoms_cur, align 4
  tail call void @update_sched_domain_debugfs() #44
  tail call void @dl_rebuild_rd_accounting() #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  tail call void @mutex_unlock(ptr noundef nonnull @sched_domains_mutex) #43
  ret void
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal noundef i32 @membarrier_init() #3 section ".init.text" align 16 prefalign(16) {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.a = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ]
  %i.b = load i64, ptr @__cpu_possible_mask, align 8
  %i.c = shl nsw i64 -1, %i.a
  %i.d = and i64 %i.b, %i.c                       ; 2 uses
  %.not23.i = icmp eq i64 %i.d, 0
  br i1 %.not23.i, label %find_next_bit.exit.thread, label %find_next_bit.exit

find_next_bit.exit:                               ; preds = %bb.b
  %i.e = tail call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.d) #48, !srcloc !54 ; 3 uses
  %i.f = and i64 %i.e, 4294967232
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %find_next_bit.exit.thread

bb.c:                                             ; preds = %find_next_bit.exit
  %i.h = and i64 %i.e, 63
  %i.i = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = add i64 %i.j, ptrtoint (ptr @membarrier_cpu_mutexes to i64)
  %i.l = inttoptr i64 %i.k to ptr
  tail call void @mutex_init_generic(ptr noundef %i.l) #43
  %i.m = add nuw nsw i64 %i.e, 1
  %i.n = and i64 %i.m, 127                        ; 2 uses
  %.not.i = icmp samesign ult i64 %i.n, 64
  br i1 %.not.i, label %bb.b, label %find_next_bit.exit.thread, !prof !57, !llvm.loop !297

find_next_bit.exit.thread:                        ; preds = %bb.c, %bb.b, %find_next_bit.exit
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @membarrier_exec_mmap(ptr nofree noundef captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !298
  %i.a = getelementptr i8, ptr %0, i64 128
  store volatile i32 0, ptr %i.a, align 4
  tail call void asm sideeffect "movl $1, %gs:$0", "=*m,ri,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) getelementptr inbounds nuw (i8, ptr @runqueues, i64 2756), i32 0) #42, !srcloc !299
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: read)
define dso_local void @membarrier_update_current_mm(ptr nofree noundef captures(address) %0) local_unnamed_addr #17 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #45, !srcloc !67
  %i.b = add i64 %i.a, ptrtoint (ptr @runqueues to i64)
  %i.c = inttoptr i64 %i.b to ptr
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 128
  %i.e = load volatile i32, ptr %i.d, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]     ; 2 uses
  %i.f = getelementptr i8, ptr %i.c, i64 2756     ; 2 uses
  %i.g = load volatile i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, %.0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store volatile i32 %.0, ptr %i.f, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -22, 1024) i64 @__x64_sys_membarrier(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call fastcc i64 @__se_sys_membarrier(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f) #44, !srcloc !300
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -22, 1024) i64 @__se_sys_membarrier(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %3 = alloca [1 x %struct.cpumask], align 8      ; 5 uses
  %i.a = trunc i64 %0 to i32                      ; 2 uses
  %i.b = trunc i64 %1 to i32                      ; 3 uses
  %i.c = trunc i64 %2 to i32
  %cond.i = icmp eq i32 %i.a, 128
  br i1 %cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i32 %i.b, 1
  br i1 %i.d, label %__do_sys_membarrier.exit, label %.thread.i, !prof !32

.thread.i:                                        ; preds = %bb.b
  %.not1421.i = icmp eq i32 %i.b, 0
  %spec.select22.i = select i1 %.not1421.i, i32 -1, i32 %i.c
  %i.e = tail call fastcc i32 @membarrier_private_expedited(i32 noundef 2, i32 noundef %spec.select22.i) #44, !srcloc !302
  %i.f = sext i32 %i.e to i64
  br label %__do_sys_membarrier.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.d, label %__do_sys_membarrier.exit, !prof !39

bb.d:                                             ; preds = %bb.c
  switch i32 %i.a, label %__do_sys_membarrier.exit [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.h
    i32 4, label %bb.r
    i32 8, label %bb.t
    i32 16, label %bb.u
    i32 32, label %bb.w
    i32 64, label %bb.x
    i32 512, label %bb.ab
    i32 256, label %bb.z
  ]

bb.e:                                             ; preds = %bb.d
  br label %__do_sys_membarrier.exit

bb.f:                                             ; preds = %bb.d
  %i.g = load volatile i32, ptr @__num_online_cpus, align 4
  %i.h = icmp ugt i32 %i.g, 1
  br i1 %i.h, label %bb.g, label %__do_sys_membarrier.exit

bb.g:                                             ; preds = %bb.f
  tail call void @synchronize_rcu() #43
  br label %__do_sys_membarrier.exit

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #42
  %i.i = load volatile i32, ptr @__num_online_cpus, align 4
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %membarrier_global_expedited.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 0, ptr %3, align 8
  tail call void asm sideeffect "lock addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #42, !srcloc !83
  tail call void @mutex_lock(ptr noundef nonnull @membarrier_ipi_mutex) #43
  tail call void @cpus_read_lock() #43
  tail call void @__rcu_read_lock() #43
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %bb.i
  %i.k = phi i64 [ 0, %bb.i ], [ %i.ag, %bb.o ]
  %i.l = load i64, ptr @__cpu_online_mask, align 8
  %i.m = shl nsw i64 -1, %i.k
  %i.n = and i64 %i.l, %i.m                       ; 2 uses
  %.not23.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not23.i.i.i, label %find_next_bit.exit.thread.i.i, label %find_next_bit.exit.i.i

find_next_bit.exit.i.i:                           ; preds = %bb.j
  %i.o = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 1, 0) %i.n) #48, !srcloc !54 ; 3 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = icmp ult i32 %i.p, 64
  br i1 %i.q, label %bb.k, label %find_next_bit.exit.thread.i.i

bb.k:                                             ; preds = %find_next_bit.exit.i.i
  %i.r = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #42, !srcloc !303
end_hunk_1
