Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_rps?download=true
inline.NumInlined: 618
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@rps_read_mask_mmio:bb.a
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @intel_runtime_pm_put_unchecked(ptr noundef %i.m) #10
  %i.n = and i32 %i.j, %2
  %i.o = icmp ne i32 %i.n, 0
  br label %rps_read_mmio.exit

rps_read_mmio.exit:                               ; preds = %bb.a, %.lr.ph.i
  %.0.lcssa.i = phi i1 [ %i.o, %.lr.ph.i ], [ false, %bb.a ]
  ret i1 %.0.lcssa.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_rps_driver_register(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -3696
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1656
  %i.d = load i8, ptr %i.c, align 8
  %i.e = icmp eq i8 %i.d, 5
  br i1 %i.e, label %bb.b, label %ips_ping_for_i915_load.exit

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !89
  store volatile ptr %i.b, ptr @ips_mchdev, align 8
  %i.f = tail call ptr @__symbol_get(ptr noundef nonnull @.str.69) #10 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %ips_ping_for_i915_load.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void %i.f() #10, !inline_history !88
  tail call void @__symbol_put(ptr noundef nonnull @.str.69) #10
  br label %ips_ping_for_i915_load.exit

ips_ping_for_i915_load.exit:                      ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, argmem: read, target_mem: none)
define dso_local void @intel_rps_driver_unregister(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 align 16 prefalign(16) {
bb.a:
  %i.a = load volatile ptr, ptr @ips_mchdev, align 8
  %i.b = getelementptr i8, ptr %0, i64 -3696
  %.val = load ptr, ptr %i.b, align 8
  %i.c = icmp eq ptr %i.a, %.val
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store volatile ptr null, ptr @ips_mchdev, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @i915_read_mch_val() #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #10
  %i.a = load volatile ptr, ptr @ips_mchdev, align 8 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %mchdev_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 4        ; 4 uses
  %i.c = load volatile i32, ptr %i.b, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.old1.not.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.b, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.i, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.d = add i32 %.0.i.i.i.i.i, 1
  %i.e = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.b, i32 %i.d, ptr elementtype(i32) %i.b, i32 %.0.i.i.i.i.i) #12, !srcloc !27 ; 2 uses
  %i.f = extractvalue { i8, i32 } %i.e, 0         ; 2 uses
  %i.g = icmp ult i8 %i.f, 2
  tail call void @llvm.assume(i1 %i.g)
  %i.h = trunc nuw i8 %i.f to i1
  br i1 %i.h, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, !prof !26

arch_atomic_try_cmpxchg.exit.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i
  %i.i = extractvalue { i8, i32 } %i.e, 1         ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !7

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i:    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.b
  %.2.i.i.i.i.i = phi i32 [ 0, %bb.b ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.k = add i32 %.2.i.i.i.i.i, 1
  %i.l = or i32 %i.k, %.2.i.i.i.i.i
  %.not.i.i.i.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i.i.i.i, label %kref_get_unless_zero.exit.i, label %bb.c, !prof !26

bb.c:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.b, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  %.not8.i = icmp eq i32 %.2.i.i.i.i.i, 0
  br i1 %.not8.i, label %mchdev_get.exit.thread, label %mchdev_get.exit

mchdev_get.exit.thread:                           ; preds = %bb.a, %kref_get_unless_zero.exit.i
  tail call void @__rcu_read_unlock() #10
  br label %bb.n

mchdev_get.exit:                                  ; preds = %kref_get_unless_zero.exit.i
  tail call void @__rcu_read_unlock() #10
  %i.m = getelementptr i8, ptr %i.a, i64 3176     ; 2 uses
  %i.n = tail call ptr @intel_runtime_pm_get(ptr noundef %i.m) #10
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.m, label %.lr.ph

.lr.ph:                                           ; preds = %mchdev_get.exit
  %i.p = getelementptr i8, ptr %i.a, i64 3528
  %.val = load ptr, ptr %i.p, align 8             ; 14 uses
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @mchdev_lock) #10
  %i.q = getelementptr i8, ptr %.val, i64 24      ; 3 uses
  %.val.i = load ptr, ptr %i.q, align 8           ; 5 uses
  %i.r = load volatile i64, ptr @jiffies, align 64
  %i.s = and i64 %i.r, 4294967295                 ; 2 uses
  %i.t = getelementptr i8, ptr %.val, i64 3920    ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = sub i64 %i.s, %i.u                       ; 2 uses
  %i.w = icmp ult i64 %i.v, 11
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.x = getelementptr i8, ptr %.val, i64 3928
  %i.y = load i64, ptr %i.x, align 8
  br label %__ips_chipset_val.exit

bb.e:                                             ; preds = %.lr.ph
  %i.z = getelementptr i8, ptr %.val, i64 3912    ; 2 uses
  %i.aa = getelementptr i8, ptr %.val.i, i64 144  ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i32 %i.ab(ptr noundef %.val.i, i32 70372, i1 noundef zeroext true) #10, !inline_history !90
  %i.ad = zext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.aa, align 8
  %i.af = tail call i32 %i.ae(ptr noundef %.val.i, i32 70376, i1 noundef zeroext true) #10, !inline_history !90
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nuw nsw i64 %i.ag, %i.ad
  %i.ai = load ptr, ptr %i.aa, align 8
  %i.aj = tail call i32 %i.ai(ptr noundef %.val.i, i32 70368, i1 noundef zeroext true) #10, !inline_history !90
  %i.ak = zext i32 %i.aj to i64
  %i.al = add nuw nsw i64 %i.ah, %i.ak            ; 2 uses
  %i.am = load i64, ptr %i.z, align 8
  %i.an = sub i64 %i.al, %i.am
  %i.ao = getelementptr i8, ptr %.val, i64 3968
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul i64 %i.an, %i.aq
  %i.as = and i64 %i.v, 4294967295
  %i.at = udiv i64 %i.ar, %i.as
  %i.au = getelementptr i8, ptr %.val, i64 3964
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %i.at, %i.aw
  %i.ay = udiv i64 %i.ax, 10                      ; 2 uses
  store i64 %i.al, ptr %i.z, align 8
  store i64 %i.s, ptr %i.t, align 8
  %i.az = getelementptr i8, ptr %.val, i64 3928
  store i64 %i.ay, ptr %i.az, align 8
  %.val26.i.pre = load ptr, ptr %i.q, align 8
  br label %__ips_chipset_val.exit

__ips_chipset_val.exit:                           ; preds = %bb.d, %bb.e
  %.val26.i = phi ptr [ %.val.i, %bb.d ], [ %.val26.i.pre, %bb.e ] ; 5 uses
  %.0.i16 = phi i64 [ %i.y, %bb.d ], [ %i.ay, %bb.e ]
  %i.ba = getelementptr i8, ptr %.val, i64 3824
  %i.bb = load i8, ptr %i.ba, align 8
  %i.bc = zext i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 2
  %i.be = add nuw nsw i32 %i.bd, 69904
  %i.bf = getelementptr i8, ptr %.val26.i, i64 144 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call i32 %i.bg(ptr noundef %.val26.i, i32 %i.be, i1 noundef zeroext true) #10, !inline_history !91
  %i.bi = lshr i32 %i.bh, 24
  %.val.i17 = load ptr, ptr %.val, align 8
  %i.bj = trunc nuw i32 %i.bi to i8
  %i.bk = and i8 %i.bj, 127                       ; 3 uses
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %pvid_to_extvid.exit.i, label %bb.f

bb.f:                                             ; preds = %__ips_chipset_val.exit
  %i.bm = add nsw i8 %i.bk, -8
  %or.cond.i.i.i = icmp ult i8 %i.bm, 23
  %i.bn = add nuw i8 %i.bk, 2
  %narrow.i.i.i = select i1 %or.cond.i.i.i, i8 33, i8 %i.bn
  %i.bo = zext i8 %narrow.i.i.i to i32
  %i.bp = mul nuw nsw i32 %i.bo, 125
  br label %pvid_to_extvid.exit.i

pvid_to_extvid.exit.i:                            ; preds = %bb.f, %__ips_chipset_val.exit
  %.0.i.i.i = phi i32 [ %i.bp, %bb.f ], [ 0, %__ips_chipset_val.exit ] ; 2 uses
  %i.bq = getelementptr i8, ptr %.val.i17, i64 1648
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %i.br, i64 28
  %i.bt = load i64, ptr %i.bs, align 4
  %i.bu = load ptr, ptr %i.bf, align 8
  %i.bv = tail call i32 %i.bu(ptr noundef %.val26.i, i32 69664, i1 noundef zeroext true) #10, !inline_history !92 ; 2 uses
  %i.bw = getelementptr i8, ptr %.val26.i, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = tail call zeroext i8 %i.bx(ptr noundef %.val26.i, i32 69638, i1 noundef zeroext true) #10, !inline_history !93
  %0 = zext i8 %i.by to i32
  %i.bz = and i32 %i.bv, 255
  %1 = lshr i32 %i.bv, 8
  %2 = and i32 %1, 255
  %3 = mul nuw nsw i32 %2, %0
  %.lhs.trunc.i.i = trunc nuw i32 %3 to i16
  %i.ca = udiv i16 %.lhs.trunc.i.i, 127
  %.zext.i.i = zext nneg i16 %i.ca to i32
  %i.cb = sub nsw i32 %.zext.i.i, %i.bz           ; 3 uses
  %i.cc = zext i32 %i.cb to i64                   ; 3 uses
  %i.cd = icmp ugt i32 %i.cb, 80
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %pvid_to_extvid.exit.i
  %i.ce = mul nuw nsw i64 %i.cc, 2349
  %i.cf = add nuw nsw i64 %i.ce, 135940
  %i.cg = and i64 %i.cf, 4294967295
  br label %bb.k

bb.h:                                             ; preds = %pvid_to_extvid.exit.i
  %i.ch = icmp samesign ugt i32 %i.cb, 49
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ci = mul nuw nsw i64 %i.cc, 964
  %i.cj = add nuw nsw i64 %i.ci, 29317
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ck = mul nuw nsw i64 %i.cc, 301
  %i.cl = add nuw nsw i64 %i.ck, 1004
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.0.i18 = phi i64 [ %i.cg, %bb.g ], [ %i.cj, %bb.i ], [ %i.cl, %bb.j ]
  %i.cm = getelementptr i8, ptr %.val, i64 3960
  %i.cn = load i8, ptr %i.cm, align 8
  %.val.i.i = load ptr, ptr %i.q, align 8         ; 2 uses
  %i.co = tail call i64 @ktime_get_raw() #10      ; 2 uses
  %i.cp = getelementptr i8, ptr %.val, i64 3944   ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = sub i64 %i.co, %i.cq                    ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 11000000
  br i1 %i.cs, label %.__gen5_ips_update.exit_crit_edge.i, label %bb.l

.__gen5_ips_update.exit_crit_edge.i:              ; preds = %bb.k
  %.phi.trans.insert.i = getelementptr i8, ptr %.val, i64 3952
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %__ips_gfx_val.exit

bb.l:                                             ; preds = %bb.k
  %i.ct = udiv i64 %i.cr, 1000000
  %i.cu = getelementptr i8, ptr %.val.i.i, i64 144
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call i32 %i.cv(ptr noundef %.val.i.i, i32 70388, i1 noundef zeroext true) #10, !inline_history !94
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = getelementptr i8, ptr %.val, i64 3936   ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = sub i64 %i.cx, %i.cz
  store i64 %i.cx, ptr %i.cy, align 8
  store i64 %i.co, ptr %i.cp, align 8
  %i.db = mul i64 %i.da, 1181
  %i.dc = mul nuw nsw i64 %i.ct, 10
  %i.dd = and i64 %i.dc, 4294967294
  %i.de = udiv i64 %i.db, %i.dd                   ; 2 uses
  %i.df = getelementptr i8, ptr %.val, i64 3952
  store i64 %i.de, ptr %i.df, align 8
  br label %__ips_gfx_val.exit

__ips_gfx_val.exit:                               ; preds = %.__gen5_ips_update.exit_crit_edge.i, %bb.l
  %i.dg = phi i64 [ %.pre.i, %.__gen5_ips_update.exit_crit_edge.i ], [ %i.de, %bb.l ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @mchdev_lock) #10
  tail call void @intel_runtime_pm_put_unchecked(ptr noundef %i.m) #10
  %i.dh = and i64 %i.bt, 1
  %.not.i.i.le = icmp eq i64 %i.dh, 0
  %i.di = tail call i32 @llvm.usub.sat.i32(i32 %.0.i.i.i, i32 1125)
  %.0.i.i.le = select i1 %.not.i.i.le, i32 %.0.i.i.i, i32 %i.di
  %i.dj = zext nneg i32 %.0.i.i.le to i64         ; 2 uses
  %i.dk = mul nuw nsw i64 %i.dj, 150142
  %i.dl = mul nuw i64 %i.dk, %.0.i18
  %i.dm = udiv i64 %i.dl, 10000
  %i.dn = add nsw i64 %i.dm, -78642
  %i.do = udiv i64 %i.dn, 100000
  %i.dp = zext i8 %i.cn to i64
  %i.dq = mul nuw nsw i64 %i.dp, %i.dj
  %i.dr = mul i64 %i.dq, %i.do
  %i.ds = udiv i64 %i.dr, 10000
  %i.dt = trunc i64 %i.ds to i32
  %i.du = udiv i32 %i.dt, 100
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = add i64 %i.dg, %i.dv
  br label %bb.m

bb.m:                                             ; preds = %__ips_gfx_val.exit, %mchdev_get.exit
  %.013.lcssa = phi i64 [ %.0.i16, %__ips_gfx_val.exit ], [ 0, %mchdev_get.exit ]
  %.012.lcssa = phi i64 [ %i.dw, %__ips_gfx_val.exit ], [ 0, %mchdev_get.exit ]
  tail call void @drm_dev_put(ptr noundef nonnull %i.a) #10
  %i.dx = add i64 %.012.lcssa, %.013.lcssa
  br label %bb.n

bb.n:                                             ; preds = %mchdev_get.exit.thread, %bb.m
  %.0 = phi i64 [ %i.dx, %bb.m ], [ 0, %mchdev_get.exit.thread ]
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_runtime_pm_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @i915_gpu_raise() #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #10
  %i.a = load volatile ptr, ptr @ips_mchdev, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %mchdev_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 4        ; 4 uses
  %i.c = load volatile i32, ptr %i.b, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.old1.not.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.b, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.i, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.d = add i32 %.0.i.i.i.i.i, 1
  %i.e = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.b, i32 %i.d, ptr elementtype(i32) %i.b, i32 %.0.i.i.i.i.i) #12, !srcloc !27 ; 2 uses
  %i.f = extractvalue { i8, i32 } %i.e, 0         ; 2 uses
  %i.g = icmp ult i8 %i.f, 2
  tail call void @llvm.assume(i1 %i.g)
  %i.h = trunc nuw i8 %i.f to i1
  br i1 %i.h, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, !prof !26

arch_atomic_try_cmpxchg.exit.i.i.i.i.i:           ; preds = %.preheader.i.i.i.i.i
  %i.i = extractvalue { i8, i32 } %i.e, 1         ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !7

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i:    ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i, %.preheader.i.i.i.i.i, %bb.b
  %.2.i.i.i.i.i = phi i32 [ 0, %bb.b ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.k = add i32 %.2.i.i.i.i.i, 1
  %i.l = or i32 %i.k, %.2.i.i.i.i.i
  %.not.i.i.i.i.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i.i.i.i.i, label %kref_get_unless_zero.exit.i, label %bb.c, !prof !26

bb.c:                                             ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  tail call void @refcount_warn_saturate(ptr noundef %i.b, i32 noundef 0) #10
  br label %kref_get_unless_zero.exit.i

kref_get_unless_zero.exit.i:                      ; preds = %bb.c, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i
  %.not8.i = icmp eq i32 %.2.i.i.i.i.i, 0
  br i1 %.not8.i, label %mchdev_get.exit.thread, label %mchdev_get.exit

mchdev_get.exit.thread:                           ; preds = %bb.a, %kref_get_unless_zero.exit.i
  tail call void @__rcu_read_unlock() #10
  br label %bb.f

mchdev_get.exit:                                  ; preds = %kref_get_unless_zero.exit.i
  tail call void @__rcu_read_unlock() #10
  %i.m = getelementptr i8, ptr %i.a, i64 3528
  %.val = load ptr, ptr %i.m, align 8             ; 2 uses
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @mchdev_lock) #10
  %i.n = getelementptr i8, ptr %.val, i64 3827    ; 2 uses
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = getelementptr i8, ptr %.val, i64 3828
  %i.q = load i8, ptr %i.p, align 4
  %i.r = icmp ult i8 %i.o, %i.q
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %mchdev_get.exit
  %i.s = add nuw i8 %i.o, 1
  store i8 %i.s, ptr %i.n, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %mchdev_get.exit
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @mchdev_lock) #10
  tail call void @drm_dev_put(ptr noundef nonnull %i.a) #10
  br label %bb.f

bb.f:                                             ; preds = %mchdev_get.exit.thread, %bb.e
  %.not10 = phi i1 [ false, %mchdev_get.exit.thread ], [ true, %bb.e ]
  ret i1 %.not10
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @i915_gpu_lower() #0 align 16 prefalign(16) {
bb.a:
  tail call void @__rcu_read_lock() #10
  %i.a = load volatile ptr, ptr @ips_mchdev, align 8 ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %mchdev_get.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 4        ; 4 uses
  %i.c = load volatile i32, ptr %i.b, align 4     ; 2 uses
  %.old1.not.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.old1.not.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.b, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.i, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.d = add i32 %.0.i.i.i.i.i, 1
  %i.e = tail call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.b, i32 %i.d, ptr elementtype(i32) %i.b, i32 %.0.i.i.i.i.i) #12, !srcloc !27 ; 2 uses
  %i.f = extractvalue { i8, i32 } %i.e, 0         ; 2 uses
  %i.g = icmp ult i8 %i.f, 2
end_hunk_0
