Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cgroup-v1?download=true
inline.NumInlined: 179
inline.NumDeleted: 92
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cgroup1_parse_param:bb.a
  br i1 %.not85.11, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dq = getelementptr i8, ptr %i.dm, i64 232
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %cgroup1_subsys_absent.exit.11, label %cgroup1_subsys_absent.exit.thread

cgroup1_subsys_absent.exit.11:                    ; preds = %bb.ab
  %i.dt = getelementptr i8, ptr %i.dm, i64 224
  %i.du = load ptr, ptr %i.dt, align 8
  %.not88.11 = icmp eq ptr %i.du, null
  br i1 %.not88.11, label %cgroup1_subsys_absent.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %cgroup1_subsys_absent.exit.11, %bb.aa
  %i.dv = load ptr, ptr getelementptr (i8, ptr @cgroup_subsys, i64 96), align 8 ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 168
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call i32 @strcmp(ptr noundef %i.f, ptr noundef %i.dx) #15
  %.not85.12 = icmp eq i32 %i.dy, 0
  br i1 %.not85.12, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dz = getelementptr i8, ptr %i.dv, i64 232
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %cgroup1_subsys_absent.exit.12, label %cgroup1_subsys_absent.exit.thread

cgroup1_subsys_absent.exit.12:                    ; preds = %bb.ad
  %i.ec = getelementptr i8, ptr %i.dv, i64 224
  %i.ed = load ptr, ptr %i.ec, align 8
  %.not88.12 = icmp eq ptr %i.ed, null
  br i1 %.not88.12, label %cgroup1_subsys_absent.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %cgroup1_subsys_absent.exit.12, %bb.ac
  %i.ee = load ptr, ptr getelementptr (i8, ptr @cgroup_subsys, i64 104), align 8 ; 3 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 168
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call i32 @strcmp(ptr noundef %i.f, ptr noundef %i.eg) #15
  %.not85.13 = icmp eq i32 %i.eh, 0
  br i1 %.not85.13, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.ei = getelementptr i8, ptr %i.ee, i64 232
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %cgroup1_subsys_absent.exit.13, label %cgroup1_subsys_absent.exit.thread

cgroup1_subsys_absent.exit.13:                    ; preds = %bb.af
  %i.el = getelementptr i8, ptr %i.ee, i64 224
  %i.em = load ptr, ptr %i.el, align 8
  %.not88.13 = icmp eq ptr %i.em, null
  br i1 %.not88.13, label %cgroup1_subsys_absent.exit.thread, label %.critedge

.critedge:                                        ; preds = %cgroup1_subsys_absent.exit.13, %bb.ae
  %i.en = getelementptr i8, ptr %0, i64 96
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %i.eo, ptr noundef %i.ep, i8 noundef zeroext 101, ptr noundef nonnull @.str.18, ptr noundef %i.f) #15
  br label %bb.bh

bb.ag:                                            ; preds = %bb.a
  %i.eq = icmp slt i32 %i.c, 0
  br i1 %i.eq, label %bb.bh, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  switch i32 %i.c, label %bb.bh [
    i32 4, label %bb.ai
    i32 0, label %bb.aj
    i32 5, label %bb.ak
    i32 1, label %bb.al
    i32 2, label %bb.am
    i32 7, label %bb.an
    i32 8, label %bb.ao
    i32 9, label %bb.ap
    i32 6, label %bb.aq
    i32 3, label %bb.aw
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.er = getelementptr i8, ptr %.val, i64 53
  store i8 1, ptr %i.er, align 1
  br label %bb.bh

bb.aj:                                            ; preds = %bb.ah
  %i.es = getelementptr i8, ptr %.val, i64 54
  store i8 1, ptr %i.es, align 2
  br label %bb.bh

bb.ak:                                            ; preds = %bb.ah
  %i.et = getelementptr i8, ptr %.val, i64 48     ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = or i32 %i.eu, 2
  store i32 %i.ev, ptr %i.et, align 8
  br label %bb.bh

bb.al:                                            ; preds = %bb.ah
  %i.ew = getelementptr i8, ptr %.val, i64 52
  store i8 1, ptr %i.ew, align 4
  br label %bb.bh

bb.am:                                            ; preds = %bb.ah
  %i.ex = getelementptr i8, ptr %.val, i64 48     ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8
  %i.ez = or i32 %i.ey, 65536
  store i32 %i.ez, ptr %i.ex, align 8
  br label %bb.bh

bb.an:                                            ; preds = %bb.ah
  %i.fa = getelementptr i8, ptr %.val, i64 48     ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8
  %i.fc = or i32 %i.fb, 4
  store i32 %i.fc, ptr %i.fa, align 8
  br label %bb.bh

bb.ao:                                            ; preds = %bb.ah
  %i.fd = getelementptr i8, ptr %.val, i64 48     ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8
  %i.ff = or i32 %i.fe, 16
  store i32 %i.ff, ptr %i.fd, align 8
  br label %bb.bh

bb.ap:                                            ; preds = %bb.ah
  %i.fg = getelementptr i8, ptr %.val, i64 48     ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = and i32 %i.fh, -17
  store i32 %i.fi, ptr %i.fg, align 8
  br label %bb.bh

bb.aq:                                            ; preds = %bb.ah
  %i.fj = getelementptr i8, ptr %.val, i64 72     ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8
  %.not82 = icmp eq ptr %i.fk, null
  br i1 %.not82, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fl = getelementptr i8, ptr %0, i64 96
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %i.fm, ptr noundef %i.fn, i8 noundef zeroext 101, ptr noundef nonnull @.str.19) #15
  br label %bb.bh

bb.as:                                            ; preds = %bb.aq
  %i.fo = getelementptr i8, ptr %0, i64 64
  %i.fp = load ptr, ptr %i.fo, align 8
  %.not83 = icmp eq ptr %i.fp, @init_user_ns
  br i1 %.not83, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.fq = call zeroext i1 @capable(i32 noundef 21) #15
  br i1 %i.fq, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fr = getelementptr i8, ptr %0, i64 96
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %i.fs, ptr noundef %i.ft, i8 noundef zeroext 101, ptr noundef nonnull @.str.20) #15
  br label %bb.bh

bb.av:                                            ; preds = %bb.at
  %i.fu = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8
  store ptr %i.fv, ptr %i.fj, align 8
  store ptr null, ptr %i.fu, align 8
  br label %bb.bh

bb.aw:                                            ; preds = %bb.ah
  %.b = load i1, ptr @cgroup_no_v1_named, align 1
  br i1 %.b, label %bb.bh, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fw = getelementptr i8, ptr %1, i64 24
  %i.fx = load i64, ptr %i.fw, align 8            ; 3 uses
  %.not = icmp eq i64 %i.fx, 0
  br i1 %.not, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fy = getelementptr i8, ptr %0, i64 96
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %i.fz, ptr noundef %i.ga, i8 noundef zeroext 101, ptr noundef nonnull @.str.21) #15
  br label %bb.bh

bb.az:                                            ; preds = %bb.ax
  %i.gb = icmp ugt i64 %i.fx, 63
  br i1 %i.gb, label %bb.ba, label %.preheader90

.preheader90:                                     ; preds = %bb.az
  %i.gc = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8            ; 2 uses
  br label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ge = getelementptr i8, ptr %0, i64 96
  %i.gf = load ptr, ptr %i.ge, align 8
  %i.gg = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %i.gf, ptr noundef %i.gg, i8 noundef zeroext 101, ptr noundef nonnull @.str.22) #15
  br label %bb.bh

bb.bb:                                            ; preds = %.preheader90, %bb.bd
  %i.gh = phi i64 [ 0, %.preheader90 ], [ %4, %bb.bd ]
  %.192 = phi i32 [ 0, %.preheader90 ], [ %3, %bb.bd ]
  %i.gi = getelementptr i8, ptr %i.gd, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1             ; 2 uses
  %i.gk = zext i8 %i.gj to i64
  %i.gl = getelementptr i8, ptr @_ctype, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = and i8 %i.gm, 7
  %.not81 = icmp eq i8 %i.gn, 0
  br i1 %.not81, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  switch i8 %i.gj, label %.critedge87 [
    i8 95, label %bb.bd
    i8 46, label %bb.bd
    i8 45, label %bb.bd
  ]

.critedge87:                                      ; preds = %bb.bc
  %i.go = getelementptr i8, ptr %0, i64 96
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %i.gp, ptr noundef %i.gq, i8 noundef zeroext 101, ptr noundef nonnull @.str.23) #15
  br label %bb.bh

bb.bd:                                            ; preds = %bb.bb, %bb.bc, %bb.bc, %bb.bc
  %3 = add i32 %.192, 1                           ; 2 uses
  %4 = sext i32 %3 to i64                         ; 2 uses
  %5 = icmp ugt i64 %i.fx, %4
  br i1 %5, label %bb.bb, label %bb.be, !llvm.loop !51

bb.be:                                            ; preds = %bb.bd
  %i.gr = getelementptr i8, ptr %.val, i64 64     ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8
  %.not80 = icmp eq ptr %i.gs, null
  br i1 %.not80, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gt = getelementptr i8, ptr %0, i64 96
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = load ptr, ptr %i.b, align 8
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %i.gu, ptr noundef %i.gv, i8 noundef zeroext 101, ptr noundef nonnull @.str.24) #15
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  store ptr %i.gd, ptr %i.gr, align 8
  store ptr null, ptr %i.gc, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.av, %bb.bg, %.critedge87, %bb.aw, %bb.ag, %bb.e, %bb.f, %.critedge, %bb.b, %bb.bf, %bb.ba, %bb.ay, %bb.au, %bb.ar
  %.3 = phi i32 [ -22, %bb.ay ], [ %i.e, %bb.b ], [ -2, %bb.aw ], [ -22, %bb.ar ], [ -22, %bb.au ], [ %i.c, %bb.ag ], [ -22, %bb.ba ], [ -22, %.critedge87 ], [ -22, %bb.bf ], [ -22, %.critedge ], [ -22, %bb.e ], [ 0, %bb.f ], [ 0, %bb.bg ], [ 0, %bb.av ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i32 %.3
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @vfs_parse_fs_param_source(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @cgroup1_reconfigure(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @kernfs_root_from_sb(ptr noundef %i.e) #15
  %i.g = tail call ptr @cgroup_root_from_kf(ptr noundef %i.f) #15 ; 8 uses
  tail call void @cgroup_lock_and_drain_offline(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @cgrp_dfl_root, i64 4224)) #15
  %i.h = tail call fastcc i32 @check_cgroupfs_options(ptr noundef %0) #20, !srcloc !52 ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %trace_cgroup_remount.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %.val, i64 56      ; 2 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %.not38 = icmp eq i32 %i.j, %i.l
  br i1 %.not38, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %.val, i64 72
  %i.n = load ptr, ptr %i.m, align 8
  %.not39 = icmp eq ptr %i.n, null
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.o = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #17, !srcloc !21
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 1532
  %.val48 = load i32, ptr %i.q, align 4
  %i.r = getelementptr i8, ptr %i.p, i64 2008
  %i.s = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %.val48, ptr noundef %i.r) #21 ; 0 uses
  %.pre = load i32, ptr %i.i, align 8
  %.pre50 = load i32, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi i32 [ %.pre50, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.u = phi i32 [ %.pre, %bb.d ], [ %i.j, %bb.c ] ; 2 uses
  %i.v = xor i32 %i.t, -1
  %i.w = and i32 %i.u, %i.v
  %i.x = xor i32 %i.u, -1
  %i.y = and i32 %i.t, %i.x
  %i.z = getelementptr i8, ptr %.val, i64 48
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr i8, ptr %i.g, i64 52
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %.not40 = icmp eq i32 %i.aa, %i.ac
  %i.ad = getelementptr i8, ptr %.val, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8            ; 4 uses
  br i1 %.not40, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %.not41 = icmp eq ptr %i.ae, null
  br i1 %.not41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.g, i64 4152
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef %i.af) #15
  %.not42 = icmp eq i32 %i.ag, 0
  br i1 %.not42, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %bb.g
  %i.ah = getelementptr i8, ptr %0, i64 88
  %i.ai = getelementptr i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = load ptr, ptr %i.ah, align 8
  %.not47 = icmp eq ptr %i.ae, null
  %..str = select i1 %.not47, ptr @.str, ptr %i.ae
  %i.al = getelementptr i8, ptr %i.g, i64 4152
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %i.aj, ptr noundef %i.ak, i8 noundef zeroext 101, ptr noundef nonnull @.str.26, i32 noundef %i.aa, ptr noundef nonnull %..str, i32 noundef %i.ac, ptr noundef %i.al) #15
  br label %trace_cgroup_remount.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = getelementptr i8, ptr %i.g, i64 4280    ; 2 uses
  %i.an = load volatile ptr, ptr %i.am, align 8
  %.not49 = icmp eq ptr %i.an, %i.am
  br i1 %.not49, label %bb.i, label %trace_cgroup_remount.exit

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call i32 @rebind_subsystems(ptr noundef %i.g, i32 noundef %i.w) #15 ; 2 uses
  %.not44 = icmp eq i32 %i.ao, 0
  br i1 %.not44, label %bb.j, label %trace_cgroup_remount.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call i32 @rebind_subsystems(ptr noundef nonnull @cgrp_dfl_root, i32 noundef %i.y) #15
  %.not45 = icmp eq i32 %i.ap, 0
  br i1 %.not45, label %bb.l, label %bb.k, !prof !14

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "733: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 733b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 733) #16, !srcloc !53
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1133, i32 2305, i64 16) #16, !srcloc !54
  tail call void asm sideeffect "734: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 734b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 734) #16, !srcloc !55
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aq = getelementptr i8, ptr %.val, i64 72     ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8
  %.not46 = icmp eq ptr %i.ar, null
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_raw_spin_lock(ptr noundef nonnull @release_agent_path_lock) #15
  %i.as = getelementptr i8, ptr %i.g, i64 56
  %i.at = load ptr, ptr %i.aq, align 8
  %i.au = tail call i64 @sized_strscpy(ptr noundef %i.as, ptr noundef %i.at, i64 noundef 4096) #15 ; 0 uses
  tail call void @_raw_spin_unlock(ptr noundef nonnull @release_agent_path_lock) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_cgroup_remount, i64 8), i1 false) #16
          to label %trace_cgroup_remount.exit [label %arch_test_bit.exit.i.i], !srcloc !15

arch_test_bit.exit.i.i:                           ; preds = %bb.n
  %i.av = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #16, !srcloc !56
  %i.aw = zext i32 %i.av to i64
  %i.ax = tail call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.aw) #16, !srcloc !16 ; 2 uses
  %i.ay = icmp ult i8 %i.ax, 2
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = trunc nuw i8 %i.ax to i1
  br i1 %i.az, label %bb.o, label %trace_cgroup_remount.exit

bb.o:                                             ; preds = %arch_test_bit.exit.i.i
  %i.ba = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ba, ptr elementtype(i64) %i.ba) #16, !srcloc !17
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !18
  %i.bb = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_cgroup_remount, i64 56), align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call i32 @__SCT__tp_func_cgroup_remount(ptr noundef %i.bd, ptr noundef %i.g) #15 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !srcloc !19
  %i.bf = getelementptr i8, ptr %i.ba, i64 8      ; 2 uses
  tail call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.bf, ptr elementtype(i64) %i.bf) #16, !srcloc !20
  br label %trace_cgroup_remount.exit

trace_cgroup_remount.exit:                        ; preds = %bb.q, %arch_test_bit.exit.i.i, %bb.n, %bb.h, %bb.i, %bb.a, %._crit_edge
  %.0 = phi i32 [ %i.h, %bb.a ], [ -22, %._crit_edge ], [ %i.ao, %bb.i ], [ -16, %bb.h ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %arch_test_bit.exit.i.i ]
  tail call void @mutex_unlock(ptr noundef nonnull @cgroup_mutex) #15
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @kernfs_root_from_sb(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @cgroup_root_from_kf(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @cgroup_lock_and_drain_offline(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
end_hunk_0
