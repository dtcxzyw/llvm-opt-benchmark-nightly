Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_guc_log?download=true
inline.NumInlined: 147
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@guc_log_copy_debuglogs_for_relay:bb.a
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i105.i = icmp eq ptr %i.w, null
  br i1 %.not.i105.i, label %bb.f, label %dev_name.exit108.i

bb.f:                                             ; preds = %__drm_to_dev.exit104.i
  %.val.i107.i = load ptr, ptr %i.u, align 8
  br label %dev_name.exit108.i

dev_name.exit108.i:                               ; preds = %bb.f, %__drm_to_dev.exit104.i
  %.0.i106.i = phi ptr [ %.val.i107.i, %bb.f ], [ %i.w, %__drm_to_dev.exit104.i ]
  %i.x = load i32, ptr %i.k, align 8
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.l, ptr noundef %i.q, ptr noundef %.0.i106.i, i32 noundef %i.x, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #10
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !24
  br label %_guc_log_copy_debuglogs_for_relay.exit

.critedge.i:                                      ; preds = %bb.a
  %i.y = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %.val.i = load ptr, ptr %i.y, align 8
  tail call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #12, !srcloc !25
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !26
  %i.z = tail call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @this_cpu_off) #14, !srcloc !27
  %i.aa = getelementptr i8, ptr %.val.i, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = add i64 %i.z, %i.ac
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load ptr, ptr %i.ae, align 8            ; 4 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16     ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 16           ; 3 uses
  %i.ai = getelementptr i8, ptr %i.af, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp ugt i64 %i.ah, %i.al
  br i1 %i.am, label %bb.g, label %bb.h, !prof !20

bb.g:                                             ; preds = %.critedge.i
  %i.an = tail call i64 @relay_switch_subbuf(ptr noundef %i.af, i64 noundef 0) #10 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.i, label %bb.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g
  %.pre.i.i.i = load i64, ptr %i.ag, align 16     ; 2 uses
  %.pre20.i.i.i = add i64 %.pre.i.i.i, %i.an
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %.critedge.i
  %.pre-phi.i.i.i = phi i64 [ %.pre20.i.i.i, %._crit_edge.i.i.i ], [ %i.ah, %.critedge.i ]
  %i.ao = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ah, %.critedge.i ]
  %i.ap = getelementptr i8, ptr %i.af, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ao
  store i64 %.pre-phi.i.i.i, ptr %i.ag, align 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.018.i.i.i = phi ptr [ %i.ar, %bb.h ], [ null, %bb.g ] ; 16 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !28
  %i.as = tail call i8 asm sideeffect "decl %gs:$0", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, ptr nonnull elementtype(i32) @__preempt_count) #12, !srcloc !29 ; 2 uses
  %i.at = icmp ult i8 %i.as, 2
  tail call void @llvm.assume(i1 %i.at)
  %i.au = trunc nuw i8 %i.as to i1
  br i1 %i.au, label %bb.j, label %guc_get_write_buffer.exit.i, !prof !20

bb.j:                                             ; preds = %bb.i
  %i.av = tail call i64 @llvm.read_register.i64(metadata !0)
  %i.aw = tail call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %i.av) #12, !srcloc !30
  tail call void @llvm.write_register.i64(metadata !0, i64 %i.aw)
  br label %guc_get_write_buffer.exit.i

guc_get_write_buffer.exit.i:                      ; preds = %bb.j, %bb.i
  %.not.i = icmp eq ptr %.018.i.i.i, null
  br i1 %.not.i, label %bb.k, label %bb.o, !prof !20

bb.k:                                             ; preds = %guc_get_write_buffer.exit.i
  %i.ax = tail call i32 @___ratelimit(ptr noundef nonnull @_guc_log_copy_debuglogs_for_relay._rs, ptr noundef nonnull @__func__._guc_log_copy_debuglogs_for_relay) #10
  %.not97.i = icmp eq i32 %i.ax, 0
  br i1 %.not97.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i109.i = icmp eq ptr %i.ay, null
  br i1 %.not.i109.i, label %__drm_to_dev.exit110.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  br label %__drm_to_dev.exit110.i

__drm_to_dev.exit110.i:                           ; preds = %bb.m, %bb.l
  %i.bb = phi ptr [ %i.ba, %bb.m ], [ null, %bb.l ]
  %i.bc = getelementptr i8, ptr %0, i64 3896
  %i.bd = load i32, ptr %i.bc, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.bb, ptr noundef nonnull @.str.37, i32 noundef %i.bd) #11
  br label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit110.i, %bb.k
  %i.be = getelementptr i8, ptr %0, i64 176       ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8
  br label %_guc_log_copy_debuglogs_for_relay.exit

bb.o:                                             ; preds = %guc_get_write_buffer.exit.i
  %i.bh = getelementptr i8, ptr %i.e, i64 4096    ; 3 uses
  %i.bi = getelementptr i8, ptr %.018.i.i.i, i64 4096 ; 3 uses
  %i.bj = getelementptr i8, ptr %0, i64 184       ; 2 uses
  %i.bk = getelementptr i8, ptr %0, i64 3896      ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 1
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 1 ; 5 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.bl = load i64, ptr %.sroa.6.0..sroa_idx.i, align 1
  %.sroa.625.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.625.0.copyload.i = load i32, ptr %.sroa.625.0..sroa_idx.i, align 1 ; 7 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 1
  %.sroa.730.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 28 ; 3 uses
  %.sroa.730.0.copyload.i = load i32, ptr %.sroa.730.0..sroa_idx.i, align 1 ; 3 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 1
  %i.bm = getelementptr i8, ptr %0, i64 80        ; 6 uses
  %i.bn = load i8, ptr %i.bm, align 8, !range !11, !noundef !12
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %.guc_log_init_sizes.exit_crit_edge.i.i, label %bb.p

.guc_log_init_sizes.exit_crit_edge.i.i:           ; preds = %bb.o
  %.phi.trans.insert.i.i = getelementptr i8, ptr %0, i64 48
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8
  br label %intel_guc_get_log_buffer_size.exit9

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr i8, ptr %0, i64 32
  store i32 8192, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %0, i64 48
  store i32 65536, ptr %i.bq, align 8
  %i.br = getelementptr i8, ptr %0, i64 64
  store i32 1048576, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %0, i64 36
  store i32 4096, ptr %i.bs, align 4
  %i.bt = getelementptr i8, ptr %0, i64 44
  store i32 0, ptr %i.bt, align 4
  %i.bu = getelementptr i8, ptr %0, i64 40
  store i32 1, ptr %i.bu, align 8
  %i.bv = getelementptr i8, ptr %0, i64 52
  store i32 4096, ptr %i.bv, align 4
  %i.bw = getelementptr i8, ptr %0, i64 60
  store i32 0, ptr %i.bw, align 4
  %i.bx = getelementptr i8, ptr %0, i64 56
  store i32 15, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %0, i64 68
  store i32 1048576, ptr %i.by, align 4
  %i.bz = getelementptr i8, ptr %0, i64 76
  store i32 4, ptr %i.bz, align 4
  %i.ca = getelementptr i8, ptr %0, i64 72
  store i32 0, ptr %i.ca, align 8
  store i8 1, ptr %i.bm, align 8
  br label %intel_guc_get_log_buffer_size.exit9

intel_guc_get_log_buffer_size.exit9:              ; preds = %.guc_log_init_sizes.exit_crit_edge.i.i, %bb.p
  %.0.i8 = phi i32 [ 65536, %bb.p ], [ %.pre.i.i, %.guc_log_init_sizes.exit_crit_edge.i.i ] ; 6 uses
  %i.cb = lshr i32 %.sroa.730.0.copyload.i, 1
  %i.cc = and i32 %i.cb, 15                       ; 5 uses
  %i.cd = and i32 %.sroa.730.0.copyload.i, 1
  %i.ce = getelementptr i8, ptr %0, i64 192       ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = add i32 %i.cf, %i.cd
  store i32 %i.cg, ptr %i.ce, align 8
  %i.ch = load i32, ptr %i.bj, align 8            ; 2 uses
  %.not.i111.not.i = icmp eq i32 %i.cc, %i.ch     ; 2 uses
  br i1 %.not.i111.not.i, label %intel_guc_check_log_buf_overflow.exit.i, label %bb.q

bb.q:                                             ; preds = %intel_guc_get_log_buffer_size.exit9
  %i.ci = getelementptr i8, ptr %0, i64 188
  store i32 %i.cc, ptr %i.ci, align 4
  %i.cj = icmp ult i32 %i.cc, %i.ch
  %i.ck = or disjoint i32 %i.cc, 16
  %spec.select.i.i = select i1 %i.cj, i32 %i.ck, i32 %i.cc
  store i32 %spec.select.i.i, ptr %i.bj, align 8
  %i.cl = tail call i32 @___ratelimit(ptr noundef nonnull @intel_guc_check_log_buf_overflow._rs, ptr noundef nonnull @__func__.intel_guc_check_log_buf_overflow) #10
  %.not19.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not19.i.i, label %intel_guc_check_log_buf_overflow.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = load ptr, ptr %i.b, align 8
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = load i32, ptr %i.bk, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %i.co, ptr noundef nonnull @.str, i32 noundef %i.cp) #11
  br label %intel_guc_check_log_buf_overflow.exit.i

intel_guc_check_log_buf_overflow.exit.i:          ; preds = %bb.r, %bb.q, %intel_guc_get_log_buffer_size.exit9
  store i32 %.sroa.625.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 1
  %i.cq = load i32, ptr %.sroa.730.0..sroa_idx.i, align 1
  %i.cr = and i32 %i.cq, -2
  store i32 %i.cr, ptr %.sroa.730.0..sroa_idx.i, align 1
  %i.cs = getelementptr i8, ptr %i.e, i64 36
  store i64 %.sroa.0.0.copyload.i, ptr %.018.i.i.i, align 1
  %.sroa.5.0..sroa_idx22.i = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx22.i, align 1
  %.sroa.6.0..sroa_idx24.i = getelementptr i8, ptr %.018.i.i.i, i64 12 ; 2 uses
  store i64 %i.bl, ptr %.sroa.6.0..sroa_idx24.i, align 1
  %.sroa.625.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 20
  store i32 %.sroa.625.0.copyload.i, ptr %.sroa.625.0..sroa_idx26.i, align 1
  %.sroa.7.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 24
  store i32 %.sroa.7.0.copyload.i, ptr %.sroa.7.0..sroa_idx28.i, align 1
  %.sroa.730.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 28
  store i32 %.sroa.730.0.copyload.i, ptr %.sroa.730.0..sroa_idx31.i, align 1
  %.sroa.9.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 32
  store i32 %.sroa.9.0.copyload.i, ptr %.sroa.9.0..sroa_idx34.i, align 1
  store i32 %.sroa.625.0.copyload.i, ptr %.sroa.6.0..sroa_idx24.i, align 1
  %i.ct = getelementptr i8, ptr %.018.i.i.i, i64 36
  br i1 %.not.i111.not.i, label %bb.s, label %.thread.i, !prof !21

bb.s:                                             ; preds = %intel_guc_check_log_buf_overflow.exit.i
  %i.cu = icmp ugt i32 %.sroa.5.0.copyload.i, %.0.i8
  %i.cv = icmp ugt i32 %.sroa.625.0.copyload.i, %.0.i8
  %i.cw = select i1 %i.cu, i1 true, i1 %i.cv, !prof !20
  br i1 %i.cw, label %bb.t, label %bb.v, !prof !20

bb.t:                                             ; preds = %bb.s
  %i.cx = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i112.i = icmp eq ptr %i.cx, null
  br i1 %.not.i112.i, label %__drm_to_dev.exit113.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  br label %__drm_to_dev.exit113.i

__drm_to_dev.exit113.i:                           ; preds = %bb.u, %bb.t
  %i.da = phi ptr [ %i.cz, %bb.u ], [ null, %bb.t ]
  %i.db = load i32, ptr %i.bk, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.da, ptr noundef nonnull @.str.38, i32 noundef %i.db) #11
  br label %.thread.i

bb.v:                                             ; preds = %bb.s
  %i.dc = icmp ugt i32 %.sroa.5.0.copyload.i, %.sroa.625.0.copyload.i
  br i1 %i.dc, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.dd = zext i32 %.sroa.625.0.copyload.i to i64
  %i.de = tail call zeroext i1 @i915_memcpy_from_wc(ptr noundef %i.bi, ptr noundef %i.bh, i64 noundef %i.dd) #10 ; 0 uses
  br label %.thread.i

.thread.i:                                        ; preds = %bb.w, %bb.v, %__drm_to_dev.exit113.i, %intel_guc_check_log_buf_overflow.exit.i
  %.0121.i = phi i32 [ %.sroa.5.0.copyload.i, %bb.w ], [ %.sroa.5.0.copyload.i, %bb.v ], [ 0, %__drm_to_dev.exit113.i ], [ 0, %intel_guc_check_log_buf_overflow.exit.i ] ; 2 uses
  %.pn.i = phi i32 [ %.0.i8, %bb.w ], [ %.sroa.625.0.copyload.i, %bb.v ], [ %.0.i8, %__drm_to_dev.exit113.i ], [ %.0.i8, %intel_guc_check_log_buf_overflow.exit.i ]
  %.091.i = sub i32 %.pn.i, %.0121.i
  %i.df = zext i32 %.0121.i to i64                ; 2 uses
  %i.dg = getelementptr i8, ptr %i.bi, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.bh, i64 %i.df
  %i.di = zext i32 %.091.i to i64
  %i.dj = tail call zeroext i1 @i915_memcpy_from_wc(ptr noundef %i.dg, ptr noundef %i.dh, i64 noundef %i.di) #10 ; 0 uses
  %i.dk = zext i32 %.0.i8 to i64                  ; 2 uses
  %i.dl = getelementptr i8, ptr %i.bh, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.bi, i64 %i.dk  ; 2 uses
  %.sroa.0.0.copyload.1.i = load i64, ptr %i.cs, align 1
  %.sroa.5.0..sroa_idx.1.i = getelementptr i8, ptr %i.e, i64 44 ; 2 uses
  %.sroa.5.0.copyload.1.i = load i32, ptr %.sroa.5.0..sroa_idx.1.i, align 1 ; 5 uses
  %.sroa.6.0..sroa_idx.1.i = getelementptr i8, ptr %i.e, i64 48
  %i.dn = load i64, ptr %.sroa.6.0..sroa_idx.1.i, align 1
  %.sroa.625.0..sroa_idx.1.i = getelementptr i8, ptr %i.e, i64 56
  %.sroa.625.0.copyload.1.i = load i32, ptr %.sroa.625.0..sroa_idx.1.i, align 1 ; 7 uses
  %.sroa.7.0..sroa_idx.1.i = getelementptr i8, ptr %i.e, i64 60
  %.sroa.7.0.copyload.1.i = load i32, ptr %.sroa.7.0..sroa_idx.1.i, align 1
  %.sroa.730.0..sroa_idx.1.i = getelementptr i8, ptr %i.e, i64 64 ; 3 uses
  %.sroa.730.0.copyload.1.i = load i32, ptr %.sroa.730.0..sroa_idx.1.i, align 1 ; 3 uses
  %.sroa.9.0..sroa_idx.1.i = getelementptr i8, ptr %i.e, i64 68
  %.sroa.9.0.copyload.1.i = load i32, ptr %.sroa.9.0..sroa_idx.1.i, align 1
  %i.do = load i8, ptr %i.bm, align 8, !range !11, !noundef !12
  %i.dp = trunc nuw i8 %i.do to i1
  %.phi.trans.insert.i12.i = getelementptr i8, ptr %0, i64 32 ; 3 uses
  br i1 %i.dp, label %.guc_log_init_sizes.exit_crit_edge.i13.i, label %bb.x

.guc_log_init_sizes.exit_crit_edge.i13.i:         ; preds = %.thread.i
  %.pre.i14.i = load i32, ptr %.phi.trans.insert.i12.i, align 8
  br label %intel_guc_get_log_buffer_size.exit

bb.x:                                             ; preds = %.thread.i
  store i32 8192, ptr %.phi.trans.insert.i12.i, align 8
  %i.dq = getelementptr i8, ptr %0, i64 48
  store i32 65536, ptr %i.dq, align 8
  %i.dr = getelementptr i8, ptr %0, i64 64
  store i32 1048576, ptr %i.dr, align 8
  %i.ds = getelementptr i8, ptr %0, i64 36
  store i32 4096, ptr %i.ds, align 4
  %i.dt = getelementptr i8, ptr %0, i64 44
  store i32 0, ptr %i.dt, align 4
  %i.du = getelementptr i8, ptr %0, i64 40
  store i32 1, ptr %i.du, align 8
  %i.dv = getelementptr i8, ptr %0, i64 52
  store i32 4096, ptr %i.dv, align 4
  %i.dw = getelementptr i8, ptr %0, i64 60
  store i32 0, ptr %i.dw, align 4
  %i.dx = getelementptr i8, ptr %0, i64 56
  store i32 15, ptr %i.dx, align 8
  %i.dy = getelementptr i8, ptr %0, i64 68
  store i32 1048576, ptr %i.dy, align 4
  %i.dz = getelementptr i8, ptr %0, i64 76
  store i32 4, ptr %i.dz, align 4
  %i.ea = getelementptr i8, ptr %0, i64 72
  store i32 0, ptr %i.ea, align 8
  store i8 1, ptr %i.bm, align 8
  br label %intel_guc_get_log_buffer_size.exit

intel_guc_get_log_buffer_size.exit:               ; preds = %.guc_log_init_sizes.exit_crit_edge.i13.i, %bb.x
  %.0.i = phi i32 [ %.pre.i14.i, %.guc_log_init_sizes.exit_crit_edge.i13.i ], [ 8192, %bb.x ] ; 5 uses
  %i.eb = lshr i32 %.sroa.730.0.copyload.1.i, 1
  %i.ec = and i32 %i.eb, 15                       ; 5 uses
  %i.ed = and i32 %.sroa.730.0.copyload.1.i, 1
  %i.ee = getelementptr i8, ptr %0, i64 204       ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = add i32 %i.ef, %i.ed
  store i32 %i.eg, ptr %i.ee, align 4
  %i.eh = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4            ; 2 uses
  %.not.i111.not.1.i = icmp eq i32 %i.ec, %i.ei   ; 2 uses
  br i1 %.not.i111.not.1.i, label %intel_guc_check_log_buf_overflow.exit.1.i, label %bb.y

bb.y:                                             ; preds = %intel_guc_get_log_buffer_size.exit
  %i.ej = getelementptr i8, ptr %0, i64 200
  store i32 %i.ec, ptr %i.ej, align 8
  %i.ek = icmp ult i32 %i.ec, %i.ei
  %i.el = or disjoint i32 %i.ec, 16
  %spec.select.i.1.i = select i1 %i.ek, i32 %i.el, i32 %i.ec
  store i32 %spec.select.i.1.i, ptr %i.eh, align 4
  %i.em = tail call i32 @___ratelimit(ptr noundef nonnull @intel_guc_check_log_buf_overflow._rs, ptr noundef nonnull @__func__.intel_guc_check_log_buf_overflow) #10
  %.not19.i.1.i = icmp eq i32 %i.em, 0
  br i1 %.not19.i.1.i, label %intel_guc_check_log_buf_overflow.exit.1.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.en = load ptr, ptr %i.b, align 8
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = load i32, ptr %i.bk, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %i.ep, ptr noundef nonnull @.str, i32 noundef %i.eq) #11
  br label %intel_guc_check_log_buf_overflow.exit.1.i

intel_guc_check_log_buf_overflow.exit.1.i:        ; preds = %bb.z, %bb.y, %intel_guc_get_log_buffer_size.exit
  store i32 %.sroa.625.0.copyload.1.i, ptr %.sroa.5.0..sroa_idx.1.i, align 1
  %i.er = load i32, ptr %.sroa.730.0..sroa_idx.1.i, align 1
  %i.es = and i32 %i.er, -2
  store i32 %i.es, ptr %.sroa.730.0..sroa_idx.1.i, align 1
  store i64 %.sroa.0.0.copyload.1.i, ptr %i.ct, align 1
  %.sroa.5.0..sroa_idx22.1.i = getelementptr i8, ptr %.018.i.i.i, i64 44
  store i32 %.sroa.5.0.copyload.1.i, ptr %.sroa.5.0..sroa_idx22.1.i, align 1
  %.sroa.6.0..sroa_idx24.1.i = getelementptr i8, ptr %.018.i.i.i, i64 48 ; 2 uses
  store i64 %i.dn, ptr %.sroa.6.0..sroa_idx24.1.i, align 1
  %.sroa.625.0..sroa_idx26.1.i = getelementptr i8, ptr %.018.i.i.i, i64 56
  store i32 %.sroa.625.0.copyload.1.i, ptr %.sroa.625.0..sroa_idx26.1.i, align 1
  %.sroa.7.0..sroa_idx28.1.i = getelementptr i8, ptr %.018.i.i.i, i64 60
  store i32 %.sroa.7.0.copyload.1.i, ptr %.sroa.7.0..sroa_idx28.1.i, align 1
  %.sroa.730.0..sroa_idx31.1.i = getelementptr i8, ptr %.018.i.i.i, i64 64
  store i32 %.sroa.730.0.copyload.1.i, ptr %.sroa.730.0..sroa_idx31.1.i, align 1
  %.sroa.9.0..sroa_idx34.1.i = getelementptr i8, ptr %.018.i.i.i, i64 68
  store i32 %.sroa.9.0.copyload.1.i, ptr %.sroa.9.0..sroa_idx34.1.i, align 1
  store i32 %.sroa.625.0.copyload.1.i, ptr %.sroa.6.0..sroa_idx24.1.i, align 1
  br i1 %.not.i111.not.1.i, label %bb.aa, label %.thread.1.i, !prof !21

bb.aa:                                            ; preds = %intel_guc_check_log_buf_overflow.exit.1.i
  %i.et = icmp ugt i32 %.sroa.5.0.copyload.1.i, %.0.i
  %i.eu = icmp ugt i32 %.sroa.625.0.copyload.1.i, %.0.i
  %i.ev = select i1 %i.et, i1 true, i1 %i.eu, !prof !20
  br i1 %i.ev, label %bb.ad, label %bb.ab, !prof !20

bb.ab:                                            ; preds = %bb.aa
  %i.ew = icmp ugt i32 %.sroa.5.0.copyload.1.i, %.sroa.625.0.copyload.1.i
  br i1 %i.ew, label %bb.ac, label %.thread.1.i

bb.ac:                                            ; preds = %bb.ab
  %i.ex = zext i32 %.sroa.625.0.copyload.1.i to i64
  %i.ey = tail call zeroext i1 @i915_memcpy_from_wc(ptr noundef %i.dm, ptr noundef %i.dl, i64 noundef %i.ex) #10 ; 0 uses
  br label %.thread.1.i

bb.ad:                                            ; preds = %bb.aa
  %i.ez = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i112.1.i = icmp eq ptr %i.ez, null
  br i1 %.not.i112.1.i, label %__drm_to_dev.exit113.1.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  br label %__drm_to_dev.exit113.1.i

__drm_to_dev.exit113.1.i:                         ; preds = %bb.ae, %bb.ad
  %i.fc = phi ptr [ %i.fb, %bb.ae ], [ null, %bb.ad ]
  %i.fd = load i32, ptr %i.bk, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.fc, ptr noundef nonnull @.str.38, i32 noundef %i.fd) #11
  br label %.thread.1.i

.thread.1.i:                                      ; preds = %__drm_to_dev.exit113.1.i, %bb.ac, %bb.ab, %intel_guc_check_log_buf_overflow.exit.1.i
  %.0121.1.i = phi i32 [ %.sroa.5.0.copyload.1.i, %bb.ac ], [ %.sroa.5.0.copyload.1.i, %bb.ab ], [ 0, %__drm_to_dev.exit113.1.i ], [ 0, %intel_guc_check_log_buf_overflow.exit.1.i ] ; 2 uses
  %.pn.1.i = phi i32 [ %.0.i, %bb.ac ], [ %.sroa.625.0.copyload.1.i, %bb.ab ], [ %.0.i, %__drm_to_dev.exit113.1.i ], [ %.0.i, %intel_guc_check_log_buf_overflow.exit.1.i ]
  %.091.1.i = sub i32 %.pn.1.i, %.0121.1.i
  %i.fe = zext i32 %.0121.1.i to i64              ; 2 uses
  %i.ff = getelementptr i8, ptr %i.dm, i64 %i.fe
  %i.fg = getelementptr i8, ptr %i.dl, i64 %i.fe
  %i.fh = zext i32 %.091.1.i to i64
  %i.fi = tail call zeroext i1 @i915_memcpy_from_wc(ptr noundef %i.ff, ptr noundef %i.fg, i64 noundef %i.fh) #10 ; 0 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !31
end_hunk_0
