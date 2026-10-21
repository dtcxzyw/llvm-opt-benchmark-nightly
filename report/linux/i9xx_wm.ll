Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i9xx_wm?download=true
inline.NumInlined: 555
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 20
begin_hunk_0_@i9xx_wm_init:bb.a

bb.m:                                             ; preds = %ilk_increase_wm_latency.exit22.thread.i.i
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.m, %ilk_increase_wm_latency.exit22.thread.i.i
  %i.cs = phi ptr [ %i.cr, %bb.m ], [ null, %ilk_increase_wm_latency.exit22.thread.i.i ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.cs, i32 noundef 2, ptr noundef @.str.13) #12
  tail call void @intel_print_wm_latency(ptr noundef %0, ptr noundef @.str.10, ptr noundef %i.bb) #12
  tail call void @intel_print_wm_latency(ptr noundef %0, ptr noundef @.str.11, ptr noundef %i.ba) #12
  tail call void @intel_print_wm_latency(ptr noundef %0, ptr noundef @.str.12, ptr noundef %i.bc) #12
  br label %snb_wm_latency_quirk.exit.i

snb_wm_latency_quirk.exit.i:                      ; preds = %__drm_to_dev.exit.i.i, %ilk_increase_wm_latency.exit22.i.i
  %i.ct = getelementptr i8, ptr %0, i64 5406      ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 2
  %i.cv = icmp eq i16 %i.cu, 0
  br i1 %i.cv, label %bb.n, label %bb.p

bb.n:                                             ; preds = %snb_wm_latency_quirk.exit.i
  %i.cw = getelementptr i8, ptr %0, i64 5416
  %i.cx = load i16, ptr %i.cw, align 8
  %i.cy = icmp eq i16 %i.cx, 0
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cz = getelementptr i8, ptr %0, i64 5426
  %i.da = load i16, ptr %i.cz, align 2
  %i.db = icmp eq i16 %i.da, 0
  br i1 %i.db, label %ilk_setup_wm_latency.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %snb_wm_latency_quirk.exit.i
  store i16 0, ptr %i.ct, align 2
  %i.dc = getelementptr i8, ptr %0, i64 5416
  store i16 0, ptr %i.dc, align 8
  %i.dd = getelementptr i8, ptr %0, i64 5426
  store i16 0, ptr %i.dd, align 2
  %i.de = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i28.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i28.i, label %__drm_to_dev.exit.i29.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  br label %__drm_to_dev.exit.i29.i

__drm_to_dev.exit.i29.i:                          ; preds = %bb.q, %bb.p
  %i.dh = phi ptr [ %i.dg, %bb.q ], [ null, %bb.p ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dh, i32 noundef 2, ptr noundef @.str.14) #12
  tail call void @intel_print_wm_latency(ptr noundef %0, ptr noundef @.str.10, ptr noundef %i.bb) #12
  tail call void @intel_print_wm_latency(ptr noundef %0, ptr noundef @.str.11, ptr noundef %i.ba) #12
  tail call void @intel_print_wm_latency(ptr noundef %0, ptr noundef @.str.12, ptr noundef %i.bc) #12
  br label %ilk_setup_wm_latency.exit

ilk_setup_wm_latency.exit:                        ; preds = %intel_fixup_cur_wm_latency.exit.i, %bb.o, %__drm_to_dev.exit.i29.i
  %i.di = getelementptr i8, ptr %0, i64 5392
  store ptr @ilk_wm_funcs, ptr %i.di, align 8
  br label %bb.aj

bb.r:                                             ; preds = %bb.a
  %i.dj = and i64 %i.d, 135266304
  %or.cond = icmp eq i64 %i.dj, 0
  br i1 %or.cond, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dk = and i64 %i.d, 134217728
  %.not36 = icmp eq i64 %i.dk, 0
  %i.dl = getelementptr i8, ptr %0, i64 5400
  store i16 3, ptr %i.dl, align 8
  %i.dm = getelementptr i8, ptr %0, i64 5536      ; 2 uses
  store i8 1, ptr %i.dm, align 8
  br i1 %.not36, label %vlv_setup_wm_latency.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = getelementptr i8, ptr %0, i64 5402
  store i16 12, ptr %i.dn, align 2
  %i.do = getelementptr i8, ptr %0, i64 5404
  store i16 33, ptr %i.do, align 4
  store i8 3, ptr %i.dm, align 8
  br label %vlv_setup_wm_latency.exit

vlv_setup_wm_latency.exit:                        ; preds = %bb.s, %bb.t
  %i.dp = getelementptr i8, ptr %0, i64 5392
  store ptr @vlv_wm_funcs, ptr %i.dp, align 8
  br label %bb.aj

bb.u:                                             ; preds = %bb.r
  %i.dq = and i64 %i.d, 1
  %.not37 = icmp eq i64 %i.dq, 0
  br i1 %.not37, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dr = getelementptr i8, ptr %0, i64 5400
  store i16 5, ptr %i.dr, align 8
  %i.ds = getelementptr i8, ptr %0, i64 5402
  store i16 12, ptr %i.ds, align 2
  %i.dt = getelementptr i8, ptr %0, i64 5404
  store i16 35, ptr %i.dt, align 4
  %i.du = getelementptr i8, ptr %0, i64 5536
  store i8 3, ptr %i.du, align 8
  %i.dv = getelementptr i8, ptr %0, i64 5392
  store ptr @g4x_wm_funcs, ptr %i.dv, align 8
  br label %bb.aj

bb.w:                                             ; preds = %bb.u
  %i.dw = and i64 %i.d, 4096
  %.not38 = icmp eq i64 %i.dw, 0
  br i1 %.not38, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dx = tail call fastcc ptr @pnv_get_cxsr_latency(ptr noundef %0) #13, !srcloc !55
  %.not44 = icmp eq ptr %i.dx, null
  br i1 %.not44, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dy = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i45 = icmp eq ptr %i.dy, null
  br i1 %.not.i45, label %__drm_to_dev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = getelementptr i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.y, %bb.z
  %i.eb = phi ptr [ %i.ea, %bb.z ], [ null, %bb.y ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.eb, ptr noundef @.str.5) #15
  %i.ec = tail call zeroext i1 @intel_set_memory_cxsr(ptr noundef %0, i1 noundef zeroext false) #13 ; 0 uses
  %i.ed = getelementptr i8, ptr %0, i64 5392
  store ptr @nop_funcs, ptr %i.ed, align 8
  br label %bb.aj

bb.aa:                                            ; preds = %bb.x
  %i.ee = getelementptr i8, ptr %0, i64 5392
  store ptr @pnv_wm_funcs, ptr %i.ee, align 8
  br label %bb.aj

bb.ab:                                            ; preds = %bb.w
  %i.ef = getelementptr i8, ptr %0, i64 1168
  %i.eg = load i16, ptr %i.ef, align 8
  switch i16 %i.eg, label %bb.ah [
    i16 4, label %bb.ac
    i16 3, label %bb.ad
    i16 2, label %bb.ae
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.eh = getelementptr i8, ptr %0, i64 5392
  store ptr @i965_wm_funcs, ptr %i.eh, align 8
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ab
  %i.ei = getelementptr i8, ptr %0, i64 5392
  store ptr @i9xx_wm_funcs, ptr %i.ei, align 8
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ab
  %i.ej = getelementptr i8, ptr %0, i64 1188
  %i.ek = load i8, ptr %i.ej, align 4
  %i.el = zext i8 %i.ek to i32
  %i.em = tail call i64 @llvm.read_register.i64(metadata !6)
  %i.en = tail call { i32, i64 } asm "# ALT: oldinstr\0A771:\0A\09call __sw_hweight32\0A772:\0A# ALT: padding\0A.skip -(((775f-774f)-(772b-771b)) > 0) * ((775f-774f)-(772b-771b)),0x90\0A773:\0A.pushsection .altinstructions, \22aM\22, @progbits, 14\0A .long 771b - .\0A .long 774f - .\0A .4byte ( 4*32+23)\0A .byte 773b-771b\0A .byte 775f-774f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A# ALT: replacement\0A774:\0A\09popcntl $2, $0\0A775:\0A.popsection\0A", "={ax},={rsp},{di},{rsp},~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 256) %i.el, i64 %i.em) #16, !srcloc !29 ; 2 uses
  %i.eo = extractvalue { i32, i64 } %i.en, 1
  tail call void @llvm.write_register.i64(metadata !6, i64 %i.eo)
  %i.ep = extractvalue { i32, i64 } %i.en, 0
  %i.eq = icmp eq i32 %i.ep, 1
  %i.er = getelementptr i8, ptr %0, i64 5392      ; 2 uses
  br i1 %i.eq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr @i845_wm_funcs, ptr %i.er, align 8
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  store ptr @i9xx_wm_funcs, ptr %i.er, align 8
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ab
  %i.es = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i46 = icmp eq ptr %i.es, null
  br i1 %.not.i46, label %__drm_to_dev.exit47, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.et = getelementptr i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  br label %__drm_to_dev.exit47

__drm_to_dev.exit47:                              ; preds = %bb.ah, %bb.ai
  %i.ev = phi ptr [ %i.eu, %bb.ai ], [ null, %bb.ah ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ev, ptr noundef @.str.6, ptr noundef @__func__.i9xx_wm_init) #15
  %i.ew = getelementptr i8, ptr %0, i64 5392
  store ptr @nop_funcs, ptr %i.ew, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %vlv_setup_wm_latency.exit, %bb.aa, %__drm_to_dev.exit, %bb.ad, %bb.af, %bb.ag, %__drm_to_dev.exit47, %bb.ac, %bb.v, %ilk_setup_wm_latency.exit
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc ptr @pnv_get_cxsr_latency(ptr noundef %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call ptr @intel_dram_info(ptr noundef %0) #12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 2
  %.not = icmp eq i64 %i.e, 0
  %i.f = icmp ne i32 %i.b, 2
  %i.g = getelementptr i8, ptr %i.a, i64 4        ; 2 uses
  %i.h = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.i = getelementptr [14 x i8], ptr @cxsr_latency_table, i64 %indvars.iv ; 3 uses
  %1 = icmp samesign ugt i64 %indvars.iv, 14
  %i.j = xor i1 %1, %.not
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  %i.l = lshr i32 831283992, %i.k
  %i.m = trunc i32 %i.l to i1
  %i.n = xor i1 %i.f, %i.m
  %or.cond = select i1 %i.j, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.g, align 4
  %i.p = add i32 %i.o, 500
  %i.q = udiv i32 %i.p, 1000
  %i.r = getelementptr i8, ptr %i.i, i64 2
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = icmp eq i32 %i.q, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.h, align 4
  %i.w = add i32 %i.v, 500
  %i.x = udiv i32 %i.w, 1000
  %i.y = getelementptr i8, ptr %i.i, i64 4
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = icmp eq i32 %i.x, %i.aa
  br i1 %i.ab, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 30
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !56

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.f, %bb.g
  %i.af = phi ptr [ %i.ae, %bb.g ], [ null, %bb.f ]
  %i.ag = tail call ptr @intel_dram_type_str(i32 noundef %i.b) #12
  %i.ah = load i32, ptr %i.g, align 4
  %i.ai = load i32, ptr %i.h, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.af, i32 noundef 2, ptr noundef @.str.49, ptr noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.ai) #12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %__drm_to_dev.exit
  %.2 = phi ptr [ null, %__drm_to_dev.exit ], [ %i.i, %bb.d ]
  ret ptr %.2
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_get(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_put(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @to_intel_uncore(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_intel_memory_cxsr(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_atomic_commit_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_print_wm_latency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @intel_mchbar_read64_2x32(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_mchbar_read(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -22, 1) i32 @ilk_compute_watermarks(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.ilk_wm_maximums, align 8    ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 136        ; 2 uses
  %.val83.i = load i32, ptr %i.f, align 8
  %i.g = zext i32 %.val83.i to i64
  %i.h = getelementptr [56 x i8], ptr %.val.i, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store i64 0, ptr %2, align 8, !annotation !24
  %i.k = getelementptr i8, ptr %i.j, i64 1588     ; 4 uses
  %i.l = getelementptr i8, ptr %i.j, i64 336
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 648      ; 3 uses
  %.pn91.i = load ptr, ptr %i.p, align 8          ; 2 uses
  %.not8992.i = icmp eq ptr %.pn91.i, %i.p
  br i1 %.not8992.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.j, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr i8, ptr %i.m, i64 32
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i
  %.pn96.i = phi ptr [ %.pn91.i, %.lr.ph.i ], [ %.pn.i, %bb.h ] ; 4 uses
  %.06895.i = phi ptr [ null, %.lr.ph.i ], [ %.169.i, %bb.h ] ; 5 uses
  %.07094.i = phi ptr [ null, %.lr.ph.i ], [ %.171.i, %bb.h ] ; 5 uses
  %.07293.i = phi ptr [ null, %.lr.ph.i ], [ %.173.i, %bb.h ] ; 5 uses
  %i.t = getelementptr i8, ptr %.pn96.i, i64 1212
  %.065.val.i = load i32, ptr %i.t, align 4       ; 2 uses
  %i.u = shl nuw i32 1, %.065.val.i
  %i.v = and i32 %i.u, %i.r
  %.not80.i = icmp eq i32 %i.v, 0
  br i1 %.not80.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val84.i = load ptr, ptr %i.s, align 8
  %i.w = zext i32 %.065.val.i to i64
  %i.x = getelementptr [32 x i8], ptr %.val84.i, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %__drm_atomic_get_current_plane_state.exit.i, label %__drm_atomic_get_current_plane_state.exit.thread.i

__drm_atomic_get_current_plane_state.exit.i:      ; preds = %bb.e
  %i.aa = getelementptr i8, ptr %.pn96.i, i64 1224
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not81.i = icmp eq ptr %i.ab, null
  br i1 %.not81.i, label %bb.h, label %__drm_atomic_get_current_plane_state.exit.thread.i

__drm_atomic_get_current_plane_state.exit.thread.i: ; preds = %__drm_atomic_get_current_plane_state.exit.i, %bb.e
  %.0.i87.i = phi ptr [ %i.ab, %__drm_atomic_get_current_plane_state.exit.i ], [ %i.z, %bb.e ] ; 3 uses
  %i.ac = getelementptr i8, ptr %.pn96.i, i64 1208
  %i.ad = load i32, ptr %i.ac, align 8
  switch i32 %i.ad, label %.fold.split.i [
    i32 1, label %bb.h
    i32 0, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %__drm_atomic_get_current_plane_state.exit.thread.i
  br label %bb.h

bb.g:                                             ; preds = %__drm_atomic_get_current_plane_state.exit.thread.i
  br label %bb.h

.fold.split.i:                                    ; preds = %__drm_atomic_get_current_plane_state.exit.thread.i
  br label %bb.h

bb.h:                                             ; preds = %.fold.split.i, %bb.g, %bb.f, %__drm_atomic_get_current_plane_state.exit.thread.i, %__drm_atomic_get_current_plane_state.exit.i, %bb.d
  %.173.i = phi ptr [ %.07293.i, %bb.d ], [ %.07293.i, %bb.f ], [ %.07293.i, %bb.g ], [ %.0.i87.i, %__drm_atomic_get_current_plane_state.exit.thread.i ], [ %.07293.i, %__drm_atomic_get_current_plane_state.exit.i ], [ %.07293.i, %.fold.split.i ] ; 2 uses
  %.171.i = phi ptr [ %.07094.i, %bb.d ], [ %.0.i87.i, %bb.f ], [ %.07094.i, %bb.g ], [ %.07094.i, %__drm_atomic_get_current_plane_state.exit.thread.i ], [ %.07094.i, %__drm_atomic_get_current_plane_state.exit.i ], [ %.07094.i, %.fold.split.i ] ; 2 uses
  %.169.i = phi ptr [ %.06895.i, %bb.d ], [ %.06895.i, %bb.f ], [ %.0.i87.i, %bb.g ], [ %.06895.i, %__drm_atomic_get_current_plane_state.exit.thread.i ], [ %.06895.i, %__drm_atomic_get_current_plane_state.exit.i ], [ %.06895.i, %.fold.split.i ] ; 2 uses
  %.pn.i = load ptr, ptr %.pn96.i, align 8        ; 2 uses
  %.not89.i = icmp eq ptr %.pn.i, %i.p
  br i1 %.not89.i, label %._crit_edge.i, label %bb.d, !llvm.loop !57

._crit_edge.i:                                    ; preds = %bb.h, %bb.c
  %.072.lcssa.i = phi ptr [ null, %bb.c ], [ %.173.i, %bb.h ] ; 2 uses
  %.070.lcssa.i = phi ptr [ null, %bb.c ], [ %.171.i, %bb.h ] ; 2 uses
  %.068.lcssa.i = phi ptr [ null, %bb.c ], [ %.169.i, %bb.h ] ; 2 uses
  %i.ae = getelementptr i8, ptr %i.j, i64 344
end_hunk_0
