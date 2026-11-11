Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/virtgpu_kms?download=true
inline.NumInlined: 39
inline.NumDeleted: 23
begin_hunk_0_@virtio_gpu_init:bb.a

bb.q:                                             ; preds = %dev_name.exit
  %i.cf = load i64, ptr %i.bs, align 8
  %i.cg = load i64, ptr %i.ca, align 8
  %i.ch = tail call i32 (ptr, ...) @_printk(ptr noundef @.str.6, i64 noundef %i.cf, i64 noundef %i.cg) #10 ; 0 uses
  %i.ci = getelementptr i8, ptr %i.g, i64 66877
  store i8 1, ptr %i.ci, align 1
  %i.cj = getelementptr i8, ptr %i.g, i64 66896
  %i.ck = load i64, ptr %i.bs, align 8
  %i.cl = load i64, ptr %i.ca, align 8
  tail call void @drm_mm_init(ptr noundef %i.cj, i64 noundef %i.ck, i64 noundef %i.cl) #9
  %.pre = load ptr, ptr %i.i, align 8
  br label %virtio_get_shm_region.exit.thread

virtio_get_shm_region.exit.thread:                ; preds = %bb.m, %bb.q, %virtio_get_shm_region.exit
  %i.cm = phi ptr [ %i.br, %bb.m ], [ %.pre, %bb.q ], [ %.pre193, %virtio_get_shm_region.exit ] ; 2 uses
  tail call void @virtio_check_driver_offered_feature(ptr noundef %i.cm, i32 noundef 4) #9
  %i.cn = getelementptr i8, ptr %i.cm, i64 824
  %.val.i180 = load i64, ptr %i.cn, align 8
  %i.co = and i64 %.val.i180, 16
  %.not191 = icmp eq i64 %i.co, 0
  br i1 %.not191, label %bb.s, label %bb.r

bb.r:                                             ; preds = %virtio_get_shm_region.exit.thread
  %i.cp = getelementptr i8, ptr %i.g, i64 66878
  store i8 1, ptr %i.cp, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %virtio_get_shm_region.exit.thread
  %i.cq = load ptr, ptr %i.i, align 8             ; 2 uses
  tail call void @virtio_check_driver_offered_feature(ptr noundef %i.cq, i32 noundef 5) #9
  %i.cr = getelementptr i8, ptr %i.cq, i64 824
  %.val.i181 = load i64, ptr %i.cr, align 8
  %i.cs = and i64 %.val.i181, 32
  %.not192 = icmp eq i64 %i.cs, 0
  br i1 %.not192, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = getelementptr i8, ptr %i.g, i64 66879
  store i8 1, ptr %i.ct, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !annotation !10
  %i.cu = tail call i32 @__SCT__might_resched() #9 ; 0 uses
  %i.cv = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 784
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef %i.cv, i32 noundef 16, ptr noundef nonnull %i.b, i32 noundef 4) #9
  %i.cz = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.da = getelementptr i8, ptr %i.g, i64 67264
  store i32 %i.cz, ptr %i.da, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.db = getelementptr i8, ptr %i.g, i64 66872
  %i.dc = load i8, ptr %i.db, align 8, !range !11, !noundef !12
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = select i1 %i.dd, i32 43, i32 45
  %i.df = getelementptr i8, ptr %i.g, i64 66873   ; 3 uses
  %i.dg = load i8, ptr %i.df, align 1, !range !11, !noundef !12
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = select i1 %i.dh, i32 43, i32 45
  %i.dj = getelementptr i8, ptr %i.g, i64 66876
  %i.dk = load i8, ptr %i.dj, align 4, !range !11, !noundef !12
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = select i1 %i.dl, i32 43, i32 45
  %i.dn = getelementptr i8, ptr %i.g, i64 66877
  %i.do = load i8, ptr %i.dn, align 1, !range !11, !noundef !12
  %i.dp = trunc nuw i8 %i.do to i1
  %i.dq = select i1 %i.dp, i32 43, i32 45
  %i.dr = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, i32 noundef %i.de, i32 noundef %i.di, i32 noundef %i.dm, i32 noundef %i.dq) #10 ; 0 uses
  %i.ds = getelementptr i8, ptr %i.g, i64 66878
  %i.dt = load i8, ptr %i.ds, align 2, !range !11, !noundef !12
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = select i1 %i.du, i32 43, i32 45
  %i.dw = getelementptr i8, ptr %i.g, i64 66879
  %i.dx = load i8, ptr %i.dw, align 1, !range !11, !noundef !12
  %i.dy = trunc nuw i8 %i.dx to i1
  %i.dz = select i1 %i.dy, i32 43, i32 45
  %i.ea = call i32 (ptr, ...) @_printk(ptr noundef @.str.8, i32 noundef %i.dv, i32 noundef %i.dz) #10 ; 0 uses
  %i.eb = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 784
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = getelementptr i8, ptr %i.ed, i64 48
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = call i32 %i.ef(ptr noundef %i.eb, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef null) #9, !inline_history !15 ; 2 uses
  %.not162 = icmp eq i32 %i.eg, 0
  br i1 %.not162, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @__drm_err(ptr noundef @.str.9) #9
  br label %bb.an

bb.w:                                             ; preds = %bb.u
  %i.eh = load ptr, ptr %i.a, align 16
  store ptr %i.eh, ptr %i.t, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  store ptr %i.ej, ptr %i.aa, align 8
  %i.ek = call i32 @virtio_gpu_alloc_vbufs(ptr noundef nonnull %i.g) #9 ; 2 uses
  %.not163 = icmp eq i32 %i.ek, 0
  br i1 %.not163, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @__drm_err(ptr noundef @.str.10) #9
  br label %bb.am

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i32 0, ptr %i.c, align 4, !annotation !10
  %i.el = call i32 @__SCT__might_resched() #9     ; 0 uses
  %i.em = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 784
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef %i.em, i32 noundef 8, ptr noundef nonnull %i.c, i32 noundef 4) #9
  %i.eq = load i32, ptr %i.c, align 4             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  %i.er = call i32 @llvm.umin.i32(i32 %i.eq, i32 16)
  %i.es = getelementptr i8, ptr %i.g, i64 66576   ; 3 uses
  store i32 %i.er, ptr %i.es, align 8
  %.not164 = icmp eq i32 %i.eq, 0
  br i1 %.not164, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.et = call i32 (ptr, ...) @_printk(ptr noundef @.str.11) #10 ; 0 uses
  store i32 0, ptr %i.es, align 8
  store i8 0, ptr %i.df, align 1
  %i.eu = getelementptr i8, ptr %1, i64 112       ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8
  %i.ew = and i32 %i.ev, -19
  store i32 %i.ew, ptr %i.eu, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ex = call i32 (ptr, ...) @_printk(ptr noundef @.str.12, i32 noundef %i.eq) #10 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i32 0, ptr %i.d, align 4, !annotation !10
  %i.ey = call i32 @__SCT__might_resched() #9     ; 0 uses
  %i.ez = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 784
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = load ptr, ptr %i.fb, align 8
  call void %i.fc(ptr noundef %i.ez, i32 noundef 12, ptr noundef nonnull %i.d, i32 noundef 4) #9
  %i.fd = load i32, ptr %i.d, align 4             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.fe = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, i32 noundef %i.fd) #10 ; 0 uses
  %i.ff = call i32 @virtio_gpu_modeset_init(ptr noundef nonnull %i.g) #9 ; 2 uses
  %.not165 = icmp eq i32 %i.ff, 0
  br i1 %.not165, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ...) @__drm_err(ptr noundef @.str.14) #9
  call void @virtio_gpu_free_vbufs(ptr noundef nonnull %i.g) #9
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
  %i.fg = load ptr, ptr %i.i, align 8
  call fastcc void @virtio_device_ready(ptr noundef %i.fg) #11, !srcloc !16
  %.not166 = icmp eq i32 %i.fd, 0
  br i1 %.not166, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @virtio_gpu_get_capsets(ptr noundef %i.g, i32 noundef %i.fd) #11, !srcloc !17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.fh = load i32, ptr %i.es, align 8
  %.not167 = icmp eq i32 %i.fh, 0
  br i1 %.not167, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fi = load i8, ptr %i.df, align 1, !range !11, !noundef !12
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fk = call i32 @virtio_gpu_cmd_get_edids(ptr noundef nonnull %i.g) #9 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fl = call i32 @virtio_gpu_cmd_get_display_info(ptr noundef nonnull %i.g) #9 ; 0 uses
  call void @virtio_gpu_notify(ptr noundef nonnull %i.g) #9
  %i.fm = call i32 @__SCT__might_resched() #9     ; 0 uses
  %i.fn = getelementptr i8, ptr %i.g, i64 66804   ; 3 uses
  %i.fo = load i8, ptr %i.fn, align 4, !range !11, !noundef !12
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #9
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %.0151 = phi i64 [ 5000, %bb.aj ], [ %spec.store.select9, %bb.al ] ; 2 uses
  %i.fq = call i64 @prepare_to_wait_event(ptr noundef %i.s, ptr noundef nonnull %3, i32 noundef 2) #9 ; 0 uses
  %i.fr = load i8, ptr %i.fn, align 4, !range !11, !noundef !12
  %i.fs = trunc nuw i8 %i.fr to i1
  %.not168 = icmp ne i64 %.0151, 0
  %spec.select.not = select i1 %i.fs, i1 %.not168, i1 false
  br i1 %spec.select.not, label %bb.al, label %select.unfold

bb.al:                                            ; preds = %bb.ak
  %i.ft = call i64 @schedule_timeout(i64 noundef %.0151) #9 ; 2 uses
  %i.fu = load i8, ptr %i.fn, align 4, !range !11, !noundef !12
  %i.fv = trunc nuw i8 %i.fu to i1                ; 2 uses
  %i.fw = icmp ne i64 %i.ft, 0                    ; 2 uses
  %or.cond7 = select i1 %i.fv, i1 true, i1 %i.fw
  %spec.store.select9 = select i1 %or.cond7, i64 %i.ft, i64 1
  %spec.select170.not = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %spec.select170.not, label %bb.ak, label %select.unfold

select.unfold:                                    ; preds = %bb.al, %bb.ak
  call void @finish_wait(ptr noundef %i.s, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.ao

bb.am:                                            ; preds = %bb.ac, %bb.x
  %.0153 = phi i32 [ %i.ek, %bb.x ], [ %i.ff, %bb.ac ]
  %i.fx = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 784
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = getelementptr i8, ptr %i.fz, i64 56
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef %i.fx) #9
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.v, %bb.p
  %.1154 = phi i32 [ %i.eg, %bb.v ], [ %.0153, %bb.am ], [ -16, %bb.p ]
  store ptr null, ptr %i.h, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.af, %select.unfold, %bb.ai, %bb.b, %bb.a, %bb.an
  %.0 = phi i32 [ %.1154, %bb.an ], [ -12, %bb.b ], [ -19, %bb.a ], [ 0, %bb.ai ], [ 0, %select.unfold ], [ 0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_gpu_ctrl_ack(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_gpu_cursor_ack(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_gpu_dequeue_ctrl_func(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_gpu_dequeue_cursor_func(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @virtio_gpu_config_changed_work_func(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %1 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 -67136     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !annotation !10
  %i.d = tail call i32 @__SCT__might_resched() #9 ; 0 uses
  %i.e = getelementptr i8, ptr %0, i64 -67128     ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 784
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef %i.f, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 4) #9
  %i.j = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 -560
  %i.m = load i32, ptr %i.l, align 8
  %.not52 = icmp eq i32 %i.m, 0
  br i1 %.not52, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %0, i64 -263
  %i.o = load i8, ptr %i.n, align 1, !range !11, !noundef !12
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = call i32 @virtio_gpu_cmd_get_edids(ptr noundef %i.c) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = call i32 @virtio_gpu_cmd_get_display_info(ptr noundef %i.c) #9 ; 0 uses
  call void @virtio_gpu_notify(ptr noundef %i.c) #9
  %i.s = call i32 @__SCT__might_resched() #9      ; 0 uses
  %i.t = getelementptr i8, ptr %0, i64 -332       ; 3 uses
  %i.u = load i8, ptr %i.t, align 4, !range !11, !noundef !12
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %1, i32 noundef 0) #9
  %i.w = getelementptr i8, ptr %0, i64 -360       ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.050 = phi i64 [ 5000, %bb.f ], [ %spec.store.select9, %bb.h ] ; 2 uses
  %i.x = call i64 @prepare_to_wait_event(ptr noundef %i.w, ptr noundef nonnull %1, i32 noundef 2) #9 ; 0 uses
  %i.y = load i8, ptr %i.t, align 4, !range !11, !noundef !12
  %i.z = trunc nuw i8 %i.y to i1
  %.not53 = icmp ne i64 %.050, 0
  %spec.select.not = select i1 %i.z, i1 %.not53, i1 false
  br i1 %spec.select.not, label %bb.h, label %select.unfold

bb.h:                                             ; preds = %bb.g
  %i.aa = call i64 @schedule_timeout(i64 noundef %.050) #9 ; 2 uses
  %i.ab = load i8, ptr %i.t, align 4, !range !11, !noundef !12
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %i.ad = icmp ne i64 %i.aa, 0                    ; 2 uses
  %or.cond7 = select i1 %i.ac, i1 true, i1 %i.ad
  %spec.store.select9 = select i1 %or.cond7, i64 %i.aa, i64 1
  %spec.select55.not = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %spec.select55.not, label %bb.g, label %select.unfold

select.unfold:                                    ; preds = %bb.h, %bb.g
  call void @finish_wait(ptr noundef %i.w, ptr noundef nonnull %1) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.i

bb.i:                                             ; preds = %select.unfold, %bb.e
  %i.ae = load ptr, ptr %i.c, align 8
  call void @drm_kms_helper_hotplug_event(ptr noundef %i.ae) #9
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.i ], [ 1, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 %.0, ptr %i.b, align 4
  %i.af = call i32 @__SCT__might_resched() #9     ; 0 uses
  %i.ag = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 784
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef %i.ag, i32 noundef 4, ptr noundef nonnull %i.b, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_gpu_array_put_free_work(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @virtio_gpu_alloc_vbufs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @virtio_gpu_modeset_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @virtio_device_ready(ptr noundef %0) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 784        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call zeroext i8 %i.d(ptr noundef %0) #9 ; 2 uses
  %i.f = and i8 %i.e, 4
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "501: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 501b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 501) #8, !srcloc !19
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.16, ptr @.str.20, i32 348, i32 2305, i64 16) #8, !srcloc !20
  tail call void asm sideeffect "502: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 502b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 502) #8, !srcloc !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = or i8 %i.e, 4
  tail call void %i.i(ptr noundef %0, i8 noundef zeroext %i.j) #9
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @virtio_gpu_get_capsets(ptr noundef nonnull initializes((67224, 67232)) %0, i32 noundef range(i32 1, 0) %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.wait_queue_entry, align 8   ; 6 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = sext i32 %1 to i64
  %i.c = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -2147483648, 2147483648) %i.b, i64 12) ; 2 uses
  %i.d = extractvalue { i64, i1 } %i.c, 1
  br i1 %i.d, label %drmm_kcalloc.exit.thread, label %drmm_kcalloc.exit, !prof !23

drmm_kcalloc.exit.thread:                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 67224
  store ptr null, ptr %i.e, align 8
  br label %bb.b

drmm_kcalloc.exit:                                ; preds = %bb.a
  %i.f = extractvalue { i64, i1 } %i.c, 0
  %i.g = tail call noalias ptr @drmm_kmalloc(ptr noundef %i.a, i64 noundef %i.f, i32 noundef 3520) #9 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 67224      ; 7 uses
  store ptr %i.g, ptr %i.h, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %drmm_kcalloc.exit
  %i.i = icmp sgt i32 %1, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr i8, ptr %0, i64 66776      ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 67240      ; 2 uses
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %drmm_kcalloc.exit.thread, %drmm_kcalloc.exit
  tail call void (ptr, ...) @__drm_err(ptr noundef @.str.21) #9
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.l = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.m = call i32 @virtio_gpu_cmd_get_capset_info(ptr noundef nonnull %0, i32 noundef %i.l) #9 ; 0 uses
  call void @virtio_gpu_notify(ptr noundef nonnull %0) #9
  %i.n = call i32 @__SCT__might_resched() #9      ; 0 uses
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = getelementptr [12 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4
  %.not85.not = icmp eq i32 %i.q, 0
  br i1 %.not85.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false), !annotation !10
  call void @init_wait_entry(ptr noundef nonnull %2, i32 noundef 0) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.080 = phi i64 [ 5000, %bb.d ], [ %spec.store.select11, %bb.f ] ; 2 uses
  %i.r = call i64 @prepare_to_wait_event(ptr noundef %i.j, ptr noundef nonnull %2, i32 noundef 2) #9 ; 0 uses
  %i.s = load ptr, ptr %i.h, align 8
  %i.t = getelementptr [12 x i8], ptr %i.s, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4
  %.not86 = icmp eq i32 %i.u, 0                   ; 2 uses
  %3 = icmp ne i64 %.080, 0                       ; 2 uses
  %or.cond4 = select i1 %.not86, i1 true, i1 %3
  %spec.store.select10 = select i1 %or.cond4, i64 %.080, i64 1 ; 2 uses
  %spec.select.not = select i1 %.not86, i1 %3, i1 false
  br i1 %spec.select.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = call i64 @schedule_timeout(i64 noundef %spec.store.select10) #9 ; 2 uses
  %i.w = load ptr, ptr %i.h, align 8
  %i.x = getelementptr [12 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4
  %.not88 = icmp eq i32 %i.y, 0                   ; 2 uses
  %i.z = icmp ne i64 %i.v, 0                      ; 2 uses
  %or.cond7 = select i1 %.not88, i1 true, i1 %i.z
  %spec.store.select11 = select i1 %or.cond7, i64 %i.v, i64 1 ; 2 uses
  %spec.select91.not = select i1 %.not88, i1 %i.z, i1 false
  br i1 %spec.select91.not, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.181.ph = phi i64 [ %spec.store.select10, %bb.e ], [ %spec.store.select11, %bb.f ]
  call void @finish_wait(ptr noundef %i.j, ptr noundef nonnull %2) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.aa = and i64 %.181.ph, 4294967295
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @__drm_err(ptr noundef @.str.22, i32 noundef %i.l) #9
  br label %.thread99

.thread:                                          ; preds = %bb.c, %bb.g
  %i.ac = load ptr, ptr %i.h, align 8
  %i.ad = getelementptr [12 x i8], ptr %i.ac, i64 %indvars.iv ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 3 uses
  %i.af = add i32 %i.ae, -64
  %or.cond = icmp ult i32 %i.af, -63
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.thread
  call void (ptr, ...) @__drm_err(ptr noundef @.str.23, i32 noundef %i.ae) #9
  br label %.thread99

.thread99:                                        ; preds = %bb.i, %bb.h
  %i.ag = getelementptr i8, ptr %0, i64 66800     ; 2 uses
  call void @_raw_spin_lock(ptr noundef %i.ag) #9
  %i.ah = load ptr, ptr %i.h, align 8
  call void @drmm_kfree(ptr noundef %i.a, ptr noundef %i.ah) #9
  store ptr null, ptr %i.h, align 8
  call void @_raw_spin_unlock(ptr noundef %i.ag) #9
  br label %bb.k

bb.j:                                             ; preds = %.thread
  %i.ai = shl nuw i32 1, %i.ae
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load i64, ptr %i.k, align 8
  %i.al = or i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.k, align 8
  %i.am = load i32, ptr %i.ad, align 4
  %i.an = getelementptr i8, ptr %i.ad, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = getelementptr i8, ptr %i.ad, i64 8
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = call i32 (ptr, ...) @_printk(ptr noundef @.str.24, i32 noundef %i.l, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.aq) #10 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.j, %.preheader
  %i.as = getelementptr i8, ptr %0, i64 67232
  store i32 %1, ptr %i.as, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %.thread99, %bb.b
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @virtio_gpu_cmd_get_edids(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @virtio_gpu_cmd_get_display_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_gpu_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_gpu_free_vbufs(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @virtio_gpu_deinit(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr i8, ptr %i.b, i64 67168
  %i.d = tail call zeroext i1 @flush_work(ptr noundef %i.c) #9 ; 0 uses
  %i.e = getelementptr i8, ptr %i.b, i64 66624
  %i.f = tail call zeroext i1 @flush_work(ptr noundef %i.e) #9 ; 0 uses
  %i.g = getelementptr i8, ptr %i.b, i64 66704
  %i.h = tail call zeroext i1 @flush_work(ptr noundef %i.g) #9 ; 0 uses
  %i.i = getelementptr i8, ptr %i.b, i64 67136
  %i.j = tail call zeroext i1 @flush_work(ptr noundef %i.i) #9 ; 0 uses
  %i.k = getelementptr i8, ptr %i.b, i64 8        ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @virtio_reset_device(ptr noundef %i.l) #9
  %i.m = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 784
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef %i.m) #9
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @virtio_gpu_release(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @virtio_gpu_modeset_fini(ptr noundef nonnull %i.b) #9
  tail call void @virtio_gpu_free_vbufs(ptr noundef nonnull %i.b) #9
  %i.c = getelementptr i8, ptr %i.b, i64 67248    ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not15.i = icmp eq ptr %i.d, %i.c
  br i1 %.not15.i, label %virtio_gpu_cleanup_cap_cache.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi ptr [ %.014.i, %.lr.ph.i ], [ %i.d, %bb.b ] ; 3 uses
  %.014.i = load ptr, ptr %.016.i, align 8        ; 2 uses
  %i.e = getelementptr i8, ptr %.016.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @kfree(ptr noundef %i.f) #9
  tail call void @kfree(ptr noundef %.016.i) #9
  %.not.i = icmp eq ptr %.014.i, %i.c
  br i1 %.not.i, label %virtio_gpu_cleanup_cap_cache.exit, label %.lr.ph.i, !llvm.loop !24

virtio_gpu_cleanup_cap_cache.exit:                ; preds = %.lr.ph.i, %bb.b
  %i.g = getelementptr i8, ptr %i.b, i64 66877
  %i.h = load i8, ptr %i.g, align 1, !range !11, !noundef !12
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %virtio_gpu_cleanup_cap_cache.exit
  %i.j = getelementptr i8, ptr %i.b, i64 66896
  tail call void @drm_mm_takedown(ptr noundef %i.j) #9
  br label %bb.d

bb.d:                                             ; preds = %virtio_gpu_cleanup_cap_cache.exit, %bb.c, %bb.a
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @virtio_gpu_modeset_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @virtio_gpu_driver_open(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 66872
  %i.d = load i8, ptr %i.c, align 8, !range !11, !noundef !12
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_kzalloc_noprof.exit, label %bb.e

_kzalloc_noprof.exit:                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.g = tail call noalias align 8 dereferenceable_or_null(128) ptr @__kmalloc_cache_noprof(ptr noundef %i.f, i32 noundef 3520, i64 noundef range(i64 -1, 129) 128) #12 ; 5 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_kzalloc_noprof.exit
  %i.h = getelementptr i8, ptr %i.g, i64 32
  tail call void @mutex_init_generic(ptr noundef %i.h) #9
  %i.i = getelementptr i8, ptr %i.b, i64 66856
  %i.j = tail call i32 @ida_alloc_range(ptr noundef %i.i, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #9 ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @kfree(ptr noundef nonnull %i.g) #9
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.l = add nuw i32 %i.j, 1
  store i32 %i.l, ptr %i.g, align 8
  %i.m = getelementptr i8, ptr %1, i64 136
  store ptr %i.g, ptr %i.m, align 8
  br label %bb.e

bb.e:                                             ; preds = %_kzalloc_noprof.exit, %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ 0, %bb.d ], [ 0, %bb.a ], [ -12, %_kzalloc_noprof.exit ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2
end_hunk_0
