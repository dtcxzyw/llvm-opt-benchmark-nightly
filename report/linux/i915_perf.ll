Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i915_perf?download=true
inline.NumInlined: 568
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@i915_perf_open_ioctl:bb.a
  %.011.i.i.i.i.i.i = phi i32 [ %i.vu, %bb.fd ], [ %.0.i.i.i.i.i.i, %bb.fi ], [ %.0.i.i.i.i.i.i, %bb.fk ], [ %.0.i.i.i.i.i.i, %bb.fl ], [ %.0.i.i.i.i.i.i, %bb.fm ] ; 2 uses
  %.not13.i.i.i.i.i = icmp eq i32 %.011.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %__read_reg.exit.i.i.i.i.i
  %i.wr = getelementptr i8, ptr %i.vd, i64 184    ; 2 uses
  %i.ws = load ptr, ptr %i.wr, align 8
  %i.wt = call ptr @i915_gem_object_pin_map_unlocked(ptr noundef %i.ws, i32 noundef 0) #18 ; 3 uses
  %i.wu = icmp ugt ptr %i.wt, inttoptr (i64 -4096 to ptr)
  br i1 %i.wu, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.wv = ptrtoint ptr %i.wt to i64
  %i.ww = trunc i64 %i.wv to i32
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.wx = load i32, ptr %i.wt, align 4
  %i.wy = load ptr, ptr %i.wr, align 8
  %i.wz = getelementptr i8, ptr %i.wy, i64 688    ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.wz, ptr elementtype(i32) %i.wz) #19, !srcloc !31
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %__read_reg.exit.i.i.i.i.i, %bb.fb
  %.1.i.i.i.i = phi i32 [ 0, %bb.fo ], [ %i.wx, %bb.fp ], [ 0, %__read_reg.exit.i.i.i.i.i ], [ 0, %bb.fb ]
  %.010.i.i.i.i.i = phi i32 [ %i.ww, %bb.fo ], [ 0, %bb.fp ], [ %.011.i.i.i.i.i.i, %__read_reg.exit.i.i.i.i.i ], [ %i.vi, %bb.fb ]
  call void @i915_vma_unpin_and_release(ptr noundef nonnull %i.b, i32 noundef 0) #18
  br label %gen12_guc_sw_ctx_id.exit.i.i.i.i

gen12_guc_sw_ctx_id.exit.i.i.i.i:                 ; preds = %bb.fq, %bb.fa
  %.2.i.i.i.i = phi i32 [ 0, %bb.fa ], [ %.1.i.i.i.i, %bb.fq ]
  %.0.i.i50.i.i.i = phi i32 [ %i.vg, %bb.fa ], [ %.010.i.i.i.i.i, %bb.fq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not.i51.i.i.i = icmp eq i32 %.0.i.i50.i.i.i, 0
  br i1 %.not.i51.i.i.i, label %bb.fs, label %gen12_get_render_context_id.exit.i.i.i

bb.fr:                                            ; preds = %bb.ey
  %i.xa = load ptr, ptr %i.ur, align 8            ; 2 uses
  %i.xb = getelementptr i8, ptr %i.xa, i64 1656
  %i.xc = load i8, ptr %i.xb, align 8
  %i.xd = zext i8 %i.xc to i32
  %i.xe = shl nuw nsw i32 %i.xd, 8
  %i.xf = getelementptr i8, ptr %i.xa, i64 1657
  %i.xg = load i8, ptr %i.xf, align 1
  %i.xh = zext i8 %i.xg to i32
  %i.xi = or disjoint i32 %i.xe, %i.xh
  %i.xj = icmp samesign ugt i32 %i.xi, 3126       ; 2 uses
  %spec.select.i.i.i.i = select i1 %i.xj, i32 8388352, i32 65472
  %spec.select13.i.i.i.i = select i1 %i.xj, i32 8388480, i32 65504
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %gen12_guc_sw_ctx_id.exit.i.i.i.i
  %.012.i.i.i.i = phi i32 [ %.2.i.i.i.i, %gen12_guc_sw_ctx_id.exit.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.fr ]
  %.0.i48.i.i.i = phi i32 [ 8388480, %gen12_guc_sw_ctx_id.exit.i.i.i.i ], [ %spec.select13.i.i.i.i, %bb.fr ] ; 2 uses
  %i.xk = and i32 %.0.i48.i.i.i, %.012.i.i.i.i
  %i.xl = getelementptr i8, ptr %i.ma, i64 104
  store i32 %i.xk, ptr %i.xl, align 8
  %i.xm = getelementptr i8, ptr %i.ma, i64 108
  store i32 %.0.i48.i.i.i, ptr %i.xm, align 4
  br label %gen12_get_render_context_id.exit.i.i.i

bb.ft:                                            ; preds = %bb.et
  %i.xn = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.35, ptr nonnull @.str.24, i32 1596, i32 2321, i64 16) #19, !srcloc !58
  %i.xo = load ptr, ptr %i.tu, align 8
  %i.xp = load ptr, ptr %i.xo, align 8
  %i.xq = getelementptr i8, ptr %i.xp, i64 1656
  %i.xr = load i8, ptr %i.xq, align 8
  %i.xs = zext i8 %i.xr to i64
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.xn, ptr noundef nonnull @.str.65, i64 noundef %i.xs) #18
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !59
  br label %gen12_get_render_context_id.exit.i.i.i

gen12_get_render_context_id.exit.i.i.i:           ; preds = %bb.ft, %bb.fs, %gen12_guc_sw_ctx_id.exit.i.i.i.i, %bb.ex, %bb.ew, %bb.eu
  %.1.i.i.i = phi i32 [ 0, %bb.ft ], [ 0, %bb.eu ], [ 0, %bb.ew ], [ 0, %bb.ex ], [ 0, %bb.fs ], [ %.0.i.i50.i.i.i, %gen12_guc_sw_ctx_id.exit.i.i.i.i ]
  %i.xt = getelementptr i8, ptr %i.ma, i64 104
  %i.xu = load i32, ptr %i.xt, align 8            ; 2 uses
  %i.xv = getelementptr i8, ptr %.015.i.i.i.i, i64 168
  store i32 %i.xu, ptr %i.xv, align 8
  %i.xw = load ptr, ptr %i.ma, align 8
  %i.xx = load ptr, ptr %i.xw, align 8            ; 2 uses
  %.not.i54.i.i.i = icmp eq ptr %i.xx, null
  br i1 %.not.i54.i.i.i, label %__drm_to_dev.exit55.i.i.i, label %bb.fu

bb.fu:                                            ; preds = %gen12_get_render_context_id.exit.i.i.i
  %i.xy = getelementptr i8, ptr %i.xx, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8
  br label %__drm_to_dev.exit55.i.i.i

__drm_to_dev.exit55.i.i.i:                        ; preds = %bb.fu, %gen12_get_render_context_id.exit.i.i.i
  %i.ya = phi ptr [ %i.xz, %bb.fu ], [ null, %gen12_get_render_context_id.exit.i.i.i ]
  %i.yb = getelementptr i8, ptr %i.ma, i64 108
  %i.yc = load i32, ptr %i.yb, align 4
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ya, i32 noundef 1, ptr noundef nonnull @.str.66, i32 noundef %i.xu, i32 noundef %i.yc) #18
  br label %oa_get_render_ctx_id.exit.i.i

oa_get_render_ctx_id.exit.i.i:                    ; preds = %__drm_to_dev.exit55.i.i.i, %bb.dx
  %.0.i135.i.i = phi i32 [ %i.pw, %bb.dx ], [ %.1.i.i.i, %__drm_to_dev.exit55.i.i.i ] ; 2 uses
  %.not105.i.i = icmp eq i32 %.0.i135.i.i, 0
  br i1 %.not105.i.i, label %oa_get_render_ctx_id.exit._crit_edge.i.i, label %bb.fv

oa_get_render_ctx_id.exit._crit_edge.i.i:         ; preds = %oa_get_render_ctx_id.exit.i.i
  %.pre.i.i = load ptr, ptr %i.ma, align 8        ; 2 uses
  %.pre22.i.i = load ptr, ptr %i.nl, align 8
  %.pre.i28 = load ptr, ptr %.pre.i.i, align 8
  br label %bb.fx

bb.fv:                                            ; preds = %oa_get_render_ctx_id.exit.i.i, %oa_get_render_ctx_id.exit.thread.i.i
  %.0.i1353.i.i = phi i32 [ -19, %oa_get_render_ctx_id.exit.thread.i.i ], [ %.0.i135.i.i, %oa_get_render_ctx_id.exit.i.i ]
  %i.yd = load ptr, ptr %i.ma, align 8
  %i.ye = load ptr, ptr %i.yd, align 8            ; 2 uses
  %.not.i137.i.i = icmp eq ptr %i.ye, null
  br i1 %.not.i137.i.i, label %__drm_to_dev.exit138.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.yf = getelementptr i8, ptr %i.ye, i64 8
  %i.yg = load ptr, ptr %i.yf, align 8
  br label %__drm_to_dev.exit138.i.i

__drm_to_dev.exit138.i.i:                         ; preds = %bb.fw, %bb.fv
  %i.yh = phi ptr [ %i.yg, %bb.fw ], [ null, %bb.fv ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.yh, i32 noundef 1, ptr noundef nonnull @.str.56) #18
  br label %i915_oa_stream_init.exit.thread.i

bb.fx:                                            ; preds = %oa_get_render_ctx_id.exit._crit_edge.i.i, %bb.dn
  %i.yi = phi ptr [ %.pre.i28, %oa_get_render_ctx_id.exit._crit_edge.i.i ], [ %i.me, %bb.dn ] ; 6 uses
  %i.yj = phi ptr [ %.pre22.i.i, %oa_get_render_ctx_id.exit._crit_edge.i.i ], [ %i.mf, %bb.dn ]
  %i.yk = phi ptr [ %.pre.i.i, %oa_get_render_ctx_id.exit._crit_edge.i.i ], [ %i.c, %bb.dn ]
  %i.yl = getelementptr i8, ptr %i.yj, i64 8
  %i.ym = load ptr, ptr %i.yl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr null, ptr %i.a, align 8, !annotation !24
  %i.yn = getelementptr i8, ptr %i.yi, i64 3528
  %.val.i139.i.i = load ptr, ptr %i.yn, align 8
  %i.yo = getelementptr i8, ptr %i.yk, i64 232
  %i.yp = load volatile i64, ptr %i.yo, align 8
  %i.yq = call i64 @intel_gt_ns_to_clock_interval(ptr noundef %.val.i139.i.i, i64 noundef %i.yp) #18
  %i.yr = xor i64 %i.yq, -1                       ; 2 uses
  %i.ys = load ptr, ptr %i.nl, align 8
  %i.yt = getelementptr i8, ptr %i.ys, i64 72
  %i.yu = load i32, ptr %i.yt, align 8            ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !annotation !24
  %i.yv = getelementptr i8, ptr %i.yi, i64 1656   ; 7 uses
  %i.yw = load i8, ptr %i.yv, align 8
  %i.yx = zext i8 %i.yw to i32
  %i.yy = shl nuw nsw i32 %i.yx, 8
  %i.yz = getelementptr i8, ptr %i.yi, i64 1657   ; 5 uses
  %i.za = load i8, ptr %i.yz, align 1
  %i.zb = zext i8 %i.za to i32
  %i.zc = or disjoint i32 %i.yy, %i.zb
  %i.zd = icmp samesign ugt i32 %i.zc, 3126
  %i.ze = add i32 %i.yu, 956
  %.sroa.012.0.i.i.i = select i1 %i.zd, i32 %i.ze, i32 9244 ; 4 uses
  %i.zf = call ptr @i915_gem_object_create_internal(ptr noundef %i.yi, i64 noundef 8192) #18 ; 21 uses
  %i.zg = icmp ugt ptr %i.zf, inttoptr (i64 -4096 to ptr)
  br i1 %i.zg, label %bb.fy, label %bb.ga

bb.fy:                                            ; preds = %bb.fx
  %.not.i.i145.i.i = icmp eq ptr %i.yi, null
  br i1 %.not.i.i145.i.i, label %__drm_to_dev.exit.i146.i.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.zh = getelementptr i8, ptr %i.yi, i64 8
  %i.zi = load ptr, ptr %i.zh, align 8
  br label %__drm_to_dev.exit.i146.i.i

__drm_to_dev.exit.i146.i.i:                       ; preds = %bb.fz, %bb.fy
  %i.zj = phi ptr [ %i.zi, %bb.fz ], [ null, %bb.fy ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.zj, ptr noundef nonnull @.str.70) #23
  %i.zk = ptrtoint ptr %i.zf to i64
  %i.zl = trunc i64 %i.zk to i32
  br label %alloc_noa_wait.exit.i.i

bb.ga:                                            ; preds = %bb.fx
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %3, i1 noundef zeroext true) #18
  %i.zm = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.zn = getelementptr i8, ptr %i.zf, i64 248
  %i.zo = getelementptr i8, ptr %i.zf, i64 544    ; 3 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.zq = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.zr = getelementptr i8, ptr %i.zf, i64 552
  %i.zs = getelementptr i8, ptr %i.ym, i64 32
  %i.zt = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.gb

bb.gb:                                            ; preds = %bb.gw, %bb.ga
  %i.zu = load i8, ptr %i.zm, align 8, !range !22, !noundef !23
  %i.zv = trunc nuw i8 %i.zu to i1
  %i.zw = load ptr, ptr %i.zn, align 8            ; 2 uses
  br i1 %i.zv, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.zx = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.zw, ptr noundef nonnull %3) #18
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  %i.zy = call i32 @ww_mutex_lock(ptr noundef %i.zw, ptr noundef nonnull %3) #18
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %.0.i.i.i140.i.i = phi i32 [ %i.zx, %bb.gc ], [ %i.zy, %bb.gd ] ; 4 uses
  %8 = icmp eq i32 %.0.i.i.i140.i.i, 0
  br i1 %8, label %bb.gf, label %9

bb.gf:                                            ; preds = %bb.ge
  %i.zz = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.zf, i32 1, ptr elementtype(i32) %i.zf) #19, !srcloc !28 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.zz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i, label %bb.gg, !prof !25

bb.gg:                                            ; preds = %bb.gf
  %i.aaa = add i32 %i.zz, 1
  %i.aab = or i32 %i.aaa, %i.zz
  %.not10.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aab, -1
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i, !prof !20

.sink.split.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %bb.gg, %bb.gf
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.gf ], [ 1, %bb.gg ]
  call void @refcount_warn_saturate(ptr noundef %i.zf, i32 noundef %.sink.i.i.i.i.i.i.i.i.i.i.i) #18
  br label %i915_gem_object_get.exit.i.i.i.i.i

i915_gem_object_get.exit.i.i.i.i.i:               ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i.i, %bb.gg
  %i.aac = load ptr, ptr %i.zq, align 8           ; 2 uses
  store ptr %i.zo, ptr %i.zq, align 8
  store ptr %i.zp, ptr %i.zo, align 8
  store ptr %i.aac, ptr %i.zr, align 8
  store volatile ptr %i.zo, ptr %i.aac, align 8
  br label %9

9:                                                ; preds = %i915_gem_object_get.exit.i.i.i.i.i, %bb.ge
  %10 = icmp eq i32 %.0.i.i.i140.i.i, -114
  %spec.store.select.i6.i.i.i.i = select i1 %10, i32 0, i32 %.0.i.i.i140.i.i
  switch i32 %spec.store.select.i6.i.i.i.i, label %.sink.split.i.i.i [
    i32 -35, label %bb.gh
    i32 0, label %bb.gj
  ]

bb.gh:                                            ; preds = %9
  %i.aad = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.zf, i32 1, ptr elementtype(i32) %i.zf) #19, !srcloc !28 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i.i.i.i = icmp eq i32 %i.aad, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i.i.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i.i.i, label %bb.gi, !prof !25

bb.gi:                                            ; preds = %bb.gh
  %i.aae = add i32 %i.aad, 1
  %i.aaf = or i32 %i.aae, %i.aad
  %.not10.i.i.i.i.i.i20.i8.i.i.i.i = icmp sgt i32 %i.aaf, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i.i.i.i, label %.thread176.i.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i.i.i, !prof !20

.sink.split.i.i.i.i.i.i21.i9.i.i.i.i:             ; preds = %bb.gi, %bb.gh
  %.sink.i.i.i.i.i.i22.i10.i.i.i.i = phi i32 [ 2, %bb.gh ], [ 1, %bb.gi ]
  call void @refcount_warn_saturate(ptr noundef %i.zf, i32 noundef %.sink.i.i.i.i.i.i22.i10.i.i.i.i) #18
  br label %.thread176.i.i.i

.thread176.i.i.i:                                 ; preds = %.sink.split.i.i.i.i.i.i21.i9.i.i.i.i, %bb.gi
  store ptr %i.zf, ptr %i.zt, align 8
  br label %bb.gw

bb.gj:                                            ; preds = %9
  %i.aag = load ptr, ptr %i.zs, align 8
  %i.aah = call ptr @i915_vma_instance(ptr noundef %i.zf, ptr noundef %i.aag, ptr noundef null) #18 ; 4 uses
  store ptr %i.aah, ptr %i.a, align 8
  %i.aai = icmp ugt ptr %i.aah, inttoptr (i64 -4096 to ptr)
  br i1 %i.aai, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.aaj = ptrtoint ptr %i.aah to i64
  %i.aak = trunc i64 %i.aaj to i32
  br label %bb.gv

bb.gl:                                            ; preds = %bb.gj
  %i.aal = call i32 @i915_vma_pin_ww(ptr noundef %i.aah, ptr noundef nonnull %3, i64 noundef 0, i64 noundef 0, i64 noundef 1056) #18 ; 2 uses
  %.not144.i.i.i = icmp eq i32 %i.aal, 0
  br i1 %.not144.i.i.i, label %bb.gm, label %bb.gv

bb.gm:                                            ; preds = %bb.gl
  %i.aam = call ptr @i915_gem_object_pin_map(ptr noundef %i.zf, i32 noundef 0) #18 ; 69 uses
  %i.aan = icmp ugt ptr %i.aam, inttoptr (i64 -4096 to ptr)
  br i1 %i.aan, label %bb.gn, label %save_restore_register.exit.i.i.i

bb.gn:                                            ; preds = %bb.gm
  %i.aao = ptrtoint ptr %i.aam to i64
  %i.aap = trunc i64 %i.aao to i32
  call void @i915_vma_unpin_and_release(ptr noundef nonnull %i.a, i32 noundef 0) #18
  br label %bb.gv

save_restore_register.exit.i.i.i:                 ; preds = %bb.gm
  %i.aaq = load ptr, ptr %i.a, align 8
  %i.aar = getelementptr i8, ptr %i.ma, i64 264   ; 23 uses
  store ptr %i.aaq, ptr %i.aar, align 8
  %i.aas = add i32 %i.yu, 1536                    ; 3 uses
  %i.aat = load ptr, ptr %i.ma, align 8
  %i.aau = load ptr, ptr %i.aat, align 8
  %i.aav = getelementptr i8, ptr %i.aau, i64 1656
  %i.aaw = load i8, ptr %i.aav, align 8
  %i.aax = icmp ugt i8 %i.aaw, 7
  %spec.select.i.i142.i.i = select i1 %i.aax, i32 306184194, i32 306184193 ; 2 uses
  %i.aay = getelementptr i8, ptr %i.aam, i64 4
  store i32 %spec.select.i.i142.i.i, ptr %i.aam, align 4
  %i.aaz = getelementptr i8, ptr %i.aam, i64 8
  store i32 %i.aas, ptr %i.aay, align 4
  %i.aba = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.abb = getelementptr i8, ptr %i.aba, i64 8
  %.val.i.i143.i.i = load i64, ptr %i.abb, align 8
  %i.abc = getelementptr i8, ptr %i.aba, i64 248
  %.val18.i.i.i.i = load i32, ptr %i.abc, align 8
  %i.abd = trunc i64 %.val.i.i143.i.i to i32
  %i.abe = add i32 %i.abd, 4096
  %i.abf = add i32 %i.abe, %.val18.i.i.i.i
  %i.abg = getelementptr i8, ptr %i.aam, i64 12
  store i32 %i.abf, ptr %i.aaz, align 4
  %i.abh = getelementptr i8, ptr %i.aam, i64 16
  store i32 0, ptr %i.abg, align 4
  %i.abi = getelementptr i8, ptr %i.aam, i64 20
  store i32 %spec.select.i.i142.i.i, ptr %i.abh, align 4
  %i.abj = add i32 %i.yu, 1540                    ; 3 uses
  %i.abk = getelementptr i8, ptr %i.aam, i64 24
  store i32 %i.abj, ptr %i.abi, align 4
  %i.abl = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.abm = getelementptr i8, ptr %i.abl, i64 8
  %.val.i.1.i.i.i = load i64, ptr %i.abm, align 8
  %i.abn = getelementptr i8, ptr %i.abl, i64 248
  %.val18.i.1.i.i.i = load i32, ptr %i.abn, align 8
  %i.abo = trunc i64 %.val.i.1.i.i.i to i32
  %i.abp = add i32 %i.abo, 4100
  %i.abq = add i32 %i.abp, %.val18.i.1.i.i.i
  %i.abr = getelementptr i8, ptr %i.aam, i64 28
  store i32 %i.abq, ptr %i.abk, align 4
  %i.abs = getelementptr i8, ptr %i.aam, i64 32
  store i32 0, ptr %i.abr, align 4
  %i.abt = add i32 %i.yu, 1544                    ; 3 uses
  %i.abu = load ptr, ptr %i.ma, align 8
  %i.abv = load ptr, ptr %i.abu, align 8
  %i.abw = getelementptr i8, ptr %i.abv, i64 1656
  %i.abx = load i8, ptr %i.abw, align 8
  %i.aby = icmp ugt i8 %i.abx, 7
  %spec.select.i.1.i.i.i = select i1 %i.aby, i32 306184194, i32 306184193 ; 2 uses
  %i.abz = getelementptr i8, ptr %i.aam, i64 36
  store i32 %spec.select.i.1.i.i.i, ptr %i.abs, align 4
  %i.aca = getelementptr i8, ptr %i.aam, i64 40
  store i32 %i.abt, ptr %i.abz, align 4
  %i.acb = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.acc = getelementptr i8, ptr %i.acb, i64 8
  %.val.i.1198.i.i.i = load i64, ptr %i.acc, align 8
  %i.acd = getelementptr i8, ptr %i.acb, i64 248
  %.val18.i.1199.i.i.i = load i32, ptr %i.acd, align 8
  %i.ace = trunc i64 %.val.i.1198.i.i.i to i32
  %i.acf = add i32 %i.ace, 4104
  %i.acg = add i32 %i.acf, %.val18.i.1199.i.i.i
  %i.ach = getelementptr i8, ptr %i.aam, i64 44
  store i32 %i.acg, ptr %i.aca, align 4
  %i.aci = getelementptr i8, ptr %i.aam, i64 48
  store i32 0, ptr %i.ach, align 4
  %i.acj = getelementptr i8, ptr %i.aam, i64 52
  store i32 %spec.select.i.1.i.i.i, ptr %i.aci, align 4
  %i.ack = add i32 %i.yu, 1548                    ; 3 uses
  %i.acl = getelementptr i8, ptr %i.aam, i64 56
  store i32 %i.ack, ptr %i.acj, align 4
  %i.acm = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.acn = getelementptr i8, ptr %i.acm, i64 8
  %.val.i.1.1.i.i.i = load i64, ptr %i.acn, align 8
  %i.aco = getelementptr i8, ptr %i.acm, i64 248
  %.val18.i.1.1.i.i.i = load i32, ptr %i.aco, align 8
  %i.acp = trunc i64 %.val.i.1.1.i.i.i to i32
  %i.acq = add i32 %i.acp, 4108
  %i.acr = add i32 %i.acq, %.val18.i.1.1.i.i.i
  %i.acs = getelementptr i8, ptr %i.aam, i64 60
  store i32 %i.acr, ptr %i.acl, align 4
  %i.act = getelementptr i8, ptr %i.aam, i64 64
  store i32 0, ptr %i.acs, align 4
  %i.acu = add i32 %i.yu, 1552                    ; 2 uses
  %i.acv = load ptr, ptr %i.ma, align 8
  %i.acw = load ptr, ptr %i.acv, align 8
  %i.acx = getelementptr i8, ptr %i.acw, i64 1656
  %i.acy = load i8, ptr %i.acx, align 8
  %i.acz = icmp ugt i8 %i.acy, 7
  %spec.select.i.2.i.i.i = select i1 %i.acz, i32 306184194, i32 306184193 ; 2 uses
  %i.ada = getelementptr i8, ptr %i.aam, i64 68
  store i32 %spec.select.i.2.i.i.i, ptr %i.act, align 4
  %i.adb = getelementptr i8, ptr %i.aam, i64 72
  store i32 %i.acu, ptr %i.ada, align 4
  %i.adc = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.add = getelementptr i8, ptr %i.adc, i64 8
  %.val.i.2.i.i.i = load i64, ptr %i.add, align 8
  %i.ade = getelementptr i8, ptr %i.adc, i64 248
  %.val18.i.2.i.i.i = load i32, ptr %i.ade, align 8
  %i.adf = trunc i64 %.val.i.2.i.i.i to i32
  %i.adg = add i32 %i.adf, 4112
  %i.adh = add i32 %i.adg, %.val18.i.2.i.i.i
  %i.adi = getelementptr i8, ptr %i.aam, i64 76
  store i32 %i.adh, ptr %i.adb, align 4
  %i.adj = getelementptr i8, ptr %i.aam, i64 80
  store i32 0, ptr %i.adi, align 4
  %i.adk = getelementptr i8, ptr %i.aam, i64 84
  store i32 %spec.select.i.2.i.i.i, ptr %i.adj, align 4
  %i.adl = add i32 %i.yu, 1556                    ; 2 uses
  %i.adm = getelementptr i8, ptr %i.aam, i64 88
  store i32 %i.adl, ptr %i.adk, align 4
  %i.adn = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.ado = getelementptr i8, ptr %i.adn, i64 8
  %.val.i.1.2.i.i.i = load i64, ptr %i.ado, align 8
  %i.adp = getelementptr i8, ptr %i.adn, i64 248
  %.val18.i.1.2.i.i.i = load i32, ptr %i.adp, align 8
  %i.adq = trunc i64 %.val.i.1.2.i.i.i to i32
  %i.adr = add i32 %i.adq, 4116
  %i.ads = add i32 %i.adr, %.val18.i.1.2.i.i.i
  %i.adt = getelementptr i8, ptr %i.aam, i64 92
  store i32 %i.ads, ptr %i.adm, align 4
  %i.adu = getelementptr i8, ptr %i.aam, i64 96
  store i32 0, ptr %i.adt, align 4
  %i.adv = add i32 %i.yu, 1560                    ; 4 uses
  %i.adw = load ptr, ptr %i.ma, align 8
  %i.adx = load ptr, ptr %i.adw, align 8
  %i.ady = getelementptr i8, ptr %i.adx, i64 1656
  %i.adz = load i8, ptr %i.ady, align 8
  %i.aea = icmp ugt i8 %i.adz, 7
  %spec.select.i.3.i.i.i = select i1 %i.aea, i32 306184194, i32 306184193 ; 2 uses
  %i.aeb = getelementptr i8, ptr %i.aam, i64 100
  store i32 %spec.select.i.3.i.i.i, ptr %i.adu, align 4
  %i.aec = getelementptr i8, ptr %i.aam, i64 104
  store i32 %i.adv, ptr %i.aeb, align 4
  %i.aed = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.aee = getelementptr i8, ptr %i.aed, i64 8
  %.val.i.3.i.i.i = load i64, ptr %i.aee, align 8
  %i.aef = getelementptr i8, ptr %i.aed, i64 248
  %.val18.i.3.i.i.i = load i32, ptr %i.aef, align 8
  %i.aeg = trunc i64 %.val.i.3.i.i.i to i32
  %i.aeh = add i32 %i.aeg, 4120
  %i.aei = add i32 %i.aeh, %.val18.i.3.i.i.i
  %i.aej = getelementptr i8, ptr %i.aam, i64 108
  store i32 %i.aei, ptr %i.aec, align 4
  %i.aek = getelementptr i8, ptr %i.aam, i64 112
  store i32 0, ptr %i.aej, align 4
  %i.ael = getelementptr i8, ptr %i.aam, i64 116
  store i32 %spec.select.i.3.i.i.i, ptr %i.aek, align 4
  %i.aem = add i32 %i.yu, 1564                    ; 2 uses
  %i.aen = getelementptr i8, ptr %i.aam, i64 120
  store i32 %i.aem, ptr %i.ael, align 4
  %i.aeo = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.aep = getelementptr i8, ptr %i.aeo, i64 8
  %.val.i.1.3.i.i.i = load i64, ptr %i.aep, align 8
  %i.aeq = getelementptr i8, ptr %i.aeo, i64 248
  %.val18.i.1.3.i.i.i = load i32, ptr %i.aeq, align 8
  %i.aer = trunc i64 %.val.i.1.3.i.i.i to i32
  %i.aes = add i32 %i.aer, 4124
  %i.aet = add i32 %i.aes, %.val18.i.1.3.i.i.i
  %i.aeu = getelementptr i8, ptr %i.aam, i64 124
  store i32 %i.aet, ptr %i.aen, align 4
  %i.aev = getelementptr i8, ptr %i.aam, i64 128
  store i32 0, ptr %i.aeu, align 4
  %i.aew = add i32 %i.yu, 1568                    ; 3 uses
  %i.aex = load ptr, ptr %i.ma, align 8
  %i.aey = load ptr, ptr %i.aex, align 8
  %i.aez = getelementptr i8, ptr %i.aey, i64 1656
  %i.afa = load i8, ptr %i.aez, align 8
  %i.afb = icmp ugt i8 %i.afa, 7
  %spec.select.i.4.i.i.i = select i1 %i.afb, i32 306184194, i32 306184193 ; 2 uses
  %i.afc = getelementptr i8, ptr %i.aam, i64 132
  store i32 %spec.select.i.4.i.i.i, ptr %i.aev, align 4
end_hunk_0
begin_hunk_1_@i915_perf_open_ioctl:bb.a
  store i32 %i.akz, ptr %i.akt, align 4
  %i.alb = getelementptr i8, ptr %.4.i.i.i, i64 32
  store i32 0, ptr %i.ala, align 4
  %i.alc = load ptr, ptr %i.ma, align 8
  %i.ald = load ptr, ptr %i.alc, align 8
  %i.ale = getelementptr i8, ptr %i.ald, i64 1656
  %i.alf = load i8, ptr %i.ale, align 8
  %i.alg = icmp ugt i8 %i.alf, 7
  %spec.select.i159.1.i.i.i = select i1 %i.alg, i32 348127234, i32 348127233 ; 2 uses
  %i.alh = getelementptr i8, ptr %.4.i.i.i, i64 36
  store i32 %spec.select.i159.1.i.i.i, ptr %i.alb, align 4
  %i.ali = getelementptr i8, ptr %.4.i.i.i, i64 40
  store i32 %i.abt, ptr %i.alh, align 4
  %i.alj = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.alk = getelementptr i8, ptr %i.alj, i64 8
  %.val.i162.1200.i.i.i = load i64, ptr %i.alk, align 8
  %i.all = getelementptr i8, ptr %i.alj, i64 248
  %.val18.i163.1201.i.i.i = load i32, ptr %i.all, align 8
  %i.alm = trunc i64 %.val.i162.1200.i.i.i to i32
  %i.aln = add i32 %i.alm, 4104
  %i.alo = add i32 %i.aln, %.val18.i163.1201.i.i.i
  %i.alp = getelementptr i8, ptr %.4.i.i.i, i64 44
  store i32 %i.alo, ptr %i.ali, align 4
  %i.alq = getelementptr i8, ptr %.4.i.i.i, i64 48
  store i32 0, ptr %i.alp, align 4
  %i.alr = getelementptr i8, ptr %.4.i.i.i, i64 52
  store i32 %spec.select.i159.1.i.i.i, ptr %i.alq, align 4
  %i.als = getelementptr i8, ptr %.4.i.i.i, i64 56
  store i32 %i.ack, ptr %i.alr, align 4
  %i.alt = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.alu = getelementptr i8, ptr %i.alt, i64 8
  %.val.i162.1.1.i.i.i = load i64, ptr %i.alu, align 8
  %i.alv = getelementptr i8, ptr %i.alt, i64 248
  %.val18.i163.1.1.i.i.i = load i32, ptr %i.alv, align 8
  %i.alw = trunc i64 %.val.i162.1.1.i.i.i to i32
  %i.alx = add i32 %i.alw, 4108
  %i.aly = add i32 %i.alx, %.val18.i163.1.1.i.i.i
  %i.alz = getelementptr i8, ptr %.4.i.i.i, i64 60
  store i32 %i.aly, ptr %i.als, align 4
  %i.ama = getelementptr i8, ptr %.4.i.i.i, i64 64
  store i32 0, ptr %i.alz, align 4
  %i.amb = load ptr, ptr %i.ma, align 8
  %i.amc = load ptr, ptr %i.amb, align 8
  %i.amd = getelementptr i8, ptr %i.amc, i64 1656
  %i.ame = load i8, ptr %i.amd, align 8
  %i.amf = icmp ugt i8 %i.ame, 7
  %spec.select.i159.2.i.i.i = select i1 %i.amf, i32 348127234, i32 348127233 ; 2 uses
  %i.amg = getelementptr i8, ptr %.4.i.i.i, i64 68
  store i32 %spec.select.i159.2.i.i.i, ptr %i.ama, align 4
  %i.amh = getelementptr i8, ptr %.4.i.i.i, i64 72
  store i32 %i.acu, ptr %i.amg, align 4
  %i.ami = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.amj = getelementptr i8, ptr %i.ami, i64 8
  %.val.i162.2.i.i.i = load i64, ptr %i.amj, align 8
  %i.amk = getelementptr i8, ptr %i.ami, i64 248
  %.val18.i163.2.i.i.i = load i32, ptr %i.amk, align 8
  %i.aml = trunc i64 %.val.i162.2.i.i.i to i32
  %i.amm = add i32 %i.aml, 4112
  %i.amn = add i32 %i.amm, %.val18.i163.2.i.i.i
  %i.amo = getelementptr i8, ptr %.4.i.i.i, i64 76
  store i32 %i.amn, ptr %i.amh, align 4
  %i.amp = getelementptr i8, ptr %.4.i.i.i, i64 80
  store i32 0, ptr %i.amo, align 4
  %i.amq = getelementptr i8, ptr %.4.i.i.i, i64 84
  store i32 %spec.select.i159.2.i.i.i, ptr %i.amp, align 4
  %i.amr = getelementptr i8, ptr %.4.i.i.i, i64 88
  store i32 %i.adl, ptr %i.amq, align 4
  %i.ams = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.amt = getelementptr i8, ptr %i.ams, i64 8
  %.val.i162.1.2.i.i.i = load i64, ptr %i.amt, align 8
  %i.amu = getelementptr i8, ptr %i.ams, i64 248
  %.val18.i163.1.2.i.i.i = load i32, ptr %i.amu, align 8
  %i.amv = trunc i64 %.val.i162.1.2.i.i.i to i32
  %i.amw = add i32 %i.amv, 4116
  %i.amx = add i32 %i.amw, %.val18.i163.1.2.i.i.i
  %i.amy = getelementptr i8, ptr %.4.i.i.i, i64 92
  store i32 %i.amx, ptr %i.amr, align 4
  %i.amz = getelementptr i8, ptr %.4.i.i.i, i64 96
  store i32 0, ptr %i.amy, align 4
  %i.ana = load ptr, ptr %i.ma, align 8
  %i.anb = load ptr, ptr %i.ana, align 8
  %i.anc = getelementptr i8, ptr %i.anb, i64 1656
  %i.and = load i8, ptr %i.anc, align 8
  %i.ane = icmp ugt i8 %i.and, 7
  %spec.select.i159.3.i.i.i = select i1 %i.ane, i32 348127234, i32 348127233 ; 2 uses
  %i.anf = getelementptr i8, ptr %.4.i.i.i, i64 100
  store i32 %spec.select.i159.3.i.i.i, ptr %i.amz, align 4
  %i.ang = getelementptr i8, ptr %.4.i.i.i, i64 104
  store i32 %i.adv, ptr %i.anf, align 4
  %i.anh = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.ani = getelementptr i8, ptr %i.anh, i64 8
  %.val.i162.3.i.i.i = load i64, ptr %i.ani, align 8
  %i.anj = getelementptr i8, ptr %i.anh, i64 248
  %.val18.i163.3.i.i.i = load i32, ptr %i.anj, align 8
  %i.ank = trunc i64 %.val.i162.3.i.i.i to i32
  %i.anl = add i32 %i.ank, 4120
  %i.anm = add i32 %i.anl, %.val18.i163.3.i.i.i
  %i.ann = getelementptr i8, ptr %.4.i.i.i, i64 108
  store i32 %i.anm, ptr %i.ang, align 4
  %i.ano = getelementptr i8, ptr %.4.i.i.i, i64 112
  store i32 0, ptr %i.ann, align 4
  %i.anp = getelementptr i8, ptr %.4.i.i.i, i64 116
  store i32 %spec.select.i159.3.i.i.i, ptr %i.ano, align 4
  %i.anq = getelementptr i8, ptr %.4.i.i.i, i64 120
  store i32 %i.aem, ptr %i.anp, align 4
  %i.anr = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.ans = getelementptr i8, ptr %i.anr, i64 8
  %.val.i162.1.3.i.i.i = load i64, ptr %i.ans, align 8
  %i.ant = getelementptr i8, ptr %i.anr, i64 248
  %.val18.i163.1.3.i.i.i = load i32, ptr %i.ant, align 8
  %i.anu = trunc i64 %.val.i162.1.3.i.i.i to i32
  %i.anv = add i32 %i.anu, 4124
  %i.anw = add i32 %i.anv, %.val18.i163.1.3.i.i.i
  %i.anx = getelementptr i8, ptr %.4.i.i.i, i64 124
  store i32 %i.anw, ptr %i.anq, align 4
  %i.any = getelementptr i8, ptr %.4.i.i.i, i64 128
  store i32 0, ptr %i.anx, align 4
  %i.anz = load ptr, ptr %i.ma, align 8
  %i.aoa = load ptr, ptr %i.anz, align 8
  %i.aob = getelementptr i8, ptr %i.aoa, i64 1656
  %i.aoc = load i8, ptr %i.aob, align 8
  %i.aod = icmp ugt i8 %i.aoc, 7
  %spec.select.i159.4.i.i.i = select i1 %i.aod, i32 348127234, i32 348127233 ; 2 uses
  %i.aoe = getelementptr i8, ptr %.4.i.i.i, i64 132
  store i32 %spec.select.i159.4.i.i.i, ptr %i.any, align 4
  %i.aof = getelementptr i8, ptr %.4.i.i.i, i64 136
  store i32 %i.aew, ptr %i.aoe, align 4
  %i.aog = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.aoh = getelementptr i8, ptr %i.aog, i64 8
  %.val.i162.4.i.i.i = load i64, ptr %i.aoh, align 8
  %i.aoi = getelementptr i8, ptr %i.aog, i64 248
  %.val18.i163.4.i.i.i = load i32, ptr %i.aoi, align 8
  %i.aoj = trunc i64 %.val.i162.4.i.i.i to i32
  %i.aok = add i32 %i.aoj, 4128
  %i.aol = add i32 %i.aok, %.val18.i163.4.i.i.i
  %i.aom = getelementptr i8, ptr %.4.i.i.i, i64 140
  store i32 %i.aol, ptr %i.aof, align 4
  %i.aon = getelementptr i8, ptr %.4.i.i.i, i64 144
  store i32 0, ptr %i.aom, align 4
  %i.aoo = getelementptr i8, ptr %.4.i.i.i, i64 148
  store i32 %spec.select.i159.4.i.i.i, ptr %i.aon, align 4
  %i.aop = getelementptr i8, ptr %.4.i.i.i, i64 152
  store i32 %i.afn, ptr %i.aoo, align 4
  %i.aoq = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.aor = getelementptr i8, ptr %i.aoq, i64 8
  %.val.i162.1.4.i.i.i = load i64, ptr %i.aor, align 8
  %i.aos = getelementptr i8, ptr %i.aoq, i64 248
  %.val18.i163.1.4.i.i.i = load i32, ptr %i.aos, align 8
  %i.aot = trunc i64 %.val.i162.1.4.i.i.i to i32
  %i.aou = add i32 %i.aot, 4132
  %i.aov = add i32 %i.aou, %.val18.i163.1.4.i.i.i
  %i.aow = getelementptr i8, ptr %.4.i.i.i, i64 156
  store i32 %i.aov, ptr %i.aop, align 4
  %i.aox = getelementptr i8, ptr %.4.i.i.i, i64 160
  store i32 0, ptr %i.aow, align 4
  %i.aoy = load ptr, ptr %i.ma, align 8
  %i.aoz = load ptr, ptr %i.aoy, align 8
  %i.apa = getelementptr i8, ptr %i.aoz, i64 1656
  %i.apb = load i8, ptr %i.apa, align 8
  %i.apc = icmp ugt i8 %i.apb, 7
  %spec.select.i166.i.i.i = select i1 %i.apc, i32 348127234, i32 348127233
  %i.apd = getelementptr i8, ptr %.4.i.i.i, i64 176
  %i.ape = getelementptr i8, ptr %.4.i.i.i, i64 164
  store i32 %spec.select.i166.i.i.i, ptr %i.aox, align 4
  %i.apf = getelementptr i8, ptr %.4.i.i.i, i64 168
  store i32 %.sroa.012.0.i.i.i, ptr %i.ape, align 4
  %i.apg = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.aph = getelementptr i8, ptr %i.apg, i64 8
  %.val.i169.i.i.i = load i64, ptr %i.aph, align 8
  %i.api = getelementptr i8, ptr %i.apg, i64 248
  %.val18.i170.i.i.i = load i32, ptr %i.api, align 8
  %i.apj = trunc i64 %.val.i169.i.i.i to i32
  %i.apk = add i32 %i.apj, 4160
  %i.apl = add i32 %i.apk, %.val18.i170.i.i.i
  %i.apm = getelementptr i8, ptr %.4.i.i.i, i64 172
  store i32 %i.apl, ptr %i.apf, align 4
  store i32 0, ptr %i.apm, align 4
  store i32 83886080, ptr %i.apd, align 4
  %i.apn = getelementptr i8, ptr %i.zf, i64 216
  %i.apo = load i64, ptr %i.apn, align 8
  call void @__i915_gem_object_flush_map(ptr noundef %i.zf, i64 noundef 0, i64 noundef %i.apo) #18
  call void @__i915_gem_object_release_map(ptr noundef %i.zf) #18
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %3) #18
  br label %alloc_noa_wait.exit.thread.i.i

bb.gv:                                            ; preds = %bb.gn, %bb.gl, %bb.gk
  %.0136.i.i.i = phi i32 [ %i.aap, %bb.gn ], [ %i.aak, %bb.gk ], [ %i.aal, %bb.gl ] ; 3 uses
  %i.app = icmp eq i32 %.0136.i.i.i, -35
  br i1 %i.app, label %bb.gw, label %.thread.i.i.i

bb.gw:                                            ; preds = %bb.gv, %.thread176.i.i.i
  %i.apq = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %3) #18 ; 2 uses
  %.not145.i.i.i = icmp eq i32 %i.apq, 0
  br i1 %.not145.i.i.i, label %bb.gb, label %.sink.split.i.i.i

.thread.i.i.i:                                    ; preds = %bb.gv
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %3) #18
  %.not146.i.i.i = icmp eq i32 %.0136.i.i.i, 0
  br i1 %.not146.i.i.i, label %alloc_noa_wait.exit.thread.i.i, label %bb.gx

.sink.split.i.i.i:                                ; preds = %bb.gw, %9
  %.1137181.ph.i.i.i = phi i32 [ %.0.i.i.i140.i.i, %9 ], [ %i.apq, %bb.gw ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %3) #18
  br label %bb.gx

bb.gx:                                            ; preds = %.sink.split.i.i.i, %.thread.i.i.i
  %.1137181.i.i.i = phi i32 [ %.0136.i.i.i, %.thread.i.i.i ], [ %.1137181.ph.i.i.i, %.sink.split.i.i.i ] ; 3 uses
  %i.apr = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.zf, i32 -1, ptr elementtype(i32) %i.zf) #19, !srcloc !28 ; 2 uses
  %i.aps = icmp eq i32 %i.apr, 1
  br i1 %i.aps, label %bb.ha, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.apt = icmp slt i32 %i.apr, 1
  br i1 %i.apt, label %bb.gz, label %alloc_noa_wait.exit.i.i, !prof !25

bb.gz:                                            ; preds = %bb.gy
  call void @refcount_warn_saturate(ptr noundef %i.zf, i32 noundef 3) #18
  br label %alloc_noa_wait.exit.i.i

bb.ha:                                            ; preds = %bb.gx
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !29
  call void @drm_gem_object_free(ptr noundef %i.zf) #18, !callees !30, !inline_history !3
  br label %alloc_noa_wait.exit.i.i

alloc_noa_wait.exit.thread.i.i:                   ; preds = %.thread.i.i.i, %save_restore_register.exit165.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.hd

alloc_noa_wait.exit.i.i:                          ; preds = %bb.ha, %bb.gz, %bb.gy, %__drm_to_dev.exit.i146.i.i
  %.0.i141.i.i = phi i32 [ %i.zl, %__drm_to_dev.exit.i146.i.i ], [ %.1137181.i.i.i, %bb.ha ], [ %.1137181.i.i.i, %bb.gy ], [ %.1137181.i.i.i, %bb.gz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %.not106.i.i = icmp eq i32 %.0.i141.i.i, 0
  br i1 %.not106.i.i, label %bb.hd, label %bb.hb

bb.hb:                                            ; preds = %alloc_noa_wait.exit.i.i
  %i.apu = load ptr, ptr %i.ma, align 8
  %i.apv = load ptr, ptr %i.apu, align 8          ; 2 uses
  %.not.i147.i.i = icmp eq ptr %i.apv, null
  br i1 %.not.i147.i.i, label %__drm_to_dev.exit148.i.i, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.apw = getelementptr i8, ptr %i.apv, i64 8
  %i.apx = load ptr, ptr %i.apw, align 8
  br label %__drm_to_dev.exit148.i.i

__drm_to_dev.exit148.i.i:                         ; preds = %bb.hc, %bb.hb
  %i.apy = phi ptr [ %i.apx, %bb.hc ], [ null, %bb.hb ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.apy, i32 noundef 1, ptr noundef nonnull @.str.57) #18
  br label %bb.ho

bb.hd:                                            ; preds = %alloc_noa_wait.exit.i.i, %alloc_noa_wait.exit.thread.i.i
  %i.apz = load i32, ptr %i.t, align 8
  %i.aqa = call ptr @i915_perf_get_oa_config(ptr noundef %i.c, i32 noundef %i.apz) #20 ; 2 uses
  %i.aqb = getelementptr i8, ptr %i.ma, i64 80    ; 2 uses
  store ptr %i.aqa, ptr %i.aqb, align 8
  %.not107.i.i = icmp eq ptr %i.aqa, null
  br i1 %.not107.i.i, label %bb.he, label %bb.hg

bb.he:                                            ; preds = %bb.hd
  %i.aqc = load ptr, ptr %i.ma, align 8
  %i.aqd = load ptr, ptr %i.aqc, align 8          ; 2 uses
  %.not.i149.i.i = icmp eq ptr %i.aqd, null
  br i1 %.not.i149.i.i, label %__drm_to_dev.exit150.i.i, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aqe = getelementptr i8, ptr %i.aqd, i64 8
  %i.aqf = load ptr, ptr %i.aqe, align 8
  br label %__drm_to_dev.exit150.i.i

__drm_to_dev.exit150.i.i:                         ; preds = %bb.hf, %bb.he
  %i.aqg = phi ptr [ %i.aqf, %bb.hf ], [ null, %bb.he ]
  %i.aqh = load i32, ptr %i.t, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aqg, i32 noundef 1, ptr noundef nonnull @.str.58, i32 noundef %i.aqh) #18
  br label %bb.hn

bb.hg:                                            ; preds = %bb.hd
  %i.aqi = load ptr, ptr %i.nl, align 8
  call fastcc void @intel_engine_pm_get(ptr noundef %i.aqi) #20, !srcloc !60
  %i.aqj = load ptr, ptr %i.nq, align 8
  call void @intel_uncore_forcewake_get(ptr noundef %i.aqj, i32 noundef 65535) #18
  %i.aqk = call fastcc i32 @alloc_oa_buffer(ptr noundef nonnull %i.ma) #20, !srcloc !61 ; 2 uses
  %.not108.i.i = icmp eq i32 %i.aqk, 0
  br i1 %.not108.i.i, label %bb.hh, label %bb.hm

bb.hh:                                            ; preds = %bb.hg
  %i.aql = getelementptr i8, ptr %i.ma, i64 72    ; 3 uses
  store ptr @i915_oa_stream_ops, ptr %i.aql, align 8
  %i.aqm = load ptr, ptr %i.nl, align 8
  %i.aqn = getelementptr i8, ptr %i.aqm, i64 8
  %i.aqo = load ptr, ptr %i.aqn, align 8
  %i.aqp = getelementptr i8, ptr %i.aqo, i64 5304
  %i.aqq = getelementptr inbounds nuw i8, ptr %7, i64 41
  %i.aqr = load i32, ptr %i.aqq, align 1
  store i32 %i.aqr, ptr %i.aqp, align 8
  store volatile ptr %i.ma, ptr %i.mk, align 8
  %i.aqs = call fastcc i32 @i915_perf_stream_enable_sync(ptr noundef nonnull %i.ma) #20, !srcloc !62 ; 2 uses
  %.not109.i.i = icmp eq i32 %i.aqs, 0
  %i.aqt = load ptr, ptr %i.ma, align 8
  %i.aqu = load ptr, ptr %i.aqt, align 8          ; 3 uses
  %.not.i153.i.i = icmp eq ptr %i.aqu, null       ; 2 uses
  br i1 %.not109.i.i, label %bb.hk, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  br i1 %.not.i153.i.i, label %__drm_to_dev.exit152.i.i, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.aqv = getelementptr i8, ptr %i.aqu, i64 8
  %i.aqw = load ptr, ptr %i.aqv, align 8
  br label %__drm_to_dev.exit152.i.i

__drm_to_dev.exit152.i.i:                         ; preds = %bb.hj, %bb.hi
  %i.aqx = phi ptr [ %i.aqw, %bb.hj ], [ null, %bb.hi ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aqx, i32 noundef 1, ptr noundef nonnull @.str.59) #18
  store volatile ptr null, ptr %i.mk, align 8
  %i.aqy = getelementptr i8, ptr %0, i64 3456
  %i.aqz = load ptr, ptr %i.aqy, align 8
  call void %i.aqz(ptr noundef nonnull %i.ma) #18, !inline_history !40
  %i.ara = getelementptr i8, ptr %i.ma, i64 232
  call void @i915_vma_unpin_and_release(ptr noundef %i.ara, i32 noundef 1) #18
  %i.arb = getelementptr i8, ptr %i.ma, i64 240
  store ptr null, ptr %i.arb, align 8
  br label %bb.hm

bb.hk:                                            ; preds = %bb.hh
  br i1 %.not.i153.i.i, label %bb.hq, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.arc = getelementptr i8, ptr %i.aqu, i64 8
  %i.ard = load ptr, ptr %i.arc, align 8
  br label %bb.hq

bb.hm:                                            ; preds = %__drm_to_dev.exit152.i.i, %bb.hg
  %.092.i.i = phi i32 [ %i.aqk, %bb.hg ], [ %i.aqs, %__drm_to_dev.exit152.i.i ]
  %i.are = load ptr, ptr %i.nq, align 8
  call void @intel_uncore_forcewake_put(ptr noundef %i.are, i32 noundef 65535) #18
  %i.arf = load ptr, ptr %i.nl, align 8
  call fastcc void @intel_engine_pm_put(ptr noundef %i.arf) #20, !srcloc !63
  call fastcc void @free_oa_configs(ptr noundef nonnull %i.ma) #20, !srcloc !64
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %__drm_to_dev.exit150.i.i
  %.1.i.i = phi i32 [ %.092.i.i, %bb.hm ], [ -22, %__drm_to_dev.exit150.i.i ]
  %i.arg = getelementptr i8, ptr %i.ma, i64 264
  call void @i915_vma_unpin_and_release(ptr noundef %i.arg, i32 noundef 0) #18
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %__drm_to_dev.exit148.i.i
  %.2.i.i = phi i32 [ %.0.i141.i.i, %__drm_to_dev.exit148.i.i ], [ %.1.i.i, %bb.hn ] ; 2 uses
  %i.arh = load ptr, ptr %i.mb, align 8
  %.not110.i.i = icmp eq ptr %i.arh, null
  br i1 %.not110.i.i, label %i915_oa_stream_init.exit.thread.i, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  call fastcc void @oa_put_render_ctx_id(ptr noundef nonnull %i.ma) #20, !srcloc !65
  br label %i915_oa_stream_init.exit.thread.i

bb.hq:                                            ; preds = %bb.hl, %bb.hk
  %i.ari = phi ptr [ %i.ard, %bb.hl ], [ null, %bb.hk ]
  %i.arj = load ptr, ptr %i.aqb, align 8
  %i.ark = getelementptr i8, ptr %i.arj, i64 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ari, i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef %i.ark) #18
  %i.arl = getelementptr i8, ptr %i.ma, i64 112
  call void @hrtimer_setup(ptr noundef %i.arl, ptr noundef nonnull @oa_poll_check_timer_cb, i32 noundef 1, i32 noundef 1) #18
  %i.arm = getelementptr i8, ptr %i.ma, i64 192
  call void @__init_waitqueue_head(ptr noundef %i.arm, ptr noundef nonnull @.str.61, ptr noundef nonnull @i915_oa_stream_init.__key) #18
  %i.arn = getelementptr i8, ptr %i.ma, i64 252
  store i32 0, ptr %i.arn, align 4
  %i.aro = getelementptr i8, ptr %i.ma, i64 24
  call void @mutex_init_generic(ptr noundef %i.aro) #18
  %i.arp = load i32, ptr %i.oo, align 8
  %i.arq = load i32, ptr %7, align 8
  %.not87.i = icmp eq i32 %i.arp, %i.arq
  br i1 %.not87.i, label %.critedge.i29, label %bb.hr, !prof !20

bb.hr:                                            ; preds = %bb.hq
  call void asm sideeffect "972: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 972b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 972) #19, !srcloc !66
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.44, ptr nonnull @.str.24, i32 3893, i32 2305, i64 16) #19, !srcloc !67
  call void asm sideeffect "973: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 973b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 973) #19, !srcloc !68
  br label %bb.hy

.critedge.i29:                                    ; preds = %bb.hq
  %i.arr = load i32, ptr %1, align 8              ; 2 uses
  %i.ars = shl i32 %i.arr, 19
  %spec.select92.i = and i32 %i.ars, 524288
  %i.art = shl i32 %i.arr, 10
  %i.aru = and i32 %i.art, 2048
  %.1.i = or disjoint i32 %spec.select92.i, %i.aru
  %i.arv = call i32 @anon_inode_getfd(ptr noundef nonnull @.str.49, ptr noundef nonnull @fops, ptr noundef nonnull %i.ma, i32 noundef %.1.i) #18 ; 3 uses
  %i.arw = icmp slt i32 %i.arv, 0
  br i1 %i.arw, label %bb.hy, label %bb.hs

bb.hs:                                            ; preds = %.critedge.i29
  %i.arx = load i32, ptr %1, align 8
  %i.ary = and i32 %i.arx, 4
  %.not90.i = icmp eq i32 %i.ary, 0
  br i1 %.not90.i, label %bb.ht, label %i915_perf_enable_locked.exit.i

bb.ht:                                            ; preds = %bb.hs
  %i.arz = getelementptr i8, ptr %i.ma, i64 64    ; 2 uses
  %i.asa = load i8, ptr %i.arz, align 8, !range !22, !noundef !23
end_hunk_1
begin_hunk_2_@i915_perf_release:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = getelementptr i8, ptr %i.b, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %i915_perf_disable_locked.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void %i.u(ptr noundef %i.b) #18, !inline_history !140
  br label %i915_perf_disable_locked.exit.i

i915_perf_disable_locked.exit.i:                  ; preds = %bb.e, %bb.d, %bb.a
  %i.v = getelementptr i8, ptr %i.b, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %i915_perf_disable_locked.exit.i
  tail call void %i.y(ptr noundef %i.b) #18, !inline_history !141
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %i915_perf_disable_locked.exit.i
  %i.z = getelementptr i8, ptr %i.b, i64 56
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not9.i = icmp eq ptr %i.aa, null
  br i1 %.not9.i, label %i915_perf_destroy_locked.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.aa, i64 112    ; 4 uses
  %i.ac = tail call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ab, i32 -1, ptr elementtype(i32) %i.ab) #19, !srcloc !28 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = icmp slt i32 %i.ac, 1
  br i1 %i.ae, label %bb.j, label %i915_perf_destroy_locked.exit, !prof !25

bb.j:                                             ; preds = %bb.i
  tail call void @refcount_warn_saturate(ptr noundef %i.ab, i32 noundef 3) #18
  br label %i915_perf_destroy_locked.exit

bb.k:                                             ; preds = %bb.h
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !29
  tail call void @i915_gem_context_release(ptr noundef %i.ab) #18, !callees !30, !inline_history !3
  br label %i915_perf_destroy_locked.exit

i915_perf_destroy_locked.exit:                    ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  tail call void @kfree(ptr noundef %i.b) #18
  tail call void @mutex_unlock(ptr noundef %i.h) #18
  %i.af = load ptr, ptr %i.c, align 8
  tail call void @drm_dev_put(ptr noundef %i.af) #18
  ret i32 0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @emit_oa_config(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.i915_gem_ww_ctx, align 8    ; 15 uses
  %5 = alloca %struct.i915_gem_ww_ctx, align 8    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !annotation !24
  %i.a = getelementptr i8, ptr %0, i64 88         ; 6 uses
  %.01725.i = load ptr, ptr %i.a, align 8         ; 2 uses
  %.not26.i = icmp eq ptr %.01725.i, null
  br i1 %.not26.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.01727.i = phi ptr [ %.01725.i, %.lr.ph.i ], [ %.017.i, %bb.d ] ; 3 uses
  %i.c = getelementptr i8, ptr %.01727.i, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq ptr %i.d, %1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(37) %i.f, ptr noundef dereferenceable(37) %i.b, i64 37)
  %i.g = icmp eq i32 %bcmp.i, 0
  br i1 %i.g, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.017.i = load ptr, ptr %.01727.i, align 8      ; 2 uses
  %.not.i46 = icmp eq ptr %.017.i, null
  br i1 %.not.i46, label %._crit_edge.i, label %bb.b, !llvm.loop !142

._crit_edge.i:                                    ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 40), align 8
  %i.i = tail call noalias align 8 dereferenceable_or_null(24) ptr @__kmalloc_cache_noprof(ptr noundef %i.h, i32 noundef 3520, i64 noundef 24) #22 ; 11 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %get_oa_vma.exit.thread, label %bb.e

get_oa_vma.exit.thread:                           ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.aj

bb.e:                                             ; preds = %._crit_edge.i
  %i.j = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %i.k = load i32, ptr %i.j, align 8              ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.f, label %num_lri_dwords.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = add nuw i32 %i.k, 125
  %i.n = sdiv i32 %i.m, 126
  %i.o = shl nuw i32 %i.k, 1
  %i.p = add i32 %i.n, %i.o
  %i.q = sext i32 %i.p to i64
  br label %num_lri_dwords.exit.i.i

num_lri_dwords.exit.i.i:                          ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i64 [ %i.q, %bb.f ], [ 0, %bb.e ]
  %i.r = getelementptr i8, ptr %1, i64 80         ; 2 uses
  %i.s = load i32, ptr %i.r, align 8              ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %num_lri_dwords.exit68.i.i

bb.g:                                             ; preds = %num_lri_dwords.exit.i.i
  %i.u = add nuw i32 %i.s, 125
  %i.v = sdiv i32 %i.u, 126
  %i.w = shl nuw i32 %i.s, 1
  %i.x = add i32 %i.v, %i.w
  %i.y = sext i32 %i.x to i64
  br label %num_lri_dwords.exit68.i.i

num_lri_dwords.exit68.i.i:                        ; preds = %bb.g, %num_lri_dwords.exit.i.i
  %.0.i67.i.i = phi i64 [ %i.y, %bb.g ], [ 0, %num_lri_dwords.exit.i.i ]
  %i.z = add nsw i64 %.0.i67.i.i, %.0.i.i.i
  %i.aa = getelementptr i8, ptr %1, i64 96        ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %num_lri_dwords.exit70.i.i

bb.h:                                             ; preds = %num_lri_dwords.exit68.i.i
  %i.ad = add nuw i32 %i.ab, 125
  %i.ae = sdiv i32 %i.ad, 126
  %i.af = shl nuw i32 %i.ab, 1
  %i.ag = add i32 %i.ae, %i.af
  %i.ah = sext i32 %i.ag to i64
  br label %num_lri_dwords.exit70.i.i

num_lri_dwords.exit70.i.i:                        ; preds = %bb.h, %num_lri_dwords.exit68.i.i
  %.0.i69.i.i = phi i64 [ %i.ah, %bb.h ], [ 0, %num_lri_dwords.exit68.i.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !annotation !24
  %i.ai = add nsw i64 %i.z, %.0.i69.i.i
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = add nsw i64 %i.aj, 4104
  %i.al = and i64 %i.ak, -4096
  %i.am = load ptr, ptr %0, align 8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call ptr @i915_gem_object_create_shmem(ptr noundef %i.an, i64 noundef %i.al) #18 ; 21 uses
  %i.ap = icmp ugt ptr %i.ao, inttoptr (i64 -4096 to ptr)
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %num_lri_dwords.exit70.i.i
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = trunc i64 %i.aq to i32
  br label %i915_gem_object_put.exit.i.i

bb.j:                                             ; preds = %num_lri_dwords.exit70.i.i
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %4, i1 noundef zeroext true) #18
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.at = getelementptr i8, ptr %i.ao, i64 248
  %i.au = getelementptr i8, ptr %i.ao, i64 544    ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ao, i64 552
  %i.ay = getelementptr i8, ptr %1, i64 56
  %i.az = getelementptr i8, ptr %1, i64 72
  %i.ba = getelementptr i8, ptr %1, i64 88
  %i.bb = getelementptr i8, ptr %0, i64 264
  %i.bc = getelementptr i8, ptr %i.ao, i64 216
  %i.bd = getelementptr i8, ptr %0, i64 16
  %i.be = getelementptr i8, ptr %i.i, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.k

bb.k:                                             ; preds = %bb.ac, %bb.j
  %i.bg = load i8, ptr %i.as, align 8, !range !22, !noundef !23
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = load ptr, ptr %i.at, align 8            ; 2 uses
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bj = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.bi, ptr noundef nonnull %4) #18
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bk = call i32 @ww_mutex_lock(ptr noundef %i.bi, ptr noundef nonnull %4) #18
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.bj, %bb.l ], [ %i.bk, %bb.m ] ; 4 uses
  %6 = icmp eq i32 %.0.i.i.i.i, 0
  br i1 %6, label %bb.o, label %7

bb.o:                                             ; preds = %bb.n
  %i.bl = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao, i32 1, ptr elementtype(i32) %i.ao) #19, !srcloc !28 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, label %bb.p, !prof !25

bb.p:                                             ; preds = %bb.o
  %i.bm = add i32 %i.bl, 1
  %i.bn = or i32 %i.bm, %i.bl
  %.not10.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.bn, -1
  br i1 %.not10.i.i.i.i.i.i.i.i.i.i, label %i915_gem_object_get.exit.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i.i.i, !prof !20

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.p, %bb.o
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i32 [ 2, %bb.o ], [ 1, %bb.p ]
  call void @refcount_warn_saturate(ptr noundef %i.ao, i32 noundef %.sink.i.i.i.i.i.i.i.i.i.i) #18
  br label %i915_gem_object_get.exit.i.i.i.i

i915_gem_object_get.exit.i.i.i.i:                 ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.p
  %i.bo = load ptr, ptr %i.aw, align 8            ; 2 uses
  store ptr %i.au, ptr %i.aw, align 8
  store ptr %i.av, ptr %i.au, align 8
  store ptr %i.bo, ptr %i.ax, align 8
  store volatile ptr %i.au, ptr %i.bo, align 8
  br label %7

7:                                                ; preds = %i915_gem_object_get.exit.i.i.i.i, %bb.n
  %8 = icmp eq i32 %.0.i.i.i.i, -114
  %spec.store.select.i6.i.i.i = select i1 %8, i32 0, i32 %.0.i.i.i.i
  switch i32 %spec.store.select.i6.i.i.i, label %.sink.split.i.i [
    i32 -35, label %bb.q
    i32 0, label %bb.s
  ]

bb.q:                                             ; preds = %7
  %i.bp = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao, i32 1, ptr elementtype(i32) %i.ao) #19, !srcloc !28 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i.i, label %bb.r, !prof !25

bb.r:                                             ; preds = %bb.q
  %i.bq = add i32 %i.bp, 1
  %i.br = or i32 %i.bq, %i.bp
  %.not10.i.i.i.i.i.i20.i8.i.i.i = icmp sgt i32 %i.br, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i.i.i, label %llist_add.exit.thread94.i.i, label %.sink.split.i.i.i.i.i.i21.i9.i.i.i, !prof !20

.sink.split.i.i.i.i.i.i21.i9.i.i.i:               ; preds = %bb.r, %bb.q
  %.sink.i.i.i.i.i.i22.i10.i.i.i = phi i32 [ 2, %bb.q ], [ 1, %bb.r ]
  call void @refcount_warn_saturate(ptr noundef %i.ao, i32 noundef %.sink.i.i.i.i.i.i22.i10.i.i.i) #18
  br label %llist_add.exit.thread94.i.i

llist_add.exit.thread94.i.i:                      ; preds = %.sink.split.i.i.i.i.i.i21.i9.i.i.i, %bb.r
  store ptr %i.ao, ptr %i.bf, align 8
  br label %bb.ac

bb.s:                                             ; preds = %7
  %i.bs = call ptr @i915_gem_object_pin_map(ptr noundef %i.ao, i32 noundef 0) #18 ; 4 uses
  %i.bt = icmp ugt ptr %i.bs, inttoptr (i64 -4096 to ptr)
  br i1 %i.bt, label %llist_add.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bu = load ptr, ptr %i.ay, align 8
  %i.bv = load i32, ptr %i.j, align 8             ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i.i.i, label %write_cs_mi_lri.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.t
  %i.bw = zext i32 %i.bv to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.v ] ; 3 uses
  %.022.i.i.i = phi ptr [ %i.bs, %.lr.ph.preheader.i.i.i ], [ %i.cl, %bb.v ] ; 3 uses
  %i.bx = trunc nuw i64 %indvars.iv.i.i.i to i32  ; 2 uses
  %i.by = urem i32 %i.bx, 126
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i.i.i
  %i.ca = sub nuw i32 %i.bv, %i.bx
  %i.cb = call i32 @llvm.umin.i32(i32 %i.ca, i32 126)
  %i.cc = shl nuw nsw i32 %i.cb, 1
  %i.cd = add nsw i32 %i.cc, -1
  %i.ce = or i32 %i.cd, 285212672
  %i.cf = getelementptr i8, ptr %.022.i.i.i, i64 4
  store i32 %i.ce, ptr %.022.i.i.i, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.i
  %.1.i.i.i = phi ptr [ %i.cf, %bb.u ], [ %.022.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.cg = getelementptr [8 x i8], ptr %i.bu, i64 %indvars.iv.i.i.i ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr i8, ptr %.1.i.i.i, i64 4
  store i32 %i.ch, ptr %.1.i.i.i, align 4
  %i.cj = getelementptr i8, ptr %i.cg, i64 4
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = getelementptr i8, ptr %.1.i.i.i, i64 8  ; 2 uses
  store i32 %i.ck, ptr %i.ci, align 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.bw
  br i1 %exitcond.not.i.i.i, label %write_cs_mi_lri.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !143

write_cs_mi_lri.exit.i.i:                         ; preds = %bb.v, %bb.t
  %.0.lcssa.i.i.i = phi ptr [ %i.bs, %bb.t ], [ %i.cl, %bb.v ] ; 2 uses
  %i.cm = load ptr, ptr %i.az, align 8
  %i.cn = load i32, ptr %i.r, align 8             ; 3 uses
  %.not.i71.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i71.i.i, label %write_cs_mi_lri.exit80.i.i, label %.lr.ph.preheader.i72.i.i

.lr.ph.preheader.i72.i.i:                         ; preds = %write_cs_mi_lri.exit.i.i
  %i.co = zext i32 %i.cn to i64
  br label %.lr.ph.i73.i.i

.lr.ph.i73.i.i:                                   ; preds = %bb.x, %.lr.ph.preheader.i72.i.i
  %indvars.iv.i74.i.i = phi i64 [ 0, %.lr.ph.preheader.i72.i.i ], [ %indvars.iv.next.i77.i.i, %bb.x ] ; 3 uses
  %.022.i75.i.i = phi ptr [ %.0.lcssa.i.i.i, %.lr.ph.preheader.i72.i.i ], [ %i.dd, %bb.x ] ; 3 uses
  %i.cp = trunc nuw i64 %indvars.iv.i74.i.i to i32 ; 2 uses
  %i.cq = urem i32 %i.cp, 126
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph.i73.i.i
  %i.cs = sub nuw i32 %i.cn, %i.cp
  %i.ct = call i32 @llvm.umin.i32(i32 %i.cs, i32 126)
  %i.cu = shl nuw nsw i32 %i.ct, 1
  %i.cv = add nsw i32 %i.cu, -1
  %i.cw = or i32 %i.cv, 285212672
  %i.cx = getelementptr i8, ptr %.022.i75.i.i, i64 4
  store i32 %i.cw, ptr %.022.i75.i.i, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i73.i.i
  %.1.i76.i.i = phi ptr [ %i.cx, %bb.w ], [ %.022.i75.i.i, %.lr.ph.i73.i.i ] ; 3 uses
  %i.cy = getelementptr [8 x i8], ptr %i.cm, i64 %indvars.iv.i74.i.i ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = getelementptr i8, ptr %.1.i76.i.i, i64 4
  store i32 %i.cz, ptr %.1.i76.i.i, align 4
  %i.db = getelementptr i8, ptr %i.cy, i64 4
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = getelementptr i8, ptr %.1.i76.i.i, i64 8 ; 2 uses
  store i32 %i.dc, ptr %i.da, align 4
  %indvars.iv.next.i77.i.i = add nuw nsw i64 %indvars.iv.i74.i.i, 1 ; 2 uses
  %exitcond.not.i78.i.i = icmp eq i64 %indvars.iv.next.i77.i.i, %i.co
  br i1 %exitcond.not.i78.i.i, label %write_cs_mi_lri.exit80.i.i, label %.lr.ph.i73.i.i, !llvm.loop !143

write_cs_mi_lri.exit80.i.i:                       ; preds = %bb.x, %write_cs_mi_lri.exit.i.i
  %.0.lcssa.i79.i.i = phi ptr [ %.0.lcssa.i.i.i, %write_cs_mi_lri.exit.i.i ], [ %i.dd, %bb.x ] ; 2 uses
  %i.de = load ptr, ptr %i.ba, align 8
  %i.df = load i32, ptr %i.aa, align 8            ; 3 uses
  %.not.i81.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i81.i.i, label %write_cs_mi_lri.exit90.i.i, label %.lr.ph.preheader.i82.i.i

.lr.ph.preheader.i82.i.i:                         ; preds = %write_cs_mi_lri.exit80.i.i
  %i.dg = zext i32 %i.df to i64
  br label %.lr.ph.i83.i.i

.lr.ph.i83.i.i:                                   ; preds = %bb.z, %.lr.ph.preheader.i82.i.i
  %indvars.iv.i84.i.i = phi i64 [ 0, %.lr.ph.preheader.i82.i.i ], [ %indvars.iv.next.i87.i.i, %bb.z ] ; 3 uses
  %.022.i85.i.i = phi ptr [ %.0.lcssa.i79.i.i, %.lr.ph.preheader.i82.i.i ], [ %i.dv, %bb.z ] ; 3 uses
  %i.dh = trunc nuw i64 %indvars.iv.i84.i.i to i32 ; 2 uses
  %i.di = urem i32 %i.dh, 126
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i83.i.i
  %i.dk = sub nuw i32 %i.df, %i.dh
  %i.dl = call i32 @llvm.umin.i32(i32 %i.dk, i32 126)
  %i.dm = shl nuw nsw i32 %i.dl, 1
  %i.dn = add nsw i32 %i.dm, -1
  %i.do = or i32 %i.dn, 285212672
  %i.dp = getelementptr i8, ptr %.022.i85.i.i, i64 4
  store i32 %i.do, ptr %.022.i85.i.i, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i83.i.i
  %.1.i86.i.i = phi ptr [ %i.dp, %bb.y ], [ %.022.i85.i.i, %.lr.ph.i83.i.i ] ; 3 uses
  %i.dq = getelementptr [8 x i8], ptr %i.de, i64 %indvars.iv.i84.i.i ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = getelementptr i8, ptr %.1.i86.i.i, i64 4
  store i32 %i.dr, ptr %.1.i86.i.i, align 4
  %i.dt = getelementptr i8, ptr %i.dq, i64 4
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = getelementptr i8, ptr %.1.i86.i.i, i64 8 ; 2 uses
  store i32 %i.du, ptr %i.ds, align 4
  %indvars.iv.next.i87.i.i = add nuw nsw i64 %indvars.iv.i84.i.i, 1 ; 2 uses
  %exitcond.not.i88.i.i = icmp eq i64 %indvars.iv.next.i87.i.i, %i.dg
  br i1 %exitcond.not.i88.i.i, label %write_cs_mi_lri.exit90.i.i, label %.lr.ph.i83.i.i, !llvm.loop !143

write_cs_mi_lri.exit90.i.i:                       ; preds = %bb.z, %write_cs_mi_lri.exit80.i.i
  %.0.lcssa.i89.i.i = phi ptr [ %.0.lcssa.i79.i.i, %write_cs_mi_lri.exit80.i.i ], [ %i.dv, %bb.z ] ; 3 uses
  %i.dw = load ptr, ptr %0, align 8
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr i8, ptr %i.dx, i64 1656
  %i.dz = load i8, ptr %i.dy, align 8
  %i.ea = icmp ult i8 %i.dz, 8
  %i.eb = select i1 %i.ea, i32 411041792, i32 411041793
  %i.ec = getelementptr i8, ptr %.0.lcssa.i89.i.i, i64 4
  store i32 %i.eb, ptr %.0.lcssa.i89.i.i, align 4
  %i.ed = load ptr, ptr %i.bb, align 8            ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  %.val.i.i = load i64, ptr %i.ee, align 8
  %i.ef = getelementptr i8, ptr %i.ed, i64 248
  %.val66.i.i = load i32, ptr %i.ef, align 8
  %i.eg = trunc i64 %.val.i.i to i32
  %i.eh = add i32 %.val66.i.i, %i.eg
  %i.ei = getelementptr i8, ptr %.0.lcssa.i89.i.i, i64 8
  store i32 %i.eh, ptr %i.ec, align 4
  store i32 0, ptr %i.ei, align 4
  %i.ej = load i64, ptr %i.bc, align 8
  call void @__i915_gem_object_flush_map(ptr noundef %i.ao, i64 noundef 0, i64 noundef %i.ej) #18
  call void @__i915_gem_object_release_map(ptr noundef %i.ao) #18
  %i.ek = load ptr, ptr %i.bd, align 8
  %i.el = getelementptr i8, ptr %i.ek, i64 8
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = getelementptr i8, ptr %i.em, i64 32
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = call ptr @i915_vma_instance(ptr noundef %i.ao, ptr noundef %i.eo, ptr noundef null) #18 ; 3 uses
  store ptr %i.ep, ptr %i.be, align 8
  %i.eq = icmp ugt ptr %i.ep, inttoptr (i64 -4096 to ptr)
  br i1 %i.eq, label %llist_add.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %write_cs_mi_lri.exit90.i.i
  %i.er = getelementptr i8, ptr %1, i64 200       ; 4 uses
  %i.es = load volatile i32, ptr %i.er, align 8   ; 2 uses
  %.old1.not.i.i.i.i.i.i.i = icmp eq i32 %i.es, 0
  br i1 %.old1.not.i.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.aa, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ey, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i.i ], [ %i.es, %bb.aa ] ; 3 uses
  %i.et = add i32 %.0.i.i.i.i.i.i.i, 1
  %i.eu = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.er, i32 %i.et, ptr elementtype(i32) %i.er, i32 %.0.i.i.i.i.i.i.i) #19, !srcloc !19 ; 2 uses
  %i.ev = extractvalue { i8, i32 } %i.eu, 0       ; 2 uses
  %i.ew = icmp ult i8 %i.ev, 2
  call void @llvm.assume(i1 %i.ew)
  %i.ex = trunc nuw i8 %i.ev to i1
  br i1 %i.ex, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i.i, label %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i.i, !prof !20

arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i.i:       ; preds = %.preheader.i.i.i.i.i.i.i
  %i.ey = extractvalue { i8, i32 } %i.eu, 1       ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !0

arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i.i: ; preds = %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i, %bb.aa
  %.2.i.i.i.i.i.i.i = phi i32 [ 0, %bb.aa ], [ 0, %arch_atomic_try_cmpxchg.exit.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.fa = add i32 %.2.i.i.i.i.i.i.i, 1
  %i.fb = or i32 %i.fa, %.2.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %i.fb, -1
  br i1 %.not.i.i.i.i.i.i.i, label %i915_oa_config_get.exit.i.i, label %bb.ab, !prof !20

bb.ab:                                            ; preds = %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i.i
  call void @refcount_warn_saturate(ptr noundef %i.er, i32 noundef 0) #18
  br label %i915_oa_config_get.exit.i.i

i915_oa_config_get.exit.i.i:                      ; preds = %bb.ab, %arch_atomic_try_cmpxchg.exit.thread.i.i.i.i.i.i.i
  %.not3.i.i.i = icmp eq i32 %.2.i.i.i.i.i.i.i, 0
  %..i.i.i = select i1 %.not3.i.i.i, ptr null, ptr %1
  %i.fc = getelementptr i8, ptr %i.i, i64 8
  store ptr %..i.i.i, ptr %i.fc, align 8
  %i.fd = load volatile ptr, ptr %i.a, align 8    ; 2 uses
  store ptr %i.fd, ptr %i.i, align 8
  %i.fe = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.a, ptr nonnull %i.i, ptr elementtype(i64) %i.a, ptr %i.fd) #19, !srcloc !145 ; 2 uses
  %i.ff = extractvalue { i8, ptr } %i.fe, 0       ; 2 uses
  %i.fg = icmp ult i8 %i.ff, 2
  call void @llvm.assume(i1 %i.fg)
  %i.fh = trunc nuw i8 %i.ff to i1
  br i1 %i.fh, label %llist_add.exit.thread.thread.i.i, label %.lr.ph.i.i.i.i, !prof !146

.lr.ph.i.i.i.i:                                   ; preds = %i915_oa_config_get.exit.i.i, %.lr.ph.i.i.i.i
  %i.fi = phi { i8, ptr } [ %i.fk, %.lr.ph.i.i.i.i ], [ %i.fe, %i915_oa_config_get.exit.i.i ]
  %i.fj = extractvalue { i8, ptr } %i.fi, 1       ; 2 uses
  store ptr %i.fj, ptr %i.i, align 8
  %i.fk = call { i8, ptr } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgq $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.a, ptr nonnull %i.i, ptr elementtype(i64) %i.a, ptr %i.fj) #19, !srcloc !145 ; 2 uses
  %i.fl = extractvalue { i8, ptr } %i.fk, 0       ; 2 uses
  %i.fm = icmp ult i8 %i.fl, 2
  call void @llvm.assume(i1 %i.fm)
  %i.fn = trunc nuw i8 %i.fl to i1
  br i1 %i.fn, label %llist_add.exit.thread.thread.i.i, label %.lr.ph.i.i.i.i, !prof !147, !llvm.loop !144

llist_add.exit.i.i:                               ; preds = %write_cs_mi_lri.exit90.i.i, %bb.s
  %.058.in.in.i.i = phi ptr [ %i.bs, %bb.s ], [ %i.ep, %write_cs_mi_lri.exit90.i.i ]
  %.058.in.i.i = ptrtoint ptr %.058.in.in.i.i to i64
  %.058.i.i = trunc i64 %.058.in.i.i to i32       ; 3 uses
  %i.fo = icmp eq i32 %.058.i.i, -35
  br i1 %i.fo, label %bb.ac, label %llist_add.exit.thread.i.i

bb.ac:                                            ; preds = %llist_add.exit.i.i, %llist_add.exit.thread94.i.i
  %i.fp = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %4) #18 ; 2 uses
  %.not63.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not63.i.i, label %bb.k, label %.sink.split.i.i

llist_add.exit.thread.thread.i.i:                 ; preds = %.lr.ph.i.i.i.i, %i915_oa_config_get.exit.i.i
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %4) #18
  br label %alloc_oa_config_buffer.exit.i

llist_add.exit.thread.i.i:                        ; preds = %llist_add.exit.i.i
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %4) #18
  %.not64.i.i = icmp eq i32 %.058.i.i, 0
  br i1 %.not64.i.i, label %alloc_oa_config_buffer.exit.i, label %bb.ad

.sink.split.i.i:                                  ; preds = %bb.ac, %7
  %.198.ph.i.i = phi i32 [ %.0.i.i.i.i, %7 ], [ %i.fp, %bb.ac ]
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %4) #18
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i.i, %llist_add.exit.thread.i.i
  %.198.i.i = phi i32 [ %.058.i.i, %llist_add.exit.thread.i.i ], [ %.198.ph.i.i, %.sink.split.i.i ] ; 3 uses
  %i.fq = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.ao, i32 -1, ptr elementtype(i32) %i.ao) #19, !srcloc !28 ; 2 uses
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fs = icmp slt i32 %i.fq, 1
  br i1 %i.fs, label %bb.af, label %i915_gem_object_put.exit.i.i, !prof !25

bb.af:                                            ; preds = %bb.ae
  call void @refcount_warn_saturate(ptr noundef %i.ao, i32 noundef 3) #18
  br label %i915_gem_object_put.exit.i.i

bb.ag:                                            ; preds = %bb.ad
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !29
  call void @drm_gem_object_free(ptr noundef %i.ao) #18, !callees !30, !inline_history !3
  br label %i915_gem_object_put.exit.i.i

i915_gem_object_put.exit.i.i:                     ; preds = %bb.ag, %bb.af, %bb.ae, %bb.i
  %.2.i.i = phi i32 [ %i.ar, %bb.i ], [ %.198.i.i, %bb.ag ], [ %.198.i.i, %bb.ae ], [ %.198.i.i, %bb.af ] ; 2 uses
  %.not65.i.i = icmp eq i32 %.2.i.i, 0
  br i1 %.not65.i.i, label %alloc_oa_config_buffer.exit.i, label %bb.ah

bb.ah:                                            ; preds = %i915_gem_object_put.exit.i.i
  call void @kfree(ptr noundef nonnull %i.i) #18
  %i.ft = sext i32 %.2.i.i to i64
  %i.fu = inttoptr i64 %i.ft to ptr
  br label %alloc_oa_config_buffer.exit.i

alloc_oa_config_buffer.exit.i:                    ; preds = %bb.ah, %i915_gem_object_put.exit.i.i, %llist_add.exit.thread.i.i, %llist_add.exit.thread.thread.i.i
  %.0.i.i = phi ptr [ %i.fu, %bb.ah ], [ %i.i, %i915_gem_object_put.exit.i.i ], [ %i.i, %llist_add.exit.thread.i.i ], [ %i.i, %llist_add.exit.thread.thread.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.fv = icmp ugt ptr %.0.i.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.fv, label %get_oa_vma.exit, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.c, %alloc_oa_config_buffer.exit.i
  %.1.i = phi ptr [ %.0.i.i, %alloc_oa_config_buffer.exit.i ], [ %.01727.i, %bb.c ]
  %i.fw = getelementptr i8, ptr %.1.i, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8            ; 3 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 184
  %i.fz = load ptr, ptr %i.fy, align 8            ; 3 uses
  %i.ga = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.fz, i32 1, ptr elementtype(i32) %i.fz) #19, !srcloc !28 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i.i.i.i, label %bb.ai, !prof !25

bb.ai:                                            ; preds = %.loopexit.i
  %i.gb = add i32 %i.ga, 1
  %i.gc = or i32 %i.gb, %i.ga
  %.not10.i.i.i.i.i.i.i.i = icmp sgt i32 %i.gc, -1
  br i1 %.not10.i.i.i.i.i.i.i.i, label %get_oa_vma.exit, label %.sink.split.i.i.i.i.i.i.i.i, !prof !20

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %bb.ai, %.loopexit.i
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ 2, %.loopexit.i ], [ 1, %bb.ai ]
  call void @refcount_warn_saturate(ptr noundef %i.fz, i32 noundef %.sink.i.i.i.i.i.i.i.i) #18
  br label %get_oa_vma.exit

get_oa_vma.exit:                                  ; preds = %alloc_oa_config_buffer.exit.i, %bb.ai, %.sink.split.i.i.i.i.i.i.i.i
  %.0.i = phi ptr [ %.0.i.i, %alloc_oa_config_buffer.exit.i ], [ %i.fx, %.sink.split.i.i.i.i.i.i.i.i ], [ %i.fx, %bb.ai ] ; 8 uses
  %i.gd = icmp ugt ptr %.0.i, inttoptr (i64 -4096 to ptr)
  br i1 %i.gd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %get_oa_vma.exit.thread, %get_oa_vma.exit
  %.0.i55 = phi ptr [ inttoptr (i64 -12 to ptr), %get_oa_vma.exit.thread ], [ %.0.i, %get_oa_vma.exit ]
  %i.ge = ptrtoint ptr %.0.i55 to i64
  %i.gf = trunc i64 %i.ge to i32
  br label %i915_vma_put.exit

bb.ak:                                            ; preds = %get_oa_vma.exit
  call void @i915_gem_ww_ctx_init(ptr noundef nonnull %5, i1 noundef zeroext true) #18
  %i.gg = getelementptr i8, ptr %.0.i, i64 184    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.gk = getelementptr i8, ptr %2, i64 16        ; 2 uses
  %.not.i = icmp eq ptr %3, null
  %i.gl = icmp ugt ptr %3, inttoptr (i64 -4096 to ptr)
  %spec.select.i = or i1 %.not.i, %i.gl
  %i.gm = getelementptr i8, ptr %.0.i, i64 8
  %i.gn = getelementptr i8, ptr %.0.i, i64 248
  %i.go = getelementptr i8, ptr %.0.i, i64 268    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %bb.al

bb.al:                                            ; preds = %bb.be, %bb.ak
  %i.gq = load ptr, ptr %i.gg, align 8            ; 10 uses
  %i.gr = load i8, ptr %i.gh, align 8, !range !22, !noundef !23
  %i.gs = trunc nuw i8 %i.gr to i1
  %i.gt = getelementptr i8, ptr %i.gq, i64 248
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  br i1 %i.gs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gv = call i32 @ww_mutex_lock_interruptible(ptr noundef %i.gu, ptr noundef nonnull %5) #18
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.gw = call i32 @ww_mutex_lock(ptr noundef %i.gu, ptr noundef nonnull %5) #18
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.0.i.i48 = phi i32 [ %i.gv, %bb.am ], [ %i.gw, %bb.an ] ; 4 uses
  %9 = icmp eq i32 %.0.i.i48, 0
  br i1 %9, label %bb.ap, label %10

bb.ap:                                            ; preds = %bb.ao
  %i.gx = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gq, i32 1, ptr elementtype(i32) %i.gq) #19, !srcloc !28 ; 3 uses
  %.not.i.i.i.i.i.i.i.i49 = icmp eq i32 %i.gx, 0
  br i1 %.not.i.i.i.i.i.i.i.i49, label %.sink.split.i.i.i.i.i.i.i.i51, label %bb.aq, !prof !25

bb.aq:                                            ; preds = %bb.ap
  %i.gy = add i32 %i.gx, 1
  %i.gz = or i32 %i.gy, %i.gx
  %.not10.i.i.i.i.i.i.i.i50 = icmp sgt i32 %i.gz, -1
  br i1 %.not10.i.i.i.i.i.i.i.i50, label %i915_gem_object_get.exit.i.i, label %.sink.split.i.i.i.i.i.i.i.i51, !prof !20

.sink.split.i.i.i.i.i.i.i.i51:                    ; preds = %bb.aq, %bb.ap
  %.sink.i.i.i.i.i.i.i.i52 = phi i32 [ 2, %bb.ap ], [ 1, %bb.aq ]
  call void @refcount_warn_saturate(ptr noundef %i.gq, i32 noundef %.sink.i.i.i.i.i.i.i.i52) #18
  br label %i915_gem_object_get.exit.i.i

i915_gem_object_get.exit.i.i:                     ; preds = %.sink.split.i.i.i.i.i.i.i.i51, %bb.aq
  %i.ha = getelementptr i8, ptr %i.gq, i64 544    ; 3 uses
  %i.hb = load ptr, ptr %i.gj, align 8            ; 2 uses
  store ptr %i.ha, ptr %i.gj, align 8
  store ptr %i.gi, ptr %i.ha, align 8
  %i.hc = getelementptr i8, ptr %i.gq, i64 552
  store ptr %i.hb, ptr %i.hc, align 8
  store volatile ptr %i.ha, ptr %i.hb, align 8
  br label %10

10:                                               ; preds = %i915_gem_object_get.exit.i.i, %bb.ao
  %11 = icmp eq i32 %.0.i.i48, -114
  %spec.store.select.i6.i = select i1 %11, i32 0, i32 %.0.i.i48
  switch i32 %spec.store.select.i6.i, label %.thread59 [
    i32 -35, label %bb.ar
    i32 0, label %bb.at
  ]

bb.ar:                                            ; preds = %10
  %i.hd = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gq, i32 1, ptr elementtype(i32) %i.gq) #19, !srcloc !28 ; 3 uses
  %.not.i.i.i.i.i.i19.i7.i = icmp eq i32 %i.hd, 0
  br i1 %.not.i.i.i.i.i.i19.i7.i, label %.sink.split.i.i.i.i.i.i21.i9.i, label %bb.as, !prof !25

bb.as:                                            ; preds = %bb.ar
  %i.he = add i32 %i.hd, 1
  %i.hf = or i32 %i.he, %i.hd
  %.not10.i.i.i.i.i.i20.i8.i = icmp sgt i32 %i.hf, -1
  br i1 %.not10.i.i.i.i.i.i20.i8.i, label %.thread, label %.sink.split.i.i.i.i.i.i21.i9.i, !prof !20

.sink.split.i.i.i.i.i.i21.i9.i:                   ; preds = %bb.as, %bb.ar
  %.sink.i.i.i.i.i.i22.i10.i = phi i32 [ 2, %bb.ar ], [ 1, %bb.as ]
  call void @refcount_warn_saturate(ptr noundef %i.gq, i32 noundef %.sink.i.i.i.i.i.i22.i10.i) #18
  br label %.thread

.thread:                                          ; preds = %.sink.split.i.i.i.i.i.i21.i9.i, %bb.as
  store ptr %i.gq, ptr %i.gp, align 8
  br label %bb.be

bb.at:                                            ; preds = %10
  %i.hg = call i32 @i915_vma_pin_ww(ptr noundef %.0.i, ptr noundef nonnull %5, i64 noundef 0, i64 noundef 0, i64 noundef 1056) #18 ; 2 uses
  %.not39 = icmp eq i32 %i.hg, 0
  br i1 %.not39, label %bb.au, label %bb.bd

bb.au:                                            ; preds = %bb.at
  %i.hh = load ptr, ptr %i.gk, align 8
  %i.hi = getelementptr i8, ptr %i.hh, i64 352    ; 4 uses
  %i.hj = call i32 @__SCT__might_resched() #18    ; 0 uses
  %i.hk = load volatile i32, ptr %i.hi, align 4   ; 2 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %raw_atomic_fetch_add_unless.exit.i.i, label %.lr.ph.i.i, !prof !26

.lr.ph.i.i:                                       ; preds = %bb.au, %raw_atomic_try_cmpxchg.exit.i.i
  %.047.i.i = phi i32 [ %i.hr, %raw_atomic_try_cmpxchg.exit.i.i ], [ %i.hk, %bb.au ] ; 2 uses
  %i.hm = add i32 %.047.i.i, 1
  %i.hn = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hi, i32 %i.hm, ptr elementtype(i32) %i.hi, i32 %.047.i.i) #19, !srcloc !19 ; 2 uses
  %i.ho = extractvalue { i8, i32 } %i.hn, 0       ; 2 uses
  %i.hp = icmp ult i8 %i.ho, 2
  call void @llvm.assume(i1 %i.hp)
  %i.hq = trunc nuw i8 %i.ho to i1
  br i1 %i.hq, label %intel_engine_pm_get.exit, label %raw_atomic_try_cmpxchg.exit.i.i, !prof !20

raw_atomic_try_cmpxchg.exit.i.i:                  ; preds = %.lr.ph.i.i
  %i.hr = extractvalue { i8, i32 } %i.hn, 1       ; 2 uses
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %raw_atomic_fetch_add_unless.exit.i.i, label %.lr.ph.i.i, !prof !27

raw_atomic_fetch_add_unless.exit.i.i:             ; preds = %raw_atomic_try_cmpxchg.exit.i.i, %bb.au
  %i.ht = call i32 @__intel_wakeref_get_first(ptr noundef %i.hi) #18 ; 0 uses
  br label %intel_engine_pm_get.exit

intel_engine_pm_get.exit:                         ; preds = %.lr.ph.i.i, %raw_atomic_fetch_add_unless.exit.i.i
  %i.hu = call ptr @i915_request_create(ptr noundef %2) #18 ; 9 uses
  %i.hv = load ptr, ptr %i.gk, align 8
  %i.hw = getelementptr i8, ptr %i.hv, i64 352    ; 4 uses
  %i.hx = call i32 @__SCT__might_resched() #18    ; 0 uses
  %i.hy = load volatile i32, ptr %i.hw, align 4   ; 2 uses
  %i.hz = icmp eq i32 %i.hy, 1
  br i1 %i.hz, label %atomic_add_unless.exit.i.i.i, label %.lr.ph.i.i.i53, !prof !26

.lr.ph.i.i.i53:                                   ; preds = %intel_engine_pm_get.exit, %raw_atomic_try_cmpxchg.exit.i.i.i.i
  %.06.i.i.i = phi i32 [ %i.if, %raw_atomic_try_cmpxchg.exit.i.i.i.i ], [ %i.hy, %intel_engine_pm_get.exit ] ; 2 uses
  %i.ia = add i32 %.06.i.i.i, -1
  %i.ib = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock cmpxchgl $3, $1", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.hw, i32 %i.ia, ptr elementtype(i32) %i.hw, i32 %.06.i.i.i) #19, !srcloc !19 ; 2 uses
  %i.ic = extractvalue { i8, i32 } %i.ib, 0       ; 2 uses
  %i.id = icmp ult i8 %i.ic, 2
  call void @llvm.assume(i1 %i.id)
  %i.ie = trunc nuw i8 %i.ic to i1
  br i1 %i.ie, label %intel_engine_pm_put.exit, label %raw_atomic_try_cmpxchg.exit.i.i.i.i, !prof !20

raw_atomic_try_cmpxchg.exit.i.i.i.i:              ; preds = %.lr.ph.i.i.i53
  %i.if = extractvalue { i8, i32 } %i.ib, 1       ; 2 uses
  %i.ig = icmp eq i32 %i.if, 1
  br i1 %i.ig, label %atomic_add_unless.exit.i.i.i, label %.lr.ph.i.i.i53, !prof !27

atomic_add_unless.exit.i.i.i:                     ; preds = %raw_atomic_try_cmpxchg.exit.i.i.i.i, %intel_engine_pm_get.exit
  call void @__intel_wakeref_put_last(ptr noundef %i.hw, i64 noundef 0) #18
  br label %intel_engine_pm_put.exit

intel_engine_pm_put.exit:                         ; preds = %.lr.ph.i.i.i53, %atomic_add_unless.exit.i.i.i
  %i.ih = icmp ugt ptr %i.hu, inttoptr (i64 -4096 to ptr)
  br i1 %i.ih, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %intel_engine_pm_put.exit
  %i.ii = ptrtoint ptr %i.hu to i64
  %i.ij = trunc i64 %i.ii to i32
  br label %bb.bc

bb.aw:                                            ; preds = %intel_engine_pm_put.exit
  br i1 %spec.select.i, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ik = call i32 @i915_request_await_active(ptr noundef %i.hu, ptr noundef nonnull %3, i32 noundef 2) #18 ; 2 uses
  %.not40 = icmp eq i32 %i.ik, 0
  br i1 %.not40, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.il = call i32 @i915_active_add_request(ptr noundef nonnull %3, ptr noundef %i.hu) #18 ; 2 uses
  %.not41 = icmp eq i32 %i.il, 0
  br i1 %.not41, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay, %bb.aw
  %i.im = call i32 @_i915_vma_move_to_active(ptr noundef %.0.i, ptr noundef %i.hu, ptr noundef %i.hu, i32 noundef 0) #18 ; 2 uses
  %.not42 = icmp eq i32 %i.im, 0
  br i1 %.not42, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.in = getelementptr i8, ptr %i.hu, i64 80
  %i.io = load ptr, ptr %i.in, align 8
  %i.ip = getelementptr i8, ptr %i.io, i64 888
  %i.iq = load ptr, ptr %i.ip, align 8
  %.val = load i64, ptr %i.gm, align 8
  %.val44 = load i32, ptr %i.gn, align 8
  %i.ir = zext i32 %.val44 to i64
  %i.is = add i64 %.val, %i.ir
  %i.it = call i32 %i.iq(ptr noundef %i.hu, i64 noundef %i.is, i32 noundef 0, i32 noundef 1) #18
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax
  %.0 = phi i32 [ %i.im, %bb.az ], [ %i.it, %bb.ba ], [ %i.ik, %bb.ax ], [ %i.il, %bb.ay ]
  call void @i915_request_add(ptr noundef %i.hu) #18
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.av
  %.1 = phi i32 [ %i.ij, %bb.av ], [ %.0, %bb.bb ]
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.go, ptr elementtype(i32) %i.go) #19, !srcloc !31
  br label %bb.bd

bb.bd:                                            ; preds = %bb.at, %bb.bc
  %.2 = phi i32 [ %.1, %bb.bc ], [ %i.hg, %bb.at ] ; 2 uses
  %i.iu = icmp eq i32 %.2, -35
  br i1 %i.iu, label %bb.be, label %.thread59

bb.be:                                            ; preds = %.thread, %bb.bd
  %i.iv = call i32 @i915_gem_ww_ctx_backoff(ptr noundef nonnull %5) #18 ; 2 uses
  %.not43 = icmp eq i32 %i.iv, 0
  br i1 %.not43, label %bb.al, label %.thread59

.thread59:                                        ; preds = %10, %bb.be, %bb.bd
  %.3 = phi i32 [ %i.iv, %bb.be ], [ %.2, %bb.bd ], [ %.0.i.i48, %10 ] ; 3 uses
  call void @i915_gem_ww_ctx_fini(ptr noundef nonnull %5) #18
  %.val45 = load ptr, ptr %i.gg, align 8          ; 4 uses
  %i.iw = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %.val45, i32 -1, ptr elementtype(i32) %.val45) #19, !srcloc !28 ; 2 uses
  %i.ix = icmp eq i32 %i.iw, 1
  br i1 %i.ix, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.thread59
  %i.iy = icmp slt i32 %i.iw, 1
  br i1 %i.iy, label %bb.bg, label %i915_vma_put.exit, !prof !25

bb.bg:                                            ; preds = %bb.bf
  call void @refcount_warn_saturate(ptr noundef %.val45, i32 noundef 3) #18
  br label %i915_vma_put.exit

bb.bh:                                            ; preds = %.thread59
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !29
  call void @drm_gem_object_free(ptr noundef %.val45) #18, !callees !30, !inline_history !3
  br label %i915_vma_put.exit

i915_vma_put.exit:                                ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.aj
  %.032 = phi i32 [ %i.gf, %bb.aj ], [ %.3, %bb.bf ], [ %.3, %bb.bg ], [ %.3, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 %.032
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_request_await_active(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i915_active_add_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @_i915_vma_move_to_active(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i915_gem_context_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @show_dynamic_id(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #14 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 -120
  %i.b = load i32, ptr %i.a, align 8
  %i.c = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %i.b) #18
  %i.d = sext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @i915_mmio_range_table_contains(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__intel_wait_for_register(ptr noundef, i32, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -28, 1) i32 @append_oa_status(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i32 noundef range(i32 2, 4) %3) unnamed_addr #0 align 16 {
bb.a:
  %4 = alloca %struct.drm_i915_perf_record_header, align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i64 2251799813685248, ptr %4, align 8, !annotation !24
  store i32 %3, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.b = load i64, ptr %2, align 8                ; 2 uses
  %i.c = sub i64 %1, %i.b
  %i.d = icmp ult i64 %i.c, 8
  br i1 %i.d, label %bb.c, label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %i.b
  %i.f = call i64 @_copy_to_user(ptr noundef %i.e, ptr noundef nonnull %4, i64 noundef 8) #18
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %copy_to_user.exit
  %i.g = load i16, ptr %i.a, align 2
  %i.h = zext i16 %i.g to i64
  %i.i = load i64, ptr %2, align 8
  %i.j = add i64 %i.i, %i.h
  store i64 %i.j, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %copy_to_user.exit, %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -28, %bb.a ], [ -14, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -28, 1) i32 @append_oa_sample(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef %4) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.drm_i915_perf_record_header, align 8 ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 1, ptr %5, align 8, !annotation !24
  %i.e = getelementptr i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = trunc i32 %i.f to i16
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 2 uses
  store i16 %i.g, ptr %i.h, align 2
  %i.i = load i64, ptr %3, align 8                ; 2 uses
  %i.j = sub i64 %2, %i.i
  %.mask = and i32 %i.f, 65535
  %i.k = zext nneg i32 %.mask to i64
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %.critedge, label %copy_to_user.exit48

copy_to_user.exit48:                              ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 %i.i       ; 2 uses
  %i.n = call i64 @_copy_to_user(ptr noundef %i.m, ptr noundef nonnull %5, i64 noundef 8) #18
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %copy_to_user.exit48
  %i.o = getelementptr i8, ptr %i.m, i64 8        ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 240        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 16777216
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %4 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = icmp sgt i32 %i.d, %i.v
  br i1 %i.w, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %sext = shl i64 %i.u, 32
  %i.x = ashr exact i64 %sext, 32                 ; 3 uses
  %i.y = icmp ugt i64 %i.x, 2147483647
  br i1 %i.y, label %copy_to_user.exit42.thread, label %check_copy_size.exit.i39, !prof !25

copy_to_user.exit42.thread:                       ; preds = %bb.c
  call void asm sideeffect "294: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 294b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 294) #19, !srcloc !148
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.44, ptr nonnull @.str.45, i32 57, i32 2307, i64 16) #19, !srcloc !149
  call void asm sideeffect "295: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 295b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 295) #19, !srcloc !150
  br label %.critedge

check_copy_size.exit.i39:                         ; preds = %bb.c
  %i.z = call i64 @_copy_to_user(ptr noundef %i.o, ptr noundef %4, i64 noundef range(i64 -2147483648, 2147483648) %i.x) #18
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.d, label %.critedge

bb.d:                                             ; preds = %check_copy_size.exit.i39
  %i.ab = sub i32 %i.d, %i.v                      ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %copy_to_user.exit36.thread, label %check_copy_size.exit.i33, !prof !25

copy_to_user.exit36.thread:                       ; preds = %bb.d
  call void asm sideeffect "294: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 294b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 294) #19, !srcloc !148
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.44, ptr nonnull @.str.45, i32 57, i32 2307, i64 16) #19, !srcloc !149
  call void asm sideeffect "295: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 295b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 295) #19, !srcloc !150
  br label %.critedge

check_copy_size.exit.i33:                         ; preds = %bb.d
  %i.ad = sext i32 %i.ab to i64
  %i.ae = load ptr, ptr %i.p, align 8
  %i.af = getelementptr i8, ptr %i.o, i64 %i.x
  %i.ag = call i64 @_copy_to_user(ptr noundef %i.af, ptr noundef %i.ae, i64 noundef range(i64 -2147483648, 2147483648) %i.ad) #18
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.ai = icmp slt i32 %i.d, 0
  br i1 %i.ai, label %copy_to_user.exit.thread, label %check_copy_size.exit.i, !prof !25

copy_to_user.exit.thread:                         ; preds = %bb.e
  call void asm sideeffect "294: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 294b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 294) #19, !srcloc !148
  call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.44, ptr nonnull @.str.45, i32 57, i32 2307, i64 16) #19, !srcloc !149
  call void asm sideeffect "295: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 295b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 295) #19, !srcloc !150
  br label %.critedge

check_copy_size.exit.i:                           ; preds = %bb.e
  %i.aj = sext i32 %i.d to i64
  %i.ak = call i64 @_copy_to_user(ptr noundef %i.o, ptr noundef %4, i64 noundef range(i64 -2147483648, 2147483648) %i.aj) #18
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.f, label %.critedge

bb.f:                                             ; preds = %check_copy_size.exit.i, %check_copy_size.exit.i33
end_hunk_2
