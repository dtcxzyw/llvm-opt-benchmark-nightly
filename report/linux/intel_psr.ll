Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_psr?download=true
inline.NumInlined: 742
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@intel_psr_compute_config_late:bb.a
  %i.bd = phi ptr [ %i.bc, %bb.p ], [ null, %bb.o ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bd, i32 noundef 2, ptr noundef nonnull @.str.34) #11
  br label %intel_psr_needs_wa_18037818876.exit.thread

intel_psr_needs_wa_18037818876.exit.thread:       ; preds = %bb.m, %bb.n, %__drm_to_dev.exit34, %intel_psr_needs_wa_18037818876.exit
  %.val31 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not.i35 = icmp eq ptr %.val31, null
  br i1 %.not.i35, label %bb.r, label %bb.q

bb.q:                                             ; preds = %intel_psr_needs_wa_18037818876.exit.thread
  %i.be = tail call ptr @__drm_to_display(ptr noundef nonnull %.val31) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %intel_psr_needs_wa_18037818876.exit.thread
  %i.bf = phi ptr [ %i.be, %bb.q ], [ null, %intel_psr_needs_wa_18037818876.exit.thread ] ; 2 uses
  %i.bg = getelementptr i8, ptr %1, i64 336
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call zeroext i1 @__intel_display_wa(ptr noundef %i.bf, i32 noundef 24, ptr noundef nonnull @.str.28) #11
  br i1 %i.bi, label %bb.s, label %intel_psr_set_non_psr_pipes.exit

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr i8, ptr %1, i64 1294
  %i.bk = load i8, ptr %i.bj, align 2, !range !10, !noundef !11
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %intel_psr_set_non_psr_pipes.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr i8, ptr %i.bf, i64 40     ; 3 uses
  %.pn2.i = load ptr, ptr %i.bm, align 8          ; 2 uses
  %.not13.i = icmp eq ptr %.pn2.i, %i.bm
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t, %bb.v
  %.pn5.i = phi ptr [ %.pn.i, %bb.v ], [ %.pn2.i, %bb.t ] ; 3 uses
  %.0244.i = phi i8 [ %i.bw, %bb.v ], [ 0, %bb.t ] ; 2 uses
  %i.bn = getelementptr i8, ptr %.pn5.i, i64 20
  %i.bo = load i8, ptr %i.bn, align 4, !range !10, !noundef !11
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i
  %i.bq = getelementptr i8, ptr %.pn5.i, i64 16
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = or i8 %.0244.i, %i.bu
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i
  %i.bw = phi i8 [ %i.bv, %bb.u ], [ %.0244.i, %.lr.ph.i ] ; 2 uses
  %.pn.i = load ptr, ptr %.pn5.i, align 8         ; 2 uses
  %.not1.i = icmp eq ptr %.pn.i, %i.bm
  br i1 %.not1.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !155

._crit_edge.i:                                    ; preds = %bb.v, %bb.t
  %.024.lcssa.i = phi i8 [ 0, %bb.t ], [ %i.bw, %bb.v ]
  %i.bx = tail call zeroext i8 @intel_calc_active_pipes(ptr noundef %i.bh, i8 noundef zeroext %.024.lcssa.i) #11
  %i.by = load ptr, ptr %1, align 8
  %i.bz = getelementptr i8, ptr %i.by, i64 1664
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl nuw i64 1, %i.cb
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = xor i8 %i.cd, -1
  %i.cf = and i8 %i.bx, %i.ce
  %i.cg = getelementptr i8, ptr %1, i64 1310
  store i8 %i.cf, ptr %i.cg, align 2
  br label %intel_psr_set_non_psr_pipes.exit

intel_psr_set_non_psr_pipes.exit:                 ; preds = %bb.r, %bb.s, %._crit_edge.i
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_crtc_vblank_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 0, 65792) i32 @intel_psr_min_guardband(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = getelementptr i8, ptr %0, i64 888
  %.val = load i32, ptr %i.e, align 8
  %i.f = and i32 %.val, 256
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 1294
  %i.h = load i8, ptr %i.g, align 2, !range !10, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 4799
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %0, i64 1290
  %i.n = load i8, ptr %i.m, align 2, !range !10, !noundef !11
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.d, i64 1168
  %i.q = load i16, ptr %i.p, align 8
  %i.r = icmp ult i16 %i.q, 20
  %i.s = getelementptr i8, ptr %0, i64 4796
  %i.t = load i8, ptr %i.s, align 4               ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %0, i64 4797
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp ult i8 %i.t, 9
  %i.x = icmp ult i8 %i.v, 9
  %i.y = and i1 %i.w, %i.x
  %i.z = select i1 %i.y, i32 8, i32 12
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aa = zext i8 %i.t to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.e
  %.0 = phi i32 [ %i.l, %bb.e ], [ %i.z, %bb.h ], [ %i.aa, %bb.i ]
  %i.ab = getelementptr i8, ptr %0, i64 4794
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  %i.ae = add nuw nsw i32 %.0, %i.ad
  %i.af = getelementptr i8, ptr %0, i64 1293
  %i.ag = load i8, ptr %i.af, align 1, !range !10, !noundef !11
  %i.ah = zext nneg i8 %i.ag to i32
  %spec.select = add nuw nsw i32 %i.ae, %i.ah
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.c, %bb.j
  %.016 = phi i32 [ %spec.select, %bb.j ], [ 0, %bb.c ], [ 0, %bb.f ]
  ret i32 %.016
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none)
define dso_local zeroext i1 @intel_psr_pr_async_video_timing_supported(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1816
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 2760
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 2761
  %i.g = load i8, ptr %i.f, align 1
  %i.h = and i8 %i.g, 8
  %.not5 = icmp eq i8 %i.h, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i1 [ false, %bb.a ], [ %.not5, %bb.b ]
  ret i1 %i.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_get(ptr noundef, i32) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_put(ptr noundef, i32) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @to_intel_uncore(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_has_quirk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_alpm_aux_wake_supported(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @drm_dp_dpcd_read_byte(ptr noundef %0, ptr noundef %1) unnamed_addr #6 align 16 {
bb.a:
  %i.a = tail call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 1008, ptr noundef %1, i64 noundef 1) #11 ; 2 uses
  %i.b = and i64 %i.a, 2147483648
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.preheader.i.preheader, label %bb.b

.preheader.i.preheader:                           ; preds = %bb.a
  %2 = and i64 %i.a, 2147483647
  %3 = icmp eq i64 %2, 0
  %..i = select i1 %3, i32 -71, i32 0
  br label %drm_dp_dpcd_read_data.exit

bb.b:                                             ; preds = %bb.a
  %4 = tail call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef range(i32 112, 8227) 1008, ptr noundef %1, i64 noundef 1) #11
  %5 = trunc i64 %4 to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  br label %drm_dp_dpcd_read_data.exit

drm_dp_dpcd_read_data.exit:                       ; preds = %bb.b, %.preheader.i.preheader
  %.018.i = phi i32 [ %..i, %.preheader.i.preheader ], [ %spec.select, %bb.b ]
  ret i32 %.018.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @_psr_compute_su_granularity(ptr noundef %0, ptr nofree noundef captures(none) initializes((2786, 2790)) %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i16, align 2                      ; 8 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 -504
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__drm_to_display(ptr noundef nonnull %i.d) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i16 0, ptr %i.a, align 2, !annotation !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i8 0, ptr %i.b, align 1, !annotation !89
  %i.g = getelementptr i8, ptr %1, i64 2781
  %i.h = load i8, ptr %i.g, align 1
  %i.i = and i8 %i.h, 32
  %.not13 = icmp eq i8 %i.i, 0
  br i1 %.not13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i16 4, ptr %i.a, align 2
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %0, i64 296        ; 2 uses
  %i.k = call i64 @drm_dp_dpcd_read(ptr noundef %i.j, i32 noundef 114, ptr noundef nonnull %i.a, i64 noundef 2) #11
  %.not19 = icmp eq i64 %i.k, 2
  br i1 %.not19, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f
  %i.o = phi ptr [ %i.n, %bb.g ], [ null, %bb.f ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.o, i32 noundef 2, ptr noundef nonnull @.str.67) #11
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.p = load i16, ptr %i.a, align 2
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread, %bb.h
  store i16 4, ptr %i.a, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.r = call i64 @drm_dp_dpcd_read(ptr noundef %i.j, i32 noundef 116, ptr noundef nonnull %i.b, i64 noundef 1) #11
  %.not14 = icmp eq i64 %i.r, 1
  br i1 %.not14, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i15 = icmp eq ptr %i.s, null
  br i1 %.not.i15, label %.thread18, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %.thread18

.thread18:                                        ; preds = %bb.l, %bb.k
  %i.v = phi ptr [ %i.u, %bb.l ], [ null, %bb.k ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.v, i32 noundef 2, ptr noundef nonnull @.str.68) #11
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %.pr = load i8, ptr %i.b, align 1
  %spec.select = call i8 @llvm.umax.i8(i8 %.pr, i8 1)
  %i.w = zext i8 %spec.select to i16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread18, %bb.d
  %i.x = phi i16 [ 4, %.thread18 ], [ %i.w, %bb.m ], [ 4, %bb.d ]
  %i.y = load i16, ptr %i.a, align 2
  %i.z = getelementptr i8, ptr %1, i64 2786
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = getelementptr i8, ptr %1, i64 2788
  store i16 %i.x, ptr %i.aa, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_has_dpcd_quirk(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_alpm_aux_less_wake_supported(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_dsc_enabled_on_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_dp_is_uhbr(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @alpm_config_valid(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -504       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.e = tail call zeroext i1 @intel_alpm_compute_params(ptr noundef %0, ptr noundef %1) #11
  br i1 %i.e, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.i = phi ptr [ %i.h, %bb.e ], [ null, %bb.d ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.i, i32 noundef 2, ptr noundef nonnull @.str.86) #11
  br label %bb.u

bb.f:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not.i11 = icmp eq ptr %.val, null
  br i1 %.not.i11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call ptr @__drm_to_display(ptr noundef nonnull %.val) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = phi ptr [ %i.j, %bb.g ], [ null, %bb.f ]
  %i.l = getelementptr i8, ptr %1, i64 666
  %i.m = load i16, ptr %i.l, align 2
  %i.n = getelementptr i8, ptr %1, i64 664
  %i.o = load i16, ptr %i.n, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = tail call ptr @__drm_to_display(ptr noundef nonnull %i.q) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.r, %bb.i ], [ null, %bb.h ]
  %i.t = getelementptr i8, ptr %1, i64 1289
  %i.u = load i8, ptr %i.t, align 1, !range !10, !noundef !11
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.k, label %_intel_psr_min_set_context_latency.exit.i

bb.k:                                             ; preds = %bb.j
  %i.w = tail call zeroext i1 @intel_vrr_possible(ptr noundef %1) #11
  %i.x = getelementptr i8, ptr %i.s, i64 1168
  %i.y = load i16, ptr %i.x, align 8              ; 4 uses
  %i.z = add i16 %i.y, -13
  %or.cond16.i.i = icmp ult i16 %i.z, 2
  %or.cond20.i.i = select i1 %i.w, i1 %or.cond16.i.i, i1 false
  br i1 %or.cond20.i.i, label %_intel_psr_min_set_context_latency.exit.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.k
  %i.aa = icmp ult i16 %i.y, 20
  %brmerge.i.i = or i1 %4, %i.aa
  br i1 %brmerge.i.i, label %_intel_psr_min_set_context_latency.exit.i, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ab = icmp ult i16 %i.y, 30
  br i1 %i.ab, label %bb.m, label %bb.n

end_hunk_0
