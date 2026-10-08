Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dp_link_training?download=true
inline.NumInlined: 713
inline.NumDeleted: 78
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@intel_dp_dump_link_status:bb.a
  %i.aa = zext i8 %i.z to i32
  %i.ab = getelementptr i8, ptr %2, i64 3
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr i8, ptr %2, i64 4
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = getelementptr i8, ptr %2, i64 5
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.h, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %i.l, ptr noundef %i.n, i32 noundef %i.p, ptr noundef %i.r, ptr noundef %i.s, i32 noundef %i.u, i32 noundef %i.x, i32 noundef %i.aa, i32 noundef %i.ad, i32 noundef %i.ag, i32 noundef %i.aj) #8
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dp_stop_link_train(ptr noundef initializes((196, 197)) %0, ptr noundef %1) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -504       ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__drm_to_display(ptr noundef nonnull %i.b) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = getelementptr i8, ptr %0, i64 196
  store i8 1, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %0, i64 3096
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #8, !inline_history !35
  %i.h = tail call zeroext i1 @intel_dp_is_uhbr(ptr noundef %1) #8
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call i64 @ktime_get() #8
  %i.j = add i64 %i.i, 500000000                  ; 2 uses
  %i.k = tail call i32 @__SCT__might_resched() #8 ; 0 uses
  %i.l = tail call i64 @ktime_get() #8
  %i.m = icmp sgt i64 %i.l, %i.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !36
  %i.n = tail call fastcc i32 @intel_dp_128b132b_intra_hop(ptr noundef %0) #10
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  %brmerge41 = select i1 %i.o, i1 true, i1 %i.m
  br i1 %brmerge41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  tail call void @usleep_range_state(i64 noundef 126, i64 noundef 500, i32 noundef 2) #8
  tail call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !15
  %i.p = tail call i64 @ktime_get() #8
  %i.q = icmp sgt i64 %i.p, %i.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !36
  %i.r = tail call fastcc i32 @intel_dp_128b132b_intra_hop(ptr noundef %0) #10
  %i.s = icmp eq i32 %i.r, 0                      ; 2 uses
  %brmerge = select i1 %i.s, i1 true, i1 %i.q
  br i1 %brmerge, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %.lcssa = phi i1 [ %i.o, %bb.d ], [ %i.s, %.lr.ph ]
  br i1 %.lcssa, label %bb.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.t = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not36 = icmp eq ptr %i.t, null
  br i1 %.not36, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call ptr @__drm_to_display(ptr noundef nonnull %i.t) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = phi ptr [ %i.u, %bb.f ], [ null, %bb.e ]
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.g, %bb.h
  %i.z = phi ptr [ %i.y, %bb.h ], [ null, %bb.g ]
  %i.aa = getelementptr i8, ptr %0, i64 1816
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 64
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = getelementptr i8, ptr %i.ab, i64 96
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %0, i64 -480
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %0, i64 -448
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call ptr @drm_dp_phy_name(i32 noundef 0) #8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.z, i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %i.ad, ptr noundef %i.af, i32 noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.ak) #8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %__drm_to_dev.exit, %bb.c
  tail call void @intel_hpd_unblock(ptr noundef %i.a) #8
  %i.al = getelementptr i8, ptr %i.d, i64 5104
  %i.am = load i8, ptr %i.al, align 8, !range !11, !noundef !12
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %0, i64 256
  %i.ap = load i32, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp slt i32 %i.ap, 2
  br i1 %i.aq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not37 = icmp eq i32 %i.ap, 0
  %i.ar = select i1 %.not37, i32 2000, i32 0
  tail call void @intel_encoder_link_check_queue_work(ptr noundef %i.a, i32 noundef %i.ar) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @intel_dp_128b132b_intra_hop(ptr noundef %0) unnamed_addr #1 align 16 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !annotation !10
  %i.b = getelementptr i8, ptr %0, i64 296
  %i.c = call i64 @drm_dp_dpcd_read(ptr noundef %i.b, i32 noundef 517, ptr noundef nonnull %i.a, i64 noundef 1) #8
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 -504
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.f, null
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call ptr @__drm_to_display(ptr noundef nonnull %i.f) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ null, %bb.b ]
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.d, %bb.e
  %i.l = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ]
  %i.m = getelementptr i8, ptr %0, i64 1816
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 64
  %i.p = load i32, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.n, i64 96
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %0, i64 -480
  %i.t = load i32, ptr %i.s, align 8
  %i.u = getelementptr i8, ptr %0, i64 -448
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.l, i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %i.p, ptr noundef %i.r, i32 noundef %i.t, ptr noundef %i.v, ptr noundef %i.w) #8
  %i.x = icmp slt i32 %i.d, 0
  %i.y = select i1 %i.x, i32 %i.d, i32 -5
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.z = load i8, ptr %i.a, align 1
  %i.aa = lshr i8 %i.z, 3
  %.lobit = and i8 %i.aa, 1
  %i.ab = zext nneg i8 %.lobit to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %__drm_to_dev.exit
  %.0 = phi i32 [ %i.y, %__drm_to_dev.exit ], [ %i.ab, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_hpd_unblock(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_encoder_link_check_queue_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dp_start_link_train(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %3 = alloca i8, align 1                         ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca [6 x i8], align 1                 ; 40 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca [6 x i8], align 1                 ; 20 uses
  %i.j = alloca [5 x i8], align 1                 ; 5 uses
  %i.k = alloca [5 x i8], align 1                 ; 5 uses
  %i.l = alloca [6 x i8], align 1                 ; 22 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca [2 x i8], align 1                 ; 5 uses
  %i.p = alloca [2 x i8], align 1                 ; 6 uses
  %i.q = alloca i8, align 1                       ; 8 uses
  %i.r = alloca i8, align 1                       ; 6 uses
  %i.s = alloca [8 x i16], align 16               ; 4 uses
  %i.t = getelementptr i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = tail call ptr @__drm_to_display(ptr noundef nonnull %i.u) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.w = phi ptr [ %i.v, %bb.b ], [ null, %bb.a ]
  %i.x = getelementptr i8, ptr %1, i64 -504       ; 75 uses
  tail call void @intel_hpd_block(ptr noundef %i.x) #8
  %i.y = tail call i32 @intel_dp_init_lttpr_and_dprx_caps(ptr noundef %1) #10 ; 2 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.y, i32 0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #9
  %i.z = getelementptr i8, ptr %1, i64 3088
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.aa(ptr noundef %1, ptr noundef %2) #8, !inline_history !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 0, ptr %i.q, align 1, !annotation !10
  store i8 0, ptr %i.r, align 1, !annotation !10
  %i.ab = getelementptr i8, ptr %2, i64 1320      ; 6 uses
  %i.ac = load i32, ptr %i.ab, align 8
  call void @intel_dp_compute_rate(ptr noundef %1, i32 noundef %i.ac, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #8
  %i.ad = load i8, ptr %i.q, align 1
  %.not29.i = icmp eq i8 %i.ad, 0
  br i1 %.not29.i, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !annotation !10
  %i.ae = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not30.i = icmp eq ptr %i.ae, null
  br i1 %.not30.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = call ptr @__drm_to_display(ptr noundef nonnull %i.ae) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ag = phi ptr [ %i.af, %bb.g ], [ null, %bb.f ]
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = phi ptr [ %i.aj, %bb.i ], [ null, %bb.h ]
  %i.al = getelementptr i8, ptr %1, i64 1816      ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 64
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = getelementptr i8, ptr %i.am, i64 96
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %1, i64 -480      ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %1, i64 -448      ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ak, i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %i.ao, ptr noundef %i.aq, i32 noundef %i.as, ptr noundef %i.au, ptr noundef %i.av) #8
  %i.aw = getelementptr i8, ptr %1, i64 296
  %i.ax = call i64 @drm_dp_dpcd_read(ptr noundef %i.aw, i32 noundef 16, ptr noundef nonnull %i.s, i64 noundef 16) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #9
  %.pr.i = load i8, ptr %i.q, align 1
  %.not31.i = icmp eq i8 %.pr.i, 0
  br i1 %.not31.i, label %bb.n, label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.e
  %i.ay = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not33.i = icmp eq ptr %i.ay, null
  br i1 %.not33.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread.i
  %i.az = call ptr @__drm_to_display(ptr noundef nonnull %i.ay) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread.i
  %i.ba = phi ptr [ %i.az, %bb.k ], [ null, %.thread.i ]
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not.i34.i = icmp eq ptr %i.bb, null
  br i1 %.not.i34.i, label %__drm_to_dev.exit35.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  br label %__drm_to_dev.exit35.i

__drm_to_dev.exit35.i:                            ; preds = %bb.m, %bb.l
  %i.be = phi ptr [ %i.bd, %bb.m ], [ null, %bb.l ]
  %i.bf = getelementptr i8, ptr %1, i64 1816
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 64
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %i.bg, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr i8, ptr %1, i64 -480
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = getelementptr i8, ptr %1, i64 -448
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  %i.bq = load i8, ptr %i.q, align 1
  %i.br = zext i8 %i.bq to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.be, i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %i.bi, ptr noundef %i.bk, i32 noundef %i.bm, ptr noundef %i.bo, ptr noundef %i.bp, i32 noundef %i.br) #8
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not32.i = icmp eq ptr %i.bs, null
  br i1 %.not32.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = call ptr @__drm_to_display(ptr noundef nonnull %i.bs) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bu = phi ptr [ %i.bt, %bb.o ], [ null, %bb.n ]
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not.i36.i = icmp eq ptr %i.bv, null
  br i1 %.not.i36.i, label %__drm_to_dev.exit37.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  br label %__drm_to_dev.exit37.i

__drm_to_dev.exit37.i:                            ; preds = %bb.q, %bb.p
  %i.by = phi ptr [ %i.bx, %bb.q ], [ null, %bb.p ]
  %i.bz = load ptr, ptr %i.al, align 8            ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 64
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = getelementptr i8, ptr %i.bz, i64 96
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load i32, ptr %i.ar, align 8
  %i.cf = load ptr, ptr %i.at, align 8
  %i.cg = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  %i.ch = load i8, ptr %i.r, align 1
  %i.ci = zext i8 %i.ch to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.by, i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %i.cb, ptr noundef %i.cd, i32 noundef %i.ce, ptr noundef %i.cf, ptr noundef %i.cg, i32 noundef %i.ci) #8
  br label %bb.r

bb.r:                                             ; preds = %__drm_to_dev.exit37.i, %__drm_to_dev.exit35.i
  %i.cj = load i32, ptr %i.ab, align 8
  %i.ck = getelementptr i8, ptr %2, i64 4645
  %i.cl = load i8, ptr %i.ck, align 1, !range !11, !noundef !12
  %i.cm = call zeroext i1 @intel_psr_needs_alpm_aux_less(ptr noundef %1, ptr noundef %2) #8
  br i1 %i.cm, label %intel_dp_pr_with_as_sdp_enabled.exit.i.i, label %intel_dp_pr_with_as_sdp_enabled.exit.thread.i.i

intel_dp_pr_with_as_sdp_enabled.exit.thread.i.i:  ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #9
  br label %intel_dp_update_downspread_ctrl.exit.i

intel_dp_pr_with_as_sdp_enabled.exit.i.i:         ; preds = %bb.r
  %i.cn = getelementptr i8, ptr %2, i64 3956
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = call i32 @intel_hdmi_infoframe_enable(i32 noundef 34) #8
  %i.cq = and i32 %i.cp, %i.co
  %.fr.i.i = freeze i32 %i.cq
  %.not.i38.i = icmp eq i32 %.fr.i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #9
  %spec.select.i.i = select i1 %.not.i38.i, i8 0, i8 64
  br label %intel_dp_update_downspread_ctrl.exit.i

intel_dp_update_downspread_ctrl.exit.i:           ; preds = %intel_dp_pr_with_as_sdp_enabled.exit.i.i, %intel_dp_pr_with_as_sdp_enabled.exit.thread.i.i
  %i.cr = phi i8 [ 0, %intel_dp_pr_with_as_sdp_enabled.exit.thread.i.i ], [ %spec.select.i.i, %intel_dp_pr_with_as_sdp_enabled.exit.i.i ]
  %i.cs = shl nuw i8 %i.cl, 7
  %i.ct = or disjoint i8 %i.cr, %i.cs
  store i8 %i.ct, ptr %i.p, align 1
  %i.cu = icmp sgt i32 %i.cj, 999999
  %i.cv = select i1 %i.cu, i8 2, i8 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.cv, ptr %i.cw, align 1
  %i.cx = getelementptr i8, ptr %1, i64 296       ; 25 uses
  %i.cy = call i64 @drm_dp_dpcd_write(ptr noundef %i.cx, i32 noundef 263, ptr noundef nonnull %i.p, i64 noundef 2) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #9
  %i.cz = load i8, ptr %i.q, align 1              ; 2 uses
  %i.da = load i8, ptr %i.r, align 1
  %i.db = getelementptr i8, ptr %2, i64 1329      ; 20 uses
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = zext i8 %i.dc to i32                    ; 4 uses
  %i.de = getelementptr i8, ptr %2, i64 4580      ; 2 uses
  %i.df = load i8, ptr %i.de, align 4, !range !11, !noundef !12
  %i.dg = trunc nuw i8 %i.df to i1                ; 2 uses
  %i.dh = getelementptr i8, ptr %1, i64 3104      ; 5 uses
  %i.di = load ptr, ptr %i.dh, align 8
  %.not.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i, label %intel_dp_use_post_lt_adj_req.exit.thread.i.i, label %bb.s

bb.s:                                             ; preds = %intel_dp_update_downspread_ctrl.exit.i
  %i.dj = getelementptr i8, ptr %1, i64 17
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = icmp ugt i8 %i.dk, 18
  br i1 %i.dl, label %drm_dp_post_lt_adj_req_supported.exit.i.i.i, label %intel_dp_use_post_lt_adj_req.exit.thread.i.i

drm_dp_post_lt_adj_req_supported.exit.i.i.i:      ; preds = %bb.s
  %i.dm = getelementptr i8, ptr %1, i64 19
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = and i8 %i.dn, 32
  %.not4.i.i.i = icmp eq i8 %i.do, 0
  br i1 %.not4.i.i.i, label %intel_dp_use_post_lt_adj_req.exit.thread.i.i, label %intel_dp_use_post_lt_adj_req.exit.i.i

intel_dp_use_post_lt_adj_req.exit.thread.i.i:     ; preds = %drm_dp_post_lt_adj_req_supported.exit.i.i.i, %bb.s, %intel_dp_update_downspread_ctrl.exit.i
  %i.dp = or i32 %i.dd, 128
  %spec.select.i7.i.i = select i1 %i.dg, i32 %i.dp, i32 %i.dd
  br label %bb.t

intel_dp_use_post_lt_adj_req.exit.i.i:            ; preds = %drm_dp_post_lt_adj_req_supported.exit.i.i.i
  %i.dq = call fastcc i32 @intel_dp_training_pattern(ptr noundef readonly %1, ptr noundef %2, i32 noundef 0) #10, !srcloc !44
  %.fr.i39.i = freeze i32 %i.dq
  %.not.i40.i = icmp eq i32 %.fr.i39.i, 7
  %i.dr = or i32 %i.dd, 128
  %spec.select.i.i.i = select i1 %i.dg, i32 %i.dr, i32 %i.dd ; 2 uses
  %i.ds = or i32 %spec.select.i.i.i, 32
  %spec.select.i41.i = select i1 %.not.i40.i, i32 %spec.select.i.i.i, i32 %i.ds
  br label %bb.t

bb.t:                                             ; preds = %intel_dp_use_post_lt_adj_req.exit.i.i, %intel_dp_use_post_lt_adj_req.exit.thread.i.i
  %i.dt = phi i32 [ %spec.select.i7.i.i, %intel_dp_use_post_lt_adj_req.exit.thread.i.i ], [ %spec.select.i41.i, %intel_dp_use_post_lt_adj_req.exit.i.i ] ; 2 uses
  %.not.i6.i.i = icmp eq i8 %i.cz, 0
  br i1 %.not.i6.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #9
  store i8 %i.cz, ptr %i.o, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.dv = trunc nuw i32 %i.dt to i8
  store i8 %i.dv, ptr %i.du, align 1
  %i.dw = call i64 @drm_dp_dpcd_write(ptr noundef %i.cx, i32 noundef 256, ptr noundef nonnull %i.o, i64 noundef 2) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #9
  br label %intel_dp_prepare_link_train.exit

bb.v:                                             ; preds = %bb.t
  %i.dx = trunc nuw i32 %i.dt to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i8 %i.dx, ptr %i.n, align 1
  %i.dy = call i64 @drm_dp_dpcd_write(ptr noundef %i.cx, i32 noundef 257, ptr noundef nonnull %i.n, i64 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 %i.da, ptr %i.m, align 1
  %i.dz = call i64 @drm_dp_dpcd_write(ptr noundef %i.cx, i32 noundef 277, ptr noundef nonnull %i.m, i64 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %intel_dp_prepare_link_train.exit

intel_dp_prepare_link_train.exit:                 ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #9
  %i.ea = call zeroext i1 @intel_dp_is_uhbr(ptr noundef %2) #8
  br i1 %i.ea, label %bb.w, label %.preheader.preheader

.preheader.preheader:                             ; preds = %intel_dp_prepare_link_train.exit
  %.not307 = icmp slt i32 %i.y, 1
  br i1 %.not307, label %.loopexit.i, label %.lr.ph

bb.w:                                             ; preds = %intel_dp_prepare_link_train.exit
  %i.eb = call i64 @ktime_get() #8
  %i.ec = add i64 %i.eb, 500000000                ; 2 uses
  %i.ed = call i32 @__SCT__might_resched() #8     ; 0 uses
  %i.ee = call i64 @ktime_get() #8
  %i.ef = icmp sgt i64 %i.ee, %i.ec
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !45
  %i.eg = call fastcc i32 @intel_dp_128b132b_intra_hop(ptr noundef %1) #10
  %i.eh = icmp eq i32 %i.eg, 0                    ; 2 uses
  %brmerge75.i = select i1 %i.eh, i1 true, i1 %i.ef
  br i1 %brmerge75.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.i
  call void @usleep_range_state(i64 noundef 126, i64 noundef 500, i32 noundef 2) #8
  call void asm sideeffect "pause", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !15
  %i.ei = call i64 @ktime_get() #8
  %i.ej = icmp sgt i64 %i.ei, %i.ec
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !srcloc !45
  %i.ek = call fastcc i32 @intel_dp_128b132b_intra_hop(ptr noundef %1) #10
  %i.el = icmp eq i32 %i.ek, 0                    ; 2 uses
  %brmerge.i = select i1 %i.el, i1 true, i1 %i.ej
  br i1 %brmerge.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.w
  %.lcssa.i = phi i1 [ %i.eh, %bb.w ], [ %i.el, %.lr.ph.i ]
  br i1 %.lcssa.i, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %._crit_edge.i
  %i.em = call zeroext i1 @intel_digital_port_connected(ptr noundef %i.x) #8
  %i.en = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not51.i = icmp eq ptr %i.en, null             ; 2 uses
  br i1 %i.em, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  br i1 %.not51.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eo = call ptr @__drm_to_display(ptr noundef nonnull %i.en) #8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ep = phi ptr [ %i.eo, %bb.z ], [ null, %bb.y ]
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %.not.i.i66 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i66, label %__drm_to_dev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.er = getelementptr i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.ab, %bb.aa
  %i.et = phi ptr [ %i.es, %bb.ab ], [ null, %bb.aa ]
  %i.eu = getelementptr i8, ptr %1, i64 1816
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 64
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = getelementptr i8, ptr %i.ev, i64 96
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = getelementptr i8, ptr %1, i64 -480
  %i.fb = load i32, ptr %i.fa, align 8
  %i.fc = getelementptr i8, ptr %1, i64 -448
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.et, ptr noundef nonnull @.str.41, i32 noundef %i.ex, ptr noundef %i.ez, i32 noundef %i.fb, ptr noundef %i.fd, ptr noundef %i.fe) #11
  br label %.thread66.i

bb.ac:                                            ; preds = %bb.x
  br i1 %.not51.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ff = call ptr @__drm_to_display(ptr noundef nonnull %i.en) #8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.fg = phi ptr [ %i.ff, %bb.ad ], [ null, %bb.ac ]
  %i.fh = load ptr, ptr %i.fg, align 8            ; 2 uses
  %.not.i52.i = icmp eq ptr %i.fh, null
  br i1 %.not.i52.i, label %__drm_to_dev.exit53.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fi = getelementptr i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  br label %__drm_to_dev.exit53.i

__drm_to_dev.exit53.i:                            ; preds = %bb.af, %bb.ae
  %i.fk = phi ptr [ %i.fj, %bb.af ], [ null, %bb.ae ]
  %i.fl = getelementptr i8, ptr %1, i64 1816
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 64
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = getelementptr i8, ptr %i.fm, i64 96
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr i8, ptr %1, i64 -480
  %i.fs = load i32, ptr %i.fr, align 8
  %i.ft = getelementptr i8, ptr %1, i64 -448
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.fk, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef %i.fo, ptr noundef %i.fq, i32 noundef %i.fs, ptr noundef %i.fu, ptr noundef %i.fv) #8
  br label %.thread66.i

bb.ag:                                            ; preds = %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  %i.fw = getelementptr i8, ptr %1, i64 1620      ; 5 uses
  store i32 0, ptr %i.fw, align 4
  call void @intel_dp_set_signal_levels(ptr noundef %1, ptr noundef %2, i32 noundef 0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  %i.fx = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %i.fy = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not13.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fz = call ptr @__drm_to_display(ptr noundef nonnull %i.fy) #8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ga = phi ptr [ %i.fz, %bb.ah ], [ null, %bb.ag ]
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i.i, label %intel_dp_program_link_training_pattern.exit.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  br label %intel_dp_program_link_training_pattern.exit.i.i

intel_dp_program_link_training_pattern.exit.i.i:  ; preds = %bb.aj, %bb.ai
  %i.ge = phi ptr [ %i.gd, %bb.aj ], [ null, %bb.ai ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.l, i8 0, i64 6, i1 false), !annotation !10
  store i32 0, ptr %i.fx, align 1, !annotation !10
  %i.gf = getelementptr i8, ptr %1, i64 1816      ; 40 uses
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 64
  %i.gi = load i32, ptr %i.gh, align 8
  %i.gj = getelementptr i8, ptr %i.gg, i64 96
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = getelementptr i8, ptr %1, i64 -480      ; 40 uses
  %i.gm = load i32, ptr %i.gl, align 8
  %i.gn = getelementptr i8, ptr %1, i64 -448      ; 40 uses
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ge, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %i.gi, ptr noundef %i.gk, i32 noundef %i.gm, ptr noundef %i.go, ptr noundef %i.gp, i32 noundef 49) #8
  %i.gq = getelementptr i8, ptr %1, i64 3096      ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gr(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #8, !inline_history !38
  store i8 1, ptr %i.k, align 1
  %i.gs = load i8, ptr %i.db, align 1
  %i.gt = zext i8 %i.gs to i64                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fx, ptr align 4 %i.fw, i64 %i.gt, i1 false)
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 2 uses
  %i.gv = call i64 @drm_dp_dpcd_write(ptr noundef %i.cx, i32 noundef 258, ptr noundef nonnull %i.k, i64 noundef %i.gu) #8
  %i.gw = icmp eq i64 %i.gv, %i.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br i1 %i.gw, label %bb.at, label %bb.ak

bb.ak:                                            ; preds = %intel_dp_program_link_training_pattern.exit.i.i
  %i.gx = call zeroext i1 @intel_digital_port_connected(ptr noundef %i.x) #8
  %i.gy = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not204.i.i = icmp eq ptr %i.gy, null          ; 2 uses
  br i1 %i.gx, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  br i1 %.not204.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gz = call ptr @__drm_to_display(ptr noundef nonnull %i.gy) #8
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ha = phi ptr [ %i.gz, %bb.am ], [ null, %bb.al ]
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not.i.i.i67 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i67, label %__drm_to_dev.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hc = getelementptr i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  br label %__drm_to_dev.exit.i.i

__drm_to_dev.exit.i.i:                            ; preds = %bb.ao, %bb.an
  %i.he = phi ptr [ %i.hd, %bb.ao ], [ null, %bb.an ]
  %i.hf = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 64
  %i.hh = load i32, ptr %i.hg, align 8
  %i.hi = getelementptr i8, ptr %i.hf, i64 96
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = load i32, ptr %i.gl, align 8
  %i.hl = load ptr, ptr %i.gn, align 8
  %i.hm = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.he, ptr noundef nonnull @.str.46, i32 noundef %i.hh, ptr noundef %i.hj, i32 noundef %i.hk, ptr noundef %i.hl, ptr noundef %i.hm) #11
  br label %intel_dp_128b132b_lane_eq.exit.thread.i

bb.ap:                                            ; preds = %bb.ak
  br i1 %.not204.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hn = call ptr @__drm_to_display(ptr noundef nonnull %i.gy) #8
  br label %bb.ar
end_hunk_0
begin_hunk_1_@intel_dp_start_link_train:bb.a
  %i.aev = phi ptr [ %i.aeu, %bb.hg ], [ null, %bb.hf ]
  %i.aew = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.aex = getelementptr i8, ptr %i.aew, i64 64
  %i.aey = load i32, ptr %i.aex, align 8
  %i.aez = getelementptr i8, ptr %i.aew, i64 96
  %i.afa = load ptr, ptr %i.aez, align 8
  %i.afb = load i32, ptr %i.gl, align 8
  %i.afc = load ptr, ptr %i.gn, align 8
  %i.afd = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  %i.afe = load i8, ptr %i.i, align 1
  %i.aff = zext i8 %i.afe to i32
  %i.afg = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.afh = load i8, ptr %i.afg, align 1
  %i.afi = zext i8 %i.afh to i32
  %i.afj = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.afk = load i8, ptr %i.afj, align 1
  %i.afl = zext i8 %i.afk to i32
  %i.afm = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.afn = load i8, ptr %i.afm, align 1
  %i.afo = zext i8 %i.afn to i32
  %i.afp = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.afq = load i8, ptr %i.afp, align 1
  %i.afr = zext i8 %i.afq to i32
  %i.afs = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.aft = load i8, ptr %i.afs, align 1
  %i.afu = zext i8 %i.aft to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aev, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %i.aey, ptr noundef %i.afa, i32 noundef %i.afb, ptr noundef %i.afc, ptr noundef %i.afd, i32 noundef %i.aff, i32 noundef %i.afi, i32 noundef %i.afl, i32 noundef %i.afo, i32 noundef %i.afr, i32 noundef %i.afu) #8
  %i.afv = call zeroext i1 @intel_digital_port_connected(ptr noundef %i.x) #8
  %i.afw = load ptr, ptr %i.x, align 8            ; 3 uses
  %.not70.i.i = icmp eq ptr %i.afw, null          ; 2 uses
  br i1 %i.afv, label %bb.hh, label %bb.hl

bb.hh:                                            ; preds = %intel_dp_dump_link_status.exit93.i.i
  br i1 %.not70.i.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.afx = call ptr @__drm_to_display(ptr noundef nonnull %i.afw) #8
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %i.afy = phi ptr [ %i.afx, %bb.hi ], [ null, %bb.hh ]
  %i.afz = load ptr, ptr %i.afy, align 8          ; 2 uses
  %.not.i94.i.i = icmp eq ptr %i.afz, null
  br i1 %.not.i94.i.i, label %__drm_to_dev.exit95.i.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aga = getelementptr i8, ptr %i.afz, i64 8
  %i.agb = load ptr, ptr %i.aga, align 8
  br label %__drm_to_dev.exit95.i.i

__drm_to_dev.exit95.i.i:                          ; preds = %bb.hk, %bb.hj
  %i.agc = phi ptr [ %i.agb, %bb.hk ], [ null, %bb.hj ]
  %i.agd = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.age = getelementptr i8, ptr %i.agd, i64 64
  %i.agf = load i32, ptr %i.age, align 8
  %i.agg = getelementptr i8, ptr %i.agd, i64 96
  %i.agh = load ptr, ptr %i.agg, align 8
  %i.agi = load i32, ptr %i.gl, align 8
  %i.agj = load ptr, ptr %i.gn, align 8
  %i.agk = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.agc, ptr noundef nonnull @.str.71, i32 noundef %i.agf, ptr noundef %i.agh, i32 noundef %i.agi, ptr noundef %i.agj, ptr noundef %i.agk) #11
  br label %intel_dp_128b132b_lane_cds.exit.i

bb.hl:                                            ; preds = %intel_dp_dump_link_status.exit93.i.i
  br i1 %.not70.i.i, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.agl = call ptr @__drm_to_display(ptr noundef nonnull %i.afw) #8
  br label %bb.hn

bb.hn:                                            ; preds = %bb.hm, %bb.hl
  %i.agm = phi ptr [ %i.agl, %bb.hm ], [ null, %bb.hl ]
  %i.agn = load ptr, ptr %i.agm, align 8          ; 2 uses
  %.not.i96.i.i = icmp eq ptr %i.agn, null
  br i1 %.not.i96.i.i, label %__drm_to_dev.exit97.i.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.ago = getelementptr i8, ptr %i.agn, i64 8
  %i.agp = load ptr, ptr %i.ago, align 8
  br label %__drm_to_dev.exit97.i.i

__drm_to_dev.exit97.i.i:                          ; preds = %bb.ho, %bb.hn
  %i.agq = phi ptr [ %i.agp, %bb.ho ], [ null, %bb.hn ]
  %i.agr = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.ags = getelementptr i8, ptr %i.agr, i64 64
  %i.agt = load i32, ptr %i.ags, align 8
  %i.agu = getelementptr i8, ptr %i.agr, i64 96
  %i.agv = load ptr, ptr %i.agu, align 8
  %i.agw = load i32, ptr %i.gl, align 8
  %i.agx = load ptr, ptr %i.gn, align 8
  %i.agy = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.agq, i32 noundef 2, ptr noundef nonnull @.str.72, i32 noundef %i.agt, ptr noundef %i.agv, i32 noundef %i.agw, ptr noundef %i.agx, ptr noundef %i.agy) #8
  br label %intel_dp_128b132b_lane_cds.exit.i

bb.hp:                                            ; preds = %bb.go, %bb.gn
  %i.agz = phi ptr [ %i.acd, %bb.go ], [ null, %bb.gn ]
  %i.aha = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.ahb = getelementptr i8, ptr %i.aha, i64 64
  %i.ahc = load i32, ptr %i.ahb, align 8
  %i.ahd = getelementptr i8, ptr %i.aha, i64 96
  %i.ahe = load ptr, ptr %i.ahd, align 8
  %i.ahf = load i32, ptr %i.gl, align 8
  %i.ahg = load ptr, ptr %i.gn, align 8
  %i.ahh = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.agz, i32 noundef 2, ptr noundef nonnull @.str.70, i32 noundef %i.ahc, ptr noundef %i.ahe, i32 noundef %i.ahf, ptr noundef %i.ahg, ptr noundef %i.ahh) #8
  br label %intel_dp_128b132b_lane_cds.exit.i

intel_dp_128b132b_lane_cds.exit.i:                ; preds = %bb.hp, %__drm_to_dev.exit97.i.i, %__drm_to_dev.exit95.i.i, %__drm_to_dev.exit90.i.i, %__drm_to_dev.exit88.i.i, %__drm_to_dev.exit83.i.i, %__drm_to_dev.exit81.i.i, %__drm_to_dev.exit79.i.i, %__drm_to_dev.exit.i56.i
  %.2.i.i = phi i1 [ true, %bb.hp ], [ false, %__drm_to_dev.exit.i56.i ], [ false, %__drm_to_dev.exit79.i.i ], [ false, %__drm_to_dev.exit95.i.i ], [ false, %__drm_to_dev.exit81.i.i ], [ false, %__drm_to_dev.exit88.i.i ], [ false, %__drm_to_dev.exit83.i.i ], [ false, %__drm_to_dev.exit90.i.i ], [ false, %__drm_to_dev.exit97.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.hq

bb.hq:                                            ; preds = %intel_dp_128b132b_lane_cds.exit.i, %intel_dp_128b132b_lane_eq.exit.thread.i
  %.0.i = phi i1 [ false, %intel_dp_128b132b_lane_eq.exit.thread.i ], [ %.2.i.i, %intel_dp_128b132b_lane_cds.exit.i ] ; 2 uses
  %i.ahi = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not49.i = icmp eq ptr %i.ahi, null
  br i1 %.not49.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.ahj = call ptr @__drm_to_display(ptr noundef nonnull %i.ahi) #8
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.ahk = phi ptr [ %i.ahj, %bb.hr ], [ null, %bb.hq ]
  %i.ahl = load ptr, ptr %i.ahk, align 8          ; 2 uses
  %.not.i58.i = icmp eq ptr %i.ahl, null
  br i1 %.not.i58.i, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.ahm = getelementptr i8, ptr %i.ahl, i64 8
  %i.ahn = load ptr, ptr %i.ahm, align 8
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %bb.hs
  %i.aho = phi ptr [ %i.ahn, %bb.ht ], [ null, %bb.hs ]
  %i.ahp = load ptr, ptr %i.gf, align 8           ; 2 uses
  %i.ahq = getelementptr i8, ptr %i.ahp, i64 64
  %i.ahr = load i32, ptr %i.ahq, align 8
  %i.ahs = getelementptr i8, ptr %i.ahp, i64 96
  %i.aht = load ptr, ptr %i.ahs, align 8
  %i.ahu = load i32, ptr %i.gl, align 8
  %i.ahv = load ptr, ptr %i.gn, align 8
  %i.ahw = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  %i.ahx = select i1 %.0.i, ptr @.str.44, ptr @.str.45
  %i.ahy = load i32, ptr %i.ab, align 8
  %i.ahz = load i8, ptr %i.db, align 1
  %i.aia = zext i8 %i.ahz to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aho, i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %i.ahr, ptr noundef %i.aht, i32 noundef %i.ahu, ptr noundef %i.ahv, ptr noundef %i.ahw, ptr noundef nonnull %i.ahx, i32 noundef %i.ahy, i32 noundef %i.aia) #8
  br i1 %.0.i, label %intel_dp_128b132b_link_train.exit, label %.thread66.i

.thread66.i:                                      ; preds = %bb.hu, %__drm_to_dev.exit53.i, %__drm_to_dev.exit.i
  %i.aib = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not13.i.i = icmp eq ptr %i.aib, null
  br i1 %.not13.i.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %.thread66.i
  %i.aic = call ptr @__drm_to_display(ptr noundef nonnull %i.aib) #8
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %.thread66.i
  %i.aid = phi ptr [ %i.aic, %bb.hv ], [ null, %.thread66.i ]
  %i.aie = load ptr, ptr %i.aid, align 8          ; 2 uses
  %.not.i.i60.i = icmp eq ptr %i.aie, null
  br i1 %.not.i.i60.i, label %intel_dp_program_link_training_pattern.exit.i, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.aif = getelementptr i8, ptr %i.aie, i64 8
  %i.aig = load ptr, ptr %i.aif, align 8
  br label %intel_dp_program_link_training_pattern.exit.i

intel_dp_program_link_training_pattern.exit.i:    ; preds = %bb.hx, %bb.hw
  %i.aih = phi ptr [ %i.aig, %bb.hx ], [ null, %bb.hw ]
  %i.aii = getelementptr i8, ptr %1, i64 1816
  %i.aij = load ptr, ptr %i.aii, align 8          ; 2 uses
  %i.aik = getelementptr i8, ptr %i.aij, i64 64
  %i.ail = load i32, ptr %i.aik, align 8
  %i.aim = getelementptr i8, ptr %i.aij, i64 96
  %i.ain = load ptr, ptr %i.aim, align 8
  %i.aio = getelementptr i8, ptr %1, i64 -480
  %i.aip = load i32, ptr %i.aio, align 8
  %i.aiq = getelementptr i8, ptr %1, i64 -448
  %i.air = load ptr, ptr %i.aiq, align 8
  %i.ais = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aih, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %i.ail, ptr noundef %i.ain, i32 noundef %i.aip, ptr noundef %i.air, ptr noundef %i.ais, i32 noundef 50) #8
  %i.ait = getelementptr i8, ptr %1, i64 3096
  %i.aiu = load ptr, ptr %i.ait, align 8
  call void %i.aiu(ptr noundef %1, ptr noundef %2, i8 noundef zeroext 2) #8, !inline_history !41
  br label %intel_dp_128b132b_link_train.exit

intel_dp_128b132b_link_train.exit:                ; preds = %bb.hu, %intel_dp_program_link_training_pattern.exit.i
  %.169.i = phi i1 [ false, %intel_dp_program_link_training_pattern.exit.i ], [ true, %bb.hu ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i8 0, ptr %i.g, align 1
  %i.aiv = call i64 @drm_dp_dpcd_write(ptr noundef %i.cx, i32 noundef 258, ptr noundef nonnull %i.g, i64 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  br label %intel_dp_link_train_all_phys.exit

.preheader:                                       ; preds = %.lr.ph
  %.023.i = add nsw i32 %.023.in.i306, -1
  %i.aiw = icmp sgt i32 %.023.in.i306, 1
  br i1 %i.aiw, label %.lr.ph, label %.loopexit.i

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.023.in.i306 = phi i32 [ %.023.i, %.preheader ], [ %spec.store.select, %.preheader.preheader ] ; 4 uses
  %i.aix = call fastcc zeroext i1 @intel_dp_link_train_phy(ptr noundef %1, ptr noundef %2, i32 noundef %.023.in.i306) #10, !srcloc !47
  %i.aiy = mul i32 %.023.in.i306, 80
  %i.aiz = add i32 %i.aiy, 982976
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i8 0, ptr %i.f, align 1
  %i.aja = call i64 @drm_dp_dpcd_write(ptr noundef %i.cx, i32 noundef %i.aiz, ptr noundef nonnull %i.f, i64 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br i1 %i.aix, label %.preheader, label %intel_dp_post_lt_adj_req.exit.i.a

.loopexit.i:                                      ; preds = %.preheader, %.preheader.preheader
  %4 = call fastcc zeroext i1 @intel_dp_link_train_phy(ptr noundef %1, ptr noundef %2, i32 noundef 0) #10, !srcloc !48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i8 0, ptr %i.e, align 1
  %i.ajb = call i64 @drm_dp_dpcd_write(ptr noundef %i.cx, i32 noundef 258, ptr noundef nonnull %i.e, i64 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %i.ajc = load ptr, ptr %i.dh, align 8
  call void %i.ajc(ptr noundef %1, ptr noundef %2) #8, !inline_history !42
  br i1 %4, label %bb.hy, label %bb.ku

bb.hy:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %5 = load ptr, ptr %i.dh, align 8
  %.not.i.i.i71 = icmp eq ptr %5, null
  br i1 %.not.i.i.i71, label %intel_dp_post_lt_adj_req.exit.i, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.ajd = getelementptr i8, ptr %1, i64 17
  %i.aje = load i8, ptr %i.ajd, align 1
  %i.ajf = icmp ugt i8 %i.aje, 18
  br i1 %i.ajf, label %drm_dp_post_lt_adj_req_supported.exit.i.i.i72, label %intel_dp_post_lt_adj_req.exit.i

drm_dp_post_lt_adj_req_supported.exit.i.i.i72:    ; preds = %bb.hz
  %i.ajg = getelementptr i8, ptr %1, i64 19
  %i.ajh = load i8, ptr %i.ajg, align 1
  %i.aji = and i8 %i.ajh, 32
  %.not4.i.i.i73 = icmp eq i8 %i.aji, 0
  br i1 %.not4.i.i.i73, label %intel_dp_post_lt_adj_req.exit.i, label %intel_dp_use_post_lt_adj_req.exit.i.i74

intel_dp_use_post_lt_adj_req.exit.i.i74:          ; preds = %drm_dp_post_lt_adj_req_supported.exit.i.i.i72
  %i.ajj = call fastcc i32 @intel_dp_training_pattern(ptr noundef readonly %1, ptr noundef %2, i32 noundef 0) #10, !srcloc !44
  %.not142.i.i = icmp eq i32 %i.ajj, 7
  br i1 %.not142.i.i, label %intel_dp_post_lt_adj_req.exit.i, label %bb.ia

bb.ia:                                            ; preds = %intel_dp_use_post_lt_adj_req.exit.i.i74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.d, i8 0, i64 6, i1 false), !annotation !10
  %i.ajk = call i32 @drm_dp_dpcd_read_phy_link_status(ptr noundef %i.cx, i32 noundef 0, ptr noundef nonnull %i.d) #8
  %i.ajl = icmp slt i32 %i.ajk, 0
  br i1 %i.ajl, label %bb.ib, label %bb.ik

bb.ib:                                            ; preds = %bb.ia
  %i.ajm = call zeroext i1 @intel_digital_port_connected(ptr noundef %i.x) #8
  %i.ajn = load ptr, ptr %i.x, align 8            ; 3 uses
  %.not107.i.i = icmp eq ptr %i.ajn, null         ; 2 uses
  br i1 %i.ajm, label %bb.ic, label %bb.ig

bb.ic:                                            ; preds = %bb.ib
  br i1 %.not107.i.i, label %bb.ie, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %i.ajo = call ptr @__drm_to_display(ptr noundef nonnull %i.ajn) #8
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.ajp = phi ptr [ %i.ajo, %bb.id ], [ null, %bb.ic ]
  %i.ajq = load ptr, ptr %i.ajp, align 8          ; 2 uses
  %.not.i108.i.i = icmp eq ptr %i.ajq, null
  br i1 %.not.i108.i.i, label %__drm_to_dev.exit.i.i80, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ajr = getelementptr i8, ptr %i.ajq, i64 8
  %i.ajs = load ptr, ptr %i.ajr, align 8
  br label %__drm_to_dev.exit.i.i80

__drm_to_dev.exit.i.i80:                          ; preds = %bb.if, %bb.ie
  %i.ajt = phi ptr [ %i.ajs, %bb.if ], [ null, %bb.ie ]
  %i.aju = getelementptr i8, ptr %1, i64 1816
  %i.ajv = load ptr, ptr %i.aju, align 8          ; 2 uses
  %i.ajw = getelementptr i8, ptr %i.ajv, i64 64
  %i.ajx = load i32, ptr %i.ajw, align 8
  %i.ajy = getelementptr i8, ptr %i.ajv, i64 96
  %i.ajz = load ptr, ptr %i.ajy, align 8
  %i.aka = getelementptr i8, ptr %1, i64 -480
  %i.akb = load i32, ptr %i.aka, align 8
  %i.akc = getelementptr i8, ptr %1, i64 -448
  %i.akd = load ptr, ptr %i.akc, align 8
  %i.ake = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ajt, ptr noundef nonnull @.str.76, i32 noundef %i.ajx, ptr noundef %i.ajz, i32 noundef %i.akb, ptr noundef %i.akd, ptr noundef %i.ake) #11
  br label %intel_dp_post_lt_adj_req.exit.i

bb.ig:                                            ; preds = %bb.ib
  br i1 %.not107.i.i, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.akf = call ptr @__drm_to_display(ptr noundef nonnull %i.ajn) #8
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %i.akg = phi ptr [ %i.akf, %bb.ih ], [ null, %bb.ig ]
  %i.akh = load ptr, ptr %i.akg, align 8          ; 2 uses
  %.not.i109.i.i = icmp eq ptr %i.akh, null
  br i1 %.not.i109.i.i, label %__drm_to_dev.exit110.i.i, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.aki = getelementptr i8, ptr %i.akh, i64 8
  %i.akj = load ptr, ptr %i.aki, align 8
  br label %__drm_to_dev.exit110.i.i

__drm_to_dev.exit110.i.i:                         ; preds = %bb.ij, %bb.ii
  %i.akk = phi ptr [ %i.akj, %bb.ij ], [ null, %bb.ii ]
  %i.akl = getelementptr i8, ptr %1, i64 1816
  %i.akm = load ptr, ptr %i.akl, align 8          ; 2 uses
  %i.akn = getelementptr i8, ptr %i.akm, i64 64
  %i.ako = load i32, ptr %i.akn, align 8
  %i.akp = getelementptr i8, ptr %i.akm, i64 96
  %i.akq = load ptr, ptr %i.akp, align 8
  %i.akr = getelementptr i8, ptr %1, i64 -480
  %i.aks = load i32, ptr %i.akr, align 8
  %i.akt = getelementptr i8, ptr %1, i64 -448
  %i.aku = load ptr, ptr %i.akt, align 8
  %i.akv = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.akk, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef %i.ako, ptr noundef %i.akq, i32 noundef %i.aks, ptr noundef %i.aku, ptr noundef %i.akv) #8
  br label %intel_dp_post_lt_adj_req.exit.i

bb.ik:                                            ; preds = %bb.ia
  %i.akw = load volatile i64, ptr @jiffies, align 64
  %i.akx = load i8, ptr %i.db, align 1
  %i.aky = zext i8 %i.akx to i32
  %i.akz = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %i.d, i32 noundef %i.aky) #8
  br i1 %i.akz, label %.lr.ph.i.i79, label %._crit_edge.i.i75

.lr.ph.i.i79:                                     ; preds = %bb.ik
  %i.ala = add i64 %i.akw, 201
  %i.alb = getelementptr i8, ptr %1, i64 1620
  br label %bb.ir

._crit_edge.i.i75:                                ; preds = %bb.kt, %bb.ik
  %i.alc = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not.i111.i.i = icmp eq ptr %i.alc, null
  br i1 %.not.i111.i.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %._crit_edge.i.i75
  %i.ald = call ptr @__drm_to_display(ptr noundef nonnull %i.alc) #8
  br label %bb.im

bb.im:                                            ; preds = %bb.il, %._crit_edge.i.i75
  %i.ale = phi ptr [ %i.ald, %bb.il ], [ null, %._crit_edge.i.i75 ]
  %i.alf = load ptr, ptr %i.ale, align 8          ; 2 uses
  %.not.i.i.i.i76 = icmp eq ptr %i.alf, null
  br i1 %.not.i.i.i.i76, label %intel_dp_dump_link_status.exit.i.i77, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.alg = getelementptr i8, ptr %i.alf, i64 8
  %i.alh = load ptr, ptr %i.alg, align 8
  br label %intel_dp_dump_link_status.exit.i.i77

intel_dp_dump_link_status.exit.i.i77:             ; preds = %bb.in, %bb.im
  %i.ali = phi ptr [ %i.alh, %bb.in ], [ null, %bb.im ]
  %i.alj = getelementptr i8, ptr %1, i64 1816     ; 2 uses
  %i.alk = load ptr, ptr %i.alj, align 8          ; 2 uses
  %i.all = getelementptr i8, ptr %i.alk, i64 64
  %i.alm = load i32, ptr %i.all, align 8
  %i.aln = getelementptr i8, ptr %i.alk, i64 96
  %i.alo = load ptr, ptr %i.aln, align 8
  %i.alp = getelementptr i8, ptr %1, i64 -480     ; 2 uses
  %i.alq = load i32, ptr %i.alp, align 8
  %i.alr = getelementptr i8, ptr %1, i64 -448     ; 2 uses
  %i.als = load ptr, ptr %i.alr, align 8
  %i.alt = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  %i.alu = load i8, ptr %i.d, align 1
  %i.alv = zext i8 %i.alu to i32
  %i.alw = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.alx = load i8, ptr %i.alw, align 1
  %i.aly = zext i8 %i.alx to i32
  %i.alz = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ama = load i8, ptr %i.alz, align 1
  %i.amb = zext i8 %i.ama to i32
  %i.amc = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.amd = load i8, ptr %i.amc, align 1
  %i.ame = zext i8 %i.amd to i32
  %i.amf = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.amg = load i8, ptr %i.amf, align 1
  %i.amh = zext i8 %i.amg to i32
  %i.ami = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.amj = load i8, ptr %i.ami, align 1
  %i.amk = zext i8 %i.amj to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ali, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %i.alm, ptr noundef %i.alo, i32 noundef %i.alq, ptr noundef %i.als, ptr noundef %i.alt, i32 noundef %i.alv, i32 noundef %i.aly, i32 noundef %i.amb, i32 noundef %i.ame, i32 noundef %i.amh, i32 noundef %i.amk) #8
  %i.aml = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not.i.i78 = icmp eq ptr %i.aml, null
  br i1 %.not.i.i78, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %intel_dp_dump_link_status.exit.i.i77
  %i.amm = call ptr @__drm_to_display(ptr noundef nonnull %i.aml) #8
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %intel_dp_dump_link_status.exit.i.i77
  %i.amn = phi ptr [ %i.amm, %bb.io ], [ null, %intel_dp_dump_link_status.exit.i.i77 ]
  %i.amo = load ptr, ptr %i.amn, align 8          ; 2 uses
  %.not.i112.i.i = icmp eq ptr %i.amo, null
  br i1 %.not.i112.i.i, label %__drm_to_dev.exit113.i.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.amp = getelementptr i8, ptr %i.amo, i64 8
  %i.amq = load ptr, ptr %i.amp, align 8
  br label %__drm_to_dev.exit113.i.i

__drm_to_dev.exit113.i.i:                         ; preds = %bb.iq, %bb.ip
  %i.amr = phi ptr [ %i.amq, %bb.iq ], [ null, %bb.ip ]
  %i.ams = load ptr, ptr %i.alj, align 8          ; 2 uses
  %i.amt = getelementptr i8, ptr %i.ams, i64 64
  %i.amu = load i32, ptr %i.amt, align 8
  %i.amv = getelementptr i8, ptr %i.ams, i64 96
  %i.amw = load ptr, ptr %i.amv, align 8
  %i.amx = load i32, ptr %i.alp, align 8
  %i.amy = load ptr, ptr %i.alr, align 8
  %i.amz = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.amr, i32 noundef 2, ptr noundef nonnull @.str.90, i32 noundef %i.amu, ptr noundef %i.amw, i32 noundef %i.amx, ptr noundef %i.amy, ptr noundef %i.amz) #8
  br label %intel_dp_post_lt_adj_req.exit.i

bb.ir:                                            ; preds = %bb.kt, %.lr.ph.i.i79
  %.0151.i.i = phi i32 [ 0, %.lr.ph.i.i79 ], [ %.1.i.i, %bb.kt ] ; 5 uses
  %.093150.i.i = phi i1 [ false, %.lr.ph.i.i79 ], [ %.194.i.i, %bb.kt ]
  %.095149.i.i = phi i64 [ %i.ala, %.lr.ph.i.i79 ], [ %.196.i.i, %bb.kt ] ; 2 uses
  %i.ana = load i8, ptr %i.db, align 1
  %i.anb = zext i8 %i.ana to i32
  %i.anc = call zeroext i1 @drm_dp_channel_eq_ok(ptr noundef nonnull %i.d, i32 noundef %i.anb) #8
  br i1 %i.anc, label %bb.iz, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.and = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not.i114.i.i = icmp eq ptr %i.and, null
  br i1 %.not.i114.i.i, label %bb.iu, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.ane = call ptr @__drm_to_display(ptr noundef nonnull %i.and) #8
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.is
  %i.anf = phi ptr [ %i.ane, %bb.it ], [ null, %bb.is ]
  %i.ang = load ptr, ptr %i.anf, align 8          ; 2 uses
  %.not.i.i115.i.i = icmp eq ptr %i.ang, null
  br i1 %.not.i.i115.i.i, label %intel_dp_dump_link_status.exit116.i.i, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.anh = getelementptr i8, ptr %i.ang, i64 8
  %i.ani = load ptr, ptr %i.anh, align 8
  br label %intel_dp_dump_link_status.exit116.i.i

intel_dp_dump_link_status.exit116.i.i:            ; preds = %bb.iv, %bb.iu
  %i.anj = phi ptr [ %i.ani, %bb.iv ], [ null, %bb.iu ]
  %i.ank = getelementptr i8, ptr %1, i64 1816     ; 2 uses
  %i.anl = load ptr, ptr %i.ank, align 8          ; 2 uses
  %i.anm = getelementptr i8, ptr %i.anl, i64 64
  %i.ann = load i32, ptr %i.anm, align 8
  %i.ano = getelementptr i8, ptr %i.anl, i64 96
  %i.anp = load ptr, ptr %i.ano, align 8
  %i.anq = getelementptr i8, ptr %1, i64 -480     ; 2 uses
  %i.anr = load i32, ptr %i.anq, align 8
  %i.ans = getelementptr i8, ptr %1, i64 -448     ; 2 uses
  %i.ant = load ptr, ptr %i.ans, align 8
  %i.anu = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  %i.anv = load i8, ptr %i.d, align 1
  %i.anw = zext i8 %i.anv to i32
  %i.anx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.any = load i8, ptr %i.anx, align 1
  %i.anz = zext i8 %i.any to i32
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.aob = load i8, ptr %i.aoa, align 1
  %i.aoc = zext i8 %i.aob to i32
  %i.aod = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.aoe = load i8, ptr %i.aod, align 1
  %i.aof = zext i8 %i.aoe to i32
  %i.aog = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aoh = load i8, ptr %i.aog, align 1
  %i.aoi = zext i8 %i.aoh to i32
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.aok = load i8, ptr %i.aoj, align 1
  %i.aol = zext i8 %i.aok to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.anj, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %i.ann, ptr noundef %i.anp, i32 noundef %i.anr, ptr noundef %i.ant, ptr noundef %i.anu, i32 noundef %i.anw, i32 noundef %i.anz, i32 noundef %i.aoc, i32 noundef %i.aof, i32 noundef %i.aoi, i32 noundef %i.aol) #8
  %i.aom = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not98.i.i = icmp eq ptr %i.aom, null
  br i1 %.not98.i.i, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %intel_dp_dump_link_status.exit116.i.i
  %i.aon = call ptr @__drm_to_display(ptr noundef nonnull %i.aom) #8
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %intel_dp_dump_link_status.exit116.i.i
  %i.aoo = phi ptr [ %i.aon, %bb.iw ], [ null, %intel_dp_dump_link_status.exit116.i.i ]
  %i.aop = load ptr, ptr %i.aoo, align 8          ; 2 uses
  %.not.i117.i.i = icmp eq ptr %i.aop, null
  br i1 %.not.i117.i.i, label %__drm_to_dev.exit118.i.i, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.aoq = getelementptr i8, ptr %i.aop, i64 8
  %i.aor = load ptr, ptr %i.aoq, align 8
  br label %__drm_to_dev.exit118.i.i

__drm_to_dev.exit118.i.i:                         ; preds = %bb.iy, %bb.ix
  %i.aos = phi ptr [ %i.aor, %bb.iy ], [ null, %bb.ix ]
  %i.aot = load ptr, ptr %i.ank, align 8          ; 2 uses
  %i.aou = getelementptr i8, ptr %i.aot, i64 64
  %i.aov = load i32, ptr %i.aou, align 8
  %i.aow = getelementptr i8, ptr %i.aot, i64 96
  %i.aox = load ptr, ptr %i.aow, align 8
  %i.aoy = load i32, ptr %i.anq, align 8
  %i.aoz = load ptr, ptr %i.ans, align 8
  %i.apa = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aos, i32 noundef 2, ptr noundef nonnull @.str.91, i32 noundef %i.aov, ptr noundef %i.aox, i32 noundef %i.aoy, ptr noundef %i.aoz, ptr noundef %i.apa) #8
  br label %intel_dp_post_lt_adj_req.exit.i

bb.iz:                                            ; preds = %bb.ir
  %i.apb = call zeroext i1 @drm_dp_post_lt_adj_req_in_progress(ptr noundef nonnull %i.d) #8
  br i1 %i.apb, label %bb.jh, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.apc = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not.i119.i.i = icmp eq ptr %i.apc, null
  br i1 %.not.i119.i.i, label %bb.jc, label %bb.jb

bb.jb:                                            ; preds = %bb.ja
  %i.apd = call ptr @__drm_to_display(ptr noundef nonnull %i.apc) #8
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ja
  %i.ape = phi ptr [ %i.apd, %bb.jb ], [ null, %bb.ja ]
  %i.apf = load ptr, ptr %i.ape, align 8          ; 2 uses
  %.not.i.i120.i.i = icmp eq ptr %i.apf, null
  br i1 %.not.i.i120.i.i, label %intel_dp_dump_link_status.exit121.i.i, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %i.apg = getelementptr i8, ptr %i.apf, i64 8
  %i.aph = load ptr, ptr %i.apg, align 8
  br label %intel_dp_dump_link_status.exit121.i.i

intel_dp_dump_link_status.exit121.i.i:            ; preds = %bb.jd, %bb.jc
  %i.api = phi ptr [ %i.aph, %bb.jd ], [ null, %bb.jc ]
  %i.apj = getelementptr i8, ptr %1, i64 1816     ; 2 uses
  %i.apk = load ptr, ptr %i.apj, align 8          ; 2 uses
  %i.apl = getelementptr i8, ptr %i.apk, i64 64
  %i.apm = load i32, ptr %i.apl, align 8
  %i.apn = getelementptr i8, ptr %i.apk, i64 96
  %i.apo = load ptr, ptr %i.apn, align 8
  %i.app = getelementptr i8, ptr %1, i64 -480     ; 2 uses
  %i.apq = load i32, ptr %i.app, align 8
  %i.apr = getelementptr i8, ptr %1, i64 -448     ; 2 uses
  %i.aps = load ptr, ptr %i.apr, align 8
  %i.apt = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  %i.apu = load i8, ptr %i.d, align 1
  %i.apv = zext i8 %i.apu to i32
  %i.apw = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.apx = load i8, ptr %i.apw, align 1
  %i.apy = zext i8 %i.apx to i32
  %i.apz = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.aqa = load i8, ptr %i.apz, align 1
  %i.aqb = zext i8 %i.aqa to i32
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.aqd = load i8, ptr %i.aqc, align 1
  %i.aqe = zext i8 %i.aqd to i32
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aqg = load i8, ptr %i.aqf, align 1
  %i.aqh = zext i8 %i.aqg to i32
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.aqj = load i8, ptr %i.aqi, align 1
  %i.aqk = zext i8 %i.aqj to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.api, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %i.apm, ptr noundef %i.apo, i32 noundef %i.apq, ptr noundef %i.aps, ptr noundef %i.apt, i32 noundef %i.apv, i32 noundef %i.apy, i32 noundef %i.aqb, i32 noundef %i.aqe, i32 noundef %i.aqh, i32 noundef %i.aqk) #8
  %i.aql = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not99.i.i = icmp eq ptr %i.aql, null
  br i1 %.not99.i.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %intel_dp_dump_link_status.exit121.i.i
  %i.aqm = call ptr @__drm_to_display(ptr noundef nonnull %i.aql) #8
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %intel_dp_dump_link_status.exit121.i.i
  %i.aqn = phi ptr [ %i.aqm, %bb.je ], [ null, %intel_dp_dump_link_status.exit121.i.i ]
  %i.aqo = load ptr, ptr %i.aqn, align 8          ; 2 uses
  %.not.i122.i.i = icmp eq ptr %i.aqo, null
  br i1 %.not.i122.i.i, label %__drm_to_dev.exit123.i.i, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.aqp = getelementptr i8, ptr %i.aqo, i64 8
  %i.aqq = load ptr, ptr %i.aqp, align 8
  br label %__drm_to_dev.exit123.i.i

__drm_to_dev.exit123.i.i:                         ; preds = %bb.jg, %bb.jf
  %i.aqr = phi ptr [ %i.aqq, %bb.jg ], [ null, %bb.jf ]
  %i.aqs = load ptr, ptr %i.apj, align 8          ; 2 uses
  %i.aqt = getelementptr i8, ptr %i.aqs, i64 64
  %i.aqu = load i32, ptr %i.aqt, align 8
  %i.aqv = getelementptr i8, ptr %i.aqs, i64 96
  %i.aqw = load ptr, ptr %i.aqv, align 8
  %i.aqx = load i32, ptr %i.app, align 8
  %i.aqy = load ptr, ptr %i.apr, align 8
  %i.aqz = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aqr, i32 noundef 2, ptr noundef nonnull @.str.92, i32 noundef %i.aqu, ptr noundef %i.aqw, i32 noundef %i.aqx, ptr noundef %i.aqy, ptr noundef %i.aqz, i32 noundef %.0151.i.i) #8
  br label %intel_dp_post_lt_adj_req.exit.i

bb.jh:                                            ; preds = %bb.iz
  %i.ara = icmp eq i32 %.0151.i.i, 6
  br i1 %i.ara, label %bb.ji, label %bb.jp

bb.ji:                                            ; preds = %bb.jh
  %i.arb = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not.i124.i.i = icmp eq ptr %i.arb, null
  br i1 %.not.i124.i.i, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.arc = call ptr @__drm_to_display(ptr noundef nonnull %i.arb) #8
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %i.ard = phi ptr [ %i.arc, %bb.jj ], [ null, %bb.ji ]
  %i.are = load ptr, ptr %i.ard, align 8          ; 2 uses
  %.not.i.i125.i.i = icmp eq ptr %i.are, null
  br i1 %.not.i.i125.i.i, label %intel_dp_dump_link_status.exit126.i.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.arf = getelementptr i8, ptr %i.are, i64 8
  %i.arg = load ptr, ptr %i.arf, align 8
  br label %intel_dp_dump_link_status.exit126.i.i

intel_dp_dump_link_status.exit126.i.i:            ; preds = %bb.jl, %bb.jk
  %i.arh = phi ptr [ %i.arg, %bb.jl ], [ null, %bb.jk ]
  %i.ari = getelementptr i8, ptr %1, i64 1816     ; 2 uses
  %i.arj = load ptr, ptr %i.ari, align 8          ; 2 uses
  %i.ark = getelementptr i8, ptr %i.arj, i64 64
  %i.arl = load i32, ptr %i.ark, align 8
  %i.arm = getelementptr i8, ptr %i.arj, i64 96
  %i.arn = load ptr, ptr %i.arm, align 8
  %i.aro = getelementptr i8, ptr %1, i64 -480     ; 2 uses
  %i.arp = load i32, ptr %i.aro, align 8
  %i.arq = getelementptr i8, ptr %1, i64 -448     ; 2 uses
  %i.arr = load ptr, ptr %i.arq, align 8
  %i.ars = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  %i.art = load i8, ptr %i.d, align 1
  %i.aru = zext i8 %i.art to i32
  %i.arv = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.arw = load i8, ptr %i.arv, align 1
  %i.arx = zext i8 %i.arw to i32
  %i.ary = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.arz = load i8, ptr %i.ary, align 1
  %i.asa = zext i8 %i.arz to i32
  %i.asb = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.asc = load i8, ptr %i.asb, align 1
  %i.asd = zext i8 %i.asc to i32
  %i.ase = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.asf = load i8, ptr %i.ase, align 1
  %i.asg = zext i8 %i.asf to i32
  %i.ash = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.asi = load i8, ptr %i.ash, align 1
  %i.asj = zext i8 %i.asi to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.arh, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %i.arl, ptr noundef %i.arn, i32 noundef %i.arp, ptr noundef %i.arr, ptr noundef %i.ars, i32 noundef %i.aru, i32 noundef %i.arx, i32 noundef %i.asa, i32 noundef %i.asd, i32 noundef %i.asg, i32 noundef %i.asj) #8
  %i.ask = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not105.i.i = icmp eq ptr %i.ask, null
  br i1 %.not105.i.i, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %intel_dp_dump_link_status.exit126.i.i
  %i.asl = call ptr @__drm_to_display(ptr noundef nonnull %i.ask) #8
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %intel_dp_dump_link_status.exit126.i.i
  %i.asm = phi ptr [ %i.asl, %bb.jm ], [ null, %intel_dp_dump_link_status.exit126.i.i ]
  %i.asn = load ptr, ptr %i.asm, align 8          ; 2 uses
  %.not.i127.i.i = icmp eq ptr %i.asn, null
  br i1 %.not.i127.i.i, label %__drm_to_dev.exit128.i.i, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.aso = getelementptr i8, ptr %i.asn, i64 8
  %i.asp = load ptr, ptr %i.aso, align 8
  br label %__drm_to_dev.exit128.i.i

__drm_to_dev.exit128.i.i:                         ; preds = %bb.jo, %bb.jn
  %i.asq = phi ptr [ %i.asp, %bb.jo ], [ null, %bb.jn ]
  %i.asr = load ptr, ptr %i.ari, align 8          ; 2 uses
  %i.ass = getelementptr i8, ptr %i.asr, i64 64
  %i.ast = load i32, ptr %i.ass, align 8
  %i.asu = getelementptr i8, ptr %i.asr, i64 96
  %i.asv = load ptr, ptr %i.asu, align 8
  %i.asw = load i32, ptr %i.aro, align 8
  %i.asx = load ptr, ptr %i.arq, align 8
  %i.asy = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.asq, i32 noundef 2, ptr noundef nonnull @.str.93, i32 noundef %i.ast, ptr noundef %i.asv, i32 noundef %i.asw, ptr noundef %i.asx, ptr noundef %i.asy, i32 noundef 6) #8
  br label %intel_dp_post_lt_adj_req.exit.i

bb.jp:                                            ; preds = %bb.jh
  br i1 %.093150.i.i, label %bb.jq, label %bb.jx

bb.jq:                                            ; preds = %bb.jp
  %i.asz = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not.i129.i.i = icmp eq ptr %i.asz, null
  br i1 %.not.i129.i.i, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %bb.jq
  %i.ata = call ptr @__drm_to_display(ptr noundef nonnull %i.asz) #8
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jq
  %i.atb = phi ptr [ %i.ata, %bb.jr ], [ null, %bb.jq ]
  %i.atc = load ptr, ptr %i.atb, align 8          ; 2 uses
  %.not.i.i130.i.i = icmp eq ptr %i.atc, null
  br i1 %.not.i.i130.i.i, label %intel_dp_dump_link_status.exit131.i.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.atd = getelementptr i8, ptr %i.atc, i64 8
  %i.ate = load ptr, ptr %i.atd, align 8
  br label %intel_dp_dump_link_status.exit131.i.i

intel_dp_dump_link_status.exit131.i.i:            ; preds = %bb.jt, %bb.js
  %i.atf = phi ptr [ %i.ate, %bb.jt ], [ null, %bb.js ]
  %i.atg = getelementptr i8, ptr %1, i64 1816     ; 2 uses
  %i.ath = load ptr, ptr %i.atg, align 8          ; 2 uses
  %i.ati = getelementptr i8, ptr %i.ath, i64 64
  %i.atj = load i32, ptr %i.ati, align 8
  %i.atk = getelementptr i8, ptr %i.ath, i64 96
  %i.atl = load ptr, ptr %i.atk, align 8
  %i.atm = getelementptr i8, ptr %1, i64 -480     ; 2 uses
  %i.atn = load i32, ptr %i.atm, align 8
  %i.ato = getelementptr i8, ptr %1, i64 -448     ; 2 uses
  %i.atp = load ptr, ptr %i.ato, align 8
  %i.atq = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  %i.atr = load i8, ptr %i.d, align 1
  %i.ats = zext i8 %i.atr to i32
  %i.att = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.atu = load i8, ptr %i.att, align 1
  %i.atv = zext i8 %i.atu to i32
  %i.atw = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.atx = load i8, ptr %i.atw, align 1
  %i.aty = zext i8 %i.atx to i32
  %i.atz = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.aua = load i8, ptr %i.atz, align 1
  %i.aub = zext i8 %i.aua to i32
  %i.auc = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.aud = load i8, ptr %i.auc, align 1
  %i.aue = zext i8 %i.aud to i32
  %i.auf = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.aug = load i8, ptr %i.auf, align 1
  %i.auh = zext i8 %i.aug to i32
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.atf, i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %i.atj, ptr noundef %i.atl, i32 noundef %i.atn, ptr noundef %i.atp, ptr noundef %i.atq, i32 noundef %i.ats, i32 noundef %i.atv, i32 noundef %i.aty, i32 noundef %i.aub, i32 noundef %i.aue, i32 noundef %i.auh) #8
  %i.aui = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not104.i.i = icmp eq ptr %i.aui, null
  br i1 %.not104.i.i, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %intel_dp_dump_link_status.exit131.i.i
  %i.auj = call ptr @__drm_to_display(ptr noundef nonnull %i.aui) #8
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %intel_dp_dump_link_status.exit131.i.i
  %i.auk = phi ptr [ %i.auj, %bb.ju ], [ null, %intel_dp_dump_link_status.exit131.i.i ]
  %i.aul = load ptr, ptr %i.auk, align 8          ; 2 uses
  %.not.i132.i.i = icmp eq ptr %i.aul, null
  br i1 %.not.i132.i.i, label %__drm_to_dev.exit133.i.i, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %i.aum = getelementptr i8, ptr %i.aul, i64 8
  %i.aun = load ptr, ptr %i.aum, align 8
  br label %__drm_to_dev.exit133.i.i

__drm_to_dev.exit133.i.i:                         ; preds = %bb.jw, %bb.jv
  %i.auo = phi ptr [ %i.aun, %bb.jw ], [ null, %bb.jv ]
  %i.aup = load ptr, ptr %i.atg, align 8          ; 2 uses
  %i.auq = getelementptr i8, ptr %i.aup, i64 64
  %i.aur = load i32, ptr %i.auq, align 8
  %i.aus = getelementptr i8, ptr %i.aup, i64 96
  %i.aut = load ptr, ptr %i.aus, align 8
  %i.auu = load i32, ptr %i.atm, align 8
  %i.auv = load ptr, ptr %i.ato, align 8
  %i.auw = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.auo, i32 noundef 2, ptr noundef nonnull @.str.94, i32 noundef %i.aur, ptr noundef %i.aut, i32 noundef %i.auu, ptr noundef %i.auv, ptr noundef %i.auw, i32 noundef %.0151.i.i) #8
  br label %intel_dp_post_lt_adj_req.exit.i

bb.jx:                                            ; preds = %bb.jp
  call void @msleep(i32 noundef 5) #8
  %i.aux = call i32 @drm_dp_dpcd_read_phy_link_status(ptr noundef %i.cx, i32 noundef 0, ptr noundef nonnull %i.d) #8
  %i.auy = icmp slt i32 %i.aux, 0
  br i1 %i.auy, label %bb.jy, label %bb.kh

bb.jy:                                            ; preds = %bb.jx
  %i.auz = call zeroext i1 @intel_digital_port_connected(ptr noundef %i.x) #8
  %i.ava = load ptr, ptr %i.x, align 8            ; 3 uses
  %.not103.i.i = icmp eq ptr %i.ava, null         ; 2 uses
  br i1 %i.auz, label %bb.jz, label %bb.kd

bb.jz:                                            ; preds = %bb.jy
  br i1 %.not103.i.i, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.avb = call ptr @__drm_to_display(ptr noundef nonnull %i.ava) #8
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %i.avc = phi ptr [ %i.avb, %bb.ka ], [ null, %bb.jz ]
  %i.avd = load ptr, ptr %i.avc, align 8          ; 2 uses
  %.not.i134.i.i = icmp eq ptr %i.avd, null
  br i1 %.not.i134.i.i, label %__drm_to_dev.exit135.i.i, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.ave = getelementptr i8, ptr %i.avd, i64 8
  %i.avf = load ptr, ptr %i.ave, align 8
  br label %__drm_to_dev.exit135.i.i

__drm_to_dev.exit135.i.i:                         ; preds = %bb.kc, %bb.kb
  %i.avg = phi ptr [ %i.avf, %bb.kc ], [ null, %bb.kb ]
  %i.avh = getelementptr i8, ptr %1, i64 1816
  %i.avi = load ptr, ptr %i.avh, align 8          ; 2 uses
  %i.avj = getelementptr i8, ptr %i.avi, i64 64
  %i.avk = load i32, ptr %i.avj, align 8
  %i.avl = getelementptr i8, ptr %i.avi, i64 96
  %i.avm = load ptr, ptr %i.avl, align 8
  %i.avn = getelementptr i8, ptr %1, i64 -480
  %i.avo = load i32, ptr %i.avn, align 8
  %i.avp = getelementptr i8, ptr %1, i64 -448
  %i.avq = load ptr, ptr %i.avp, align 8
  %i.avr = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.avg, ptr noundef nonnull @.str.76, i32 noundef %i.avk, ptr noundef %i.avm, i32 noundef %i.avo, ptr noundef %i.avq, ptr noundef %i.avr) #11
  br label %intel_dp_post_lt_adj_req.exit.i

bb.kd:                                            ; preds = %bb.jy
  br i1 %.not103.i.i, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.avs = call ptr @__drm_to_display(ptr noundef nonnull %i.ava) #8
  br label %bb.kf

bb.kf:                                            ; preds = %bb.ke, %bb.kd
  %i.avt = phi ptr [ %i.avs, %bb.ke ], [ null, %bb.kd ]
  %i.avu = load ptr, ptr %i.avt, align 8          ; 2 uses
  %.not.i136.i.i = icmp eq ptr %i.avu, null
  br i1 %.not.i136.i.i, label %__drm_to_dev.exit137.i.i, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.avv = getelementptr i8, ptr %i.avu, i64 8
  %i.avw = load ptr, ptr %i.avv, align 8
  br label %__drm_to_dev.exit137.i.i

__drm_to_dev.exit137.i.i:                         ; preds = %bb.kg, %bb.kf
  %i.avx = phi ptr [ %i.avw, %bb.kg ], [ null, %bb.kf ]
  %i.avy = getelementptr i8, ptr %1, i64 1816
  %i.avz = load ptr, ptr %i.avy, align 8          ; 2 uses
  %i.awa = getelementptr i8, ptr %i.avz, i64 64
  %i.awb = load i32, ptr %i.awa, align 8
  %i.awc = getelementptr i8, ptr %i.avz, i64 96
  %i.awd = load ptr, ptr %i.awc, align 8
  %i.awe = getelementptr i8, ptr %1, i64 -480
  %i.awf = load i32, ptr %i.awe, align 8
  %i.awg = getelementptr i8, ptr %1, i64 -448
  %i.awh = load ptr, ptr %i.awg, align 8
  %i.awi = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.avx, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef %i.awb, ptr noundef %i.awd, i32 noundef %i.awf, ptr noundef %i.awh, ptr noundef %i.awi) #8
  br label %intel_dp_post_lt_adj_req.exit.i

bb.kh:                                            ; preds = %bb.jx
  %i.awj = call zeroext i1 @intel_dp_get_adjust_train(ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %i.d) #10
  %i.awk = load volatile i64, ptr @jiffies, align 64 ; 2 uses
  br i1 %i.awj, label %bb.ki, label %bb.ks

bb.ki:                                            ; preds = %bb.kh
  %i.awl = add i64 %i.awk, 201
  %i.awm = add i32 %.0151.i.i, 1
  call void @intel_dp_set_signal_levels(ptr noundef %1, ptr noundef %2, i32 noundef 0) #10
  %i.awn = load i8, ptr %i.db, align 1
  %i.awo = zext i8 %i.awn to i64
  %i.awp = call i64 @drm_dp_dpcd_write(ptr noundef %i.cx, i32 noundef 259, ptr noundef %i.alb, i64 noundef %i.awo) #8
  %i.awq = trunc i64 %i.awp to i32                ; 2 uses
  %i.awr = load i8, ptr %i.db, align 1
  %i.aws = zext i8 %i.awr to i32
  %i.awt = icmp eq i32 %i.awq, %i.aws
  br i1 %i.awt, label %bb.kt, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.awu = call zeroext i1 @intel_digital_port_connected(ptr noundef %i.x) #8
  %i.awv = load ptr, ptr %i.x, align 8            ; 3 uses
  %.not101.i.i = icmp eq ptr %i.awv, null         ; 2 uses
  br i1 %i.awu, label %bb.kk, label %bb.ko

bb.kk:                                            ; preds = %bb.kj
  br i1 %.not101.i.i, label %bb.km, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.aww = call ptr @__drm_to_display(ptr noundef nonnull %i.awv) #8
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %i.awx = phi ptr [ %i.aww, %bb.kl ], [ null, %bb.kk ]
  %i.awy = load ptr, ptr %i.awx, align 8          ; 2 uses
  %.not.i138.i.i = icmp eq ptr %i.awy, null
  br i1 %.not.i138.i.i, label %__drm_to_dev.exit139.i.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.awz = getelementptr i8, ptr %i.awy, i64 8
  %i.axa = load ptr, ptr %i.awz, align 8
  br label %__drm_to_dev.exit139.i.i

__drm_to_dev.exit139.i.i:                         ; preds = %bb.kn, %bb.km
  %i.axb = phi ptr [ %i.axa, %bb.kn ], [ null, %bb.km ]
  %i.axc = getelementptr i8, ptr %1, i64 1816
  %i.axd = load ptr, ptr %i.axc, align 8          ; 2 uses
  %i.axe = getelementptr i8, ptr %i.axd, i64 64
  %i.axf = load i32, ptr %i.axe, align 8
  %i.axg = getelementptr i8, ptr %i.axd, i64 96
  %i.axh = load ptr, ptr %i.axg, align 8
  %i.axi = getelementptr i8, ptr %1, i64 -480
  %i.axj = load i32, ptr %i.axi, align 8
  %i.axk = getelementptr i8, ptr %1, i64 -448
  %i.axl = load ptr, ptr %i.axk, align 8
  %i.axm = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.axb, ptr noundef nonnull @.str.81, i32 noundef %i.axf, ptr noundef %i.axh, i32 noundef %i.axj, ptr noundef %i.axl, ptr noundef %i.axm) #11
  br label %intel_dp_post_lt_adj_req.exit.i

bb.ko:                                            ; preds = %bb.kj
  br i1 %.not101.i.i, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.axn = call ptr @__drm_to_display(ptr noundef nonnull %i.awv) #8
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %bb.ko
  %i.axo = phi ptr [ %i.axn, %bb.kp ], [ null, %bb.ko ]
  %i.axp = load ptr, ptr %i.axo, align 8          ; 2 uses
  %.not.i140.i.i = icmp eq ptr %i.axp, null
  br i1 %.not.i140.i.i, label %__drm_to_dev.exit141.i.i, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.axq = getelementptr i8, ptr %i.axp, i64 8
  %i.axr = load ptr, ptr %i.axq, align 8
  br label %__drm_to_dev.exit141.i.i

__drm_to_dev.exit141.i.i:                         ; preds = %bb.kr, %bb.kq
  %i.axs = phi ptr [ %i.axr, %bb.kr ], [ null, %bb.kq ]
  %i.axt = getelementptr i8, ptr %1, i64 1816
  %i.axu = load ptr, ptr %i.axt, align 8          ; 2 uses
  %i.axv = getelementptr i8, ptr %i.axu, i64 64
  %i.axw = load i32, ptr %i.axv, align 8
  %i.axx = getelementptr i8, ptr %i.axu, i64 96
  %i.axy = load ptr, ptr %i.axx, align 8
  %i.axz = getelementptr i8, ptr %1, i64 -480
  %i.aya = load i32, ptr %i.axz, align 8
  %i.ayb = getelementptr i8, ptr %1, i64 -448
  %i.ayc = load ptr, ptr %i.ayb, align 8
  %i.ayd = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.axs, i32 noundef 2, ptr noundef nonnull @.str.82, i32 noundef %i.axw, ptr noundef %i.axy, i32 noundef %i.aya, ptr noundef %i.ayc, ptr noundef %i.ayd) #8
  br label %intel_dp_post_lt_adj_req.exit.i

bb.ks:                                            ; preds = %bb.kh
  %i.aye = sub i64 %.095149.i.i, %i.awk
  %i.ayf = icmp slt i64 %i.aye, 0
  %.pre.i.i = load i8, ptr %i.db, align 1
  %.pre158.i.i = zext i8 %.pre.i.i to i32
  br label %bb.kt

bb.kt:                                            ; preds = %bb.ks, %bb.ki
  %.pre-phi.i.i = phi i32 [ %.pre158.i.i, %bb.ks ], [ %i.awq, %bb.ki ]
  %.196.i.i = phi i64 [ %.095149.i.i, %bb.ks ], [ %i.awl, %bb.ki ]
  %.194.i.i = phi i1 [ %i.ayf, %bb.ks ], [ false, %bb.ki ]
  %.1.i.i = phi i32 [ %.0151.i.i, %bb.ks ], [ %i.awm, %bb.ki ]
  %i.ayg = call zeroext i1 @drm_dp_clock_recovery_ok(ptr noundef nonnull %i.d, i32 noundef %.pre-phi.i.i) #8
  br i1 %i.ayg, label %bb.ir, label %._crit_edge.i.i75

intel_dp_post_lt_adj_req.exit.i:                  ; preds = %__drm_to_dev.exit141.i.i, %__drm_to_dev.exit139.i.i, %__drm_to_dev.exit137.i.i, %__drm_to_dev.exit135.i.i, %__drm_to_dev.exit133.i.i, %__drm_to_dev.exit128.i.i, %__drm_to_dev.exit123.i.i, %__drm_to_dev.exit118.i.i, %__drm_to_dev.exit113.i.i, %__drm_to_dev.exit110.i.i, %__drm_to_dev.exit.i.i80, %intel_dp_use_post_lt_adj_req.exit.i.i74, %drm_dp_post_lt_adj_req_supported.exit.i.i.i72, %bb.hz, %bb.hy
  %.097.i.i = phi i1 [ true, %intel_dp_use_post_lt_adj_req.exit.i.i74 ], [ false, %__drm_to_dev.exit.i.i80 ], [ false, %__drm_to_dev.exit110.i.i ], [ true, %__drm_to_dev.exit128.i.i ], [ true, %__drm_to_dev.exit133.i.i ], [ false, %__drm_to_dev.exit135.i.i ], [ false, %__drm_to_dev.exit137.i.i ], [ false, %__drm_to_dev.exit139.i.i ], [ false, %__drm_to_dev.exit141.i.i ], [ true, %__drm_to_dev.exit123.i.i ], [ false, %__drm_to_dev.exit118.i.i ], [ false, %__drm_to_dev.exit113.i.i ], [ true, %drm_dp_post_lt_adj_req_supported.exit.i.i.i72 ], [ true, %bb.hy ], [ true, %bb.hz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %bb.ku

intel_dp_post_lt_adj_req.exit.i.a:                ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i8 0, ptr %i.c, align 1
  %6 = call i64 @drm_dp_dpcd_write(ptr noundef %i.cx, i32 noundef 258, ptr noundef nonnull %i.c, i64 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %.pre.i = load ptr, ptr %i.dh, align 8
  call void %.pre.i(ptr noundef %1, ptr noundef %2) #8, !inline_history !42
  br label %bb.ku

bb.ku:                                            ; preds = %intel_dp_post_lt_adj_req.exit.i.a, %intel_dp_post_lt_adj_req.exit.i, %.loopexit.i
  %.3.i = phi i1 [ %.097.i.i, %intel_dp_post_lt_adj_req.exit.i ], [ false, %.loopexit.i ], [ false, %intel_dp_post_lt_adj_req.exit.i.a ] ; 5 uses
  %7 = load ptr, ptr %i.dh, align 8
  %.not.i.i25.i = icmp eq ptr %7, null
  br i1 %.not.i.i25.i, label %intel_dp_link_train_all_phys.exit, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.ayh = getelementptr i8, ptr %1, i64 17
  %i.ayi = load i8, ptr %i.ayh, align 1
  %i.ayj = icmp ugt i8 %i.ayi, 18
  br i1 %i.ayj, label %drm_dp_post_lt_adj_req_supported.exit.i.i26.i, label %intel_dp_link_train_all_phys.exit

drm_dp_post_lt_adj_req_supported.exit.i.i26.i:    ; preds = %bb.kv
  %i.ayk = getelementptr i8, ptr %1, i64 19
  %i.ayl = load i8, ptr %i.ayk, align 1
  %i.aym = and i8 %i.ayl, 32
  %.not4.i.i27.i = icmp eq i8 %i.aym, 0
  br i1 %.not4.i.i27.i, label %intel_dp_link_train_all_phys.exit, label %intel_dp_use_post_lt_adj_req.exit.i28.i

intel_dp_use_post_lt_adj_req.exit.i28.i:          ; preds = %drm_dp_post_lt_adj_req_supported.exit.i.i26.i
  %i.ayn = call fastcc i32 @intel_dp_training_pattern(ptr noundef readonly %1, ptr noundef %2, i32 noundef 0) #10, !srcloc !44
  %.not.i29.i = icmp eq i32 %i.ayn, 7
  br i1 %.not.i29.i, label %intel_dp_link_train_all_phys.exit, label %bb.kw

bb.kw:                                            ; preds = %intel_dp_use_post_lt_adj_req.exit.i28.i
  %i.ayo = load i8, ptr %i.db, align 1
  %i.ayp = load i8, ptr %i.de, align 4, !range !11, !noundef !12
  %i.ayq = shl nuw i8 %i.ayp, 7
  %spec.select.i.i70 = or i8 %i.ayq, %i.ayo
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i8 %spec.select.i.i70, ptr %3, align 1
  %i.ayr = call i64 @drm_dp_dpcd_write(ptr noundef %i.cx, i32 noundef 257, ptr noundef nonnull %3, i64 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %intel_dp_link_train_all_phys.exit

intel_dp_link_train_all_phys.exit:                ; preds = %bb.kw, %intel_dp_use_post_lt_adj_req.exit.i28.i, %drm_dp_post_lt_adj_req_supported.exit.i.i26.i, %bb.kv, %bb.ku, %intel_dp_128b132b_link_train.exit
  %.0.in = phi i1 [ %.169.i, %intel_dp_128b132b_link_train.exit ], [ %.3.i, %bb.ku ], [ %.3.i, %bb.kv ], [ %.3.i, %drm_dp_post_lt_adj_req_supported.exit.i.i26.i ], [ %.3.i, %intel_dp_use_post_lt_adj_req.exit.i28.i ], [ %.3.i, %bb.kw ] ; 2 uses
  %i.ays = getelementptr i8, ptr %1, i64 260      ; 2 uses
  %i.ayt = load i32, ptr %i.ays, align 4          ; 2 uses
  %.not60 = icmp eq i32 %i.ayt, 0
  br i1 %.not60, label %bb.lb, label %bb.kx

bb.kx:                                            ; preds = %intel_dp_link_train_all_phys.exit
  %i.ayu = add i32 %i.ayt, -1
  store i32 %i.ayu, ptr %i.ays, align 4
  %i.ayv = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not61 = icmp eq ptr %i.ayv, null
  br i1 %.not61, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.ayw = call ptr @__drm_to_display(ptr noundef nonnull %i.ayv) #8
  br label %bb.kz

bb.kz:                                            ; preds = %bb.kx, %bb.ky
  %i.ayx = phi ptr [ %i.ayw, %bb.ky ], [ null, %bb.kx ]
  %i.ayy = load ptr, ptr %i.ayx, align 8          ; 2 uses
  %.not.i81 = icmp eq ptr %i.ayy, null
  br i1 %.not.i81, label %__drm_to_dev.exit, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.ayz = getelementptr i8, ptr %i.ayy, i64 8
  %i.aza = load ptr, ptr %i.ayz, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.kz, %bb.la
  %i.azb = phi ptr [ %i.aza, %bb.la ], [ null, %bb.kz ]
  %i.azc = getelementptr i8, ptr %1, i64 1816
  %i.azd = load ptr, ptr %i.azc, align 8          ; 2 uses
  %i.aze = getelementptr i8, ptr %i.azd, i64 64
  %i.azf = load i32, ptr %i.aze, align 8
  %i.azg = getelementptr i8, ptr %i.azd, i64 96
  %i.azh = load ptr, ptr %i.azg, align 8
  %i.azi = getelementptr i8, ptr %1, i64 -480
  %i.azj = load i32, ptr %i.azi, align 8
  %i.azk = getelementptr i8, ptr %1, i64 -448
  %i.azl = load ptr, ptr %i.azk, align 8
  %i.azm = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.azb, i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef %i.azf, ptr noundef %i.azh, i32 noundef %i.azj, ptr noundef %i.azl, ptr noundef %i.azm) #8
  br label %bb.ld

bb.lb:                                            ; preds = %intel_dp_link_train_all_phys.exit
  br i1 %.0.in, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  %i.azn = getelementptr i8, ptr %1, i64 256
  store i32 0, ptr %i.azn, align 8
  br label %intel_dp_schedule_fallback_link_training.exit.thread

bb.ld:                                            ; preds = %bb.lb, %__drm_to_dev.exit
  %i.azo = getelementptr i8, ptr %1, i64 256      ; 2 uses
  %i.azp = load i32, ptr %i.azo, align 8
  %i.azq = add i32 %i.azp, 1                      ; 2 uses
  store i32 %i.azq, ptr %i.azo, align 8
  %i.azr = getelementptr i8, ptr %i.w, i64 5104
  %i.azs = load i8, ptr %i.azr, align 8, !range !11, !noundef !12
  %i.azt = trunc nuw i8 %i.azs to i1
  br i1 %i.azt, label %bb.le, label %bb.li

bb.le:                                            ; preds = %bb.ld
  %i.azu = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not65 = icmp eq ptr %i.azu, null
  br i1 %.not65, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.azv = call ptr @__drm_to_display(ptr noundef nonnull %i.azu) #8
  br label %bb.lg

bb.lg:                                            ; preds = %bb.le, %bb.lf
  %i.azw = phi ptr [ %i.azv, %bb.lf ], [ null, %bb.le ]
  %i.azx = load ptr, ptr %i.azw, align 8          ; 2 uses
  %.not.i82 = icmp eq ptr %i.azx, null
  br i1 %.not.i82, label %__drm_to_dev.exit83, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.azy = getelementptr i8, ptr %i.azx, i64 8
  %i.azz = load ptr, ptr %i.azy, align 8
  br label %__drm_to_dev.exit83

__drm_to_dev.exit83:                              ; preds = %bb.lg, %bb.lh
  %i.baa = phi ptr [ %i.azz, %bb.lh ], [ null, %bb.lg ]
  %i.bab = getelementptr i8, ptr %1, i64 1816
  %i.bac = load ptr, ptr %i.bab, align 8          ; 2 uses
  %i.bad = getelementptr i8, ptr %i.bac, i64 64
  %i.bae = load i32, ptr %i.bad, align 8
  %i.baf = getelementptr i8, ptr %i.bac, i64 96
  %i.bag = load ptr, ptr %i.baf, align 8
  %i.bah = getelementptr i8, ptr %1, i64 -480
  %i.bai = load i32, ptr %i.bah, align 8
  %i.baj = getelementptr i8, ptr %1, i64 -448
  %i.bak = load ptr, ptr %i.baj, align 8
  %i.bal = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.baa, i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %i.bae, ptr noundef %i.bag, i32 noundef %i.bai, ptr noundef %i.bak, ptr noundef %i.bal) #8
  br label %intel_dp_schedule_fallback_link_training.exit.thread

bb.li:                                            ; preds = %bb.ld
  %i.bam = icmp slt i32 %i.azq, 2
  br i1 %i.bam, label %intel_dp_schedule_fallback_link_training.exit.thread, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.ban = call zeroext i1 @intel_digital_port_connected(ptr noundef %i.x) #8
  br i1 %i.ban, label %bb.lo, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.bao = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not.i84 = icmp eq ptr %i.bao, null
  br i1 %.not.i84, label %bb.lm, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.bap = call ptr @__drm_to_display(ptr noundef nonnull %i.bao) #8
  br label %bb.lm

bb.lm:                                            ; preds = %bb.ll, %bb.lk
  %i.baq = phi ptr [ %i.bap, %bb.ll ], [ null, %bb.lk ]
  %i.bar = load ptr, ptr %i.baq, align 8          ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.bar, null
  br i1 %.not.i.i85, label %__drm_to_dev.exit.i86, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  %i.bas = getelementptr i8, ptr %i.bar, i64 8
  %i.bat = load ptr, ptr %i.bas, align 8
  br label %__drm_to_dev.exit.i86

__drm_to_dev.exit.i86:                            ; preds = %bb.ln, %bb.lm
  %i.bau = phi ptr [ %i.bat, %bb.ln ], [ null, %bb.lm ]
  %i.bav = getelementptr i8, ptr %1, i64 1816
  %i.baw = load ptr, ptr %i.bav, align 8          ; 2 uses
  %i.bax = getelementptr i8, ptr %i.baw, i64 64
  %i.bay = load i32, ptr %i.bax, align 8
  %i.baz = getelementptr i8, ptr %i.baw, i64 96
  %i.bba = load ptr, ptr %i.baz, align 8
  %i.bbb = getelementptr i8, ptr %1, i64 -480
  %i.bbc = load i32, ptr %i.bbb, align 8
  %i.bbd = getelementptr i8, ptr %1, i64 -448
  %i.bbe = load ptr, ptr %i.bbd, align 8
  %i.bbf = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bau, i32 noundef 2, ptr noundef nonnull @.str.95, i32 noundef %i.bay, ptr noundef %i.bba, i32 noundef %i.bbc, ptr noundef %i.bbe, ptr noundef %i.bbf) #8
  br label %intel_dp_schedule_fallback_link_training.exit.thread

bb.lo:                                            ; preds = %bb.lj
  %i.bbg = getelementptr i8, ptr %1, i64 3281
  %i.bbh = load i8, ptr %i.bbg, align 1, !range !11, !noundef !12
  %i.bbi = trunc nuw i8 %i.bbh to i1
  br i1 %i.bbi, label %bb.lp, label %bb.lt

bb.lp:                                            ; preds = %bb.lo
  %i.bbj = load ptr, ptr %i.x, align 8            ; 2 uses
  %.not23.i = icmp eq ptr %i.bbj, null
  br i1 %.not23.i, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.bbk = call ptr @__drm_to_display(ptr noundef nonnull %i.bbj) #8
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp
  %i.bbl = phi ptr [ %i.bbk, %bb.lq ], [ null, %bb.lp ]
  %i.bbm = load ptr, ptr %i.bbl, align 8          ; 2 uses
  %.not.i24.i = icmp eq ptr %i.bbm, null
  br i1 %.not.i24.i, label %__drm_to_dev.exit25.i, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.bbn = getelementptr i8, ptr %i.bbm, i64 8
  %i.bbo = load ptr, ptr %i.bbn, align 8
  br label %__drm_to_dev.exit25.i

__drm_to_dev.exit25.i:                            ; preds = %bb.ls, %bb.lr
  %i.bbp = phi ptr [ %i.bbo, %bb.ls ], [ null, %bb.lr ]
  %i.bbq = getelementptr i8, ptr %1, i64 1816
  %i.bbr = load ptr, ptr %i.bbq, align 8          ; 2 uses
  %i.bbs = getelementptr i8, ptr %i.bbr, i64 64
  %i.bbt = load i32, ptr %i.bbs, align 8
  %i.bbu = getelementptr i8, ptr %i.bbr, i64 96
  %i.bbv = load ptr, ptr %i.bbu, align 8
  %i.bbw = getelementptr i8, ptr %1, i64 -480
  %i.bbx = load i32, ptr %i.bbw, align 8
  %i.bby = getelementptr i8, ptr %1, i64 -448
  %i.bbz = load ptr, ptr %i.bby, align 8
  %i.bca = call ptr @drm_dp_phy_name(i32 noundef 0) #8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bbp, i32 noundef 2, ptr noundef nonnull @.str.96, i32 noundef %i.bbt, ptr noundef %i.bbv, i32 noundef %i.bbx, ptr noundef %i.bbz, ptr noundef %i.bca) #8
  %i.bcb = getelementptr i8, ptr %1, i64 3280
  store i8 1, ptr %i.bcb, align 8
  br label %intel_dp_get_link_train_fallback_values.exit.thread.i

bb.lt:                                            ; preds = %bb.lo
  %i.bcc = call zeroext i1 @intel_dp_is_edp(ptr noundef %1) #8
  br i1 %i.bcc, label %bb.lu, label %bb.lz

bb.lu:                                            ; preds = %bb.lt
  %i.bcd = getelementptr i8, ptr %1, i64 16       ; 2 uses
  %i.bce = load i8, ptr %i.bcd, align 8, !range !11, !noundef !12
  %i.bcf = trunc nuw i8 %i.bce to i1
  br i1 %i.bcf, label %bb.lz, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
end_hunk_1
