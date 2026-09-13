Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/skl_watermark?download=true
inline.NumInlined: 430
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@pipe_mbus_dbox_ctl_update:bb.a
  %i.aq = icmp ult i32 %i.ap, 4
  br i1 %i.aq, label %switch.lookup, label %xelpdp_is_only_pipe_per_dbuf_bank.exit.thread.i

xelpdp_is_only_pipe_per_dbuf_bank.exit.thread.i:  ; preds = %bb.m
  %i.ar = sext i32 %i.ap to i64
  %i.as = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.21, ptr nonnull @.str.2, i32 3387, i32 2321, i64 16) #20, !srcloc !114
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.as, ptr noundef nonnull @.str.31, i64 noundef %i.ar) #16
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !115
  br label %bb.o

switch.lookup:                                    ; preds = %bb.m
  %i.at = load i8, ptr %i.b, align 1
  %switch.shiftamt = shl nuw nsw i32 %i.ap, 3
  %switch.downshift = lshr i32 151389705, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %i.au = and i8 %i.at, %switch.masked
  %i.av = zext nneg i8 %i.au to i64               ; 2 uses
  %i.aw = add nsw i64 %i.av, -1                   ; 2 uses
  %i.ax = xor i64 %i.aw, %i.av
  %i.ay = icmp ult i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %switch.lookup
  %i.az = or i32 %i.ah, 49152
  br label %pipe_mbus_dbox_ctl.exit

bb.o:                                             ; preds = %switch.lookup, %xelpdp_is_only_pipe_per_dbuf_bank.exit.thread.i
  %i.ba = or i32 %i.ah, 32768
  br label %pipe_mbus_dbox_ctl.exit

pipe_mbus_dbox_ctl.exit:                          ; preds = %bb.l, %bb.n, %bb.o
  %.4.i = phi i32 [ %i.az, %bb.n ], [ %i.ba, %bb.o ], [ %i.ah, %bb.l ]
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.l) #16
  %.val.i = load ptr, ptr %0, align 8
  %i.bb = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #16 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef %i.bb, i32 %i.l, i32 noundef range(i32 0, 536813568) %.4.i, i1 noundef zeroext true) #16, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.l) #16
  br label %bb.p

bb.p:                                             ; preds = %pipe_mbus_dbox_ctl.exit, %bb.b
  %.pn = load ptr, ptr %.pn18, align 8            ; 2 uses
  %.not = icmp eq ptr %.pn, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !113

._crit_edge:                                      ; preds = %bb.p, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @__intel_display_wa(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_cdclk_is_decreasing_later(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #11

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #12

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_display_power_get_if_enabled(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @skl_ddb_get_hw_plane_state(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 8) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp eq i32 %2, 7
  %i.b = shl i32 %1, 12                           ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %i.b, 459132
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i32 %2, 8
  %i.e = or disjoint i32 %i.d, %i.b               ; 3 uses
  %i.f = add i32 %i.e, 459388                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.f) #16
  %.val.i36 = load ptr, ptr %0, align 8
  %i.g = tail call ptr @to_intel_uncore(ptr noundef %.val.i36) #16 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i32 %i.i(ptr noundef %i.g, i32 %i.f, i1 noundef zeroext true) #16, !inline_history !0 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.f) #16
  %i.k = trunc i32 %i.j to i16
  %i.l = and i16 %i.k, 8191
  %i.m = lshr i32 %i.j, 16
  %i.n = trunc nuw i32 %i.m to i16
  %i.o = and i16 %i.n, 8191                       ; 2 uses
  store i16 %i.l, ptr %3, align 2
  %.not.i37 = icmp eq i16 %i.o, 0
  %i.p = add nuw nsw i16 %i.o, 1
  %spec.select.i38 = select i1 %.not.i37, i16 0, i16 %i.p
  %i.q = getelementptr i8, ptr %3, i64 2
  store i16 %spec.select.i38, ptr %i.q, align 2
  %i.r = getelementptr i8, ptr %0, i64 1168       ; 2 uses
  %i.s = load i16, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp ugt i16 %i.s, 29
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = add i32 %i.e, 459380                     ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.u) #16
  %.val.i39 = load ptr, ptr %0, align 8
  %i.v = tail call ptr @to_intel_uncore(ptr noundef %.val.i39) #16 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 144
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call i32 %i.x(ptr noundef %i.v, i32 %i.u, i1 noundef zeroext true) #16, !inline_history !0 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.u) #16
  %i.z = lshr i32 %i.y, 16
  %i.aa = trunc nuw i32 %i.z to i16
  %i.ab = and i16 %i.aa, 8191
  store i16 %i.ab, ptr %5, align 2
  %i.ac = trunc i32 %i.y to i16
  %i.ad = and i16 %i.ac, 8191
  store i16 %i.ad, ptr %6, align 2
  %.pr = load i16, ptr %i.r, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ae = phi i16 [ %.pr, %bb.d ], [ %i.s, %bb.c ]
  %i.af = icmp ugt i16 %i.ae, 10
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add i32 %i.e, 459384
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.f
  %.sink56 = phi i32 [ %i.ag, %bb.f ], [ %i.c, %bb.b ] ; 3 uses
  %.sink47 = phi ptr [ %4, %bb.f ], [ %3, %bb.b ] ; 2 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %.sink56) #16
  %.val.i40 = load ptr, ptr %0, align 8
  %i.ah = tail call ptr @to_intel_uncore(ptr noundef %.val.i40) #16 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 144
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i32 %i.aj(ptr noundef %i.ah, i32 %.sink56, i1 noundef zeroext true) #16 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %.sink56) #16
  %i.al = trunc i32 %i.ak to i16
  %i.am = and i16 %i.al, 8191
  %i.an = lshr i32 %i.ak, 16
  %i.ao = trunc nuw i32 %i.an to i16
  %i.ap = and i16 %i.ao, 8191                     ; 2 uses
  store i16 %i.am, ptr %.sink47, align 2
  %.not.i41 = icmp eq i16 %i.ap, 0
  %i.aq = add nuw nsw i16 %i.ap, 1
  %spec.select.i42 = select i1 %.not.i41, i16 0, i16 %i.aq
  %i.ar = getelementptr i8, ptr %.sink47, i64 2
  store i16 %spec.select.i42, ptr %i.ar, align 2
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_display_power_put_unchecked(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_parent_pcode_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_print_wm_latency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @skl_compute_wm(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %1 = alloca %struct.skl_wm_level, align 2       ; 9 uses
  %2 = alloca %struct.skl_wm_params, align 4      ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.skl_prefill_ctx, align 4    ; 8 uses
  %4 = alloca [8 x %struct.skl_wm_level], align 16 ; 9 uses
  %5 = alloca %struct.skl_wm_params, align 4      ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 25 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__drm_to_display(ptr noundef nonnull %i.d) #16 ; 2 uses
  %.pr = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not59 = icmp eq ptr %.pr, null
  br i1 %.not59, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__drm_to_display(ptr noundef nonnull %.pr) #16
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b, %bb.c
  %i.g = phi ptr [ %i.e, %bb.c ], [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.h = phi ptr [ %i.f, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %i.j = getelementptr i8, ptr %0, i64 40         ; 10 uses
  %i.k = getelementptr i8, ptr %0, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %.thread
  %.pn.in = phi ptr [ %i.i, %.thread ], [ %.pn, %.backedge ]
  %.pn = load ptr, ptr %.pn.in, align 8           ; 5 uses
  %.046 = getelementptr i8, ptr %.pn, i64 -1648
  %i.l = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not60 = icmp eq ptr %i.l, null
  br i1 %.not60, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call ptr @__drm_to_display(ptr noundef nonnull %i.l) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.n = phi ptr [ %i.m, %bb.e ], [ null, %bb.d ]
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %.not149 = icmp eq ptr %.pn, %i.o
  br i1 %.not149, label %bb.co, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val74 = load ptr, ptr %i.j, align 8
  %i.p = getelementptr i8, ptr %.pn, i64 -1512    ; 2 uses
  %.046.val = load i32, ptr %i.p, align 8
  %i.q = zext i32 %.046.val to i64
  %i.r = getelementptr [56 x i8], ptr %.val74, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not72 = icmp eq ptr %i.t, null
  br i1 %.not72, label %.backedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %.046, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = call ptr @__drm_to_display(ptr noundef nonnull %i.u) #16
  %.val.i.pre = load ptr, ptr %i.j, align 8
  %.val35.i.pre = load i32, ptr %i.p, align 8
  %.phi.trans.insert = zext i32 %.val35.i.pre to i64
  %.phi.trans.insert253 = getelementptr [56 x i8], ptr %.val.i.pre, i64 %.phi.trans.insert
  %.phi.trans.insert254 = getelementptr i8, ptr %.phi.trans.insert253, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert254, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.w = phi ptr [ %.pre, %bb.i ], [ %i.t, %bb.h ] ; 43 uses
  %i.x = phi ptr [ %i.v, %bb.i ], [ null, %bb.h ]
  %i.y = load ptr, ptr %i.c, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 640
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %.pn, i64 16
  %i.ad = getelementptr i8, ptr %i.x, i64 1168
  %i.ae = getelementptr i8, ptr %i.w, i64 1484    ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %icl_build_plane_wm.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %icl_build_plane_wm.exit.thread.i ] ; 2 uses
  %i.af = load ptr, ptr %i.k, align 8
  %i.ag = getelementptr [32 x i8], ptr %i.af, i64 %indvars.iv.i ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8            ; 17 uses
  %.not32.i = icmp eq ptr %i.ah, null
  br i1 %.not32.i, label %icl_build_plane_wm.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.ah, i64 1360
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = load i32, ptr %i.ac, align 8
  %.not33.i = icmp eq i32 %i.al, %i.am
  br i1 %.not33.i, label %bb.m, label %icl_build_plane_wm.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.an = load i16, ptr %i.ad, align 8
  %i.ao = icmp ugt i16 %i.an, 10
  %i.ap = load ptr, ptr %i.aj, align 8            ; 6 uses
  br i1 %i.ao, label %bb.n, label %bb.ah

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = call ptr @__drm_to_display(ptr noundef nonnull %i.aq) #16
  %.pre.i.i = load ptr, ptr %i.aj, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.as = phi ptr [ %.pre.i.i, %bb.o ], [ %i.ap, %bb.n ] ; 3 uses
  %i.at = phi ptr [ %i.ar, %bb.o ], [ null, %bb.n ] ; 6 uses
  %i.au = getelementptr i8, ptr %i.aj, i64 491
  %i.av = load i8, ptr %i.au, align 1, !range !18, !noundef !19
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %icl_build_plane_wm.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr i8, ptr %i.as, i64 1356
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr [132 x i8], ptr %i.ae, i64 %i.az
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(132) %i.ba, i8 0, i64 132, i1 false)
  %i.bb = getelementptr i8, ptr %i.aj, i64 512    ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %.not59.i.i = icmp eq ptr %i.bc, null
  br i1 %.not59.i.i, label %bb.af, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr i8, ptr %i.aj, i64 192
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call zeroext i1 @intel_wm_plane_visible(ptr noundef %i.w, ptr noundef %i.aj) #16
  br i1 %i.bf, label %bb.x, label %bb.s, !prof !24

bb.s:                                             ; preds = %bb.r
  %i.bg = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %__drm_to_dev.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.t, %bb.s
  %i.bj = phi ptr [ %i.bi, %bb.t ], [ null, %bb.s ]
  %i.bk = call ptr @dev_driver_string(ptr noundef %i.bj) #16 ; 0 uses
  %i.bl = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 2151, i32 2321, i64 16) #20, !srcloc !141
  %i.bm = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i67.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i67.i.i, label %__drm_to_dev.exit68.i.i, label %bb.u

bb.u:                                             ; preds = %__drm_to_dev.exit.i.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  br label %__drm_to_dev.exit68.i.i

__drm_to_dev.exit68.i.i:                          ; preds = %bb.u, %__drm_to_dev.exit.i.i
  %i.bp = phi ptr [ %i.bo, %bb.u ], [ null, %__drm_to_dev.exit.i.i ]
  %i.bq = call ptr @dev_driver_string(ptr noundef %i.bp) #16
  %i.br = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i69.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i69.i.i, label %__drm_to_dev.exit70.i.i, label %bb.v

bb.v:                                             ; preds = %__drm_to_dev.exit68.i.i
  %i.bs = getelementptr i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  br label %__drm_to_dev.exit70.i.i

__drm_to_dev.exit70.i.i:                          ; preds = %bb.v, %__drm_to_dev.exit68.i.i
  %i.bu = phi ptr [ %i.bt, %bb.v ], [ null, %__drm_to_dev.exit68.i.i ] ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 80
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %.not.i71.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i71.i.i, label %bb.w, label %dev_name.exit74.i.i

bb.w:                                             ; preds = %__drm_to_dev.exit70.i.i
  %.val.i73.i.i = load ptr, ptr %i.bu, align 8
  br label %dev_name.exit74.i.i

dev_name.exit74.i.i:                              ; preds = %bb.w, %__drm_to_dev.exit70.i.i
  %.0.i72.i.i = phi ptr [ %.val.i73.i.i, %bb.w ], [ %i.bw, %__drm_to_dev.exit70.i.i ]
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.bl, ptr noundef %i.bq, ptr noundef %.0.i72.i.i, ptr noundef nonnull @.str.41) #16
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !142
  br label %bb.x

bb.x:                                             ; preds = %dev_name.exit74.i.i, %bb.r
  %i.bx = getelementptr i8, ptr %i.be, i64 72
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 21
  %i.ca = load i8, ptr %i.bz, align 1, !range !18, !noundef !19
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.y, label %.critedge.i.i

bb.y:                                             ; preds = %bb.x
  %i.cc = getelementptr i8, ptr %i.by, i64 5
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = icmp eq i8 %i.cd, 1
  br i1 %i.ce, label %.critedge.i.i, label %bb.ad, !prof !23

.critedge.i.i:                                    ; preds = %bb.y, %bb.x
  %i.cf = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i75.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i75.i.i, label %__drm_to_dev.exit76.i.i, label %bb.z

bb.z:                                             ; preds = %.critedge.i.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  br label %__drm_to_dev.exit76.i.i

__drm_to_dev.exit76.i.i:                          ; preds = %bb.z, %.critedge.i.i
  %i.ci = phi ptr [ %i.ch, %bb.z ], [ null, %.critedge.i.i ]
  %i.cj = call ptr @dev_driver_string(ptr noundef %i.ci) #16 ; 0 uses
  %i.ck = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.2, i32 2153, i32 2321, i64 16) #20, !srcloc !143
  %i.cl = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i83.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i83.i.i, label %__drm_to_dev.exit84.i.i, label %bb.aa

bb.aa:                                            ; preds = %__drm_to_dev.exit76.i.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  br label %__drm_to_dev.exit84.i.i

__drm_to_dev.exit84.i.i:                          ; preds = %bb.aa, %__drm_to_dev.exit76.i.i
  %i.co = phi ptr [ %i.cn, %bb.aa ], [ null, %__drm_to_dev.exit76.i.i ]
  %i.cp = call ptr @dev_driver_string(ptr noundef %i.co) #16
  %i.cq = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not.i85.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i85.i.i, label %__drm_to_dev.exit86.i.i, label %bb.ab

bb.ab:                                            ; preds = %__drm_to_dev.exit84.i.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  br label %__drm_to_dev.exit86.i.i

__drm_to_dev.exit86.i.i:                          ; preds = %bb.ab, %__drm_to_dev.exit84.i.i
  %i.ct = phi ptr [ %i.cs, %bb.ab ], [ null, %__drm_to_dev.exit84.i.i ] ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 80
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not.i87.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i87.i.i, label %bb.ac, label %dev_name.exit90.i.i

bb.ac:                                            ; preds = %__drm_to_dev.exit86.i.i
  %.val.i89.i.i = load ptr, ptr %i.ct, align 8
  br label %dev_name.exit90.i.i
end_hunk_0
begin_hunk_1_@skl_compute_wm:bb.a
  %i.fh = zext nneg i8 %i.fg to i32
  %spec.select.i.i.us.i.i.i = add nuw nsw i32 %i.fh, %i.fb
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0.i.i.us.i.i.i = phi i32 [ %i.fb, %bb.ar ], [ %spec.select.i.i.us.i.i.i, %bb.as ] ; 2 uses
  %.val.i.i.us.i.i.i = load i16, ptr %i.ev, align 8
  %i.fi = icmp eq i16 %.val.i.i.us.i.i.i, 9
  %i.fj = add nuw nsw i32 %.0.i.i.us.i.i.i, 15
  %spec.select.i.i.i = select i1 %i.fi, i32 %i.fj, i32 %.0.i.i.us.i.i.i
  br label %skl_wm_latency.exit.i.us.i.i.i

skl_wm_latency.exit.i.us.i.i.i:                   ; preds = %bb.at, %.lr.ph.split.i.us.i.i.i
  %.014.i.i.us.i.i.i = phi i32 [ 0, %.lr.ph.split.i.us.i.i.i ], [ %spec.select.i.i.i, %bb.at ]
  %i.fk = trunc nuw nsw i64 %indvars.iv.i.us.i.i.i to i32
  call fastcc void @skl_compute_plane_wm(ptr noundef readonly %i.w, ptr noundef readonly %i.ap, i32 noundef %i.fk, i32 noundef %.014.i.i.us.i.i.i, ptr noundef nonnull readonly %5, ptr noundef %.021.i.us.i.i.i, ptr noundef %i.ey) #17, !srcloc !31
  %indvars.iv.next.i.us.i.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i.i, 1 ; 2 uses
  %i.fl = load i8, ptr %i.eq, align 8
  %i.fm = zext i8 %i.fl to i64
  %i.fn = icmp samesign ult i64 %indvars.iv.next.i.us.i.i.i, %i.fm
  br i1 %i.fn, label %.lr.ph.split.i.us.i.i.i, label %skl_compute_wm_levels.exit.i.i.i, !llvm.loop !6

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %skl_wm_latency.exit.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %skl_wm_latency.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ] ; 4 uses
  %.021.i.i.i.i = phi ptr [ %i.fo, %skl_wm_latency.exit.i.i.i.i ], [ %4, %.lr.ph.i.i.i.i ]
  %i.fo = getelementptr [12 x i8], ptr %4, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.fp = getelementptr [2 x i8], ptr %i.es, i64 %indvars.iv.i.i.i.i
  %i.fq = load i16, ptr %i.fp, align 2            ; 2 uses
  %i.fr = zext i16 %i.fq to i32                   ; 2 uses
  %i.fs = icmp eq i16 %i.fq, 0
  br i1 %i.fs, label %skl_wm_latency.exit.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.split.i.i.i.i
  %i.ft = load i64, ptr %i.et, align 8
  %i.fu = and i64 %i.ft, 622770257920
  %or.cond20.i.i.i.i.i = icmp eq i64 %i.fu, 0
  br i1 %or.cond20.i.i.i.i.i, label %skl_wm_latency.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fv = load i8, ptr %i.eu, align 8, !range !18, !noundef !19
  %i.fw = shl nuw nsw i8 %i.fv, 2
  %i.fx = zext nneg i8 %i.fw to i32
  %spec.select.i.i.i.i.i = add nuw nsw i32 %i.fx, %i.fr
  br label %skl_wm_latency.exit.i.i.i.i

skl_wm_latency.exit.i.i.i.i:                      ; preds = %bb.av, %bb.au, %.lr.ph.split.i.i.i.i
  %.014.i.i.i.i.i = phi i32 [ 0, %.lr.ph.split.i.i.i.i ], [ %i.fr, %bb.au ], [ %spec.select.i.i.i.i.i, %bb.av ]
  %i.fy = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  call fastcc void @skl_compute_plane_wm(ptr noundef readonly %i.w, ptr noundef readonly %i.ap, i32 noundef %i.fy, i32 noundef %.014.i.i.i.i.i, ptr noundef nonnull readonly %5, ptr noundef %.021.i.i.i.i, ptr noundef %i.fo) #17, !srcloc !31
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.fz = load i8, ptr %i.eq, align 8
  %i.ga = zext i8 %i.fz to i64
  %i.gb = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.ga
  br i1 %i.gb, label %.lr.ph.split.i.i.i.i, label %skl_compute_wm_levels.exit.i.i.i, !llvm.loop !6

skl_compute_wm_levels.exit.i.i.i:                 ; preds = %skl_wm_latency.exit.i.i.i.i, %skl_wm_latency.exit.i.us.i.i.i, %bb.aq
  %i.gc = getelementptr i8, ptr %i.du, i64 5536   ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 8
  %.not22.i.i.i = icmp eq i8 %i.gd, 0
  br i1 %.not22.i.i.i, label %icl_build_plane_wm.exit.thread54.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %skl_compute_wm_levels.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %skl_compute_wm_levels.exit.i.i.i ] ; 3 uses
  %i.ge = getelementptr [12 x i8], ptr %4, i64 %indvars.iv.i.i.i
  %i.gf = load i16, ptr %i.ge, align 4
  %i.gg = getelementptr [12 x i8], ptr %i.dx, i64 %indvars.iv.i.i.i
  %i.gh = getelementptr i8, ptr %i.gg, i64 1486
  store i16 %i.gf, ptr %i.gh, align 2
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.gi = load i8, ptr %i.gc, align 8
  %i.gj = zext i8 %i.gi to i64
  %i.gk = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.gj
  br i1 %i.gk, label %.lr.ph.i.i.i, label %icl_build_plane_wm.exit.thread54.i, !llvm.loop !116

icl_build_plane_wm.exit.thread54.i:               ; preds = %.lr.ph.i.i.i, %skl_compute_wm_levels.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %icl_build_plane_wm.exit.thread.i

icl_build_plane_wm.exit.i:                        ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %skl_print_wm_changes.exit

icl_build_plane_wm.exit.thread.i:                 ; preds = %icl_build_plane_wm.exit.thread54.i, %bb.ak, %bb.aj, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.p, %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gl = load ptr, ptr %i.c, align 8
  %i.gm = getelementptr i8, ptr %i.gl, i64 640
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = sext i32 %i.gn to i64
  %i.gp = icmp slt i64 %indvars.iv.next.i, %i.go
  br i1 %i.gp, label %bb.k, label %.critedge.i, !llvm.loop !117

.critedge.i:                                      ; preds = %icl_build_plane_wm.exit.thread.i, %bb.j
  %i.gq = getelementptr i8, ptr %i.w, i64 1484
  %i.gr = getelementptr i8, ptr %i.w, i64 2542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(1058) %i.gr, ptr noundef align 4 dereferenceable(1058) %i.gq, i64 1058, i1 false)
  %i.gs = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8            ; 2 uses
  %.not.i38.i = icmp eq ptr %i.gt, null
  br i1 %.not.i38.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.critedge.i
  %i.gu = call ptr @__drm_to_display(ptr noundef nonnull %i.gt) #16
  %.pre.i39.i = load ptr, ptr %i.w, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.critedge.i
  %i.gv = phi ptr [ %.pre.i39.i, %bb.aw ], [ %i.gs, %.critedge.i ] ; 2 uses
  %i.gw = phi ptr [ %i.gu, %bb.aw ], [ null, %.critedge.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %3, i8 0, i64 36, i1 false), !annotation !22
  %i.gx = getelementptr i8, ptr %i.w, i64 344
  %i.gy = load i8, ptr %i.gx, align 8, !range !18, !noundef !19
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %bb.ay, label %skl_build_pipe_wm.exit.thread130

bb.ay:                                            ; preds = %bb.ax
  call void @skl_prefill_init(ptr noundef nonnull %3, ptr noundef %i.w) #16
  %i.ha = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not.i.i41.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i41.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hc = call ptr @__drm_to_display(ptr noundef nonnull %i.hb) #16
  %.pre.i.i.i = load ptr, ptr %i.w, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.hd = phi ptr [ %.pre.i.i.i, %bb.az ], [ %i.ha, %bb.ay ] ; 2 uses
  %i.he = phi ptr [ %i.hc, %bb.az ], [ null, %bb.ay ] ; 5 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 5536
  %i.hg = load i8, ptr %i.hf, align 8             ; 2 uses
  %.not34.i.i.i = icmp eq i8 %i.hg, 0
  br i1 %.not34.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i42.i

.lr.ph.i.i42.i:                                   ; preds = %bb.ba
  %i.hh = getelementptr i8, ptr %i.he, i64 5430
  %i.hi = getelementptr i8, ptr %i.he, i64 8
  %i.hj = getelementptr i8, ptr %i.he, i64 5568
  %i.hk = zext i8 %i.hg to i64
  br label %bb.bb

bb.bb:                                            ; preds = %skl_wm_latency.exit.thread.i.i.i, %.lr.ph.i.i42.i
  %indvars.iv.i.i43.i = phi i64 [ %i.hk, %.lr.ph.i.i42.i ], [ %indvars.iv.next.i.i44.i, %skl_wm_latency.exit.thread.i.i.i ] ; 4 uses
  %indvars.iv.next.i.i44.i = add nsw i64 %indvars.iv.i.i43.i, -1 ; 4 uses
  %i.hl = getelementptr [2 x i8], ptr %i.hh, i64 %indvars.iv.next.i.i44.i
  %i.hm = load i16, ptr %i.hl, align 2            ; 2 uses
  %i.hn = zext i16 %i.hm to i32                   ; 2 uses
  %i.ho = icmp eq i16 %i.hm, 0
  br i1 %i.ho, label %skl_wm_latency.exit.thread.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hp = load i64, ptr %i.hi, align 8
  %i.hq = and i64 %i.hp, 622770257920
  %or.cond20.i.i.i.i = icmp eq i64 %i.hq, 0
  br i1 %or.cond20.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hr = load i8, ptr %i.hj, align 8, !range !18, !noundef !19
  %i.hs = shl nuw nsw i8 %i.hr, 2
  %i.ht = zext nneg i8 %i.hs to i32
  %spec.select.i.i.i.i = add nuw nsw i32 %i.ht, %i.hn
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i = phi i32 [ %i.hn, %bb.bc ], [ %spec.select.i.i.i.i, %bb.bd ]
  %i.hu = icmp eq i64 %indvars.iv.next.i.i44.i, 0
  %spec.select.i.i45.i = select i1 %i.hu, i32 0, i32 %.0.i.i.i.i
  %i.hv = call zeroext i1 @skl_prefill_vblank_too_short(ptr noundef nonnull %3, ptr noundef %i.w, i32 noundef %spec.select.i.i45.i) #16
  br i1 %i.hv, label %skl_wm_latency.exit.thread.i.i.i, label %skl_max_wm_level_for_vblank.exit.i.i

skl_wm_latency.exit.thread.i.i.i:                 ; preds = %bb.be, %bb.bb
  %i.hw = icmp samesign ugt i64 %indvars.iv.i.i43.i, 1
  br i1 %i.hw, label %bb.bb, label %._crit_edge.i.i.i, !llvm.loop !118

._crit_edge.i.i.i:                                ; preds = %bb.ba, %skl_wm_latency.exit.thread.i.i.i
  %i.hx = load ptr, ptr %i.he, align 8            ; 2 uses
  %.not.i.i.i46.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i46.i, label %skl_build_pipe_wm.exit.thread133, label %bb.bf

bb.bf:                                            ; preds = %._crit_edge.i.i.i
  %i.hy = getelementptr i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  br label %skl_build_pipe_wm.exit.thread133

skl_build_pipe_wm.exit.thread133:                 ; preds = %._crit_edge.i.i.i, %bb.bf
  %i.ia = phi ptr [ %i.hz, %bb.bf ], [ null, %._crit_edge.i.i.i ]
  %i.ib = getelementptr i8, ptr %i.hd, i64 88
  %i.ic = load i32, ptr %i.ib, align 8
  %i.id = getelementptr i8, ptr %i.hd, i64 32
  %i.ie = load ptr, ptr %i.id, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ia, i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %i.ic, ptr noundef %i.ie) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %skl_print_wm_changes.exit

skl_max_wm_level_for_vblank.exit.i.i:             ; preds = %bb.be
  %i.if = trunc nuw nsw i64 %indvars.iv.next.i.i44.i to i32 ; 3 uses
  %i.ig = icmp slt i64 %indvars.iv.i.i43.i, 1
  br i1 %i.ig, label %.backedge.a, label %bb.bg

bb.bg:                                            ; preds = %skl_max_wm_level_for_vblank.exit.i.i
  %i.ih = getelementptr i8, ptr %i.gw, i64 5536   ; 3 uses
  %i.ii = load i8, ptr %i.ih, align 8
  %i.ij = zext i8 %i.ii to i32
  %i.ik = add nsw i32 %i.ij, -1
  %i.il = icmp sgt i32 %i.ik, %i.if
  %i.im = getelementptr i8, ptr %i.w, i64 1297
  %i.in = zext i1 %i.il to i8
  store i8 %i.in, ptr %i.im, align 1
  %.04054.i.i = add i32 %i.if, 1
  %i.io = load i8, ptr %i.ih, align 8
  %i.ip = zext i8 %i.io to i32
  %i.iq = icmp slt i32 %.04054.i.i, %i.ip
  br i1 %i.iq, label %.preheader49.lr.ph.i.i, label %._crit_edge.i.i

.preheader49.lr.ph.i.i:                           ; preds = %bb.bg
  %i.ir = getelementptr i8, ptr %i.gv, i64 1669   ; 8 uses
  br label %.preheader49.i.i

.preheader49.i.i:                                 ; preds = %.loopexit50.i.i, %.preheader49.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i.i43.i, %.preheader49.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.loopexit50.i.i ] ; 2 uses
  %invariant.gep.i.i = getelementptr [12 x i8], ptr %i.w, i64 %indvars.iv.i.i ; 8 uses
  %i.is = load i8, ptr %i.ir, align 1
  %i.it = zext i8 %i.is to i64                    ; 2 uses
  %i.iu = and i64 %i.it, 1
  %.not47.i.i = icmp eq i64 %i.iu, 0
  br i1 %.not47.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.preheader49.i.i
  %i.iv = getelementptr i8, ptr %invariant.gep.i.i, i64 2549
  store i8 0, ptr %i.iv, align 1
  %.pre66.i.i = load i8, ptr %i.ir, align 1
  %.pre80.i.i = zext i8 %.pre66.i.i to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.preheader49.i.i
  %.pre-phi.i.i = phi i64 [ %.pre80.i.i, %bb.bh ], [ %i.it, %.preheader49.i.i ] ; 2 uses
  %i.iw = and i64 %.pre-phi.i.i, 2
  %.not47.1.i.i = icmp eq i64 %i.iw, 0
  br i1 %.not47.1.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ix = getelementptr i8, ptr %invariant.gep.i.i, i64 2681
  store i8 0, ptr %i.ix, align 1
  %.pre67.i.i = load i8, ptr %i.ir, align 1
  %.pre81.i.i = zext i8 %.pre67.i.i to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pre-phi82.i.i = phi i64 [ %.pre81.i.i, %bb.bj ], [ %.pre-phi.i.i, %bb.bi ] ; 2 uses
  %i.iy = and i64 %.pre-phi82.i.i, 4
  %.not47.2.i.i = icmp eq i64 %i.iy, 0
  br i1 %.not47.2.i.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iz = getelementptr i8, ptr %invariant.gep.i.i, i64 2813
  store i8 0, ptr %i.iz, align 1
  %.pre68.i.i = load i8, ptr %i.ir, align 1
  %.pre83.i.i = zext i8 %.pre68.i.i to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pre-phi84.i.i = phi i64 [ %.pre83.i.i, %bb.bl ], [ %.pre-phi82.i.i, %bb.bk ] ; 2 uses
  %i.ja = and i64 %.pre-phi84.i.i, 8
  %.not47.3.i.i = icmp eq i64 %i.ja, 0
  br i1 %.not47.3.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jb = getelementptr i8, ptr %invariant.gep.i.i, i64 2945
  store i8 0, ptr %i.jb, align 1
  %.pre69.i.i = load i8, ptr %i.ir, align 1
  %.pre85.i.i = zext i8 %.pre69.i.i to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pre-phi86.i.i = phi i64 [ %.pre85.i.i, %bb.bn ], [ %.pre-phi84.i.i, %bb.bm ] ; 2 uses
  %i.jc = and i64 %.pre-phi86.i.i, 16
  %.not47.4.i.i = icmp eq i64 %i.jc, 0
  br i1 %.not47.4.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jd = getelementptr i8, ptr %invariant.gep.i.i, i64 3077
  store i8 0, ptr %i.jd, align 1
  %.pre70.i.i = load i8, ptr %i.ir, align 1
  %.pre87.i.i = zext i8 %.pre70.i.i to i64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pre-phi88.i.i = phi i64 [ %.pre87.i.i, %bb.bp ], [ %.pre-phi86.i.i, %bb.bo ] ; 2 uses
  %i.je = and i64 %.pre-phi88.i.i, 32
  %.not47.5.i.i = icmp eq i64 %i.je, 0
  br i1 %.not47.5.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jf = getelementptr i8, ptr %invariant.gep.i.i, i64 3209
  store i8 0, ptr %i.jf, align 1
  %.pre71.i.i = load i8, ptr %i.ir, align 1
  %.pre89.i.i = zext i8 %.pre71.i.i to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pre-phi90.i.i = phi i64 [ %.pre89.i.i, %bb.br ], [ %.pre-phi88.i.i, %bb.bq ] ; 2 uses
  %i.jg = and i64 %.pre-phi90.i.i, 64
  %.not47.6.i.i = icmp eq i64 %i.jg, 0
  br i1 %.not47.6.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jh = getelementptr i8, ptr %invariant.gep.i.i, i64 3341
  store i8 0, ptr %i.jh, align 1
  %.pre72.i.i = load i8, ptr %i.ir, align 1
  %.pre91.i.i = zext i8 %.pre72.i.i to i64
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pre-phi92.i.i = phi i64 [ %.pre91.i.i, %bb.bt ], [ %.pre-phi90.i.i, %bb.bs ]
  %i.ji = and i64 %.pre-phi92.i.i, 128
  %.not47.7.i.i = icmp eq i64 %i.ji, 0
  br i1 %.not47.7.i.i, label %.loopexit50.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jj = getelementptr i8, ptr %invariant.gep.i.i, i64 3473
  store i8 0, ptr %i.jj, align 1
  br label %.loopexit50.i.i

.loopexit50.i.i:                                  ; preds = %bb.bv, %bb.bu
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.jk = load i8, ptr %i.ih, align 8
  %i.jl = zext i8 %i.jk to i64
  %i.jm = icmp slt i64 %indvars.iv.next.i.i, %i.jl
  br i1 %i.jm, label %.preheader49.i.i, label %._crit_edge.i.i, !llvm.loop !119

._crit_edge.i.i:                                  ; preds = %.loopexit50.i.i, %bb.bg
  %i.jn = getelementptr i8, ptr %i.gw, i64 1168
  %i.jo = load i16, ptr %i.jn, align 8
  %i.jp = icmp ugt i16 %i.jo, 11
  br i1 %i.jp, label %bb.bw, label %skl_build_pipe_wm.exit.thread130

bb.bw:                                            ; preds = %._crit_edge.i.i
  %i.jq = getelementptr i8, ptr %i.gw, i64 8
  %i.jr = load i64, ptr %i.jq, align 8
  %i.js = and i64 %i.jr, 281474976710656
  %.not44.i.i = icmp eq i64 %i.js, 0
  br i1 %.not44.i.i, label %bb.bx, label %skl_build_pipe_wm.exit.thread130

bb.bx:                                            ; preds = %bb.bw
  %i.jt = getelementptr i8, ptr %i.gw, i64 2228
  %i.ju = load i32, ptr %i.jt, align 4            ; 2 uses
  %.not45.i.i = icmp eq i32 %i.ju, 0
  br i1 %.not45.i.i, label %skl_build_pipe_wm.exit.thread130, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jv = call zeroext i1 @skl_prefill_vblank_too_short(ptr noundef nonnull %3, ptr noundef %i.w, i32 noundef %i.ju) #16
  br i1 %i.jv, label %.preheader.i.i, label %skl_build_pipe_wm.exit.thread130

.preheader.i.i:                                   ; preds = %bb.by
  %i.jw = getelementptr i8, ptr %i.gv, i64 1669   ; 8 uses
  %i.jx = load i8, ptr %i.jw, align 1
  %i.jy = zext i8 %i.jx to i64                    ; 2 uses
  %i.jz = and i64 %i.jy, 1
  %.not46.i.i = icmp eq i64 %i.jz, 0
  br i1 %.not46.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.preheader.i.i
  %i.ka = getelementptr i8, ptr %i.w, i64 2657
  store i8 0, ptr %i.ka, align 1
  %i.kb = getelementptr i8, ptr %i.w, i64 2669
  store i8 0, ptr %i.kb, align 1
  %.pre73.i.i = load i8, ptr %i.jw, align 1
  %.pre93.i.i = zext i8 %.pre73.i.i to i64
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.preheader.i.i
  %.pre-phi94.i.i = phi i64 [ %.pre93.i.i, %bb.bz ], [ %i.jy, %.preheader.i.i ] ; 2 uses
  %i.kc = and i64 %.pre-phi94.i.i, 2
  %.not46.1.i.i = icmp eq i64 %i.kc, 0
  br i1 %.not46.1.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kd = getelementptr i8, ptr %i.w, i64 2789
  store i8 0, ptr %i.kd, align 1
  %i.ke = getelementptr i8, ptr %i.w, i64 2801
  store i8 0, ptr %i.ke, align 1
  %.pre74.i.i = load i8, ptr %i.jw, align 1
  %.pre95.i.i = zext i8 %.pre74.i.i to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.pre-phi96.i.i = phi i64 [ %.pre95.i.i, %bb.cb ], [ %.pre-phi94.i.i, %bb.ca ] ; 2 uses
  %i.kf = and i64 %.pre-phi96.i.i, 4
  %.not46.2.i.i = icmp eq i64 %i.kf, 0
  br i1 %.not46.2.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kg = getelementptr i8, ptr %i.w, i64 2921
  store i8 0, ptr %i.kg, align 1
  %i.kh = getelementptr i8, ptr %i.w, i64 2933
  store i8 0, ptr %i.kh, align 1
  %.pre75.i.i = load i8, ptr %i.jw, align 1
  %.pre97.i.i = zext i8 %.pre75.i.i to i64
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pre-phi98.i.i = phi i64 [ %.pre97.i.i, %bb.cd ], [ %.pre-phi96.i.i, %bb.cc ] ; 2 uses
  %i.ki = and i64 %.pre-phi98.i.i, 8
  %.not46.3.i.i = icmp eq i64 %i.ki, 0
  br i1 %.not46.3.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kj = getelementptr i8, ptr %i.w, i64 3053
  store i8 0, ptr %i.kj, align 1
  %i.kk = getelementptr i8, ptr %i.w, i64 3065
  store i8 0, ptr %i.kk, align 1
  %.pre76.i.i = load i8, ptr %i.jw, align 1
  %.pre99.i.i = zext i8 %.pre76.i.i to i64
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pre-phi100.i.i = phi i64 [ %.pre99.i.i, %bb.cf ], [ %.pre-phi98.i.i, %bb.ce ] ; 2 uses
  %i.kl = and i64 %.pre-phi100.i.i, 16
  %.not46.4.i.i = icmp eq i64 %i.kl, 0
  br i1 %.not46.4.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.km = getelementptr i8, ptr %i.w, i64 3185
  store i8 0, ptr %i.km, align 1
  %i.kn = getelementptr i8, ptr %i.w, i64 3197
  store i8 0, ptr %i.kn, align 1
  %.pre77.i.i = load i8, ptr %i.jw, align 1
  %.pre101.i.i = zext i8 %.pre77.i.i to i64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pre-phi102.i.i = phi i64 [ %.pre101.i.i, %bb.ch ], [ %.pre-phi100.i.i, %bb.cg ] ; 2 uses
  %i.ko = and i64 %.pre-phi102.i.i, 32
  %.not46.5.i.i = icmp eq i64 %i.ko, 0
  br i1 %.not46.5.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.kp = getelementptr i8, ptr %i.w, i64 3317
  store i8 0, ptr %i.kp, align 1
  %i.kq = getelementptr i8, ptr %i.w, i64 3329
  store i8 0, ptr %i.kq, align 1
  %.pre78.i.i = load i8, ptr %i.jw, align 1
  %.pre103.i.i = zext i8 %.pre78.i.i to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.pre-phi104.i.i = phi i64 [ %.pre103.i.i, %bb.cj ], [ %.pre-phi102.i.i, %bb.ci ] ; 2 uses
  %i.kr = and i64 %.pre-phi104.i.i, 64
  %.not46.6.i.i = icmp eq i64 %i.kr, 0
  br i1 %.not46.6.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ks = getelementptr i8, ptr %i.w, i64 3449
  store i8 0, ptr %i.ks, align 1
  %i.kt = getelementptr i8, ptr %i.w, i64 3461
  store i8 0, ptr %i.kt, align 1
  %.pre79.i.i = load i8, ptr %i.jw, align 1
  %.pre105.i.i = zext i8 %.pre79.i.i to i64
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pre-phi106.i.i = phi i64 [ %.pre105.i.i, %bb.cl ], [ %.pre-phi104.i.i, %bb.ck ]
  %i.ku = and i64 %.pre-phi106.i.i, 128
  %.not46.7.i.i = icmp eq i64 %i.ku, 0
  br i1 %.not46.7.i.i, label %skl_build_pipe_wm.exit.thread130, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kv = getelementptr i8, ptr %i.w, i64 3581
  store i8 0, ptr %i.kv, align 1
  %i.kw = getelementptr i8, ptr %i.w, i64 3593
  store i8 0, ptr %i.kw, align 1
  br label %skl_build_pipe_wm.exit.thread130

skl_build_pipe_wm.exit.thread130:                 ; preds = %bb.ax, %bb.by, %bb.bx, %bb.bw, %._crit_edge.i.i, %bb.cn, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.backedge

.backedge:                                        ; preds = %skl_build_pipe_wm.exit.thread130, %bb.g
  br label %bb.d, !llvm.loop !120

.backedge.a:                                      ; preds = %skl_max_wm_level_for_vblank.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %skl_print_wm_changes.exit

bb.co:                                            ; preds = %bb.f
  %i.kx = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i75 = icmp eq ptr %i.kx, null
  br i1 %.not.i75, label %.thread.split.us.preheader.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ky = call ptr @__drm_to_display(ptr noundef nonnull %i.kx) #16 ; 4 uses
  %.pr.i = load ptr, ptr %i.c, align 8            ; 2 uses
  %.not160.i = icmp eq ptr %.pr.i, null
  br i1 %.not160.i, label %.thread.split.us.preheader.i, label %.thread.i

.thread.i:                                        ; preds = %bb.cp
  %i.kz = call ptr @__drm_to_display(ptr noundef nonnull %.pr.i) #16
  %.pre.i = load ptr, ptr %i.c, align 8           ; 2 uses
  %i.la = icmp eq ptr %.pre.i, null
  %i.lb = getelementptr i8, ptr %i.kz, i64 40     ; 2 uses
  br i1 %i.la, label %.thread.split.us.preheader.i, label %.thread.split.i

.thread.split.us.preheader.i:                     ; preds = %bb.co, %bb.cp, %.thread.i
  %i.lc = phi ptr [ %i.lb, %.thread.i ], [ inttoptr (i64 40 to ptr), %bb.cp ], [ inttoptr (i64 40 to ptr), %bb.co ]
  %i.ld = phi ptr [ %i.ky, %.thread.i ], [ %i.ky, %bb.cp ], [ null, %bb.co ]
  br label %.thread.split.us.i

.thread.split.us.i:                               ; preds = %bb.cq, %.thread.split.us.preheader.i
  %.pn.in.us.i = phi ptr [ %.pn.us.i, %bb.cq ], [ %i.lc, %.thread.split.us.preheader.i ]
  %.pn.us.i = load ptr, ptr %.pn.in.us.i, align 8 ; 3 uses
  %.not237.us.i = icmp eq ptr %.pn.us.i, inttoptr (i64 40 to ptr)
  br i1 %.not237.us.i, label %skl_compute_ddb.exit.thread139, label %bb.cq

bb.cq:                                            ; preds = %.thread.split.us.i
  %.val195.us.i = load ptr, ptr %i.j, align 8
  %i.le = getelementptr i8, ptr %.pn.us.i, i64 -1512
  %.0136.val.us.i = load i32, ptr %i.le, align 8
  %i.lf = zext i32 %.0136.val.us.i to i64
  %i.lg = getelementptr [56 x i8], ptr %.val195.us.i, i64 %i.lf
  %i.lh = getelementptr i8, ptr %i.lg, i64 24
  %i.li = load ptr, ptr %i.lh, align 8
  %.not163.us.i = icmp eq ptr %i.li, null
  br i1 %.not163.us.i, label %.thread.split.us.i, label %intel_atomic_get_dbuf_state.exit.i, !llvm.loop !121

.thread.split.i:                                  ; preds = %.thread.i, %bb.ct
  %i.lj = phi ptr [ %.pr358.i, %bb.ct ], [ %.pre.i, %.thread.i ] ; 2 uses
  %.pn.in.i = phi ptr [ %.pn.i, %bb.ct ], [ %i.lb, %.thread.i ]
  %.pn.i = load ptr, ptr %.pn.in.i, align 8       ; 3 uses
  %.not161.i = icmp eq ptr %i.lj, null
  br i1 %.not161.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %.thread.split.i
  %i.lk = call ptr @__drm_to_display(ptr noundef nonnull %i.lj) #16
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %.thread.split.i
  %i.ll = phi ptr [ %i.lk, %bb.cr ], [ null, %.thread.split.i ]
  %i.lm = getelementptr i8, ptr %i.ll, i64 40
  %.not237.i = icmp eq ptr %.pn.i, %i.lm
  br i1 %.not237.i, label %skl_compute_ddb.exit.thread139, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.val195.i = load ptr, ptr %i.j, align 8
  %i.ln = getelementptr i8, ptr %.pn.i, i64 -1512
  %.0136.val.i = load i32, ptr %i.ln, align 8
  %i.lo = zext i32 %.0136.val.i to i64
  %i.lp = getelementptr [56 x i8], ptr %.val195.i, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.lp, i64 24
  %i.lr = load ptr, ptr %i.lq, align 8
  %.not163.i = icmp eq ptr %i.lr, null
  %.pr358.i = load ptr, ptr %i.c, align 8         ; 3 uses
  br i1 %.not163.i, label %.thread.split.i, label %.split.us.i, !llvm.loop !122

.split.us.i:                                      ; preds = %bb.ct
  %.not.i.i76 = icmp eq ptr %.pr358.i, null
  br i1 %.not.i.i76, label %intel_atomic_get_dbuf_state.exit.i, label %bb.cu

bb.cu:                                            ; preds = %.split.us.i
  %i.ls = call ptr @__drm_to_display(ptr noundef nonnull %.pr358.i) #16
  br label %intel_atomic_get_dbuf_state.exit.i

intel_atomic_get_dbuf_state.exit.i:               ; preds = %bb.cq, %bb.cu, %.split.us.i
  %i.lt = phi ptr [ %i.ky, %bb.cu ], [ %i.ky, %.split.us.i ], [ %i.ld, %bb.cq ] ; 5 uses
  %i.lu = phi ptr [ %i.ls, %bb.cu ], [ null, %.split.us.i ], [ null, %bb.cq ]
  %i.lv = getelementptr i8, ptr %i.lu, i64 720
  %i.lw = call ptr @intel_atomic_get_global_obj_state(ptr noundef %0, ptr noundef %i.lv) #16 ; 20 uses
  %i.lx = icmp ugt ptr %i.lw, inttoptr (i64 -4096 to ptr)
  br i1 %i.lx, label %skl_compute_ddb.exit, label %bb.cv

bb.cv:                                            ; preds = %intel_atomic_get_dbuf_state.exit.i
  %i.ly = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not164.i = icmp eq ptr %i.ly, null
  br i1 %.not164.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.lz = call ptr @__drm_to_display(ptr noundef nonnull %i.ly) #16
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.ma = phi ptr [ %i.lz, %bb.cw ], [ null, %bb.cv ]
  %i.mb = getelementptr i8, ptr %i.ma, i64 720
  %i.mc = call ptr @intel_atomic_get_old_global_obj_state(ptr noundef %0, ptr noundef %i.mb) #16 ; 7 uses
  %.not165.i = icmp eq ptr %i.lw, null
  br i1 %.not165.i, label %skl_compute_ddb.exit.thread139, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.md = getelementptr i8, ptr %i.mc, i64 69     ; 2 uses
  %i.me = load i8, ptr %i.md, align 1
  %i.mf = call zeroext i8 @intel_calc_active_pipes(ptr noundef %0, i8 noundef zeroext %i.me) #16 ; 2 uses
  %i.mg = getelementptr i8, ptr %i.lw, i64 69     ; 3 uses
  store i8 %i.mf, ptr %i.mg, align 1
  %i.mh = load i8, ptr %i.md, align 1
  %.not166.i = icmp eq i8 %i.mh, %i.mf
  br i1 %.not166.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.mi = call i32 @intel_atomic_lock_global_state(ptr noundef nonnull %i.lw) #16 ; 2 uses
  %.not167.i = icmp eq i32 %i.mi, 0
  br i1 %.not167.i, label %bb.da, label %skl_print_wm_changes.exit

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.mj = getelementptr i8, ptr %i.lt, i64 8
  %i.mk = load i64, ptr %i.mj, align 8
  %i.ml = and i64 %i.mk, 4503599627370496
  %.not168.i = icmp eq i64 %i.ml, 0
  br i1 %.not168.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.mm = getelementptr i8, ptr %i.lt, i64 1168
  %i.mn = load i16, ptr %i.mm, align 8
  %i.mo = icmp ugt i16 %i.mn, 13
  br i1 %i.mo, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.mp = load i8, ptr %i.mg, align 1
  switch i8 %i.mp, label %adlp_check_mbus_joined.exit.i [
    i8 1, label %bb.dd
    i8 2, label %.fold.split.i.i.i
    i8 3, label %.fold.split6.i.i.i
    i8 4, label %.fold.split7.i.i.i
    i8 5, label %.fold.split8.i.i.i
    i8 6, label %.fold.split9.i.i.i
    i8 7, label %.fold.split10.i.i.i
    i8 8, label %.fold.split11.i.i.i
    i8 9, label %.fold.split12.i.i.i
    i8 10, label %.fold.split13.i.i.i
    i8 11, label %.fold.split14.i.i.i
    i8 12, label %.fold.split15.i.i.i
    i8 13, label %.fold.split16.i.i.i
    i8 14, label %.fold.split17.i.i.i
    i8 15, label %.fold.split18.i.i.i
  ]

.fold.split.i.i.i:                                ; preds = %bb.dc
  br label %bb.dd

.fold.split6.i.i.i:                               ; preds = %bb.dc
  br label %bb.dd

.fold.split7.i.i.i:                               ; preds = %bb.dc
  br label %bb.dd

.fold.split8.i.i.i:                               ; preds = %bb.dc
  br label %bb.dd

.fold.split9.i.i.i:                               ; preds = %bb.dc
  br label %bb.dd

.fold.split10.i.i.i:                              ; preds = %bb.dc
  br label %bb.dd

.fold.split11.i.i.i:                              ; preds = %bb.dc
  br label %bb.dd

.fold.split12.i.i.i:                              ; preds = %bb.dc
  br label %bb.dd

.fold.split13.i.i.i:                              ; preds = %bb.dc
  br label %bb.dd

.fold.split14.i.i.i:                              ; preds = %bb.dc
  br label %bb.dd

.fold.split15.i.i.i:                              ; preds = %bb.dc
  br label %bb.dd

.fold.split16.i.i.i:                              ; preds = %bb.dc
  br label %bb.dd

.fold.split17.i.i.i:                              ; preds = %bb.dc
  br label %bb.dd

.fold.split18.i.i.i:                              ; preds = %bb.dc
  br label %bb.dd

bb.dd:                                            ; preds = %.fold.split18.i.i.i, %.fold.split17.i.i.i, %.fold.split16.i.i.i, %.fold.split15.i.i.i, %.fold.split14.i.i.i, %.fold.split13.i.i.i, %.fold.split12.i.i.i, %.fold.split11.i.i.i, %.fold.split10.i.i.i, %.fold.split9.i.i.i, %.fold.split8.i.i.i, %.fold.split7.i.i.i, %.fold.split6.i.i.i, %.fold.split.i.i.i, %bb.dc
  %.lcssa.i.i.i = phi ptr [ @adlp_allowed_dbufs, %bb.dc ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 78), %.fold.split15.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 90), %.fold.split17.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 84), %.fold.split16.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 6), %.fold.split.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 24), %.fold.split6.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 30), %.fold.split7.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 36), %.fold.split8.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 42), %.fold.split9.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 48), %.fold.split10.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 54), %.fold.split11.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 60), %.fold.split12.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 66), %.fold.split13.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 72), %.fold.split14.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @adlp_allowed_dbufs, i64 96), %.fold.split18.i.i.i ]
  %i.mq = getelementptr i8, ptr %.lcssa.i.i.i, i64 5
  %i.mr = load i8, ptr %i.mq, align 1, !range !18, !noundef !19
  %i.ms = trunc nuw i8 %i.mr to i1
  br label %adlp_check_mbus_joined.exit.i

adlp_check_mbus_joined.exit.i:                    ; preds = %bb.dd, %bb.dc
  %.08.i.i.i = phi i1 [ %i.ms, %bb.dd ], [ false, %bb.dc ] ; 2 uses
end_hunk_1
begin_hunk_2_@skl_compute_wm:bb.a
  %i.axw = load i8, ptr %i.axv, align 2
  %i.axx = icmp eq i8 %i.axu, %i.axw
  br i1 %i.axx, label %bb.lt, label %skl_plane_selected_wm_equals.exit.thread.i

bb.lt:                                            ; preds = %bb.ls
  %i.axy = getelementptr i8, ptr %i.axh, i64 112
  %i.axz = load i16, ptr %i.axy, align 2
  %i.aya = getelementptr i8, ptr %i.axi, i64 112
  %i.ayb = load i16, ptr %i.aya, align 2
  %i.ayc = icmp eq i16 %i.axz, %i.ayb
  br i1 %i.ayc, label %skl_wm_level_equals.exit32.i.i, label %skl_plane_selected_wm_equals.exit.thread.i

skl_wm_level_equals.exit32.i.i:                   ; preds = %bb.lt
  %i.ayd = getelementptr i8, ptr %i.axh, i64 117
  %i.aye = load i8, ptr %i.ayd, align 1, !range !18, !noundef !19
  %i.ayf = getelementptr i8, ptr %i.axi, i64 117
  %i.ayg = load i8, ptr %i.ayf, align 1, !range !18, !noundef !19
  %i.ayh = icmp eq i8 %i.aye, %i.ayg
  br i1 %i.ayh, label %bb.lu, label %skl_plane_selected_wm_equals.exit.thread.i

bb.lu:                                            ; preds = %skl_wm_level_equals.exit32.i.i
  %i.ayi = getelementptr i8, ptr %i.axh, i64 127
  %i.ayj = load i8, ptr %i.ayi, align 1, !range !18, !noundef !19
  %i.ayk = getelementptr i8, ptr %i.axi, i64 127
  %i.ayl = load i8, ptr %i.ayk, align 1, !range !18, !noundef !19
  %i.aym = icmp eq i8 %i.ayj, %i.ayl
  br i1 %i.aym, label %bb.lv, label %skl_plane_selected_wm_equals.exit.thread.i

bb.lv:                                            ; preds = %bb.lu
  %i.ayn = getelementptr i8, ptr %i.axh, i64 128
  %i.ayo = load i8, ptr %i.ayn, align 2, !range !18, !noundef !19
  %i.ayp = getelementptr i8, ptr %i.axi, i64 128
  %i.ayq = load i8, ptr %i.ayp, align 2, !range !18, !noundef !19
  %i.ayr = icmp eq i8 %i.ayo, %i.ayq
  br i1 %i.ayr, label %bb.lw, label %skl_plane_selected_wm_equals.exit.thread.i

bb.lw:                                            ; preds = %bb.lv
  %i.ays = getelementptr i8, ptr %i.axh, i64 126
  %i.ayt = load i8, ptr %i.ays, align 2
  %i.ayu = getelementptr i8, ptr %i.axi, i64 126
  %i.ayv = load i8, ptr %i.ayu, align 2
  %i.ayw = icmp eq i8 %i.ayt, %i.ayv
  br i1 %i.ayw, label %bb.lx, label %skl_plane_selected_wm_equals.exit.thread.i

bb.lx:                                            ; preds = %bb.lw
  %i.ayx = getelementptr i8, ptr %i.axh, i64 124
  %i.ayy = load i16, ptr %i.ayx, align 2
  %i.ayz = getelementptr i8, ptr %i.axi, i64 124
  %i.aza = load i16, ptr %i.ayz, align 2
  %i.azb = icmp eq i16 %i.ayy, %i.aza
  br i1 %i.azb, label %skl_wm_level_equals.exit33.i.i, label %skl_plane_selected_wm_equals.exit.thread.i

skl_wm_level_equals.exit33.i.i:                   ; preds = %bb.lx
  %i.azc = getelementptr i8, ptr %i.axh, i64 129
  %i.azd = load i8, ptr %i.azc, align 1, !range !18, !noundef !19
  %i.aze = getelementptr i8, ptr %i.axi, i64 129
  %i.azf = load i8, ptr %i.aze, align 1, !range !18, !noundef !19
  %i.azg = icmp eq i8 %i.azd, %i.azf
  br i1 %i.azg, label %.critedge.i.i109, label %skl_plane_selected_wm_equals.exit.thread.i

.critedge.i.i109:                                 ; preds = %skl_wm_level_equals.exit33.i.i, %bb.lp, %._crit_edge.i..critedge.i_crit_edge.i
  %i.azh = phi i32 [ %.pre.i108, %._crit_edge.i..critedge.i_crit_edge.i ], [ %.pre57.i, %skl_wm_level_equals.exit33.i.i ], [ %.pre57.i, %bb.lp ]
  %i.azi = zext i32 %i.azh to i64                 ; 2 uses
  %i.azj = getelementptr [132 x i8], ptr %i.atz, i64 %i.azi
  %i.azk = load i8, ptr %i.auc, align 2, !range !18, !noundef !19
  %i.azl = trunc nuw i8 %i.azk to i1
  %.0.v.i.i.i = select i1 %i.azl, i64 120, i64 96
  %.0.i34.i.i = getelementptr i8, ptr %i.azj, i64 %.0.v.i.i.i ; 5 uses
  %i.azm = getelementptr [132 x i8], ptr %i.aua, i64 %i.azi
  %i.azn = load i8, ptr %i.aub, align 2, !range !18, !noundef !19
  %i.azo = trunc nuw i8 %i.azn to i1
  %.0.v.i35.i.i = select i1 %i.azo, i64 120, i64 96
  %.0.i36.i.i = getelementptr i8, ptr %i.azm, i64 %.0.v.i35.i.i ; 5 uses
  %i.azp = getelementptr i8, ptr %.0.i34.i.i, i64 7
  %i.azq = load i8, ptr %i.azp, align 1, !range !18, !noundef !19
  %i.azr = getelementptr i8, ptr %.0.i36.i.i, i64 7
  %i.azs = load i8, ptr %i.azr, align 1, !range !18, !noundef !19
  %i.azt = icmp eq i8 %i.azq, %i.azs
  br i1 %i.azt, label %bb.ly, label %skl_plane_selected_wm_equals.exit.thread.i

bb.ly:                                            ; preds = %.critedge.i.i109
  %i.azu = getelementptr i8, ptr %.0.i34.i.i, i64 8
  %i.azv = load i8, ptr %i.azu, align 2, !range !18, !noundef !19
  %i.azw = getelementptr i8, ptr %.0.i36.i.i, i64 8
  %i.azx = load i8, ptr %i.azw, align 2, !range !18, !noundef !19
  %i.azy = icmp eq i8 %i.azv, %i.azx
  br i1 %i.azy, label %bb.lz, label %skl_plane_selected_wm_equals.exit.thread.i

bb.lz:                                            ; preds = %bb.ly
  %i.azz = getelementptr i8, ptr %.0.i34.i.i, i64 6
  %i.baa = load i8, ptr %i.azz, align 2
  %i.bab = getelementptr i8, ptr %.0.i36.i.i, i64 6
  %i.bac = load i8, ptr %i.bab, align 2
  %i.bad = icmp eq i8 %i.baa, %i.bac
  br i1 %i.bad, label %bb.ma, label %skl_plane_selected_wm_equals.exit.thread.i

bb.ma:                                            ; preds = %bb.lz
  %i.bae = getelementptr i8, ptr %.0.i34.i.i, i64 4
  %i.baf = load i16, ptr %i.bae, align 2
  %i.bag = getelementptr i8, ptr %.0.i36.i.i, i64 4
  %i.bah = load i16, ptr %i.bag, align 2
  %i.bai = icmp eq i16 %i.baf, %i.bah
  br i1 %i.bai, label %skl_plane_selected_wm_equals.exit.i, label %skl_plane_selected_wm_equals.exit.thread.i

skl_plane_selected_wm_equals.exit.i:              ; preds = %bb.ma
  %i.baj = getelementptr i8, ptr %.0.i34.i.i, i64 9
  %i.bak = load i8, ptr %i.baj, align 1, !range !18, !noundef !19
  %i.bal = getelementptr i8, ptr %.0.i36.i.i, i64 9
  %i.bam = load i8, ptr %i.bal, align 1, !range !18, !noundef !19
  %i.ban = icmp eq i8 %i.bak, %i.bam
  br i1 %i.ban, label %bb.mf, label %skl_plane_selected_wm_equals.exit.thread.i

skl_plane_selected_wm_equals.exit.thread.i:       ; preds = %skl_wm_level_equals.exit.i.i, %bb.lo, %bb.ln, %bb.lm, %skl_plane_wm_level.exit31.i.i, %skl_plane_selected_wm_equals.exit.i, %bb.ma, %bb.lz, %bb.ly, %.critedge.i.i109, %skl_wm_level_equals.exit33.i.i, %bb.lx, %bb.lw, %bb.lv, %bb.lu, %skl_wm_level_equals.exit32.i.i, %bb.lt, %bb.ls, %bb.lr, %bb.lq, %skl_wm_level_equals.exit.peel.i.i, %bb.lj, %bb.li, %bb.lh, %skl_plane_wm_level.exit31.peel.i.i, %bb.ld
  %i.bao = load i8, ptr %i.aud, align 1, !range !18, !noundef !19
  %i.bap = trunc nuw i8 %i.bao to i1
  br i1 %i.bap, label %bb.mb, label %bb.md

bb.mb:                                            ; preds = %skl_plane_selected_wm_equals.exit.thread.i
  %i.baq = load ptr, ptr %i.ato, align 8          ; 2 uses
  %.not.i42.i = icmp eq ptr %i.baq, null
  br i1 %.not.i42.i, label %skl_wm_add_affected_planes.exit.thread145, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.bar = getelementptr i8, ptr %i.baq, i64 8
  %i.bas = load ptr, ptr %i.bar, align 8
  br label %skl_wm_add_affected_planes.exit.thread145

skl_wm_add_affected_planes.exit.thread145:        ; preds = %bb.mb, %bb.mc
  %i.bat = phi ptr [ %i.bas, %bb.mc ], [ null, %bb.mb ]
  %i.bau = getelementptr i8, ptr %.pn53.i, i64 72
  %i.bav = load i32, ptr %i.bau, align 8
  %i.baw = getelementptr i8, ptr %.pn53.i, i64 16
  %i.bax = load ptr, ptr %i.baw, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bat, i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef %i.bav, ptr noundef %i.bax) #16
  br label %skl_print_wm_changes.exit

bb.md:                                            ; preds = %skl_plane_selected_wm_equals.exit.thread.i
  %i.bay = call ptr @drm_atomic_get_plane_state(ptr noundef %0, ptr noundef %.03554.i) #16 ; 2 uses
  %i.baz = icmp ugt ptr %i.bay, inttoptr (i64 -4096 to ptr)
  br i1 %i.baz, label %skl_wm_add_affected_planes.exit, label %bb.me

bb.me:                                            ; preds = %bb.md
  %i.bba = zext nneg i32 %i.aul to i64
  %i.bbb = shl nuw i64 1, %i.bba
  %i.bbc = load i8, ptr %i.aue, align 1
  %i.bbd = trunc i64 %i.bbb to i8
  %i.bbe = or i8 %i.bbc, %i.bbd
  store i8 %i.bbe, ptr %i.aue, align 1
  store i8 0, ptr %i.auf, align 2
  store i8 0, ptr %i.aud, align 1
  br label %bb.mf

bb.mf:                                            ; preds = %bb.me, %skl_plane_selected_wm_equals.exit.i, %bb.lc
  %.pn.i98 = load ptr, ptr %.pn53.i, align 8      ; 2 uses
  %i.bbf = load ptr, ptr %i.ato, align 8
  %i.bbg = getelementptr i8, ptr %i.bbf, i64 648
  %.not46.i = icmp eq ptr %.pn.i98, %i.bbg
  br i1 %.not46.i, label %skl_wm_add_affected_planes.exit.thread, label %bb.lc, !llvm.loop !135

skl_wm_add_affected_planes.exit:                  ; preds = %bb.md
  %i.bbh = ptrtoint ptr %i.bay to i64
  %i.bbi = trunc i64 %i.bbh to i32                ; 2 uses
  %.not71 = icmp eq i32 %i.bbi, 0
  br i1 %.not71, label %skl_wm_add_affected_planes.exit.thread, label %skl_print_wm_changes.exit

skl_wm_add_affected_planes.exit.thread:           ; preds = %bb.mf, %bb.lb, %bb.ku, %skl_wm_add_affected_planes.exit
  br label %bb.kr, !llvm.loop !136

bb.mg:                                            ; preds = %bb.kt
  %i.bbj = load ptr, ptr %i.c, align 8            ; 2 uses
  %.not.i110 = icmp eq ptr %i.bbj, null
  br i1 %.not.i110, label %bb.mi, label %bb.mh

bb.mh:                                            ; preds = %bb.mg
  %i.bbk = call ptr @__drm_to_display(ptr noundef nonnull %i.bbj) #16
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg
  %i.bbl = phi ptr [ %i.bbk, %bb.mh ], [ null, %bb.mg ] ; 5 uses
  %i.bbm = load i64, ptr @__drm_debug, align 8
  %i.bbn = and i64 %i.bbm, 4
  %.not92.i = icmp eq i64 %i.bbn, 0
  br i1 %.not92.i, label %skl_print_wm_changes.exit, label %bb.mj

bb.mj:                                            ; preds = %bb.mi
  %i.bbo = load ptr, ptr %i.c, align 8            ; 2 uses
  %.not73.i = icmp eq ptr %i.bbo, null
  br i1 %.not73.i, label %bb.ml, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.bbp = call ptr @__drm_to_display(ptr noundef nonnull %i.bbo) #16
  br label %bb.ml

bb.ml:                                            ; preds = %bb.mk, %bb.mj
  %i.bbq = phi ptr [ %i.bbp, %bb.mk ], [ null, %bb.mj ]
  %i.bbr = getelementptr i8, ptr %i.bbq, i64 40
  %i.bbs = getelementptr i8, ptr %i.bbl, i64 1168
  %i.bbt = getelementptr i8, ptr %i.bbl, i64 5536
  br label %bb.mm

bb.mm:                                            ; preds = %skl_print_wm_changes.exit.loopexit216, %bb.ml
  %.pn.in.i111 = phi ptr [ %i.bbr, %bb.ml ], [ %.pn.i112, %skl_print_wm_changes.exit.loopexit216 ]
  %.pn.i112 = load ptr, ptr %.pn.in.i111, align 8 ; 5 uses
  %i.bbu = load ptr, ptr %i.c, align 8            ; 2 uses
  %.not74.i = icmp eq ptr %i.bbu, null
  br i1 %.not74.i, label %bb.mo, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.bbv = call ptr @__drm_to_display(ptr noundef nonnull %i.bbu) #16
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mn, %bb.mm
  %i.bbw = phi ptr [ %i.bbv, %bb.mn ], [ null, %bb.mm ]
  %i.bbx = getelementptr i8, ptr %i.bbw, i64 40
  %.not93.i = icmp eq ptr %.pn.i112, %i.bbx
  br i1 %.not93.i, label %skl_print_wm_changes.exit, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %.val81.i = load ptr, ptr %i.j, align 8
  %i.bby = getelementptr i8, ptr %.pn.i112, i64 -1512
  %.068.val82.i = load i32, ptr %i.bby, align 8
  %i.bbz = zext i32 %.068.val82.i to i64
  %i.bca = getelementptr [56 x i8], ptr %.val81.i, i64 %i.bbz ; 2 uses
  %i.bcb = getelementptr i8, ptr %i.bca, i64 16
  %i.bcc = load ptr, ptr %i.bcb, align 8          ; 3 uses
  %i.bcd = getelementptr i8, ptr %i.bca, i64 24
  %i.bce = load ptr, ptr %i.bcd, align 8          ; 4 uses
  %.not76.i = icmp eq ptr %i.bce, null
  br i1 %.not76.i, label %skl_print_wm_changes.exit.loopexit216, label %bb.mq

bb.mq:                                            ; preds = %bb.mp
  %i.bcf = getelementptr i8, ptr %i.bcc, i64 2542
  %i.bcg = getelementptr i8, ptr %i.bce, i64 2542
  %i.bch = load ptr, ptr %i.bbl, align 8          ; 2 uses
  %i.bci = getelementptr i8, ptr %i.bch, i64 648  ; 2 uses
  %.pn7797.i = load ptr, ptr %i.bci, align 8      ; 3 uses
  %.not9499.i = icmp eq ptr %.pn7797.i, %i.bci
  br i1 %.not9499.i, label %.preheader.i114, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.mq
  %i.bcj = getelementptr i8, ptr %.pn.i112, i64 16
  %i.bck = getelementptr i8, ptr %i.bcc, i64 3604
  %i.bcl = getelementptr i8, ptr %i.bce, i64 3604
  %i.bcm = getelementptr i8, ptr %i.bcc, i64 3636
  %i.bcn = getelementptr i8, ptr %i.bce, i64 3636
  br label %bb.mr

.preheader.loopexit.i:                            ; preds = %skl_ddb_entry_equal.exit84.thread.i
  %.pn79102.pre.i = load ptr, ptr %i.bft, align 8
  br label %.preheader.i114

.preheader.i114:                                  ; preds = %.preheader.loopexit.i, %bb.mq
  %i.bco = phi ptr [ %i.bch, %bb.mq ], [ %i.bfs, %.preheader.loopexit.i ] ; 2 uses
  %.pn79102.i = phi ptr [ %.pn7797.i, %bb.mq ], [ %.pn79102.pre.i, %.preheader.loopexit.i ] ; 2 uses
  %i.bcp = getelementptr i8, ptr %i.bco, i64 648
  %.not95104.i = icmp eq ptr %.pn79102.i, %i.bcp
  br i1 %.not95104.i, label %skl_print_wm_changes.exit.loopexit216, label %.lr.ph107.i

.lr.ph107.i:                                      ; preds = %.preheader.i114
  %i.bcq = getelementptr i8, ptr %.pn.i112, i64 16
  br label %bb.nc

bb.mr:                                            ; preds = %skl_ddb_entry_equal.exit84.thread.i, %.lr.ph.i113
  %.pn77100.i = phi ptr [ %.pn7797.i, %.lr.ph.i113 ], [ %.pn77.i, %skl_ddb_entry_equal.exit84.thread.i ] ; 8 uses
  %.0101.i = getelementptr i8, ptr %.pn77100.i, i64 -8 ; 2 uses
  %i.bcr = getelementptr i8, ptr %.pn77100.i, i64 1352
  %i.bcs = load i32, ptr %i.bcr, align 8
  %i.bct = load i32, ptr %i.bcj, align 8
  %i.bcu = icmp eq i32 %i.bcs, %i.bct
  br i1 %i.bcu, label %bb.ms, label %skl_ddb_entry_equal.exit84.thread.i

bb.ms:                                            ; preds = %bb.mr
  %i.bcv = getelementptr i8, ptr %.pn77100.i, i64 1348
  %i.bcw = load i32, ptr %i.bcv, align 4
  %i.bcx = zext i32 %i.bcw to i64                 ; 4 uses
  %i.bcy = getelementptr [4 x i8], ptr %i.bck, i64 %i.bcx ; 4 uses
  %i.bcz = getelementptr [4 x i8], ptr %i.bcl, i64 %i.bcx ; 4 uses
  %i.bda = load i16, ptr %i.bcy, align 2
  %i.bdb = load i16, ptr %i.bcz, align 2
  %i.bdc = icmp eq i16 %i.bda, %i.bdb
  br i1 %i.bdc, label %bb.mt, label %skl_ddb_entry_equal.exit.i

bb.mt:                                            ; preds = %bb.ms
  %i.bdd = getelementptr i8, ptr %i.bcy, i64 2
  %i.bde = load i16, ptr %i.bdd, align 2
  %i.bdf = getelementptr i8, ptr %i.bcz, i64 2
  %i.bdg = load i16, ptr %i.bdf, align 2
  %i.bdh = icmp eq i16 %i.bde, %i.bdg
  br i1 %i.bdh, label %skl_ddb_entry_equal.exit.thread.i, label %skl_ddb_entry_equal.exit.i

skl_ddb_entry_equal.exit.i:                       ; preds = %bb.mt, %bb.ms
  %i.bdi = load ptr, ptr %.0101.i, align 8        ; 2 uses
  %.not.i.i124 = icmp eq ptr %i.bdi, null
  br i1 %.not.i.i124, label %bb.mv, label %bb.mu

bb.mu:                                            ; preds = %skl_ddb_entry_equal.exit.i
  %i.bdj = call ptr @__drm_to_display(ptr noundef nonnull %i.bdi) #16
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %skl_ddb_entry_equal.exit.i
  %i.bdk = phi ptr [ %i.bdj, %bb.mu ], [ null, %skl_ddb_entry_equal.exit.i ]
  %i.bdl = load ptr, ptr %i.bdk, align 8          ; 2 uses
  %.not.i.i.i125 = icmp eq ptr %i.bdl, null
  br i1 %.not.i.i.i125, label %skl_print_plane_ddb_changes.exit.i, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.bdm = getelementptr i8, ptr %i.bdl, i64 8
  %i.bdn = load ptr, ptr %i.bdm, align 8
  br label %skl_print_plane_ddb_changes.exit.i

skl_print_plane_ddb_changes.exit.i:               ; preds = %bb.mw, %bb.mv
  %i.bdo = phi ptr [ %i.bdn, %bb.mw ], [ null, %bb.mv ]
  %i.bdp = getelementptr i8, ptr %.pn77100.i, i64 72
  %i.bdq = load i32, ptr %i.bdp, align 8
  %i.bdr = getelementptr i8, ptr %.pn77100.i, i64 16
  %i.bds = load ptr, ptr %i.bdr, align 8
  %i.bdt = load i16, ptr %i.bcy, align 2          ; 2 uses
  %i.bdu = zext i16 %i.bdt to i32
  %i.bdv = getelementptr i8, ptr %i.bcy, i64 2
  %i.bdw = load i16, ptr %i.bdv, align 2          ; 2 uses
  %i.bdx = zext i16 %i.bdw to i32
  %i.bdy = load i16, ptr %i.bcz, align 2          ; 2 uses
  %i.bdz = zext i16 %i.bdy to i32
  %i.bea = getelementptr i8, ptr %i.bcz, i64 2
  %i.beb = load i16, ptr %i.bea, align 2          ; 2 uses
  %i.bec = zext i16 %i.beb to i32
  %i.bed = sub i16 %i.bdw, %i.bdt
  %i.bee = zext i16 %i.bed to i32
  %i.bef = sub i16 %i.beb, %i.bdy
  %i.beg = zext i16 %i.bef to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bdo, i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef %i.bdq, ptr noundef %i.bds, ptr noundef nonnull @.str.52, i32 noundef %i.bdu, i32 noundef %i.bdx, i32 noundef %i.bdz, i32 noundef %i.bec, i32 noundef %i.bee, i32 noundef %i.beg) #16
  br label %skl_ddb_entry_equal.exit.thread.i

skl_ddb_entry_equal.exit.thread.i:                ; preds = %skl_print_plane_ddb_changes.exit.i, %bb.mt
  %i.beh = load i16, ptr %i.bbs, align 8
  %i.bei = icmp ugt i16 %i.beh, 10
  br i1 %i.bei, label %skl_ddb_entry_equal.exit84.thread.i, label %bb.mx

bb.mx:                                            ; preds = %skl_ddb_entry_equal.exit.thread.i
  %i.bej = getelementptr [4 x i8], ptr %i.bcm, i64 %i.bcx ; 4 uses
  %i.bek = getelementptr [4 x i8], ptr %i.bcn, i64 %i.bcx ; 4 uses
  %i.bel = load i16, ptr %i.bej, align 2
  %i.bem = load i16, ptr %i.bek, align 2
  %i.ben = icmp eq i16 %i.bel, %i.bem
  br i1 %i.ben, label %bb.my, label %skl_ddb_entry_equal.exit84.i

bb.my:                                            ; preds = %bb.mx
  %i.beo = getelementptr i8, ptr %i.bej, i64 2
  %i.bep = load i16, ptr %i.beo, align 2
  %i.beq = getelementptr i8, ptr %i.bek, i64 2
  %i.ber = load i16, ptr %i.beq, align 2
  %i.bes = icmp eq i16 %i.bep, %i.ber
  br i1 %i.bes, label %skl_ddb_entry_equal.exit84.thread.i, label %skl_ddb_entry_equal.exit84.i

skl_ddb_entry_equal.exit84.i:                     ; preds = %bb.my, %bb.mx
  %i.bet = load ptr, ptr %.0101.i, align 8        ; 2 uses
  %.not.i85.i = icmp eq ptr %i.bet, null
  br i1 %.not.i85.i, label %bb.na, label %bb.mz

bb.mz:                                            ; preds = %skl_ddb_entry_equal.exit84.i
  %i.beu = call ptr @__drm_to_display(ptr noundef nonnull %i.bet) #16
  br label %bb.na

bb.na:                                            ; preds = %bb.mz, %skl_ddb_entry_equal.exit84.i
  %i.bev = phi ptr [ %i.beu, %bb.mz ], [ null, %skl_ddb_entry_equal.exit84.i ]
  %i.bew = load ptr, ptr %i.bev, align 8          ; 2 uses
  %.not.i.i86.i = icmp eq ptr %i.bew, null
  br i1 %.not.i.i86.i, label %skl_print_plane_ddb_changes.exit87.i, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.bex = getelementptr i8, ptr %i.bew, i64 8
  %i.bey = load ptr, ptr %i.bex, align 8
  br label %skl_print_plane_ddb_changes.exit87.i

skl_print_plane_ddb_changes.exit87.i:             ; preds = %bb.nb, %bb.na
  %i.bez = phi ptr [ %i.bey, %bb.nb ], [ null, %bb.na ]
  %i.bfa = getelementptr i8, ptr %.pn77100.i, i64 72
  %i.bfb = load i32, ptr %i.bfa, align 8
  %i.bfc = getelementptr i8, ptr %.pn77100.i, i64 16
  %i.bfd = load ptr, ptr %i.bfc, align 8
  %i.bfe = load i16, ptr %i.bej, align 2          ; 2 uses
  %i.bff = zext i16 %i.bfe to i32
  %i.bfg = getelementptr i8, ptr %i.bej, i64 2
  %i.bfh = load i16, ptr %i.bfg, align 2          ; 2 uses
  %i.bfi = zext i16 %i.bfh to i32
  %i.bfj = load i16, ptr %i.bek, align 2          ; 2 uses
  %i.bfk = zext i16 %i.bfj to i32
  %i.bfl = getelementptr i8, ptr %i.bek, i64 2
  %i.bfm = load i16, ptr %i.bfl, align 2          ; 2 uses
  %i.bfn = zext i16 %i.bfm to i32
  %i.bfo = sub i16 %i.bfh, %i.bfe
  %i.bfp = zext i16 %i.bfo to i32
  %i.bfq = sub i16 %i.bfm, %i.bfj
  %i.bfr = zext i16 %i.bfq to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bez, i32 noundef 2, ptr noundef nonnull @.str.54, i32 noundef %i.bfb, ptr noundef %i.bfd, ptr noundef nonnull @.str.53, i32 noundef %i.bff, i32 noundef %i.bfi, i32 noundef %i.bfk, i32 noundef %i.bfn, i32 noundef %i.bfp, i32 noundef %i.bfr) #16
  br label %skl_ddb_entry_equal.exit84.thread.i

skl_ddb_entry_equal.exit84.thread.i:              ; preds = %skl_print_plane_ddb_changes.exit87.i, %bb.my, %skl_ddb_entry_equal.exit.thread.i, %bb.mr
  %.pn77.i = load ptr, ptr %.pn77100.i, align 8   ; 2 uses
  %i.bfs = load ptr, ptr %i.bbl, align 8          ; 2 uses
  %i.bft = getelementptr i8, ptr %i.bfs, i64 648  ; 2 uses
  %.not94.i = icmp eq ptr %.pn77.i, %i.bft
  br i1 %.not94.i, label %.preheader.loopexit.i, label %bb.mr, !llvm.loop !137

bb.nc:                                            ; preds = %bb.nt, %.lr.ph107.i
  %i.bfu = phi ptr [ %i.bco, %.lr.ph107.i ], [ %i.bkd, %bb.nt ] ; 2 uses
  %.pn79105.i = phi ptr [ %.pn79102.i, %.lr.ph107.i ], [ %.pn79.i, %bb.nt ] ; 4 uses
  %.1106.i = getelementptr i8, ptr %.pn79105.i, i64 -8
  %i.bfv = getelementptr i8, ptr %.pn79105.i, i64 1352
  %i.bfw = load i32, ptr %i.bfv, align 8
  %i.bfx = load i32, ptr %i.bcq, align 8
  %i.bfy = icmp eq i32 %i.bfw, %i.bfx
  br i1 %i.bfy, label %bb.nd, label %bb.nt

bb.nd:                                            ; preds = %bb.nc
  %i.bfz = getelementptr i8, ptr %.pn79105.i, i64 1348
  %i.bga = load i32, ptr %i.bfz, align 4
  %i.bgb = zext i32 %i.bga to i64                 ; 2 uses
  %i.bgc = getelementptr [132 x i8], ptr %i.bcf, i64 %i.bgb ; 17 uses
  %i.bgd = getelementptr [132 x i8], ptr %i.bcg, i64 %i.bgb ; 17 uses
  %i.bge = load i8, ptr %i.bbt, align 8           ; 2 uses
  %.not.i88.i = icmp eq i8 %i.bge, 0
  br i1 %.not.i88.i, label %._crit_edge.i.i123, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.nd
  %wide.trip.count.i.i116 = zext i8 %i.bge to i64
  br label %.lr.ph.i.i117

bb.ne:                                            ; preds = %skl_wm_level_equals.exit.i.i120
  %indvars.iv.next.i.i121 = add nuw nsw i64 %indvars.iv.i.i118, 1 ; 2 uses
  %exitcond.not.i.i122 = icmp eq i64 %indvars.iv.next.i.i121, %wide.trip.count.i.i116
  br i1 %exitcond.not.i.i122, label %._crit_edge.i.i123, label %.lr.ph.i.i117, !llvm.loop !138

.lr.ph.i.i117:                                    ; preds = %bb.ne, %.lr.ph.preheader.i.i
  %indvars.iv.i.i118 = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i121, %bb.ne ] ; 3 uses
  %i.bgf = getelementptr [12 x i8], ptr %i.bgc, i64 %indvars.iv.i.i118 ; 5 uses
  %i.bgg = getelementptr [12 x i8], ptr %i.bgd, i64 %indvars.iv.i.i118 ; 5 uses
  %i.bgh = getelementptr i8, ptr %i.bgf, i64 7
  %i.bgi = load i8, ptr %i.bgh, align 1, !range !18, !noundef !19
  %i.bgj = getelementptr i8, ptr %i.bgg, i64 7
  %i.bgk = load i8, ptr %i.bgj, align 1, !range !18, !noundef !19
  %i.bgl = icmp eq i8 %i.bgi, %i.bgk
  br i1 %i.bgl, label %bb.nf, label %skl_plane_wm_equals.exit.thread.i

bb.nf:                                            ; preds = %.lr.ph.i.i117
  %i.bgm = getelementptr i8, ptr %i.bgf, i64 8
  %i.bgn = load i8, ptr %i.bgm, align 2, !range !18, !noundef !19
  %i.bgo = getelementptr i8, ptr %i.bgg, i64 8
  %i.bgp = load i8, ptr %i.bgo, align 2, !range !18, !noundef !19
  %i.bgq = icmp eq i8 %i.bgn, %i.bgp
  br i1 %i.bgq, label %bb.ng, label %skl_plane_wm_equals.exit.thread.i

bb.ng:                                            ; preds = %bb.nf
  %i.bgr = getelementptr i8, ptr %i.bgf, i64 6
  %i.bgs = load i8, ptr %i.bgr, align 2
  %i.bgt = getelementptr i8, ptr %i.bgg, i64 6
  %i.bgu = load i8, ptr %i.bgt, align 2
  %i.bgv = icmp eq i8 %i.bgs, %i.bgu
  br i1 %i.bgv, label %bb.nh, label %skl_plane_wm_equals.exit.thread.i

bb.nh:                                            ; preds = %bb.ng
  %i.bgw = getelementptr i8, ptr %i.bgf, i64 4
  %i.bgx = load i16, ptr %i.bgw, align 2
  %i.bgy = getelementptr i8, ptr %i.bgg, i64 4
  %i.bgz = load i16, ptr %i.bgy, align 2
  %i.bha = icmp eq i16 %i.bgx, %i.bgz
  br i1 %i.bha, label %skl_wm_level_equals.exit.i.i120, label %skl_plane_wm_equals.exit.thread.i

skl_wm_level_equals.exit.i.i120:                  ; preds = %bb.nh
  %i.bhb = getelementptr i8, ptr %i.bgf, i64 9
  %i.bhc = load i8, ptr %i.bhb, align 1, !range !18, !noundef !19
  %i.bhd = getelementptr i8, ptr %i.bgg, i64 9
  %i.bhe = load i8, ptr %i.bhd, align 1, !range !18, !noundef !19
  %i.bhf = icmp eq i8 %i.bhc, %i.bhe
  br i1 %i.bhf, label %bb.ne, label %skl_plane_wm_equals.exit.thread.i

._crit_edge.i.i123:                               ; preds = %bb.ne, %bb.nd
  %i.bhg = getelementptr i8, ptr %i.bgc, i64 103
  %i.bhh = load i8, ptr %i.bhg, align 1, !range !18, !noundef !19
  %i.bhi = getelementptr i8, ptr %i.bgd, i64 103
  %i.bhj = load i8, ptr %i.bhi, align 1, !range !18, !noundef !19
  %i.bhk = icmp eq i8 %i.bhh, %i.bhj
  br i1 %i.bhk, label %bb.ni, label %skl_plane_wm_equals.exit.thread.i

bb.ni:                                            ; preds = %._crit_edge.i.i123
  %i.bhl = getelementptr i8, ptr %i.bgc, i64 104
  %i.bhm = load i8, ptr %i.bhl, align 2, !range !18, !noundef !19
  %i.bhn = getelementptr i8, ptr %i.bgd, i64 104
  %i.bho = load i8, ptr %i.bhn, align 2, !range !18, !noundef !19
  %i.bhp = icmp eq i8 %i.bhm, %i.bho
  br i1 %i.bhp, label %bb.nj, label %skl_plane_wm_equals.exit.thread.i

bb.nj:                                            ; preds = %bb.ni
  %i.bhq = getelementptr i8, ptr %i.bgc, i64 102
  %i.bhr = load i8, ptr %i.bhq, align 2
  %i.bhs = getelementptr i8, ptr %i.bgd, i64 102
  %i.bht = load i8, ptr %i.bhs, align 2
  %i.bhu = icmp eq i8 %i.bhr, %i.bht
  br i1 %i.bhu, label %bb.nk, label %skl_plane_wm_equals.exit.thread.i

bb.nk:                                            ; preds = %bb.nj
  %i.bhv = getelementptr i8, ptr %i.bgc, i64 100
  %i.bhw = load i16, ptr %i.bhv, align 2
  %i.bhx = getelementptr i8, ptr %i.bgd, i64 100
  %i.bhy = load i16, ptr %i.bhx, align 2
  %i.bhz = icmp eq i16 %i.bhw, %i.bhy
  br i1 %i.bhz, label %skl_wm_level_equals.exit14.i.i, label %skl_plane_wm_equals.exit.thread.i

skl_wm_level_equals.exit14.i.i:                   ; preds = %bb.nk
  %i.bia = getelementptr i8, ptr %i.bgc, i64 105
  %i.bib = load i8, ptr %i.bia, align 1, !range !18, !noundef !19
  %i.bic = getelementptr i8, ptr %i.bgd, i64 105
  %i.bid = load i8, ptr %i.bic, align 1, !range !18, !noundef !19
  %i.bie = icmp eq i8 %i.bib, %i.bid
  br i1 %i.bie, label %bb.nl, label %skl_plane_wm_equals.exit.thread.i

bb.nl:                                            ; preds = %skl_wm_level_equals.exit14.i.i
  %i.bif = getelementptr i8, ptr %i.bgc, i64 115
  %i.big = load i8, ptr %i.bif, align 1, !range !18, !noundef !19
  %i.bih = getelementptr i8, ptr %i.bgd, i64 115
  %i.bii = load i8, ptr %i.bih, align 1, !range !18, !noundef !19
  %i.bij = icmp eq i8 %i.big, %i.bii
  br i1 %i.bij, label %bb.nm, label %skl_plane_wm_equals.exit.thread.i

bb.nm:                                            ; preds = %bb.nl
  %i.bik = getelementptr i8, ptr %i.bgc, i64 116
  %i.bil = load i8, ptr %i.bik, align 2, !range !18, !noundef !19
  %i.bim = getelementptr i8, ptr %i.bgd, i64 116
  %i.bin = load i8, ptr %i.bim, align 2, !range !18, !noundef !19
  %i.bio = icmp eq i8 %i.bil, %i.bin
  br i1 %i.bio, label %bb.nn, label %skl_plane_wm_equals.exit.thread.i

bb.nn:                                            ; preds = %bb.nm
  %i.bip = getelementptr i8, ptr %i.bgc, i64 114
  %i.biq = load i8, ptr %i.bip, align 2
  %i.bir = getelementptr i8, ptr %i.bgd, i64 114
  %i.bis = load i8, ptr %i.bir, align 2
  %i.bit = icmp eq i8 %i.biq, %i.bis
  br i1 %i.bit, label %bb.no, label %skl_plane_wm_equals.exit.thread.i

bb.no:                                            ; preds = %bb.nn
  %i.biu = getelementptr i8, ptr %i.bgc, i64 112
  %i.biv = load i16, ptr %i.biu, align 2
  %i.biw = getelementptr i8, ptr %i.bgd, i64 112
  %i.bix = load i16, ptr %i.biw, align 2
  %i.biy = icmp eq i16 %i.biv, %i.bix
  br i1 %i.biy, label %skl_wm_level_equals.exit15.i.i, label %skl_plane_wm_equals.exit.thread.i

skl_wm_level_equals.exit15.i.i:                   ; preds = %bb.no
  %i.biz = getelementptr i8, ptr %i.bgc, i64 117
  %i.bja = load i8, ptr %i.biz, align 1, !range !18, !noundef !19
  %i.bjb = getelementptr i8, ptr %i.bgd, i64 117
  %i.bjc = load i8, ptr %i.bjb, align 1, !range !18, !noundef !19
  %i.bjd = icmp eq i8 %i.bja, %i.bjc
  br i1 %i.bjd, label %bb.np, label %skl_plane_wm_equals.exit.thread.i

bb.np:                                            ; preds = %skl_wm_level_equals.exit15.i.i
  %i.bje = getelementptr i8, ptr %i.bgc, i64 127
  %i.bjf = load i8, ptr %i.bje, align 1, !range !18, !noundef !19
  %i.bjg = getelementptr i8, ptr %i.bgd, i64 127
  %i.bjh = load i8, ptr %i.bjg, align 1, !range !18, !noundef !19
  %i.bji = icmp eq i8 %i.bjf, %i.bjh
  br i1 %i.bji, label %bb.nq, label %skl_plane_wm_equals.exit.thread.i

bb.nq:                                            ; preds = %bb.np
  %i.bjj = getelementptr i8, ptr %i.bgc, i64 128
  %i.bjk = load i8, ptr %i.bjj, align 2, !range !18, !noundef !19
  %i.bjl = getelementptr i8, ptr %i.bgd, i64 128
  %i.bjm = load i8, ptr %i.bjl, align 2, !range !18, !noundef !19
  %i.bjn = icmp eq i8 %i.bjk, %i.bjm
  br i1 %i.bjn, label %bb.nr, label %skl_plane_wm_equals.exit.thread.i

bb.nr:                                            ; preds = %bb.nq
  %i.bjo = getelementptr i8, ptr %i.bgc, i64 126
  %i.bjp = load i8, ptr %i.bjo, align 2
  %i.bjq = getelementptr i8, ptr %i.bgd, i64 126
  %i.bjr = load i8, ptr %i.bjq, align 2
  %i.bjs = icmp eq i8 %i.bjp, %i.bjr
  br i1 %i.bjs, label %bb.ns, label %skl_plane_wm_equals.exit.thread.i

bb.ns:                                            ; preds = %bb.nr
  %i.bjt = getelementptr i8, ptr %i.bgc, i64 124
  %i.bju = load i16, ptr %i.bjt, align 2
  %i.bjv = getelementptr i8, ptr %i.bgd, i64 124
  %i.bjw = load i16, ptr %i.bjv, align 2
  %i.bjx = icmp eq i16 %i.bju, %i.bjw
  br i1 %i.bjx, label %skl_plane_wm_equals.exit.i, label %skl_plane_wm_equals.exit.thread.i

skl_plane_wm_equals.exit.i:                       ; preds = %bb.ns
  %i.bjy = getelementptr i8, ptr %i.bgc, i64 129
  %i.bjz = load i8, ptr %i.bjy, align 1, !range !18, !noundef !19
  %i.bka = getelementptr i8, ptr %i.bgd, i64 129
  %i.bkb = load i8, ptr %i.bka, align 1, !range !18, !noundef !19
  %i.bkc = icmp eq i8 %i.bjz, %i.bkb
  br i1 %i.bkc, label %bb.nt, label %skl_plane_wm_equals.exit.thread.i

skl_plane_wm_equals.exit.thread.i:                ; preds = %skl_wm_level_equals.exit.i.i120, %bb.nh, %bb.ng, %bb.nf, %.lr.ph.i.i117, %skl_plane_wm_equals.exit.i, %bb.ns, %bb.nr, %bb.nq, %bb.np, %skl_wm_level_equals.exit15.i.i, %bb.no, %bb.nn, %bb.nm, %bb.nl, %skl_wm_level_equals.exit14.i.i, %bb.nk, %bb.nj, %bb.ni, %._crit_edge.i.i123
  call fastcc void @skl_print_plane_wm_changes(ptr noundef %.1106.i, ptr noundef %i.bgc, ptr noundef %i.bgd) #17, !srcloc !163
  %.pre.i119 = load ptr, ptr %i.bbl, align 8
  br label %bb.nt

bb.nt:                                            ; preds = %skl_plane_wm_equals.exit.thread.i, %skl_plane_wm_equals.exit.i, %bb.nc
  %i.bkd = phi ptr [ %.pre.i119, %skl_plane_wm_equals.exit.thread.i ], [ %i.bfu, %skl_plane_wm_equals.exit.i ], [ %i.bfu, %bb.nc ] ; 2 uses
  %.pn79.i = load ptr, ptr %.pn79105.i, align 8   ; 2 uses
  %i.bke = getelementptr i8, ptr %i.bkd, i64 648
  %.not95.i = icmp eq ptr %.pn79.i, %i.bke
  br i1 %.not95.i, label %skl_print_wm_changes.exit.loopexit216, label %bb.nc, !llvm.loop !139

skl_print_wm_changes.exit.loopexit216:            ; preds = %bb.nt, %.preheader.i114, %bb.mp
  br label %bb.mm, !llvm.loop !140

skl_print_wm_changes.exit:                        ; preds = %bb.ag, %bb.ae, %bb.ai, %bb.ad, %bb.dh, %bb.ed, %skl_crtc_allocate_ddb.exit.i, %skl_ddb_entry_equal.exit.i.i, %skl_ddb_add_affected_planes.exit.i, %skl_wm_add_affected_planes.exit, %bb.mo, %.backedge.a, %skl_crtc_allocate_plane_ddb.exit.i, %bb.ds, %bb.de, %skl_ddb_add_affected_planes.exit.thread234.i, %bb.cz, %icl_build_plane_wm.exit.i, %bb.mi, %skl_wm_add_affected_planes.exit.thread145, %skl_build_pipe_wm.exit.thread133, %skl_compute_ddb.exit
  %.3 = phi i32 [ -22, %skl_wm_add_affected_planes.exit.thread145 ], [ %i.if, %.backedge.a ], [ %.073.i.i, %skl_crtc_allocate_ddb.exit.i ], [ %i.asn, %skl_compute_ddb.exit ], [ %i.mi, %bb.cz ], [ -22, %skl_build_pipe_wm.exit.thread133 ], [ %i.el, %icl_build_plane_wm.exit.i ], [ 0, %bb.mi ], [ %i.ou, %bb.ds ], [ 0, %bb.mo ], [ %i.mx, %bb.de ], [ %i.nn, %bb.dh ], [ -22, %skl_ddb_add_affected_planes.exit.thread234.i ], [ %i.bbi, %skl_wm_add_affected_planes.exit ], [ %i.qr, %bb.ed ], [ -22, %skl_crtc_allocate_plane_ddb.exit.i ], [ %i.asl, %skl_ddb_add_affected_planes.exit.i ], [ %i.vt, %skl_ddb_entry_equal.exit.i.i ], [ %i.cx, %bb.ad ], [ %i.di, %bb.ai ], [ %i.cy, %bb.ae ], [ %i.da, %bb.ag ]
  ret i32 %.3
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @skl_wm_get_hw_state(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 736
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = and i64 %i.f, 4503599627370496
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 1168
  %i.i = load i16, ptr %i.h, align 8
  %i.j = icmp ugt i16 %i.i, 13
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 279436) #16
  %.val.i = load ptr, ptr %0, align 8
  %i.k = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #16 ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 144
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i32 %i.m(ptr noundef %i.k, i32 279436, i1 noundef zeroext true) #16, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 279436) #16
  %i.o = getelementptr i8, ptr %i.d, i64 71
  %.lobit = lshr i32 %i.n, 31
  %i.p = trunc nuw nsw i32 %.lobit to i8
  store i8 %i.p, ptr %i.o, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr i8, ptr %0, i64 616
  %i.r = tail call i32 @intel_mdclk_cdclk_ratio(ptr noundef %0, ptr noundef %i.q) #16
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr i8, ptr %i.d, i64 70
  store i8 %i.s, ptr %i.t, align 2
  %i.u = getelementptr i8, ptr %i.d, i64 69       ; 5 uses
  store i8 0, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %.pn105 = load ptr, ptr %i.v, align 8           ; 2 uses
  %.not103107 = icmp eq ptr %.pn105, %i.v
  br i1 %.not103107, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.d, i64 32
  %i.x = getelementptr i8, ptr %i.d, i64 48
  %i.y = getelementptr i8, ptr %i.d, i64 71       ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 1160
  %i.aa = getelementptr i8, ptr %i.d, i64 64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %__drm_to_dev.exit
  %.pn108 = phi ptr [ %.pn105, %.lr.ph ], [ %.pn, %__drm_to_dev.exit ] ; 7 uses
  %.0109 = getelementptr i8, ptr %.pn108, i64 -1648 ; 2 uses
  %i.ab = getelementptr i8, ptr %.pn108, i64 -168
  %i.ac = load ptr, ptr %i.ab, align 8            ; 10 uses
  %i.ad = getelementptr i8, ptr %.pn108, i64 16   ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 1484
  %i.ag = getelementptr i8, ptr %i.ac, i64 2542   ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(1058) %i.ag, i8 0, i64 1058, i1 false)
  %i.ah = getelementptr i8, ptr %i.ac, i64 344    ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 8, !range !18, !noundef !19
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @skl_pipe_wm_get_hw_state(ptr noundef %.0109, ptr noundef %i.ag) #17, !srcloc !166
  %i.ak = zext nneg i32 %i.ae to i64
  %i.al = shl nuw i64 1, %i.ak
  %i.am = load i8, ptr %i.u, align 1
  %i.an = trunc i64 %i.al to i8
  %i.ao = or i8 %i.am, %i.an
  store i8 %i.ao, ptr %i.u, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 4 dereferenceable(1058) %i.af, ptr noundef align 2 dereferenceable(1058) %i.ag, i64 1058, i1 false)
  %i.ap = sext i32 %i.ae to i64                   ; 3 uses
  %i.aq = getelementptr [4 x i8], ptr %i.w, i64 %i.ap ; 10 uses
  store i32 0, ptr %i.aq, align 4
  %i.ar = getelementptr i8, ptr %.pn108, i64 21
  %i.as = getelementptr i8, ptr %i.ac, i64 3684
  %i.at = getelementptr i8, ptr %i.ac, i64 3668
  %i.au = getelementptr i8, ptr %i.ac, i64 3636
  %i.av = getelementptr i8, ptr %i.ac, i64 3604
  %i.aw = getelementptr i8, ptr %i.aq, i64 2      ; 6 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %skl_ddb_entry_union.exit99
  %indvars.iv = phi i64 [ 0, %bb.g ], [ %indvars.iv.next, %skl_ddb_entry_union.exit99 ] ; 7 uses
  %i.ax = load i8, ptr %i.ar, align 1
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 1, %indvars.iv
  %i.ba = and i64 %i.az, %i.ay
  %.not93 = icmp eq i64 %i.ba, 0
  br i1 %.not93, label %skl_ddb_entry_union.exit99, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = load i8, ptr %i.ah, align 8, !range !18, !noundef !19
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.j, label %skl_ddb_entry_union.exit99

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr [2 x i8], ptr %i.as, i64 %indvars.iv
  %i.be = getelementptr [2 x i8], ptr %i.at, i64 %indvars.iv
  %i.bf = getelementptr [4 x i8], ptr %i.au, i64 %indvars.iv ; 7 uses
  %i.bg = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv ; 4 uses
  %i.bh = load i32, ptr %i.ad, align 8
  %i.bi = trunc nuw nsw i64 %indvars.iv to i32
  call fastcc void @skl_ddb_get_hw_plane_state(ptr noundef %0, i32 noundef %i.bh, i32 noundef %i.bi, ptr noundef %i.bg, ptr noundef %i.bf, ptr noundef %i.be, ptr noundef %i.bd) #17, !srcloc !167
  %i.bj = load i16, ptr %i.aw, align 2            ; 3 uses
  %.not.i = icmp eq i16 %i.bj, 0
  %.phi.trans.insert.i = getelementptr i8, ptr %i.bg, i64 2 ; 3 uses
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  %i.bk = icmp eq i16 %.pre.i, 0                  ; 2 uses
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.bk, label %skl_ddb_entry_union.exit.thread121, label %skl_ddb_entry_union.exit.thread126

skl_ddb_entry_union.exit.thread121:               ; preds = %bb.k
  %.phi.trans.insert.i95123 = getelementptr i8, ptr %i.bf, i64 2 ; 2 uses
  %.pre.i96124 = load i16, ptr %.phi.trans.insert.i95123, align 2
  %i.bl = icmp eq i16 %.pre.i96124, 0
  br i1 %i.bl, label %skl_ddb_entry_union.exit99, label %bb.n

skl_ddb_entry_union.exit.thread126:               ; preds = %bb.k
  %i.bm = load i16, ptr %i.aq, align 4
  %i.bn = load i16, ptr %i.bg, align 2
  %i.bo = call i16 @llvm.umin.i16(i16 %i.bm, i16 %i.bn)
  store i16 %i.bo, ptr %i.aq, align 4
  %i.bp = load i16, ptr %.phi.trans.insert.i, align 2
  %i.bq = call i16 @llvm.umax.i16(i16 %i.bj, i16 %i.bp) ; 2 uses
  store i16 %i.bq, ptr %i.aw, align 2
  %.phi.trans.insert.i95129 = getelementptr i8, ptr %i.bf, i64 2 ; 2 uses
  %.pre.i96130 = load i16, ptr %.phi.trans.insert.i95129, align 2
  %i.br = icmp eq i16 %.pre.i96130, 0
  br i1 %i.br, label %skl_ddb_entry_union.exit99, label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %i.bk, label %skl_ddb_entry_union.exit.thread, label %skl_ddb_entry_union.exit

skl_ddb_entry_union.exit.thread:                  ; preds = %bb.l
  %.phi.trans.insert.i95118 = getelementptr i8, ptr %i.bf, i64 2 ; 2 uses
  %.pre.i96119 = load i16, ptr %.phi.trans.insert.i95118, align 2
  %i.bs = icmp eq i16 %.pre.i96119, 0
  br i1 %i.bs, label %skl_ddb_entry_union.exit99, label %bb.p

skl_ddb_entry_union.exit:                         ; preds = %bb.l
  %i.bt = load i16, ptr %i.bg, align 2
  store i16 %i.bt, ptr %i.aq, align 4
  %i.bu = load i16, ptr %.phi.trans.insert.i, align 2 ; 3 uses
  store i16 %i.bu, ptr %i.aw, align 2
  %.not.i94 = icmp eq i16 %i.bu, 0
  %.phi.trans.insert.i95 = getelementptr i8, ptr %i.bf, i64 2 ; 3 uses
  %.pre.i96 = load i16, ptr %.phi.trans.insert.i95, align 2
  %i.bv = icmp eq i16 %.pre.i96, 0                ; 2 uses
  br i1 %.not.i94, label %bb.o, label %bb.m

bb.m:                                             ; preds = %skl_ddb_entry_union.exit
  br i1 %i.bv, label %skl_ddb_entry_union.exit99, label %bb.n

bb.n:                                             ; preds = %skl_ddb_entry_union.exit.thread126, %skl_ddb_entry_union.exit.thread121, %bb.m
  %i.bw = phi i16 [ %i.bj, %skl_ddb_entry_union.exit.thread121 ], [ %i.bu, %bb.m ], [ %i.bq, %skl_ddb_entry_union.exit.thread126 ]
  %.phi.trans.insert.i95125132 = phi ptr [ %.phi.trans.insert.i95123, %skl_ddb_entry_union.exit.thread121 ], [ %.phi.trans.insert.i95, %bb.m ], [ %.phi.trans.insert.i95129, %skl_ddb_entry_union.exit.thread126 ]
  %i.bx = load i16, ptr %i.aq, align 4
  %i.by = load i16, ptr %i.bf, align 2
  %i.bz = call i16 @llvm.umin.i16(i16 %i.bx, i16 %i.by)
  store i16 %i.bz, ptr %i.aq, align 4
  %i.ca = load i16, ptr %.phi.trans.insert.i95125132, align 2
  %i.cb = call i16 @llvm.umax.i16(i16 %i.bw, i16 %i.ca)
  br label %.thread.sink.split.i97

bb.o:                                             ; preds = %skl_ddb_entry_union.exit
  br i1 %i.bv, label %skl_ddb_entry_union.exit99, label %bb.p

bb.p:                                             ; preds = %skl_ddb_entry_union.exit.thread, %bb.o
  %.phi.trans.insert.i95120134 = phi ptr [ %.phi.trans.insert.i95118, %skl_ddb_entry_union.exit.thread ], [ %.phi.trans.insert.i95, %bb.o ]
  %i.cc = load i16, ptr %i.bf, align 2
  store i16 %i.cc, ptr %i.aq, align 4
  %i.cd = load i16, ptr %.phi.trans.insert.i95120134, align 2
  br label %.thread.sink.split.i97

.thread.sink.split.i97:                           ; preds = %bb.p, %bb.n
  %.sink.i98 = phi i16 [ %i.cd, %bb.p ], [ %i.cb, %bb.n ]
  store i16 %.sink.i98, ptr %i.aw, align 2
  br label %skl_ddb_entry_union.exit99

skl_ddb_entry_union.exit99:                       ; preds = %skl_ddb_entry_union.exit.thread, %skl_ddb_entry_union.exit.thread126, %skl_ddb_entry_union.exit.thread121, %.thread.sink.split.i97, %bb.o, %bb.m, %bb.i, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.q, label %bb.h, !llvm.loop !164

end_hunk_2
