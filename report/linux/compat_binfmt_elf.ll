inline.NumInlined: 164
inline.NumDeleted: 82
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@elf_core_dump:bb.a
.lr.ph.i125.i.epil.preheader:                     ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %.lr.ph.i125.i.preheader
  %indvars.iv.i126.i.epil.init = phi i64 [ 0, %.lr.ph.i125.i.preheader ], [ %indvars.iv.next.i127.i.1, %._crit_edge.i.i.loopexit.unr-lcssa ]
  %lcmp.mod277 = trunc i32 %spec.store.select.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod277)
  %i.ip = getelementptr i8, ptr %i.id, i64 %indvars.iv.i126.i.epil.init ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1
  %i.ir = icmp eq i8 %i.iq, 0
  br i1 %i.ir, label %bb.ab, label %._crit_edge.i.i

bb.ab:                                            ; preds = %.lr.ph.i125.i.epil.preheader
  store i8 32, ptr %i.ip, align 1
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.loopexit.unr-lcssa, %bb.ab, %.lr.ph.i125.i.epil.preheader, %.preheader.i.i
  %i.is = getelementptr i8, ptr %i.id, i64 %i.ie
  store i8 0, ptr %i.is, align 1
  call void @__rcu_read_lock() #14
  %i.it = getelementptr i8, ptr %i.hv, i64 1544
  %i.iu = load volatile ptr, ptr %i.it, align 8
  %i.iv = call i32 @__task_pid_nr_ns(ptr noundef %i.iu, i32 noundef 0, ptr noundef null) #14
  %i.iw = getelementptr i8, ptr %i.j, i64 16
  store i32 %i.iv, ptr %i.iw, align 8
  call void @__rcu_read_unlock() #14
  %i.ix = call i32 @__task_pid_nr_ns(ptr noundef %i.hv, i32 noundef 0, ptr noundef null) #14
  %i.iy = getelementptr i8, ptr %i.j, i64 12
  store i32 %i.ix, ptr %i.iy, align 4
  %i.iz = call i32 @__task_pid_nr_ns(ptr noundef %i.hv, i32 noundef 2, ptr noundef null) #14
  %i.ja = getelementptr i8, ptr %i.j, i64 20
  store i32 %i.iz, ptr %i.ja, align 4
  %i.jb = call i32 @__task_pid_nr_ns(ptr noundef %i.hv, i32 noundef 3, ptr noundef null) #14
  %i.jc = getelementptr i8, ptr %i.j, i64 24
  store i32 %i.jb, ptr %i.jc, align 8
  %i.jd = getelementptr i8, ptr %i.hv, i64 24
  %i.je = load volatile i32, ptr %i.jd, align 8   ; 2 uses
  %.not74.i.i = icmp eq i32 %i.je, 0
  br i1 %.not74.i.i, label %.thread.i.i, label %bb.ac

.thread.i.i:                                      ; preds = %._crit_edge.i.i
  store i8 0, ptr %i.j, align 8
  br label %bb.ad

bb.ac:                                            ; preds = %._crit_edge.i.i
  %i.jf = zext i32 %i.je to i64
  %i.jg = or disjoint i64 %i.jf, -4294967296
  %i.jh = call i64 asm "tzcnt $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -4294967295, 0) %i.jg) #20, !srcloc !53
  %i.ji = trunc i64 %i.jh to i32
  %i.jj = add i32 %i.ji, 1                        ; 3 uses
  %i.jk = trunc i32 %i.jj to i8
  store i8 %i.jk, ptr %i.j, align 8
  %i.jl = icmp ugt i32 %i.jj, 5
  br i1 %i.jl, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread.i.i
  %i.jm = phi i32 [ 0, %.thread.i.i ], [ %i.jj, %bb.ac ]
  %i.jn = zext nneg i32 %i.jm to i64
  %i.jo = getelementptr i8, ptr @.str.13, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jq = phi i8 [ %i.jp, %bb.ad ], [ 46, %bb.ac ] ; 2 uses
  %i.jr = getelementptr i8, ptr %i.j, i64 1
  store i8 %i.jq, ptr %i.jr, align 1
  %i.js = icmp eq i8 %i.jq, 90
  %i.jt = zext i1 %i.js to i8
  %i.ju = getelementptr i8, ptr %i.j, i64 2
  store i8 %i.jt, ptr %i.ju, align 2
  %i.jv = getelementptr i8, ptr %i.hv, i64 108
  %.val.i128.i = load i32, ptr %i.jv, align 4
  %i.jw = trunc i32 %.val.i128.i to i8
  %i.jx = add i8 %i.jw, -120
  %i.jy = getelementptr i8, ptr %i.j, i64 3
  store i8 %i.jx, ptr %i.jy, align 1
  %i.jz = getelementptr i8, ptr %i.hv, i64 44
  %i.ka = load i32, ptr %i.jz, align 4
  %i.kb = getelementptr i8, ptr %i.j, i64 4
  store i32 %i.ka, ptr %i.kb, align 4
  call void @__rcu_read_lock() #14
  %i.kc = getelementptr i8, ptr %i.hv, i64 1984
  %i.kd = load volatile ptr, ptr %i.kc, align 64  ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kd, i64 8
  %i.kf = load i32, ptr %i.ke, align 8            ; 2 uses
  %i.kg = icmp eq i32 %i.kf, -1
  %i.kh = load i32, ptr @overflowuid, align 4     ; 2 uses
  %spec.select.i.i.i = select i1 %i.kg, i32 %i.kh, i32 %i.kf ; 2 uses
  %.not75.i.i = icmp ult i32 %spec.select.i.i.i, 65536
  %spec.select.i129.i = select i1 %.not75.i.i, i32 %spec.select.i.i.i, i32 %i.kh
  %i.ki = trunc i32 %spec.select.i129.i to i16
  %i.kj = getelementptr i8, ptr %i.j, i64 8
  store i16 %i.ki, ptr %i.kj, align 8
  %i.kk = getelementptr i8, ptr %i.kd, i64 12
  %i.kl = load i32, ptr %i.kk, align 4            ; 2 uses
  %i.km = icmp eq i32 %i.kl, -1
  %i.kn = load i32, ptr @overflowgid, align 4     ; 2 uses
  %spec.select.i79.i.i = select i1 %i.km, i32 %i.kn, i32 %i.kl ; 2 uses
  %.not76.i.i = icmp ult i32 %spec.select.i79.i.i, 65536
  %.in77.i.i = select i1 %.not76.i.i, i32 %spec.select.i79.i.i, i32 %i.kn
  %i.ko = trunc i32 %.in77.i.i to i16
  %i.kp = getelementptr i8, ptr %i.j, i64 10
  store i16 %i.ko, ptr %i.kp, align 2
  call void @__rcu_read_unlock() #14
  %i.kq = getelementptr i8, ptr %i.j, i64 28      ; 2 uses
  %i.kr = getelementptr i8, ptr %i.hv, i64 2008
  %i.ks = call i64 @sized_strscpy(ptr noundef %i.kq, ptr noundef %i.kr, i64 noundef 16) #14 ; 3 uses
  %i.kt = icmp ult i64 %i.ks, 16
  br i1 %i.kt, label %bb.af, label %fill_psinfo.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.ku = getelementptr i8, ptr %i.kq, i64 %i.ks
  %i.kv = getelementptr i8, ptr %i.ku, i64 1
  %i.kw = sub nuw nsw i64 15, %i.ks
  call void @llvm.memset.p0.i64(ptr align 1 %i.kv, i8 0, i64 %i.kw, i1 false)
  br label %fill_psinfo.exit.i

fill_psinfo.exit.i:                               ; preds = %bb.af, %bb.ae, %copy_from_user.exit.i.i
  %.val114.i = load ptr, ptr %i.k, align 8
  %.val115.i = load i32, ptr %i.m, align 4
  %i.kx = call i64 @strlen(ptr noundef readonly %.val114.i) #14
  %i.ky = trunc i64 %i.kx to i32
  %i.kz = and i32 %i.ky, -4
  %i.la = add i32 %.val115.i, 3
  %i.lb = and i32 %i.la, -4
  %i.lc = add i32 %i.lb, 16
  %i.ld = add i32 %i.lc, %i.kz
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 232 ; 8 uses
  %i.lg = load i64, ptr %i.lf, align 8
  %i.lh = add i64 %i.lg, %i.le
  store i64 %i.lh, ptr %i.lf, align 8
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.lk = load ptr, ptr %0, align 8
  call void @copy_siginfo_to_external32(ptr noundef nonnull %i.lj, ptr noundef %i.lk) #14
  store ptr @.str.10, ptr %i.li, align 8
  %i.ll = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 1397311305, ptr %i.ll, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 128, ptr %i.lm, align 4
  %i.ln = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %i.lj, ptr %i.ln, align 8
  %i.lo = load i64, ptr %i.lf, align 8
  %i.lp = add i64 %i.lo, 148                      ; 2 uses
  store i64 %i.lp, ptr %i.lf, align 8
  %i.lq = load ptr, ptr %i.an, align 8
  %i.lr = getelementptr i8, ptr %i.lq, i64 808    ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %fill_psinfo.exit.i
  %.0.i130.i = phi i32 [ 0, %fill_psinfo.exit.i ], [ %i.ls, %bb.ag ] ; 2 uses
  %i.ls = add i32 %.0.i130.i, 2                   ; 2 uses
  %i.lt = sext i32 %.0.i130.i to i64
  %i.lu = getelementptr [4 x i8], ptr %i.lr, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4
  %.not.i131.i = icmp eq i32 %i.lv, 0
  br i1 %.not.i131.i, label %fill_auxv_note.exit.i, label %bb.ag, !llvm.loop !54

fill_auxv_note.exit.i:                            ; preds = %bb.ag
  %i.lw = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.lx = shl i32 %i.ls, 2                        ; 2 uses
  store ptr @.str.10, ptr %i.lw, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 6, ptr %i.ly, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %i.lx, ptr %i.lz, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr %i.lr, ptr %i.ma, align 8
  %i.mb = add i32 %i.lx, 20
  %i.mc = sext i32 %i.mb to i64
  %i.md = add i64 %i.lp, %i.mc
  store i64 %i.md, ptr %i.lf, align 8
  %i.me = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.mf = load i32, ptr %i.b, align 8             ; 3 uses
  %i.mg = icmp ugt i32 %i.mf, 67108863
  br i1 %i.mg, label %_kmalloc_noprof.exit114, label %bb.ah

bb.ah:                                            ; preds = %fill_auxv_note.exit.i
  %i.mh = shl nuw i32 %i.mf, 6                    ; 3 uses
  %i.mi = mul nuw nsw i32 %i.mf, 12
  %i.mj = add nuw nsw i32 %i.mi, 8                ; 2 uses
  %i.mk = load i32, ptr @core_file_note_size_limit, align 4
  %.not134.i.i = icmp ult i32 %i.mh, %i.mk
  br i1 %.not134.i.i, label %.lr.ph137.i.i, label %._crit_edge138.i.i

.lr.ph137.i.i:                                    ; preds = %bb.ah
  %i.ml = zext nneg i32 %i.mj to i64
  %i.mm = getelementptr i8, ptr %0, i64 80
  br label %bb.aj

._crit_edge138.i.i:                               ; preds = %bb.ao, %bb.ah
  %.075.lcssa.i.i = phi i32 [ %i.mh, %bb.ah ], [ %i.ob, %bb.ao ]
  %.b.i.i = load i1, ptr @fill_files_note.__already_done, align 1
  br i1 %.b.i.i, label %_kmalloc_noprof.exit114, label %bb.ai, !prof !13

bb.ai:                                            ; preds = %._crit_edge138.i.i
  store i1 true, ptr @fill_files_note.__already_done, align 1
  %i.mn = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %.075.lcssa.i.i) #15 ; 0 uses
  br label %_kmalloc_noprof.exit114

bb.aj:                                            ; preds = %bb.ao, %.lr.ph137.i.i
  %.075135.i.i = phi i32 [ %i.mh, %.lr.ph137.i.i ], [ %i.ob, %bb.ao ]
  %i.mo = add i32 %.075135.i.i, 4095
  %5 = and i32 %i.mo, -4096                       ; 3 uses
  %i.mp = zext i32 %5 to i64
  %i.mq = call noalias ptr @__kvmalloc_node_noprof(i64 noundef %i.mp, i64 noundef 1, i32 noundef 3264, i32 noundef -1) #17 ; 8 uses
  %i.mr = icmp ult ptr %i.mq, inttoptr (i64 17 to ptr)
  br i1 %i.mr, label %_kmalloc_noprof.exit114, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ms = getelementptr i8, ptr %i.mq, i64 %i.ml  ; 5 uses
  %i.mt = load i32, ptr %i.b, align 8             ; 2 uses
  %i.mu = icmp sgt i32 %i.mt, 0
  br i1 %i.mu, label %.lr.ph.preheader.i.i, label %._crit_edge.i134.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ak
  %i.mv = sub i32 %5, %i.mj
  %i.mw = getelementptr i8, ptr %i.mq, i64 8
  br label %.lr.ph.i135.i

.lr.ph.i135.i:                                    ; preds = %bb.ap, %.lr.ph.preheader.i.i
  %indvars.iv.i136.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i138.i, %bb.ap ] ; 2 uses
  %.074119.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.1.ph.i137.i, %bb.ap ] ; 3 uses
  %.078118.i.i = phi i32 [ %i.mv, %.lr.ph.preheader.i.i ], [ %.179.ph.i.i, %bb.ap ] ; 4 uses
  %.080117.i.i = phi ptr [ %i.mw, %.lr.ph.preheader.i.i ], [ %.181.ph.i.i, %bb.ap ] ; 6 uses
  %.083116.i.i = phi ptr [ %i.ms, %.lr.ph.preheader.i.i ], [ %.184.ph.i.i, %bb.ap ] ; 7 uses
  %i.mx = load ptr, ptr %i.mm, align 8
  %i.my = getelementptr [48 x i8], ptr %i.mx, i64 %indvars.iv.i136.i ; 4 uses
  %i.mz = getelementptr i8, ptr %i.my, i64 40
  %i.na = load ptr, ptr %i.mz, align 8            ; 2 uses
  %.not93.i.i = icmp eq ptr %i.na, null
  br i1 %.not93.i.i, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i135.i
  %i.nb = call ptr @file_path(ptr noundef nonnull %i.na, ptr noundef %.083116.i.i, i32 noundef %.078118.i.i) #14 ; 4 uses
  %i.nc = icmp ugt ptr %i.nb, inttoptr (i64 -4096 to ptr)
  br i1 %i.nc, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.nd = icmp eq ptr %i.nb, inttoptr (i64 -36 to ptr)
  br i1 %i.nd, label %bb.ao, label %bb.ap

bb.an:                                            ; preds = %bb.al
  %i.ne = zext i32 %.078118.i.i to i64
  %i.nf = getelementptr i8, ptr %.083116.i.i, i64 %i.ne
  %i.ng = ptrtoint ptr %i.nf to i64
  %i.nh = ptrtoint ptr %i.nb to i64               ; 2 uses
  %i.ni = sub i64 %i.ng, %i.nh
  %i.nj = ptrtoint ptr %.083116.i.i to i64
  %i.nk = sub i64 %i.nh, %i.nj
  %i.nl = trunc i64 %i.nk to i32
  %i.nm = and i64 %i.ni, 4294967295               ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.083116.i.i, ptr align 1 %i.nb, i64 %i.nm, i1 false)
  %i.nn = getelementptr i8, ptr %.083116.i.i, i64 %i.nm
  %i.no = load i64, ptr %i.my, align 8
  %i.np = trunc i64 %i.no to i32
  %i.nq = getelementptr i8, ptr %.080117.i.i, i64 4
  store i32 %i.np, ptr %.080117.i.i, align 4
  %i.nr = getelementptr i8, ptr %i.my, i64 8
  %i.ns = load i64, ptr %i.nr, align 8
  %i.nt = trunc i64 %i.ns to i32
  %i.nu = getelementptr i8, ptr %.080117.i.i, i64 8
  store i32 %i.nt, ptr %i.nq, align 4
  %i.nv = getelementptr i8, ptr %i.my, i64 32
  %i.nw = load i64, ptr %i.nv, align 8
  %i.nx = trunc i64 %i.nw to i32
  %i.ny = getelementptr i8, ptr %.080117.i.i, i64 12
  store i32 %i.nx, ptr %i.nu, align 4
  %i.nz = add i32 %.074119.i.i, 1
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  call void @kvfree(ptr noundef %i.mq) #14
  %i.oa = mul i32 %5, 5
  %i.ob = lshr exact i32 %i.oa, 2                 ; 3 uses
  %i.oc = load i32, ptr @core_file_note_size_limit, align 4
  %.not.i139.i = icmp ult i32 %i.ob, %i.oc
  br i1 %.not.i139.i, label %bb.aj, label %._crit_edge138.i.i

bb.ap:                                            ; preds = %bb.an, %bb.am, %.lr.ph.i135.i
  %.184.ph.i.i = phi ptr [ %.083116.i.i, %bb.am ], [ %i.nn, %bb.an ], [ %.083116.i.i, %.lr.ph.i135.i ] ; 2 uses
  %.181.ph.i.i = phi ptr [ %.080117.i.i, %bb.am ], [ %i.ny, %bb.an ], [ %.080117.i.i, %.lr.ph.i135.i ]
  %.179.ph.i.i = phi i32 [ %.078118.i.i, %bb.am ], [ %i.nl, %bb.an ], [ %.078118.i.i, %.lr.ph.i135.i ]
  %.1.ph.i137.i = phi i32 [ %.074119.i.i, %bb.am ], [ %i.nz, %bb.an ], [ %.074119.i.i, %.lr.ph.i135.i ] ; 2 uses
  %indvars.iv.next.i138.i = add nuw nsw i64 %indvars.iv.i136.i, 1 ; 2 uses
  %i.od = load i32, ptr %i.b, align 8             ; 2 uses
  %i.oe = sext i32 %i.od to i64
  %i.of = icmp slt i64 %indvars.iv.next.i138.i, %i.oe
  br i1 %i.of, label %.lr.ph.i135.i, label %._crit_edge.i134.i, !llvm.loop !55

._crit_edge.i134.i:                               ; preds = %bb.ak, %bb.ap
  %.083.lcssa.i.i = phi ptr [ %.184.ph.i.i, %bb.ap ], [ %i.ms, %bb.ak ] ; 3 uses
  %.074.lcssa.i.i = phi i32 [ %.1.ph.i137.i, %bb.ap ], [ 0, %bb.ak ] ; 3 uses
  %.lcssa.i.i = phi i32 [ %i.od, %bb.ap ], [ %i.mt, %bb.ak ] ; 2 uses
  %.lcssa111.i.i = ptrtoint ptr %i.mq to i64
  store i32 %.074.lcssa.i.i, ptr %i.mq, align 4
  %i.og = getelementptr i8, ptr %i.mq, i64 4
  store i32 4096, ptr %i.og, align 4
  %.not92.i.i = icmp eq i32 %.lcssa.i.i, %.074.lcssa.i.i
  br i1 %.not92.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i134.i
  %i.oh = sub i32 %.lcssa.i.i, %.074.lcssa.i.i
  %i.oi = mul i32 %i.oh, 12
  %i.oj = zext i32 %i.oi to i64
  %i.ok = sub nsw i64 0, %i.oj                    ; 2 uses
  %i.ol = getelementptr i8, ptr %i.ms, i64 %i.ok
  %i.om = ptrtoint ptr %.083.lcssa.i.i to i64
  %i.on = ptrtoint ptr %i.ms to i64
  %i.oo = sub i64 %i.om, %i.on
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ol, ptr align 1 %i.ms, i64 %i.oo, i1 false)
  %i.op = getelementptr i8, ptr %.083.lcssa.i.i, i64 %i.ok
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i134.i
  %.285.i.i = phi ptr [ %i.op, %bb.aq ], [ %.083.lcssa.i.i, %._crit_edge.i134.i ]
  %i.oq = ptrtoint ptr %.285.i.i to i64
  %i.or = sub i64 %i.oq, %.lcssa111.i.i           ; 2 uses
  %i.os = trunc i64 %i.or to i32
  store ptr @.str.10, ptr %i.me, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 1179208773, ptr %i.ot, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %3, i64 92
  store i32 %i.os, ptr %i.ou, align 4
  %i.ov = getelementptr inbounds nuw i8, ptr %3, i64 96
  store ptr %i.mq, ptr %i.ov, align 8
  %i.ow = shl i64 %i.or, 32
  %i.ox = add i64 %i.ow, 12884901888
  %i.oy = and i64 %i.ox, -17179869184
  %sext141.i = add i64 %i.oy, 85899345920
  %i.oz = ashr exact i64 %sext141.i, 32
  %i.pa = load i64, ptr %i.lf, align 8
  %i.pb = add i64 %i.oz, %i.pa
  store i64 %i.pb, ptr %i.lf, align 8
  br label %_kmalloc_noprof.exit114

_kmalloc_noprof.exit114:                          ; preds = %bb.aj, %bb.ar, %fill_auxv_note.exit.i, %bb.ai, %._crit_edge138.i.i
  %i.pc = load i64, ptr %i.lf, align 8
  %i.pd = call i32 @elf_coredump_extra_notes_size() #14
  %i.pe = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.pf = call noalias align 8 dereferenceable_or_null(32) ptr @__kmalloc_cache_noprof(ptr noundef %i.pe, i32 noundef 3264, i64 noundef range(i64 -51539607552, 51539607841) 32) #18 ; 24 uses
  %.not100 = icmp eq ptr %i.pf, null
  br i1 %.not100, label %fill_note_info.exit, label %bb.as

bb.as:                                            ; preds = %_kmalloc_noprof.exit114
  %i.pg = sext i32 %i.pd to i64
  %i.ph = add i64 %i.pc, %i.pg                    ; 2 uses
  %i.pi = sext i32 %i.d to i64
  %i.pj = shl nsw i64 %i.pi, 5                    ; 2 uses
  %i.pk = trunc i64 %i.ph to i32
  store i32 4, ptr %i.pf, align 8
  %i.pl = trunc i64 %i.pj to i32
  %i.pm = add i32 %i.pl, 52
  %i.pn = getelementptr i8, ptr %i.pf, i64 4
  store i32 %i.pm, ptr %i.pn, align 4
  %i.po = getelementptr i8, ptr %i.pf, i64 8
  store i32 0, ptr %i.po, align 8
  %i.pp = getelementptr i8, ptr %i.pf, i64 12
  store i32 0, ptr %i.pp, align 4
  %i.pq = getelementptr i8, ptr %i.pf, i64 16
  store i32 %i.pk, ptr %i.pq, align 8
  %i.pr = getelementptr i8, ptr %i.pf, i64 20
  store i32 0, ptr %i.pr, align 4
  %i.ps = getelementptr i8, ptr %i.pf, i64 24
  store i32 0, ptr %i.ps, align 8
  %i.pt = getelementptr i8, ptr %i.pf, i64 28
  store i32 4, ptr %i.pt, align 4
  %i.pu = add nsw i64 %i.pj, 4147
  %i.pv = add i64 %i.pu, %i.ph
  %i.pw = sdiv i64 %i.pv, 4096
  %i.px = shl nsw i64 %i.pw, 12                   ; 3 uses
  %i.py = getelementptr i8, ptr %0, i64 72
  %i.pz = load i64, ptr %i.py, align 8
  %i.qa = add i64 %i.pz, %i.px
  %i.qb = trunc i64 %i.qa to i32
  %i.qc = icmp eq i32 %i.f, 65535                 ; 2 uses
  br i1 %i.qc, label %_kmalloc_noprof.exit, label %bb.au

_kmalloc_noprof.exit:                             ; preds = %bb.as
  %i.qd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.qe = call noalias align 8 dereferenceable_or_null(40) ptr @__kmalloc_cache_noprof(ptr noundef %i.qd, i32 noundef 3264, i64 noundef range(i64 -51539607552, 51539607841) 40) #18 ; 5 uses
  %.not101 = icmp eq ptr %i.qe, null
  br i1 %.not101, label %fill_note_info.exit, label %bb.at

bb.at:                                            ; preds = %_kmalloc_noprof.exit
  %i.qf = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.qb, ptr %i.qf, align 4
  %i.qg = getelementptr inbounds nuw i8, ptr %2, i64 46
  store i16 40, ptr %i.qg, align 2
  %i.qh = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i16 1, ptr %i.qh, align 4
  %i.qi = getelementptr inbounds nuw i8, ptr %2, i64 50
  store i16 0, ptr %i.qi, align 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.qe, i8 0, i64 40, i1 false)
  %i.qj = getelementptr i8, ptr %i.qe, i64 20
  store i32 1, ptr %i.qj, align 4
  %i.qk = getelementptr i8, ptr %i.qe, i64 28
  store i32 %i.d, ptr %i.qk, align 4
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.095 = phi ptr [ %i.qe, %bb.at ], [ null, %bb.as ] ; 14 uses
  %i.ql = call i32 @dump_emit(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 52) #14
  %.not102 = icmp eq i32 %i.ql, 0
  br i1 %.not102, label %fill_note_info.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qm = call i32 @dump_emit(ptr noundef %0, ptr noundef nonnull %i.pf, i32 noundef 32) #14
  %.not103 = icmp eq i32 %i.qm, 0
  br i1 %.not103, label %fill_note_info.exit, label %.preheader

.preheader:                                       ; preds = %bb.av
  %i.qn = load i32, ptr %i.b, align 8
  %i.qo = icmp sgt i32 %i.qn, 0
  br i1 %i.qo, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.qp = getelementptr i8, ptr %0, i64 80
  %i.qq = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.qr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.qs = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.qu = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.qv = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.qx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ax

bb.aw:                                            ; preds = %bb.bb
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qy = load i32, ptr %i.b, align 8
  %i.qz = sext i32 %i.qy to i64
  %i.ra = icmp slt i64 %indvars.iv.next, %i.qz
  br i1 %i.ra, label %bb.ax, label %._crit_edge, !llvm.loop !56

bb.ax:                                            ; preds = %.lr.ph, %bb.aw
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.aw ] ; 2 uses
  %.193168 = phi i64 [ %i.px, %.lr.ph ], [ %i.ro, %bb.aw ] ; 2 uses
  %i.rb = load ptr, ptr %i.qp, align 8
  %i.rc = getelementptr [48 x i8], ptr %i.rb, i64 %indvars.iv ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.qx, i8 0, i64 24, i1 false), !annotation !31
  store i32 1, ptr %4, align 4
  %i.rd = trunc i64 %.193168 to i32
  store i32 %i.rd, ptr %i.qq, align 4
  %i.re = load i64, ptr %i.rc, align 8
  %i.rf = trunc i64 %i.re to i32
  store i32 %i.rf, ptr %i.qr, align 4
  store i32 0, ptr %i.qs, align 4
  %i.rg = getelementptr i8, ptr %i.rc, i64 24
  %i.rh = load i64, ptr %i.rg, align 8            ; 2 uses
  %i.ri = trunc i64 %i.rh to i32
  store i32 %i.ri, ptr %i.qt, align 4
  %i.rj = getelementptr i8, ptr %i.rc, i64 8
  %i.rk = load i64, ptr %i.rj, align 8
  %i.rl = load i64, ptr %i.rc, align 8
  %i.rm = sub i64 %i.rk, %i.rl
  %i.rn = trunc i64 %i.rm to i32
  store i32 %i.rn, ptr %i.qu, align 4
  %i.ro = add i64 %i.rh, %.193168
  store i32 0, ptr %i.qv, align 4
  %i.rp = getelementptr i8, ptr %i.rc, i64 16     ; 3 uses
  %i.rq = load i64, ptr %i.rp, align 8
  %i.rr = trunc i64 %i.rq to i32
  %i.rs = shl i32 %i.rr, 2
  %spec.store.select = and i32 %i.rs, 4           ; 3 uses
  store i32 %spec.store.select, ptr %i.qv, align 4
  %i.rt = load i64, ptr %i.rp, align 8            ; 2 uses
  %i.ru = and i64 %i.rt, 2
  %.not108 = icmp eq i64 %i.ru, 0
  br i1 %.not108, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.rv = or disjoint i32 %spec.store.select, 2   ; 2 uses
end_hunk_0
