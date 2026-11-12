Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/sys?download=true
inline.NumInlined: 491
inline.NumDeleted: 196
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@__se_sys_prctl:bb.a
  br i1 %or.cond302.i, label %bb.cf, label %__do_sys_prctl.exit

bb.cf:                                            ; preds = %bb.ce
  %i.gv = tail call i32 @arch_prctl_set_branch_landing_pad_state(ptr noundef %i.d, i64 noundef %2) #14 ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %.not287.i = icmp eq i32 %i.gv, 0
  br i1 %.not287.i, label %bb.cg, label %prctl_get_thp_disable.exit.i

bb.cg:                                            ; preds = %bb.cf
  %i.gx = and i64 %2, 6
  %or.cond300.i = icmp eq i64 %i.gx, 4
  br i1 %or.cond300.i, label %bb.ch, label %prctl_get_thp_disable.exit.i

bb.ch:                                            ; preds = %bb.cg
  %i.gy = tail call i32 @arch_prctl_lock_branch_landing_pad_state(ptr noundef %i.d) #14
  %i.gz = sext i32 %i.gy to i64
  br label %prctl_get_thp_disable.exit.i

bb.ci:                                            ; preds = %bb.c
  tail call fastcc void @trace_task_prctl_unknown(i32 noundef %i.b, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #14, !srcloc !81
  br label %prctl_get_thp_disable.exit.i

prctl_get_thp_disable.exit.i:                     ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.cd, %bb.cb, %bb.ca, %bb.bz, %bb.bx, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bo, %mm_flags_test.exit.i.i.i, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bh, %bb.bg, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.av, %bb.at, %mm_flags_test.exit13.i.i, %mm_flags_test.exit.i.i, %bb.as, %bb.aq, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ad, %bb.z, %bb.y, %bb.w, %bb.w, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %copy_to_user.exit.i, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %.0279.i = phi i64 [ -22, %bb.ci ], [ 0, %bb.e ], [ %i.gz, %bb.ch ], [ %i.s, %bb.f ], [ %i.u, %bb.g ], [ -22, %bb.d ], [ 0, %bb.i ], [ -22, %bb.h ], [ -22, %bb.c ], [ -22, %bb.c ], [ -22, %bb.c ], [ -22, %bb.c ], [ -22, %bb.c ], [ 0, %bb.j ], [ -22, %bb.c ], [ -22, %bb.c ], [ 0, %bb.m ], [ 0, %copy_to_user.exit.i ], [ %spec.select.i, %bb.k ], [ -22, %bb.c ], [ %i.ah, %bb.p ], [ %i.aj, %bb.q ], [ %i.al, %bb.r ], [ %i.ao, %bb.s ], [ %i.aq, %bb.t ], [ %i.as, %bb.u ], [ 0, %bb.cg ], [ %i.au, %bb.v ], [ 0, %bb.w ], [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.ad ], [ 0, %bb.af ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ %i.bs, %bb.ak ], [ -22, %bb.c ], [ %i.bv, %bb.al ], [ %i.gw, %bb.cf ], [ 0, %bb.an ], [ 0, %bb.am ], [ %i.cr, %bb.ao ], [ 0, %bb.aq ], [ 0, %bb.w ], [ %i.dp, %bb.at ], [ 2, %bb.aj ], [ -22, %bb.c ], [ -22, %bb.c ], [ -22, %bb.c ], [ -22, %bb.c ], [ -22, %bb.c ], [ %i.dt, %bb.av ], [ %i.dw, %bb.ax ], [ -22, %bb.c ], [ -22, %bb.ay ], [ -22, %bb.az ], [ -22, %bb.ba ], [ -22, %bb.bb ], [ 0, %bb.bg ], [ 0, %bb.bh ], [ %i.ez, %bb.bk ], [ %i.fc, %bb.bl ], [ %i.fe, %bb.bm ], [ -22, %bb.bn ], [ -22, %bb.bc ], [ -22, %bb.bo ], [ -22, %bb.c ], [ %i.fu, %bb.br ], [ -22, %bb.bp ], [ -22, %bb.c ], [ -22, %bb.c ], [ %i.fz, %bb.bt ], [ %i.gd, %bb.bv ], [ %i.gh, %bb.bx ], [ %i.gk, %bb.bz ], [ %i.gm, %bb.ca ], [ -22, %bb.c ], [ %i.gs, %bb.cd ], [ -524, %bb.cb ], [ 0, %bb.w ], [ 1, %mm_flags_test.exit.i.i ], [ -22, %bb.as ], [ %i.dm, %mm_flags_test.exit13.i.i ], [ %.1.i.i.i, %mm_flags_test.exit.i.i.i ]
  br label %__do_sys_prctl.exit

__do_sys_prctl.exit:                              ; preds = %bb.b, %bb.c, %bb.c, %bb.l, %copy_to_user.exit.i, %bb.aa, %bb.ab, %bb.ac, %bb.ae, %bb.ai, %bb.ap, %bb.ar, %task_no_new_privs.exit.i, %bb.au, %bb.aw, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bi, %bb.bj, %bb.bo, %bb.bp, %bb.bq, %bb.bs, %bb.bu, %bb.bw, %bb.by, %bb.cb, %bb.cc, %bb.ce, %prctl_get_thp_disable.exit.i
  %.0.i = phi i64 [ %i.f, %bb.b ], [ %.0279.i, %prctl_get_thp_disable.exit.i ], [ -22, %bb.ce ], [ -14, %bb.l ], [ -14, %copy_to_user.exit.i ], [ -22, %bb.ae ], [ -22, %bb.aa ], [ -22, %bb.ac ], [ -22, %bb.ab ], [ -22, %bb.ai ], [ -22, %bb.ap ], [ %i.dc, %task_no_new_privs.exit.i ], [ -22, %bb.ar ], [ -22, %bb.c ], [ -22, %bb.au ], [ -22, %bb.aw ], [ -22, %bb.ay ], [ -22, %bb.az ], [ -22, %bb.ba ], [ -22, %bb.bb ], [ -1, %bb.bd ], [ -22, %bb.be ], [ -22, %bb.bc ], [ -1, %bb.bi ], [ -22, %bb.bf ], [ -22, %bb.bj ], [ -22, %bb.bo ], [ -22, %bb.bp ], [ -22, %bb.bq ], [ -22, %bb.bs ], [ -22, %bb.bu ], [ -22, %bb.bw ], [ -22, %bb.by ], [ -22, %bb.cb ], [ -22, %bb.cc ], [ -22, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__ia32_sys_prctl(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4294967295
  %i.j = getelementptr i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr i8, ptr %0, i64 112
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 4294967295
  %i.p = tail call fastcc i64 @__se_sys_prctl(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i, i64 noundef %i.l, i64 noundef %i.o) #14, !srcloc !82
  ret i64 %i.p
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -14, 1) i64 @__x64_sys_getcpu(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #16, !srcloc !27 ; 2 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.b to ptr
  %i.h = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.i = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.g, i32 %i.f, i64 4, i64 %i.h) #16, !srcloc !28 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = trunc i64 %i.l to i32
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not28.i.i = icmp eq i64 %i.d, 0
  br i1 %.not28.i.i, label %__se_sys_getcpu.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sext i32 %i.f to i64
  %i.o = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8
  %i.q = add i64 %i.p, ptrtoint (ptr @numa_node to i64)
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load i32, ptr %i.r, align 4
  %i.t = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.u = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.e, i32 %i.s, i64 4, i64 %i.t) #16, !srcloc !29 ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  %i.x = ptrtoint ptr %i.v to i64
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.w)
  %i.y = trunc i64 %i.x to i32
  %i.z = or i32 %.0.i.i, %i.y
  br label %__se_sys_getcpu.exit

__se_sys_getcpu.exit:                             ; preds = %bb.c, %bb.d
  %.1.i.i = phi i32 [ %i.z, %bb.d ], [ %.0.i.i, %bb.c ]
  %.not29.i.i = icmp eq i32 %.1.i.i, 0
  %i.aa = select i1 %.not29.i.i, i64 0, i64 -14
  ret i64 %i.aa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -14, 1) i64 @__ia32_sys_getcpu(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295                 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295                 ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @cpu_number) #16, !srcloc !27 ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.c to ptr
  %i.j = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.k = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.i, i32 %i.h, i64 4, i64 %i.j) #16, !srcloc !28 ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = trunc i64 %i.n to i32
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.o, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not28.i.i = icmp eq i64 %i.f, 0
  br i1 %.not28.i.i, label %__se_sys_getcpu.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sext i32 %i.h to i64
  %i.q = getelementptr [8 x i8], ptr @__per_cpu_offset, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, ptrtoint (ptr @numa_node to i64)
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i32, ptr %i.t, align 4
  %i.v = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.w = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %i.g, i32 %i.u, i64 4, i64 %i.v) #16, !srcloc !29 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = ptrtoint ptr %i.x to i64
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.y)
  %i.aa = trunc i64 %i.z to i32
  %i.ab = or i32 %.0.i.i, %i.aa
  br label %__se_sys_getcpu.exit

__se_sys_getcpu.exit:                             ; preds = %bb.c, %bb.d
  %.1.i.i = phi i32 [ %i.ab, %bb.d ], [ %.0.i.i, %bb.c ]
  %.not29.i.i = icmp eq i32 %.1.i.i, 0
  %i.ac = select i1 %.not29.i.i, i64 0, i64 -14
  ret i64 %i.ac
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef range(i64 -14, 1) i64 @__x64_sys_sysinfo(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.sysinfo, align 8            ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %1, i8 0, i64 112, i1 false), !annotation !20
  call fastcc void @do_sysinfo(ptr noundef nonnull %1) #14
  %i.d = call i64 @_copy_to_user(ptr noundef %i.c, ptr noundef nonnull %1, i64 noundef 112) #13
  %.fr.i.i = freeze i64 %i.d
  %.not.i.i = icmp eq i64 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.not.i.i, i64 0, i64 -14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i64 %spec.select.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef range(i64 -14, 1) i64 @__ia32_sys_sysinfo(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.sysinfo, align 8            ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = inttoptr i64 %i.c to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %1, i8 0, i64 112, i1 false), !annotation !20
  call fastcc void @do_sysinfo(ptr noundef nonnull %1) #14
  %i.e = call i64 @_copy_to_user(ptr noundef %i.d, ptr noundef nonnull %1, i64 noundef 112) #13
  %.fr.i.i = freeze i64 %i.e
  %.not.i.i = icmp eq i64 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.not.i.i, i64 0, i64 -14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i64 %spec.select.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef range(i64 -14, 1) i64 @__ia32_compat_sys_sysinfo(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.sysinfo, align 8            ; 25 uses
  %2 = alloca %struct.compat_sysinfo, align 4     ; 17 uses
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %1, i8 0, i64 112, i1 false), !annotation !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call fastcc void @do_sysinfo(ptr noundef nonnull %1) #14
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %3 = load i64, ptr %i.c, align 8                ; 3 uses
  %.not.i.i = icmp ult i64 %3, 4294967296
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %4 = load i64, ptr %i.d, align 8                ; 3 uses
  %.not11.i.i = icmp ult i64 %4, 4294967296
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not11.i.i, i1 false
  br i1 %or.cond.i.i, label %.copy_to_user.exit_crit_edge.i.i, label %.preheader.i.i

.copy_to_user.exit_crit_edge.i.i:                 ; preds = %bb.a
  %.phi.trans.insert.i.i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.pre.i.i.a = load i64, ptr %.phi.trans.insert.i.i.a, align 8
  %.phi.trans.insert21.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.pre22.i.i = load i64, ptr %.phi.trans.insert21.i.i, align 8
  %.phi.trans.insert23.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.pre24.i.i = load i64, ptr %.phi.trans.insert23.i.i, align 8
  %.phi.trans.insert25.i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre26.i.i = load i64, ptr %.phi.trans.insert25.i.i, align 8
  %.phi.trans.insert27.i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.pre28.i.i = load i64, ptr %.phi.trans.insert27.i.i, align 8
  %.phi.trans.insert29.i.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.pre30.i.i = load i64, ptr %.phi.trans.insert29.i.i, align 8
  %.phi.trans.insert31.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.pre32.i.i = load i32, ptr %.phi.trans.insert31.i.i, align 8
  br label %__se_compat_sys_sysinfo.exit

.preheader.i.i:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.promoted.i.i = load i32, ptr %i.e, align 8    ; 3 uses
  %i.f = icmp ult i32 %.promoted.i.i, 4096
  br i1 %i.f, label %.lr.ph.i.i, label %bb.b

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.019.i.i = phi i32 [ %i.i, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %i.g = phi i32 [ %i.h, %.lr.ph.i.i ], [ %.promoted.i.i, %.preheader.i.i ] ; 2 uses
  %i.h = shl nuw nsw i32 %i.g, 1                  ; 3 uses
  %i.i = add i32 %.019.i.i, 1                     ; 2 uses
  %i.j = icmp samesign ult i32 %i.g, 2048
  br i1 %i.j, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !83

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  store i32 %i.h, ptr %i.e, align 8
  %i.k = zext i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i, %.preheader.i.i
  %i.l = phi i32 [ %i.h, %._crit_edge.i.i ], [ %.promoted.i.i, %.preheader.i.i ]
  %.0.lcssa.i.i = phi i64 [ %i.k, %._crit_edge.i.i ], [ 0, %.preheader.i.i ] ; 8 uses
  %i.m = lshr i64 %3, %.0.lcssa.i.i               ; 2 uses
  store i64 %i.m, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = lshr i64 %i.o, %.0.lcssa.i.i             ; 2 uses
  store i64 %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = lshr i64 %i.r, %.0.lcssa.i.i             ; 2 uses
  store i64 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i64 %i.u, %.0.lcssa.i.i             ; 2 uses
  store i64 %i.v, ptr %i.t, align 8
  %i.w = lshr i64 %4, %.0.lcssa.i.i               ; 2 uses
  store i64 %i.w, ptr %i.d, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = lshr i64 %i.y, %.0.lcssa.i.i             ; 2 uses
  store i64 %i.z, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = lshr i64 %i.ab, %.0.lcssa.i.i           ; 2 uses
  store i64 %i.ac, ptr %i.aa, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = lshr i64 %i.ae, %.0.lcssa.i.i           ; 2 uses
  store i64 %i.af, ptr %i.ad, align 8
  br label %__se_compat_sys_sysinfo.exit

__se_compat_sys_sysinfo.exit:                     ; preds = %.copy_to_user.exit_crit_edge.i.i, %bb.b
  %i.ag = phi i32 [ %.pre32.i.i, %.copy_to_user.exit_crit_edge.i.i ], [ %i.l, %bb.b ]
  %i.ah = phi i64 [ %.pre30.i.i, %.copy_to_user.exit_crit_edge.i.i ], [ %i.af, %bb.b ]
  %i.ai = phi i64 [ %.pre28.i.i, %.copy_to_user.exit_crit_edge.i.i ], [ %i.ac, %bb.b ]
  %i.aj = phi i64 [ %.pre26.i.i, %.copy_to_user.exit_crit_edge.i.i ], [ %i.z, %bb.b ]
  %i.ak = phi i64 [ %4, %.copy_to_user.exit_crit_edge.i.i ], [ %i.w, %bb.b ]
  %i.al = phi i64 [ %.pre24.i.i, %.copy_to_user.exit_crit_edge.i.i ], [ %i.v, %bb.b ]
  %i.am = phi i64 [ %.pre22.i.i, %.copy_to_user.exit_crit_edge.i.i ], [ %i.s, %bb.b ]
  %i.an = phi i64 [ %.pre.i.i.a, %.copy_to_user.exit_crit_edge.i.i ], [ %i.p, %bb.b ]
  %i.ao = phi i64 [ %3, %.copy_to_user.exit_crit_edge.i.i ], [ %i.m, %bb.b ]
  %i.ap = and i64 %i.b, 4294967295
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.ar, i8 0, i64 24, i1 false)
  %i.as = load i64, ptr %1, align 8
  %i.at = trunc i64 %i.as to i32
  store i32 %i.at, ptr %2, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = trunc i64 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = trunc i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ba, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = trunc i64 %i.ao to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bg, ptr %i.bh, align 4
  %i.bi = trunc i64 %i.an to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.bi, ptr %i.bj, align 4
  %i.bk = trunc i64 %i.am to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.bk, ptr %i.bl, align 4
  %i.bm = trunc i64 %i.al to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.bm, ptr %i.bn, align 4
  %i.bo = trunc i64 %i.ak to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.bo, ptr %i.bp, align 4
  %i.bq = trunc i64 %i.aj to i32
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 %i.bq, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bt = load i16, ptr %i.bs, align 8
  store i16 %i.bt, ptr %i.ar, align 4
  %i.bu = trunc i64 %i.ai to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.bu, ptr %i.bv, align 4
  %i.bw = trunc i64 %i.ah to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.bw, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.ag, ptr %i.by, align 4
  %i.bz = call i64 @_copy_to_user(ptr noundef %i.aq, ptr noundef nonnull %2, i64 noundef 64) #13
  %.fr.i.i = freeze i64 %i.bz
  %.not12.i.i = icmp eq i64 %.fr.i.i, 0
  %spec.select.i.i = select i1 %.not12.i.i, i64 0, i64 -14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  ret i64 %spec.select.i.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @find_vpid(i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @find_user(i32) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @free_uid(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @can_nice(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_task_setnice(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_uid(i32) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @is_rlimit_overlimit(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @jiffies_64_to_clock_t(i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @nsec_to_clock_t(i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__copy_overflow(i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @clock_t_to_jiffies(i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_task_setpgid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @change_pid(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_task_getpgid(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @security_task_getsid(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @uts_proc_notify(i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @do_prlimit(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ugt i32 %1, 15
  br i1 %i.a, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 asm sideeffect "cmp $1,$2; sbb $0,$0", "=r,ir,r,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 16, i32 %1) #16, !srcloc !22
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %1, %i.c                         ; 4 uses
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %2, align 8
  %i.f = getelementptr i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %i.d, 7
  %i.j = load i32, ptr @sysctl_nr_open, align 4
  %i.k = zext i32 %i.j to i64
  %i.l = icmp ugt i64 %i.g, %i.k
  %or.cond56 = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond56, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.m = getelementptr i8, ptr %0, i64 2096
  %i.n = load ptr, ptr %i.m, align 16
  %i.o = getelementptr i8, ptr %i.n, i64 688
  %i.p = zext nneg i32 %i.d to i64
  %i.q = getelementptr [16 x i8], ptr %i.o, i64 %i.p ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 1592       ; 3 uses
end_hunk_0
