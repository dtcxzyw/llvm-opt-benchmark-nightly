Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_tv?download=true
inline.NumInlined: 122
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@intel_tv_init:bb.a
  %.not55 = icmp eq ptr %i.an, null
  br i1 %.not55, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call ptr @intel_connector_alloc() #10 ; 10 uses
  %.not56 = icmp eq ptr %i.ao, null
  br i1 %.not56, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @kfree(ptr noundef nonnull %i.an) #10
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr i8, ptr %i.ao, i64 2708
  store i8 2, ptr %i.ap, align 4
  %i.aq = getelementptr i8, ptr %i.ao, i64 1576
  store i8 2, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %0, align 8
  %i.as = tail call i32 @drm_connector_init(ptr noundef %i.ar, ptr noundef nonnull %i.ao, ptr noundef @intel_tv_connector_funcs, i32 noundef 6) #10 ; 0 uses
  %i.at = load ptr, ptr %0, align 8
  %i.au = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %i.at, ptr noundef nonnull %i.an, ptr noundef @intel_tv_enc_funcs, i32 noundef 4, ptr noundef @.str.1) #10 ; 0 uses
  %i.av = getelementptr i8, ptr %i.an, i64 280
  store ptr @intel_tv_compute_config, ptr %i.av, align 8
  %i.aw = getelementptr i8, ptr %i.an, i64 376
  store ptr @intel_tv_get_config, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %i.an, i64 304
  store ptr @intel_tv_pre_enable, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %i.an, i64 312
  store ptr @intel_enable_tv, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %i.an, i64 320
  store ptr @intel_disable_tv, ptr %i.az, align 8
  %i.ba = getelementptr i8, ptr %i.an, i64 368
  store ptr @intel_tv_get_hw_state, ptr %i.ba, align 8
  %i.bb = getelementptr i8, ptr %i.ao, i64 2264
  store ptr @intel_connector_get_hw_state, ptr %i.bb, align 8
  tail call void @intel_connector_attach_encoder(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.an) #10
  %i.bc = getelementptr i8, ptr %i.an, i64 152
  store i32 5, ptr %i.bc, align 8
  %i.bd = getelementptr i8, ptr %i.an, i64 492
  store i32 43, ptr %i.bd, align 4
  %i.be = getelementptr i8, ptr %i.an, i64 156
  store i32 -1, ptr %i.be, align 4
  %i.bf = getelementptr i8, ptr %i.an, i64 162
  store i8 -1, ptr %i.bf, align 2
  %i.bg = getelementptr i8, ptr %i.an, i64 160
  store i16 0, ptr %i.bg, align 8
  %i.bh = getelementptr i8, ptr %i.an, i64 504
  store i32 0, ptr %i.bh, align 8
  %i.bi = getelementptr i8, ptr %i.ao, i64 1584
  store ptr @intel_tv_connector_helper_funcs, ptr %i.bi, align 8
  %i.bj = load ptr, ptr %i.ao, align 8            ; 2 uses
  %.not.i63 = icmp eq ptr %i.bj, null
  br i1 %.not.i63, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = tail call ptr @__drm_to_display(ptr noundef nonnull %i.bj) #10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bl = phi ptr [ %i.bk, %bb.j ], [ null, %bb.i ] ; 7 uses
  %i.bm = getelementptr i8, ptr %i.ao, i64 1960
  %i.bn = load ptr, ptr %i.bm, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false), !annotation !15
  %i.bp = getelementptr i8, ptr %i.bn, i64 56     ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bn, i64 60     ; 2 uses
  store i32 54, ptr %i.bq, align 4
  %i.br = getelementptr i8, ptr %i.bn, i64 68     ; 2 uses
  store i32 36, ptr %i.br, align 4
  %i.bs = getelementptr i8, ptr %i.bn, i64 64     ; 2 uses
  store i32 46, ptr %i.bs, align 8
  store i32 37, ptr %i.bp, align 8
  %i.bt = getelementptr i8, ptr %i.bn, i64 72     ; 2 uses
  store i32 0, ptr %i.bt, align 8
  %i.bu = getelementptr i8, ptr %i.bl, i64 1168   ; 2 uses
  store ptr @.str.7, ptr %i.a, align 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @.str.8, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.9, ptr %i.bw, align 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @.str.10, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @.str.11, ptr %i.by, align 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @.str.12, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @.str.13, ptr %i.ca, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @.str.14, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @.str.15, ptr %i.cc, align 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr @.str.16, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr @.str.17, ptr %i.ce, align 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr @.str.18, ptr %i.cf, align 8
  store ptr @.str.19, ptr %i.bo, align 16
  %i.cg = load i16, ptr %i.bu, align 8
  %i.ch = icmp eq i16 %i.cg, 3
  br i1 %i.ch, label %intel_tv_add_properties.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr @.str.20, ptr %i.ci, align 8
  %i.cj = load i16, ptr %i.bu, align 8
  %i.ck = icmp eq i16 %i.cj, 3
  br i1 %i.ck, label %intel_tv_add_properties.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr @.str.21, ptr %i.cl, align 16
  br label %intel_tv_add_properties.exit

intel_tv_add_properties.exit:                     ; preds = %bb.k, %bb.l, %bb.m
  %.0.lcssa.i = phi i32 [ 13, %bb.k ], [ 15, %bb.m ], [ 14, %bb.l ]
  %i.cm = load ptr, ptr %i.bl, align 8
  %i.cn = call i32 @drm_mode_create_tv_properties_legacy(ptr noundef %i.cm, i32 noundef %.0.lcssa.i, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.co = getelementptr i8, ptr %i.ao, i64 64     ; 5 uses
  %i.cp = load ptr, ptr %i.bl, align 8
  %i.cq = getelementptr i8, ptr %i.cp, i64 1128
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load i32, ptr %i.bt, align 8
  %i.ct = zext i32 %i.cs to i64
  call void @drm_object_attach_property(ptr noundef %i.co, ptr noundef %i.cr, i64 noundef %i.ct) #10
  %i.cu = load ptr, ptr %i.bl, align 8
  %i.cv = getelementptr i8, ptr %i.cu, i64 1144
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load i32, ptr %i.bq, align 4
  %i.cy = zext i32 %i.cx to i64
  call void @drm_object_attach_property(ptr noundef %i.co, ptr noundef %i.cw, i64 noundef %i.cy) #10
  %i.cz = load ptr, ptr %i.bl, align 8
  %i.da = getelementptr i8, ptr %i.cz, i64 1160
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = load i32, ptr %i.br, align 4
  %i.dd = zext i32 %i.dc to i64
  call void @drm_object_attach_property(ptr noundef %i.co, ptr noundef %i.db, i64 noundef %i.dd) #10
  %i.de = load ptr, ptr %i.bl, align 8
  %i.df = getelementptr i8, ptr %i.de, i64 1152
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = load i32, ptr %i.bs, align 8
  %i.di = zext i32 %i.dh to i64
  call void @drm_object_attach_property(ptr noundef %i.co, ptr noundef %i.dg, i64 noundef %i.di) #10
  %i.dj = load ptr, ptr %i.bl, align 8
  %i.dk = getelementptr i8, ptr %i.dj, i64 1168
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = load i32, ptr %i.bp, align 8
  %i.dn = zext i32 %i.dm to i64
  call void @drm_object_attach_property(ptr noundef %i.co, ptr noundef %i.dl, i64 noundef %i.dn) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %bb.e, %bb.a, %intel_tv_add_properties.exit, %bb.h, %__drm_to_dev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_bios_is_tv_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @intel_connector_alloc() local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_tv_compute_config(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 5 uses
  %i.d = getelementptr i8, ptr %1, i64 336
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr i8, ptr %2, i64 72
  %.val = load i32, ptr %i.g, align 8
  %i.h = sext i32 %.val to i64
  %i.i = getelementptr [112 x i8], ptr @tv_modes, i64 %i.h ; 4 uses
  %i.j = getelementptr i8, ptr %1, i64 616        ; 10 uses
  %i.k = getelementptr i8, ptr %1, i64 648
  %i.l = load i16, ptr %i.k, align 8              ; 5 uses
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr i8, ptr %1, i64 662        ; 2 uses
  %i.o = load i16, ptr %i.n, align 2              ; 4 uses
  %i.p = zext i16 %i.o to i32                     ; 3 uses
  %.not100 = icmp eq ptr %i.i, null
  br i1 %.not100, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %1, i64 640        ; 4 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, 32
  %.not101 = icmp eq i32 %i.s, 0
  br i1 %.not101, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %1, i64 4396
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %1, i64 4392
  store i32 0, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.e, %bb.f
  %i.y = phi ptr [ %i.x, %bb.f ], [ null, %bb.e ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.y, i32 noundef 2, ptr noundef @.str.4) #10
  %i.z = getelementptr i8, ptr %1, i64 1240
  store i32 24, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %i.i, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %1, i64 1320      ; 2 uses
  store i32 %i.ab, ptr %i.ac, align 8
  %i.ad = tail call i32 @intel_dpll_crtc_compute_clock(ptr noundef %i.e, ptr noundef %i.f) #10 ; 2 uses
  %.not102 = icmp eq i32 %i.ad, 0
  br i1 %.not102, label %bb.g, label %bb.u

bb.g:                                             ; preds = %__drm_to_dev.exit
  %i.ae = getelementptr i8, ptr %1, i64 896
  store i8 1, ptr %i.ae, align 8
  %i.af = load i32, ptr %i.ac, align 8
  tail call fastcc void @intel_tv_mode_to_mode(ptr noundef %i.j, ptr noundef nonnull %i.i, i32 noundef %i.af) #13, !srcloc !16
  tail call void @drm_mode_set_crtcinfo(ptr noundef %i.j, i32 noundef 0) #10
  %i.ag = getelementptr i8, ptr %i.c, i64 1168
  %.val105 = load i16, ptr %i.ag, align 8
  %i.ah = icmp eq i16 %.val105, 3
  %i.ai = icmp ugt i16 %i.l, 1024
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  %.pre = load i16, ptr %i.n, align 2             ; 2 uses
  br i1 %i.aj, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre122 = zext i16 %.pre to i32
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr i8, ptr %2, i64 56
  %.val107 = load i32, ptr %i.ak, align 8         ; 2 uses
  %i.al = getelementptr i8, ptr %2, i64 68
  %.val108 = load i32, ptr %i.al, align 4         ; 2 uses
  %i.am = zext i16 %.pre to i32                   ; 2 uses
  %i.an = add i32 %.val107, %.val108
  %i.ao = sub i32 %i.am, %i.an
  %.not113 = icmp eq i32 %i.ao, %i.p
  br i1 %.not113, label %bb.i, label %bb.r

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.pre-phi = phi i32 [ %.pre122, %._crit_edge ], [ %i.am, %bb.h ]
  %i.ap = sub nsw i32 %.pre-phi, %i.p             ; 4 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i109 = icmp eq ptr %i.ar, null
  br i1 %.not.i109, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  br label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.au = getelementptr i8, ptr %2, i64 56
  %i.av = getelementptr i8, ptr %2, i64 68
  %i.aw = load i32, ptr %i.av, align 4            ; 2 uses
  %i.ax = load i32, ptr %i.au, align 8
  %i.ay = add i32 %i.ax, %i.aw                    ; 2 uses
  %.not103 = icmp eq i32 %i.ay, 0
  br i1 %.not103, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = mul i32 %i.aw, %i.ap
  %i.ba = sdiv i32 %i.az, %i.ay
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bb = lshr i32 %i.ap, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i32 [ %i.ba, %bb.m ], [ %i.bb, %bb.n ] ; 2 uses
  %i.bc = sub i32 %i.ap, %.0
  %i.bd = trunc i32 %.0 to i16
  %i.be = getelementptr i8, ptr %2, i64 440
  store i16 %i.bd, ptr %i.be, align 8
  %i.bf = trunc i32 %i.bc to i16
  %i.bg = getelementptr i8, ptr %2, i64 442
  store i16 %i.bf, ptr %i.bg, align 2
  %i.bh = getelementptr i8, ptr %2, i64 444
  store i8 1, ptr %i.bh, align 4
  %3 = getelementptr i8, ptr %i.i, i64 22
  %4 = load i8, ptr %3, align 2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = load i32, ptr %i.j, align 8
  %i.bj = sdiv i32 %i.bi, 2
  store i32 %i.bj, ptr %i.j, align 8
  %i.bk = getelementptr i8, ptr %1, i64 644       ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = sdiv i32 %i.bl, 2
  store i32 %i.bm, ptr %i.bk, align 4
  %i.bn = load i32, ptr %i.q, align 8
  %i.bo = or i32 %i.bn, 16
  store i32 %i.bo, ptr %i.q, align 8
  br label %.thread

bb.q:                                             ; preds = %bb.k, %bb.j
  %i.bp = phi ptr [ %i.at, %bb.k ], [ null, %bb.j ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bp, i32 noundef 2, ptr noundef @.str.5) #10
  br label %bb.u

bb.r:                                             ; preds = %bb.h
  %i.bq = trunc i32 %.val108 to i16
  %i.br = getelementptr i8, ptr %2, i64 440
  store i16 %i.bq, ptr %i.br, align 8
  %i.bs = trunc i32 %.val107 to i16
  %i.bt = getelementptr i8, ptr %2, i64 442
  store i16 %i.bs, ptr %i.bt, align 2
  %i.bu = getelementptr i8, ptr %2, i64 444
  store i8 0, ptr %i.bu, align 4
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.o, %bb.r
  %i.bv = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i111 = icmp eq ptr %i.bv, null
  br i1 %.not.i111, label %__drm_to_dev.exit112, label %bb.s

bb.s:                                             ; preds = %.thread
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  br label %__drm_to_dev.exit112

__drm_to_dev.exit112:                             ; preds = %.thread, %bb.s
  %i.by = phi ptr [ %i.bx, %bb.s ], [ null, %.thread ]
  %i.bz = getelementptr i8, ptr %1, i64 696       ; 2 uses
  %i.ca = tail call i32 @drm_mode_vrefresh(ptr noundef %i.j) #10
  %i.cb = load i32, ptr %i.j, align 8
  %i.cc = getelementptr i8, ptr %1, i64 620       ; 3 uses
  %i.cd = load i16, ptr %i.cc, align 4
  %i.ce = zext i16 %i.cd to i32
  %i.cf = getelementptr i8, ptr %1, i64 622       ; 3 uses
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = zext i16 %i.cg to i32
  %i.ci = getelementptr i8, ptr %1, i64 624       ; 3 uses
  %i.cj = load i16, ptr %i.ci, align 8
  %i.ck = zext i16 %i.cj to i32
  %i.cl = getelementptr i8, ptr %1, i64 626       ; 3 uses
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = zext i16 %i.cm to i32
  %i.co = getelementptr i8, ptr %1, i64 630       ; 3 uses
  %i.cp = load i16, ptr %i.co, align 2
  %i.cq = zext i16 %i.cp to i32
  %i.cr = getelementptr i8, ptr %1, i64 632       ; 3 uses
  %i.cs = load i16, ptr %i.cr, align 8
  %i.ct = zext i16 %i.cs to i32
  %i.cu = getelementptr i8, ptr %1, i64 634       ; 3 uses
  %i.cv = load i16, ptr %i.cu, align 2
  %i.cw = zext i16 %i.cv to i32
  %i.cx = getelementptr i8, ptr %1, i64 636       ; 3 uses
  %i.cy = load i16, ptr %i.cx, align 4
  %i.cz = zext i16 %i.cy to i32
  %i.da = getelementptr i8, ptr %1, i64 678
  %i.db = load i8, ptr %i.da, align 2
  %i.dc = zext i8 %i.db to i32
  %i.dd = load i32, ptr %i.q, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.by, i32 noundef 2, ptr noundef @.str.6, ptr noundef %i.bz, i32 noundef %i.ca, i32 noundef %i.cb, i32 noundef %i.ce, i32 noundef %i.ch, i32 noundef %i.ck, i32 noundef %i.cn, i32 noundef %i.cq, i32 noundef %i.ct, i32 noundef %i.cw, i32 noundef %i.cz, i32 noundef %i.dc, i32 noundef %i.dd) #10
  %i.de = getelementptr i8, ptr %2, i64 60
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = getelementptr i8, ptr %2, i64 64
  %i.dh = load i32, ptr %i.dg, align 8            ; 3 uses
  %i.di = load i16, ptr %i.cf, align 2
  %i.dj = zext i16 %i.di to i32
  %i.dk = load i16, ptr %i.cc, align 4
  %i.dl = zext i16 %i.dk to i32                   ; 3 uses
  %i.dm = add i32 %i.dh, %i.dj
  %i.dn = sub i32 %i.dm, %i.dl
  %i.do = load i16, ptr %i.ci, align 8
  %i.dp = zext i16 %i.do to i32
  %i.dq = sub i32 %i.dh, %i.dl
  %i.dr = add i32 %i.dq, %i.dp
  %i.ds = load i16, ptr %i.cl, align 2
  %i.dt = zext i16 %i.ds to i32                   ; 4 uses
  %i.du = mul nuw i32 %i.dt, %i.m
  %i.dv = add i32 %i.dh, %i.df
  %i.dw = sub i32 %i.dl, %i.dv
  %i.dx = sdiv i32 %i.du, %i.dw                   ; 4 uses
  %i.dy = load i32, ptr %i.j, align 8
  %i.dz = mul i32 %i.dy, %i.dx
  %i.ea = sdiv i32 %i.dz, %i.dt                   ; 2 uses
  store i32 %i.ea, ptr %i.j, align 8
  store i16 %i.l, ptr %i.cc, align 4
  %i.eb = mul i32 %i.dx, %i.dn
  %i.ec = sdiv i32 %i.eb, %i.dt
  %i.ed = trunc i32 %i.ec to i16
  %i.ee = add i16 %i.l, %i.ed
  store i16 %i.ee, ptr %i.cf, align 2
  %i.ef = mul i32 %i.dr, %i.dx
  %i.eg = sdiv i32 %i.ef, %i.dt
  %i.eh = trunc i32 %i.eg to i16
  %i.ei = add i16 %i.l, %i.eh
  store i16 %i.ei, ptr %i.ci, align 8
  %i.ej = trunc i32 %i.dx to i16
  store i16 %i.ej, ptr %i.cl, align 2
  %i.ek = getelementptr i8, ptr %2, i64 440
  %i.el = load i16, ptr %i.ek, align 8
  %i.em = zext i16 %i.el to i32
  %i.en = getelementptr i8, ptr %2, i64 442
  %i.eo = load i16, ptr %i.en, align 2
  %i.ep = zext i16 %i.eo to i32                   ; 3 uses
  %i.eq = load i16, ptr %i.cr, align 8
  %i.er = zext i16 %i.eq to i32
  %i.es = load i16, ptr %i.co, align 2
  %i.et = zext i16 %i.es to i32                   ; 3 uses
  %i.eu = add nuw nsw i32 %i.er, %i.ep
  %i.ev = sub nsw i32 %i.eu, %i.et
  %i.ew = load i16, ptr %i.cu, align 2
  %i.ex = zext i16 %i.ew to i32
  %i.ey = sub nsw i32 %i.ep, %i.et
  %i.ez = add nsw i32 %i.ey, %i.ex
  %i.fa = load i16, ptr %i.cx, align 4
  %i.fb = zext i16 %i.fa to i32                   ; 4 uses
  %i.fc = mul nuw i32 %i.fb, %i.p
  %i.fd = add nuw nsw i32 %i.ep, %i.em
  %i.fe = sub nsw i32 %i.et, %i.fd
  %i.ff = sdiv i32 %i.fc, %i.fe                   ; 4 uses
  %i.fg = mul i32 %i.ff, %i.ea
  %i.fh = sdiv i32 %i.fg, %i.fb
  store i32 %i.fh, ptr %i.j, align 8
  store i16 %i.o, ptr %i.co, align 2
  %i.fi = mul i32 %i.ff, %i.ev
  %i.fj = sdiv i32 %i.fi, %i.fb
  %i.fk = trunc i32 %i.fj to i16
  %i.fl = add i16 %i.o, %i.fk
  store i16 %i.fl, ptr %i.cr, align 8
  %i.fm = mul i32 %i.ez, %i.ff
  %i.fn = sdiv i32 %i.fm, %i.fb
  %i.fo = trunc i32 %i.fn to i16
  %i.fp = add i16 %i.o, %i.fo
  store i16 %i.fp, ptr %i.cu, align 2
  %i.fq = trunc i32 %i.ff to i16
  store i16 %i.fq, ptr %i.cx, align 4
  tail call void @drm_mode_set_crtcinfo(ptr noundef %i.j, i32 noundef 0) #10
  store i8 0, ptr %i.bz, align 8
  %i.fr = getelementptr i8, ptr %i.c, i64 8
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = and i64 %i.fs, 16384
  %.not104 = icmp eq i64 %i.ft, 0
  br i1 %.not104, label %bb.u, label %bb.t

bb.t:                                             ; preds = %__drm_to_dev.exit112
  %i.fu = getelementptr i8, ptr %1, i64 1328      ; 2 uses
  %i.fv = load i8, ptr %i.fu, align 8
  %i.fw = or i8 %i.fv, 4
  store i8 %i.fw, ptr %i.fu, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %__drm_to_dev.exit112, %bb.t, %__drm_to_dev.exit, %bb.d, %bb.c
  %.1 = phi i32 [ -22, %bb.c ], [ -22, %bb.d ], [ %i.ad, %__drm_to_dev.exit ], [ -22, %bb.q ], [ 0, %bb.t ], [ 0, %__drm_to_dev.exit112 ]
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_tv_get_config(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.drm_display_mode, align 8   ; 19 uses
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %2, i8 0, i64 120, i1 false)
  %i.d = getelementptr i8, ptr %1, i64 648
  %i.e = load i16, ptr %i.d, align 8              ; 4 uses
  %i.f = zext i16 %i.e to i32
  %i.g = getelementptr i8, ptr %1, i64 662
  %i.h = load i16, ptr %i.g, align 2              ; 4 uses
  %i.i = zext i16 %i.h to i32
  %i.j = getelementptr i8, ptr %1, i64 888        ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = or i32 %i.k, 32
  store i32 %i.l, ptr %i.j, align 8
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425984) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.m = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 144
  %i.o = load ptr, ptr %i.n, align 8
end_hunk_0
begin_hunk_1_@intel_tv_get_config:bb.a
  %i.bw = sub nsw i16 %i.al, %i.ao                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  store i16 %i.bw, ptr %i.bx, align 4
  %i.by = sub nsw i16 %i.ah, %i.ao                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 4 uses
  store i16 %i.by, ptr %i.bz, align 2
  %i.ca = and i16 %i.aj, 255
  %i.cb = add nsw i16 %i.by, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i16 %i.cb, ptr %i.cc, align 8
  %i.cd = add nuw nsw i16 %i.ah, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 4 uses
  store i16 %i.cd, ptr %i.ce, align 2
  %i.cf = trunc i32 %i.bc to i1                   ; 2 uses
  %i.cg = add nuw nsw i32 %i.aq, 1                ; 2 uses
  %i.ch = shl nuw nsw i32 %i.aq, 1                ; 2 uses
  %i.ci = add nuw nsw i32 %i.ch, 2
  %.0.i.i = select i1 %i.cf, i32 %i.cg, i32 %i.ci ; 2 uses
  %i.cj = trunc nuw nsw i32 %.0.i.i to i16        ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 3 uses
  store i16 %i.cj, ptr %i.ck, align 2
  br i1 %i.cf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cl = add nuw nsw i32 %i.az, %i.cg
  %i.cm = trunc nuw nsw i32 %i.cl to i16
  %i.cn = add nuw nsw i16 %i.cm, 1                ; 2 uses
  %i.co = and i16 %i.ax, 255
  %i.cp = add nuw nsw i16 %i.cn, %i.co
  %narrow = add nuw nsw i8 %i.at, 1
  %i.cq = zext nneg i8 %narrow to i16
  br label %intel_tv_mode_to_mode.exit

bb.i:                                             ; preds = %bb.g
  %i.cr = add nuw nsw i32 %i.ch, 3
  %i.cs = add nuw nsw i32 %i.cr, %i.ba
  %i.ct = add nuw nsw i32 %i.cs, %i.az
  %i.cu = trunc nuw nsw i32 %i.ct to i16
  %i.cv = add nuw nsw i16 %i.cu, 1                ; 2 uses
  %i.cw = shl i16 %i.ax, 1
  %i.cx = and i16 %i.cw, 510
  %i.cy = add nuw nsw i16 %i.cv, %i.cx
  %i.cz = zext nneg i8 %i.at to i16
  %i.da = add nuw nsw i16 %i.av, 2
  %i.db = add nuw nsw i16 %i.da, %i.cz
  br label %intel_tv_mode_to_mode.exit

intel_tv_mode_to_mode.exit:                       ; preds = %bb.h, %bb.i
  %.sink80 = phi i16 [ %i.cn, %bb.h ], [ %i.cv, %bb.i ]
  %.sink = phi i16 [ %i.cp, %bb.h ], [ %i.cy, %bb.i ]
  %i.dc = phi i32 [ 112, %bb.h ], [ 105, %bb.i ]
  %.pn = phi i16 [ %i.cq, %bb.h ], [ %i.db, %bb.i ]
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i16 %.sink80, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 18 ; 4 uses
  store i16 %.sink, ptr %i.de, align 2
  %.sink.i = add nuw nsw i16 %.pn, %i.cj
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  store i16 %.sink.i, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i32 0, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.di = zext i16 %i.bw to i32
  %i.dj = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.dh, i64 noundef 32, ptr noundef @.str.33, i32 noundef %i.di, i32 noundef %.0.i.i, i32 noundef %i.dc, ptr noundef null) #10 ; 0 uses
  %i.dk = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.dk, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.j

bb.j:                                             ; preds = %intel_tv_mode_to_mode.exit
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %intel_tv_mode_to_mode.exit, %bb.j
  %i.dn = phi ptr [ %i.dm, %bb.j ], [ null, %intel_tv_mode_to_mode.exit ]
  %i.do = call i32 @drm_mode_vrefresh(ptr noundef nonnull %2) #10
  %i.dp = load i32, ptr %2, align 8
  %i.dq = load i16, ptr %i.bx, align 4
  %i.dr = zext i16 %i.dq to i32
  %i.ds = load i16, ptr %i.bz, align 2
  %i.dt = zext i16 %i.ds to i32
  %i.du = load i16, ptr %i.cc, align 8
  %i.dv = zext i16 %i.du to i32
  %i.dw = load i16, ptr %i.ce, align 2
  %i.dx = zext i16 %i.dw to i32
  %i.dy = load i16, ptr %i.ck, align 2
  %i.dz = zext i16 %i.dy to i32
  %i.ea = load i16, ptr %i.dd, align 8
  %i.eb = zext i16 %i.ea to i32
  %i.ec = load i16, ptr %i.de, align 2
  %i.ed = zext i16 %i.ec to i32
  %i.ee = load i16, ptr %i.df, align 4
  %i.ef = zext i16 %i.ee to i32
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 62
  %i.eh = load i8, ptr %i.eg, align 2
  %i.ei = zext i8 %i.eh to i32
  %i.ej = load i32, ptr %i.dg, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.dn, i32 noundef 2, ptr noundef @.str.6, ptr noundef nonnull %i.dh, i32 noundef %i.do, i32 noundef %i.dp, i32 noundef %i.dr, i32 noundef %i.dt, i32 noundef %i.dv, i32 noundef %i.dx, i32 noundef %i.dz, i32 noundef %i.eb, i32 noundef %i.ed, i32 noundef %i.ef, i32 noundef %i.ei, i32 noundef %i.ej) #10
  %i.ek = add nuw nsw i32 %i.bq, %i.bk            ; 2 uses
  %i.el = load i16, ptr %i.bz, align 2
  %i.em = zext i16 %i.el to i32
  %i.en = sub nsw i32 %i.em, %i.ek
  %i.eo = load i16, ptr %i.cc, align 8
  %i.ep = zext i16 %i.eo to i32
  %i.eq = sub nsw i32 %i.ep, %i.ek
  %i.er = load i16, ptr %i.ce, align 2
  %i.es = zext i16 %i.er to i32                   ; 4 uses
  %i.et = mul nuw i32 %i.es, %i.f
  %i.eu = sdiv i32 %i.et, %i.bq                   ; 4 uses
  %i.ev = load i32, ptr %2, align 8
  %i.ew = mul i32 %i.ev, %i.eu
  %i.ex = sdiv i32 %i.ew, %i.es
  store i16 %i.e, ptr %i.bx, align 4
  %i.ey = mul i32 %i.eu, %i.en
  %i.ez = sdiv i32 %i.ey, %i.es
  %i.fa = trunc i32 %i.ez to i16
  %i.fb = add i16 %i.e, %i.fa
  store i16 %i.fb, ptr %i.bz, align 2
  %i.fc = mul i32 %i.eq, %i.eu
  %i.fd = sdiv i32 %i.fc, %i.es
  %i.fe = trunc i32 %i.fd to i16
  %i.ff = add i16 %i.e, %i.fe
  store i16 %i.ff, ptr %i.cc, align 8
  %i.fg = trunc i32 %i.eu to i16
  store i16 %i.fg, ptr %i.ce, align 2
  %i.fh = add nuw nsw i32 %i.br, %i.bl            ; 2 uses
  %i.fi = load i16, ptr %i.dd, align 8
  %i.fj = zext i16 %i.fi to i32
  %i.fk = sub nsw i32 %i.fj, %i.fh
  %i.fl = load i16, ptr %i.de, align 2
  %i.fm = zext i16 %i.fl to i32
  %i.fn = sub nsw i32 %i.fm, %i.fh
  %i.fo = load i16, ptr %i.df, align 4
  %i.fp = zext i16 %i.fo to i32                   ; 4 uses
  %i.fq = mul nuw i32 %i.fp, %i.i
  %i.fr = sdiv i32 %i.fq, %i.br                   ; 4 uses
  %i.fs = mul i32 %i.fr, %i.ex
  %i.ft = sdiv i32 %i.fs, %i.fp                   ; 3 uses
  store i32 %i.ft, ptr %2, align 8
  store i16 %i.h, ptr %i.ck, align 2
  %i.fu = mul i32 %i.fr, %i.fk
  %i.fv = sdiv i32 %i.fu, %i.fp
  %i.fw = trunc i32 %i.fv to i16
  %i.fx = add i16 %i.h, %i.fw
  store i16 %i.fx, ptr %i.dd, align 8
  %i.fy = mul i32 %i.fn, %i.fr
  %i.fz = sdiv i32 %i.fy, %i.fp
  %i.ga = trunc i32 %i.fz to i16
  %i.gb = add i16 %i.h, %i.ga
  store i16 %i.gb, ptr %i.de, align 2
  %i.gc = trunc i32 %i.fr to i16
  store i16 %i.gc, ptr %i.df, align 4
  %i.gd = getelementptr i8, ptr %1, i64 644       ; 2 uses
  store i32 %i.ft, ptr %i.gd, align 4
  %i.ge = getelementptr i8, ptr %1, i64 640
  %i.gf = load i32, ptr %i.ge, align 8
  %i.gg = and i32 %i.gf, 16
  %.not50 = icmp eq i32 %i.gg, 0
  br i1 %.not50, label %bb.l, label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit
  %i.gh = sdiv i32 %i.ft, 2
  store i32 %i.gh, ptr %i.gd, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %__drm_to_dev.exit
  %i.gi = getelementptr i8, ptr %i.c, i64 8
  %i.gj = load i64, ptr %i.gi, align 8
  %i.gk = and i64 %i.gj, 16384
  %.not51 = icmp eq i64 %i.gk, 0
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gl = getelementptr i8, ptr %1, i64 1328      ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 8
  %i.gn = or i8 %i.gm, 4
  store i8 %i.gn, ptr %i.gl, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_tv_pre_enable(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 99 uses
  %i.d = load ptr, ptr %2, align 8
  %i.e = getelementptr i8, ptr %3, i64 72
  %.val = load i32, ptr %i.e, align 8             ; 2 uses
  %i.f = sext i32 %.val to i64                    ; 2 uses
  %i.g = getelementptr [112 x i8], ptr @tv_modes, i64 %i.f ; 41 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425984) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.h = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(ptr noundef %i.h, i32 range(i32 425984, 426101) 425984, i1 noundef zeroext true) #10, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425984) #10
  %i.l = and i32 %i.k, 4047                       ; 3 uses
  %i.m = getelementptr i8, ptr %1, i64 504
  %i.n = load i32, ptr %i.m, align 8
  switch i32 %i.n, label %bb.d [
    i32 6, label %bb.f
    i32 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.g, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.g, i64 88
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.g, i64 34
  %i.t = load i8, ptr %i.s, align 2
  %i.u = and i8 %i.t, 1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.v = or disjoint i32 %i.l, 536870912
  %4 = getelementptr i8, ptr %i.g, i64 34
  %5 = load i8, ptr %4, align 2
  %6 = trunc i8 %5 to i1
  %sdtv_csc_yprpb.hdtv_csc_yprpb = select i1 %6, ptr @sdtv_csc_yprpb, ptr @hdtv_csc_yprpb
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.w = or disjoint i32 %i.l, 268435456
  %i.x = getelementptr i8, ptr %i.g, i64 80
  %i.y = load ptr, ptr %i.x, align 16
  %i.z = getelementptr i8, ptr %i.g, i64 96
  %i.aa = load ptr, ptr %i.z, align 16
  %i.ab = getelementptr i8, ptr %i.g, i64 34
  %i.ac = load i8, ptr %i.ab, align 2
  %i.ad = and i8 %i.ac, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0155 = phi i8 [ %i.u, %bb.d ], [ %i.ad, %bb.f ], [ 0, %bb.e ]
  %.1154 = phi ptr [ %i.r, %bb.d ], [ %i.aa, %bb.f ], [ %sdtv_csc_yprpb.hdtv_csc_yprpb, %bb.e ] ; 12 uses
  %.0152 = phi ptr [ %i.p, %bb.d ], [ %i.y, %bb.f ], [ @component_levels, %bb.e ] ; 3 uses
  %.0 = phi i32 [ %i.l, %bb.d ], [ %i.w, %bb.f ], [ %i.v, %bb.e ]
  %i.ae = getelementptr i8, ptr %i.d, i64 1664
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = shl i32 %i.af, 30
  %i.ah = or i32 %i.ag, %.0                       ; 4 uses
  %i.ai = getelementptr i8, ptr %i.g, i64 14
  %i.aj = load i8, ptr %i.ai, align 2
  switch i8 %i.aj, label %bb.j [
    i8 8, label %bb.h
    i8 4, label %bb.k
    i8 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ak = or i32 %i.ah, 786432
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.al = or i32 %i.ah, 262144
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.am = or i32 %i.ah, 524288
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j, %bb.i, %bb.h
  %.1 = phi i32 [ %i.am, %bb.j ], [ %i.ak, %bb.h ], [ %i.al, %bb.i ], [ %i.ah, %bb.g ] ; 2 uses
  %7 = getelementptr i8, ptr %i.g, i64 22
  %8 = load i8, ptr %7, align 2
  %9 = trunc i8 %8 to i1                          ; 2 uses
  %10 = getelementptr i8, ptr %i.g, i64 68
  %11 = load i8, ptr %10, align 4
  %i.an = getelementptr i8, ptr %i.g, i64 56
  %i.ao = load i8, ptr %i.an, align 8
  %12 = and i64 %i.f, 1152921504606846975         ; 2 uses
  %i.ap = add nsw i64 %12, -6
  %.not159 = icmp ult i64 %i.ap, 9
  %i.aq = getelementptr i8, ptr %i.g, i64 58
  %i.ar = load i16, ptr %i.aq, align 2
  %.1141 = select i1 %.not159, i32 0, i32 -1073741824 ; 2 uses
  %i.as = getelementptr i8, ptr %i.g, i64 60
  %i.at = load i16, ptr %i.as, align 4
  %13 = shl nuw i64 1, %12
  %i.au = and i64 %13, 32717
  %.not161.not = icmp eq i64 %i.au, 0
  %i.av = or disjoint i32 %.1141, 536870912
  %.2142 = select i1 %.not161.not, i32 %i.av, i32 %.1141
  %i.aw = getelementptr i8, ptr %i.g, i64 64
  %i.ax = load i32, ptr %i.aw, align 16
  %i.ay = or i32 %i.ax, %.2142                    ; 2 uses
  %.not162 = icmp eq ptr %.0152, null             ; 2 uses
  br i1 %.not162, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr i8, ptr %.0152, i64 4
  %i.ba = load i8, ptr %i.az, align 2
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 16
  %i.bd = or i32 %i.bc, %i.ay
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3143 = phi i32 [ %i.bd, %bb.l ], [ %i.ay, %bb.k ]
  %i.be = zext i8 %i.ao to i32
  %i.bf = or i32 %.3143, %i.be
  %i.bg = getelementptr i8, ptr %i.g, i64 52
  %i.bh = load i16, ptr %i.bg, align 4
  %i.bi = zext i16 %i.bh to i32
  %i.bj = shl nuw i32 %i.bi, 16
  %i.bk = zext i16 %i.ar to i32
  %i.bl = or disjoint i32 %i.bj, %i.bk
  %i.bm = getelementptr i8, ptr %i.g, i64 54
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = zext i16 %i.bn to i32
  %i.bp = shl nuw i32 %i.bo, 16
  %i.bq = zext i16 %i.at to i32
  %i.br = or disjoint i32 %i.bp, %i.bq
  %i.bs = getelementptr i8, ptr %i.c, i64 8
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = getelementptr i8, ptr %i.g, i64 15
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = getelementptr i8, ptr %i.g, i64 20
  %i.bx = load i16, ptr %i.bw, align 4
  %i.by = getelementptr i8, ptr %i.g, i64 35
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = shl nuw nsw i32 %i.ca, 16
  %i.cc = getelementptr i8, ptr %i.g, i64 36
  %i.cd = load i8, ptr %i.cc, align 4
  %i.ce = zext i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cb, %i.ce
  %i.cg = zext nneg i8 %.0155 to i32
  %i.ch = shl nuw i32 %i.cg, 31
  %spec.select.i = or disjoint i32 %i.cf, %i.ch
  %i.ci = getelementptr i8, ptr %i.g, i64 16      ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 16
  %i.ck = getelementptr i8, ptr %i.g, i64 32
  %i.cl = load i16, ptr %i.ck, align 16
  %i.cm = getelementptr i8, ptr %i.g, i64 30
  %i.cn = load i8, ptr %i.cm, align 2
  %i.co = getelementptr i8, ptr %i.g, i64 31
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr i8, ptr %i.g, i64 25
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = getelementptr i8, ptr %i.g, i64 23
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = getelementptr i8, ptr %i.g, i64 24
  %i.cv = load i8, ptr %i.cu, align 8
  %i.cw = getelementptr i8, ptr %i.g, i64 29
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = zext i8 %i.cx to i32
  %i.cz = shl nuw nsw i32 %i.cy, 16
  %i.da = getelementptr i8, ptr %i.g, i64 27
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw nsw i32 %i.dc, 8
  %i.de = or disjoint i32 %i.dd, %i.cz
  %i.df = getelementptr i8, ptr %i.g, i64 28
  %i.dg = load i8, ptr %i.df, align 4
  %i.dh = zext i8 %i.dg to i32
  %i.di = or disjoint i32 %i.de, %i.dh
  %i.dj = getelementptr i8, ptr %i.g, i64 26
  %i.dk = load i8, ptr %i.dj, align 2
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl i32 %i.dl, 31
  %.055.i = or disjoint i32 %i.di, %i.dm
  %i.dn = zext i8 %i.cr to i32
  %i.do = shl nuw nsw i32 %i.dn, 16
  %i.dp = zext i8 %i.ct to i32
  %i.dq = shl nuw nsw i32 %i.dp, 8
  %i.dr = or disjoint i32 %i.dq, %i.do
  %i.ds = zext i8 %i.cv to i32
  %i.dt = or disjoint i32 %i.dr, %i.ds
  %i.du = zext i16 %i.cl to i32                   ; 3 uses
  %i.dv = shl nuw i32 %i.du, 16
  %i.dw = zext i8 %i.cn to i32
  %i.dx = shl nuw nsw i32 %i.dw, 8
  %i.dy = or disjoint i32 %i.dx, %i.dv
  %i.dz = zext i8 %i.cp to i32
  %i.ea = or disjoint i32 %i.dy, %i.dz
  %i.eb = zext i8 %i.bv to i32
  %i.ec = shl nuw nsw i32 %i.eb, 16
  %i.ed = zext i16 %i.bx to i32
  %i.ee = or disjoint i32 %i.ec, %i.ed
  %i.ef = getelementptr i8, ptr %i.g, i64 37
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = zext i8 %i.eg to i32
  %i.ei = shl nuw nsw i32 %i.eh, 16
  %i.ej = getelementptr i8, ptr %i.g, i64 38
  %i.ek = load i16, ptr %i.ej, align 2
  %i.el = zext i16 %i.ek to i32
  %i.em = or disjoint i32 %i.ei, %i.el
  %i.en = getelementptr i8, ptr %i.g, i64 40
  %i.eo = load i8, ptr %i.en, align 8
  %i.ep = zext i8 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 16
  %i.er = getelementptr i8, ptr %i.g, i64 42
  %i.es = load i16, ptr %i.er, align 2
  %i.et = zext i16 %i.es to i32
  %i.eu = or disjoint i32 %i.eq, %i.et
  %i.ev = getelementptr i8, ptr %i.g, i64 44
  %i.ew = load i8, ptr %i.ev, align 4
  %i.ex = zext i8 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 16
  %i.ez = getelementptr i8, ptr %i.g, i64 46
  %i.fa = load i16, ptr %i.ez, align 2
  %i.fb = zext i16 %i.fa to i32
  %i.fc = or disjoint i32 %i.ey, %i.fb
  %i.fd = getelementptr i8, ptr %i.g, i64 48
  %i.fe = load i8, ptr %i.fd, align 16
  %i.ff = zext i8 %i.fe to i32
  %i.fg = shl nuw nsw i32 %i.ff, 16
  %i.fh = getelementptr i8, ptr %i.g, i64 50
  %i.fi = load i16, ptr %i.fh, align 2
  %i.fj = zext i16 %i.fi to i32
  %i.fk = or disjoint i32 %i.fg, %i.fj
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426032) #10
  %.val.i.i = load ptr, ptr %i.c, align 8
  %i.fl = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #10 ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 176
  %i.fn = load ptr, ptr %i.fm, align 8
  tail call void %i.fn(ptr noundef %i.fl, i32 426032, i32 noundef %i.ee, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426032) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426036) #10
  %.val.i56.i = load ptr, ptr %i.c, align 8
  %i.fo = tail call ptr @to_intel_uncore(ptr noundef %.val.i56.i) #10 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 176
  %i.fq = load ptr, ptr %i.fp, align 8
  tail call void %i.fq(ptr noundef %i.fo, i32 426036, i32 noundef %spec.select.i, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426036) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426040) #10
  %.val.i57.i = load ptr, ptr %i.c, align 8
  %i.fr = tail call ptr @to_intel_uncore(ptr noundef %.val.i57.i) #10 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 176
  %i.ft = load ptr, ptr %i.fs, align 8
  tail call void %i.ft(ptr noundef %i.fr, i32 426040, i32 noundef %i.cj, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426040) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426044) #10
  %.val.i58.i = load ptr, ptr %i.c, align 8
  %i.fu = tail call ptr @to_intel_uncore(ptr noundef %.val.i58.i) #10 ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 176
  %i.fw = load ptr, ptr %i.fv, align 8
  tail call void %i.fw(ptr noundef %i.fu, i32 426044, i32 noundef %i.ea, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426044) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426048) #10
  %.val.i59.i = load ptr, ptr %i.c, align 8
  %i.fx = tail call ptr @to_intel_uncore(ptr noundef %.val.i59.i) #10 ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 176
  %i.fz = load ptr, ptr %i.fy, align 8
  tail call void %i.fz(ptr noundef %i.fx, i32 426048, i32 noundef %i.dt, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426048) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426052) #10
  %.val.i60.i = load ptr, ptr %i.c, align 8
  %i.ga = tail call ptr @to_intel_uncore(ptr noundef %.val.i60.i) #10 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 176
  %i.gc = load ptr, ptr %i.gb, align 8
  tail call void %i.gc(ptr noundef %i.ga, i32 426052, i32 noundef %.055.i, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426052) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426056) #10
  %.val.i61.i = load ptr, ptr %i.c, align 8
  %i.gd = tail call ptr @to_intel_uncore(ptr noundef %.val.i61.i) #10 ; 2 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 176
  %i.gf = load ptr, ptr %i.ge, align 8
  tail call void %i.gf(ptr noundef %i.gd, i32 426056, i32 noundef %i.em, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426056) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426060) #10
  %.val.i62.i = load ptr, ptr %i.c, align 8
  %i.gg = tail call ptr @to_intel_uncore(ptr noundef %.val.i62.i) #10 ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 176
  %i.gi = load ptr, ptr %i.gh, align 8
  tail call void %i.gi(ptr noundef %i.gg, i32 426060, i32 noundef %i.eu, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426060) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426064) #10
  %.val.i63.i = load ptr, ptr %i.c, align 8
  %i.gj = tail call ptr @to_intel_uncore(ptr noundef %.val.i63.i) #10 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 176
  %i.gl = load ptr, ptr %i.gk, align 8
  tail call void %i.gl(ptr noundef %i.gj, i32 426064, i32 noundef %i.fc, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426064) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426068) #10
  %.val.i64.i = load ptr, ptr %i.c, align 8
  %i.gm = tail call ptr @to_intel_uncore(ptr noundef %.val.i64.i) #10 ; 2 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 176
  %i.go = load ptr, ptr %i.gn, align 8
  tail call void %i.go(ptr noundef %i.gm, i32 426068, i32 noundef %i.fk, i1 noundef zeroext true) #10, !inline_history !17
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426068) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426080) #10
  %.val.i165 = load ptr, ptr %i.c, align 8
  %i.gp = tail call ptr @to_intel_uncore(ptr noundef %.val.i165) #10 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 176
  %i.gr = load ptr, ptr %i.gq, align 8
  tail call void %i.gr(ptr noundef %i.gp, i32 426080, i32 noundef %i.bf, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426080) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426084) #10
  %.val.i166 = load ptr, ptr %i.c, align 8
  %i.gs = tail call ptr @to_intel_uncore(ptr noundef %.val.i166) #10 ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 176
  %i.gu = load ptr, ptr %i.gt, align 8
  tail call void %i.gu(ptr noundef %i.gs, i32 426084, i32 noundef %i.bl, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426084) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426088) #10
  %.val.i167 = load ptr, ptr %i.c, align 8
  %i.gv = tail call ptr @to_intel_uncore(ptr noundef %.val.i167) #10 ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 176
  %i.gx = load ptr, ptr %i.gw, align 8
  tail call void %i.gx(ptr noundef %i.gv, i32 426088, i32 noundef %i.br, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426088) #10
  %i.gy = load i16, ptr %.1154, align 2
  %i.gz = zext i16 %i.gy to i32
  %i.ha = shl nuw i32 %i.gz, 16
  %i.hb = getelementptr i8, ptr %.1154, i64 2
  %i.hc = load i16, ptr %i.hb, align 2
  %i.hd = zext i16 %i.hc to i32
  %i.he = or disjoint i32 %i.ha, %i.hd
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426000) #10
  %.val.i.i168 = load ptr, ptr %i.c, align 8
  %i.hf = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i168) #10 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 176
  %i.hh = load ptr, ptr %i.hg, align 8
  tail call void %i.hh(ptr noundef %i.hf, i32 426000, i32 noundef %i.he, i1 noundef zeroext true) #10, !inline_history !18
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426000) #10
  %i.hi = getelementptr i8, ptr %.1154, i64 4
  %i.hj = load i16, ptr %i.hi, align 2
  %i.hk = zext i16 %i.hj to i32
  %i.hl = shl nuw i32 %i.hk, 16
  %i.hm = getelementptr i8, ptr %.1154, i64 6
  %i.hn = load i16, ptr %i.hm, align 2
  %i.ho = zext i16 %i.hn to i32
  %i.hp = or disjoint i32 %i.hl, %i.ho
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426004) #10
  %.val.i23.i = load ptr, ptr %i.c, align 8
  %i.hq = tail call ptr @to_intel_uncore(ptr noundef %.val.i23.i) #10 ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 176
  %i.hs = load ptr, ptr %i.hr, align 8
  tail call void %i.hs(ptr noundef %i.hq, i32 426004, i32 noundef %i.hp, i1 noundef zeroext true) #10, !inline_history !18
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426004) #10
  %i.ht = getelementptr i8, ptr %.1154, i64 8
  %i.hu = load i16, ptr %i.ht, align 2
  %i.hv = zext i16 %i.hu to i32
  %i.hw = shl nuw i32 %i.hv, 16
  %i.hx = getelementptr i8, ptr %.1154, i64 10
  %i.hy = load i16, ptr %i.hx, align 2
  %i.hz = zext i16 %i.hy to i32
  %i.ia = or disjoint i32 %i.hw, %i.hz
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426008) #10
  %.val.i24.i = load ptr, ptr %i.c, align 8
  %i.ib = tail call ptr @to_intel_uncore(ptr noundef %.val.i24.i) #10 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 176
  %i.id = load ptr, ptr %i.ic, align 8
  tail call void %i.id(ptr noundef %i.ib, i32 426008, i32 noundef %i.ia, i1 noundef zeroext true) #10, !inline_history !18
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426008) #10
  %i.ie = getelementptr i8, ptr %.1154, i64 12
  %i.if = load i16, ptr %i.ie, align 2
  %i.ig = zext i16 %i.if to i32
  %i.ih = shl nuw i32 %i.ig, 16
  %i.ii = getelementptr i8, ptr %.1154, i64 14
  %i.ij = load i16, ptr %i.ii, align 2
  %i.ik = zext i16 %i.ij to i32
  %i.il = or disjoint i32 %i.ih, %i.ik
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426012) #10
  %.val.i25.i = load ptr, ptr %i.c, align 8
  %i.im = tail call ptr @to_intel_uncore(ptr noundef %.val.i25.i) #10 ; 2 uses
  %i.in = getelementptr i8, ptr %i.im, i64 176
  %i.io = load ptr, ptr %i.in, align 8
  tail call void %i.io(ptr noundef %i.im, i32 426012, i32 noundef %i.il, i1 noundef zeroext true) #10, !inline_history !18
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426012) #10
  %i.ip = getelementptr i8, ptr %.1154, i64 16
  %i.iq = load i16, ptr %i.ip, align 2
  %i.ir = zext i16 %i.iq to i32
  %i.is = shl nuw i32 %i.ir, 16
  %i.it = getelementptr i8, ptr %.1154, i64 18
  %i.iu = load i16, ptr %i.it, align 2
  %i.iv = zext i16 %i.iu to i32
  %i.iw = or disjoint i32 %i.is, %i.iv
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426016) #10
  %.val.i26.i = load ptr, ptr %i.c, align 8
  %i.ix = tail call ptr @to_intel_uncore(ptr noundef %.val.i26.i) #10 ; 2 uses
  %i.iy = getelementptr i8, ptr %i.ix, i64 176
  %i.iz = load ptr, ptr %i.iy, align 8
  tail call void %i.iz(ptr noundef %i.ix, i32 426016, i32 noundef %i.iw, i1 noundef zeroext true) #10, !inline_history !18
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426016) #10
  %i.ja = getelementptr i8, ptr %.1154, i64 20
  %i.jb = load i16, ptr %i.ja, align 2
  %i.jc = zext i16 %i.jb to i32
  %i.jd = shl nuw i32 %i.jc, 16
  %i.je = getelementptr i8, ptr %.1154, i64 22
  %i.jf = load i16, ptr %i.je, align 2
  %i.jg = zext i16 %i.jf to i32
  %i.jh = or disjoint i32 %i.jd, %i.jg
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426020) #10
  %.val.i27.i = load ptr, ptr %i.c, align 8
  %i.ji = tail call ptr @to_intel_uncore(ptr noundef %.val.i27.i) #10 ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 176
  %i.jk = load ptr, ptr %i.jj, align 8
  tail call void %i.jk(ptr noundef %i.ji, i32 426020, i32 noundef %i.jh, i1 noundef zeroext true) #10, !inline_history !18
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426020) #10
  %i.jl = getelementptr i8, ptr %i.c, i64 1168
  %i.jm = load i16, ptr %i.jl, align 8
  %i.jn = icmp ugt i16 %i.jm, 3
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426024) #10
  %.val.i169 = load ptr, ptr %i.c, align 8
  %i.jo = tail call ptr @to_intel_uncore(ptr noundef %.val.i169) #10 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 176
  %i.jq = load ptr, ptr %i.jp, align 8
  %. = select i1 %i.jn, i32 4210688, i32 6316032
  tail call void %i.jq(ptr noundef %i.jo, i32 426024, i32 noundef %., i1 noundef zeroext true) #10
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426024) #10
  br i1 %.not162, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.jr = load i32, ptr %.0152, align 2
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426028) #10
  %.val.i171 = load ptr, ptr %i.c, align 8
  %i.js = tail call ptr @to_intel_uncore(ptr noundef %.val.i171) #10 ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 176
  %i.ju = load ptr, ptr %i.jt, align 8
  tail call void %i.ju(ptr noundef %i.js, i32 426028, i32 noundef %i.jr, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426028) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.jv = getelementptr i8, ptr %2, i64 880
  %i.jw = load i32, ptr %i.jv, align 8
  tail call void @assert_transcoder(ptr noundef %i.c, i32 noundef %i.jw, i1 noundef zeroext false) #10
  %i.jx = getelementptr i8, ptr %3, i64 444
  %i.jy = load i8, ptr %i.jx, align 4, !range !23, !noundef !24
  %i.jz = trunc nuw i8 %i.jy to i1
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426112) #10
  %.val.i173 = load ptr, ptr %i.c, align 8
  %i.ka = tail call ptr @to_intel_uncore(ptr noundef %.val.i173) #10 ; 2 uses
  %i.kb = getelementptr i8, ptr %i.ka, i64 176
  %i.kc = load ptr, ptr %i.kb, align 8
  %.219 = select i1 %i.jz, i32 -1610612736, i32 -2147483648
  tail call void %i.kc(ptr noundef %i.ka, i32 426112, i32 noundef %.219, i1 noundef zeroext true) #10
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426112) #10
  %i.kd = load i16, ptr %i.ci, align 16
  %i.ke = zext i16 %i.kd to i32
  %i.kf = getelementptr i8, ptr %i.g, i64 18
  %i.kg = load i16, ptr %i.kf, align 2
  %i.kh = zext i16 %i.kg to i32
  %i.ki = add nuw nsw i32 %i.du, 1
  %i.kj = shl nuw nsw i32 %i.du, 1
  %i.kk = add nuw nsw i32 %i.kj, 2
  %.0.i = select i1 %9, i32 %i.ki, i32 %i.kk
  %i.kl = getelementptr i8, ptr %3, i64 60
  %i.km = load i32, ptr %i.kl, align 4            ; 2 uses
  %i.kn = getelementptr i8, ptr %3, i64 440
  %i.ko = load i16, ptr %i.kn, align 8
  %i.kp = zext i16 %i.ko to i32                   ; 2 uses
  %i.kq = getelementptr i8, ptr %3, i64 64
  %i.kr = load i32, ptr %i.kq, align 8
  %i.ks = add i32 %i.km, %i.kh
  %i.kt = add i32 %i.ks, %i.kr
  %i.ku = sub i32 %i.ke, %i.kt
  %i.kv = getelementptr i8, ptr %3, i64 442
  %i.kw = load i16, ptr %i.kv, align 2
  %i.kx = zext i16 %i.kw to i32
  %i.ky = add nuw nsw i32 %i.kp, %i.kx
  %i.kz = sub nsw i32 %.0.i, %i.ky
  %i.la = shl i32 %i.km, 16
  %i.lb = or disjoint i32 %i.la, %i.kp
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426096) #10
  %.val.i174 = load ptr, ptr %i.c, align 8
  %i.lc = tail call ptr @to_intel_uncore(ptr noundef %.val.i174) #10 ; 2 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 176
  %i.le = load ptr, ptr %i.ld, align 8
  tail call void %i.le(ptr noundef %i.lc, i32 426096, i32 noundef %i.lb, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426096) #10
  %i.lf = shl i32 %i.ku, 16
  %i.lg = or i32 %i.lf, %i.kz
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 426100) #10
  %.val.i175 = load ptr, ptr %i.c, align 8
  %i.lh = tail call ptr @to_intel_uncore(ptr noundef %.val.i175) #10 ; 2 uses
  %i.li = getelementptr i8, ptr %i.lh, i64 176
  %i.lj = load ptr, ptr %i.li, align 8
  tail call void %i.lj(ptr noundef %i.lh, i32 426100, i32 noundef %i.lg, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 426100) #10
  %i.lk = getelementptr i8, ptr %i.g, i64 104
  %i.ll = load ptr, ptr %i.lk, align 8            ; 4 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.p
  %indvars.iv = phi i64 [ 0, %bb.o ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %indvars202 = trunc i64 %indvars.iv to i32
  %i.lm = shl nuw nsw i32 %indvars202, 2
  %i.ln = add nuw nsw i32 %i.lm, 426240           ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.lo = getelementptr [4 x i8], ptr %i.ll, i64 %indvars.iv
  %i.lp = load i32, ptr %i.lo, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.ln) #10
  %.val.i176 = load ptr, ptr %i.c, align 8
  %i.lq = tail call ptr @to_intel_uncore(ptr noundef %.val.i176) #10 ; 2 uses
  %i.lr = getelementptr i8, ptr %i.lq, i64 176
  %i.ls = load ptr, ptr %i.lr, align 8
  tail call void %i.ls(ptr noundef %i.lq, i32 %i.ln, i32 noundef %i.lp, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.ln) #10
  %exitcond.not = icmp eq i64 %indvars.iv.next, 60
  br i1 %exitcond.not, label %.preheader191.a, label %bb.p, !llvm.loop !19

.preheader191.a:                                  ; preds = %bb.p, %.preheader191.a
  %indvars.iv205 = phi i64 [ %indvars.iv.next206, %.preheader191.a ], [ 60, %bb.p ] ; 2 uses
  %.1145195 = phi i32 [ %i.ma, %.preheader191.a ], [ 0, %bb.p ] ; 2 uses
  %i.lt = shl nuw nsw i32 %.1145195, 2
  %i.lu = add nuw nsw i32 %i.lt, 426496           ; 3 uses
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1
  %i.lv = getelementptr [4 x i8], ptr %i.ll, i64 %indvars.iv205
  %i.lw = load i32, ptr %i.lv, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.lu) #10
  %.val.i177 = load ptr, ptr %i.c, align 8
  %i.lx = tail call ptr @to_intel_uncore(ptr noundef %.val.i177) #10 ; 2 uses
  %i.ly = getelementptr i8, ptr %i.lx, i64 176
  %i.lz = load ptr, ptr %i.ly, align 8
  tail call void %i.lz(ptr noundef %i.lx, i32 %i.lu, i32 noundef %i.lw, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.lu) #10
  %i.ma = add nuw nsw i32 %.1145195, 1            ; 2 uses
  %exitcond208.not = icmp eq i32 %i.ma, 60
  br i1 %exitcond208.not, label %.preheader190, label %.preheader191.a, !llvm.loop !20

.preheader190:                                    ; preds = %.preheader191.a, %.preheader190
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %.preheader190 ], [ 120, %.preheader191.a ] ; 2 uses
  %.2146197 = phi i32 [ %i.mi, %.preheader190 ], [ 0, %.preheader191.a ] ; 2 uses
  %i.mb = shl nuw nsw i32 %.2146197, 2
  %i.mc = add nuw nsw i32 %i.mb, 426752           ; 3 uses
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1
  %i.md = getelementptr [4 x i8], ptr %i.ll, i64 %indvars.iv209
  %i.me = load i32, ptr %i.md, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.mc) #10
  %.val.i178 = load ptr, ptr %i.c, align 8
  %i.mf = tail call ptr @to_intel_uncore(ptr noundef %.val.i178) #10 ; 2 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 176
  %i.mh = load ptr, ptr %i.mg, align 8
  tail call void %i.mh(ptr noundef %i.mf, i32 %i.mc, i32 noundef %i.me, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.mc) #10
  %i.mi = add nuw nsw i32 %.2146197, 1            ; 2 uses
  %exitcond212.not = icmp eq i32 %i.mi, 43
  br i1 %exitcond212.not, label %.preheader, label %.preheader190, !llvm.loop !21

.preheader:                                       ; preds = %.preheader190, %.preheader
  %indvars.iv213 = phi i64 [ %indvars.iv.next214, %.preheader ], [ 163, %.preheader190 ] ; 2 uses
  %.3147199 = phi i32 [ %i.mq, %.preheader ], [ 0, %.preheader190 ] ; 2 uses
  %i.mj = shl nuw nsw i32 %.3147199, 2
  %i.mk = add nuw nsw i32 %i.mj, 427008           ; 3 uses
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1
  %i.ml = getelementptr [4 x i8], ptr %i.ll, i64 %indvars.iv213
  %i.mm = load i32, ptr %i.ml, align 4
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 %i.mk) #10
  %.val.i179 = load ptr, ptr %i.c, align 8
  %i.mn = tail call ptr @to_intel_uncore(ptr noundef %.val.i179) #10 ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mn, i64 176
  %i.mp = load ptr, ptr %i.mo, align 8
  tail call void %i.mp(ptr noundef %i.mn, i32 %i.mk, i32 noundef %i.mm, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 %i.mk) #10
  %i.mq = add nuw nsw i32 %.3147199, 1            ; 2 uses
  %exitcond216.not = icmp eq i32 %i.mq, 43
  br i1 %exitcond216.not, label %bb.q, label %.preheader, !llvm.loop !22

bb.q:                                             ; preds = %.preheader
  %i.mr = and i64 %i.bt, 256
  %.not163 = icmp eq i64 %i.mr, 0
  %14 = trunc i8 %11 to i1
  %.not158 = icmp ult i32 %.val, 8
  %i.ms = or i32 %.1, 131072
  %spec.select = select i1 %9, i32 %i.ms, i32 %.1 ; 2 uses
  %i.mt = or i32 %spec.select, 2097152
  %.3 = select i1 %.not158, i32 %spec.select, i32 %i.mt ; 2 uses
  %i.mu = or i32 %.3, 65536
  %.4 = select i1 %14, i32 %i.mu, i32 %.3         ; 2 uses
  %i.mv = or i32 %.4, 3072
  %spec.select164 = select i1 %.not163, i32 %.4, i32 %i.mv
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425988) #10
  %.val.i180 = load ptr, ptr %i.c, align 8
  %i.mw = tail call ptr @to_intel_uncore(ptr noundef %.val.i180) #10 ; 2 uses
  %i.mx = getelementptr i8, ptr %i.mw, i64 144
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = tail call i32 %i.my(ptr noundef %i.mw, i32 range(i32 425984, 426101) 425988, i1 noundef zeroext true) #10, !inline_history !0
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425988) #10
  %i.na = and i32 %i.mz, 16776960
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425988) #10
  %.val.i181 = load ptr, ptr %i.c, align 8
  %i.nb = tail call ptr @to_intel_uncore(ptr noundef %.val.i181) #10 ; 2 uses
  %i.nc = getelementptr i8, ptr %i.nb, i64 176
  %i.nd = load ptr, ptr %i.nc, align 8
  tail call void %i.nd(ptr noundef %i.nb, i32 425988, i32 noundef %i.na, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425988) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425984) #10
  %.val.i182 = load ptr, ptr %i.c, align 8
  %i.ne = tail call ptr @to_intel_uncore(ptr noundef %.val.i182) #10 ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 176
  %i.ng = load ptr, ptr %i.nf, align 8
  tail call void %i.ng(ptr noundef %i.ne, i32 425984, i32 noundef %spec.select164, i1 noundef zeroext true) #10, !inline_history !1
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425984) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_enable_tv(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree readnone captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %2, align 8
  tail call void @intel_crtc_wait_for_next_vblank(ptr noundef %i.d) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425984) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 4 uses
  %i.f = getelementptr i8, ptr %i.e, i64 144
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 %i.g(ptr noundef %i.e, i32 425984, i1 noundef zeroext true) #10, !inline_history !2
  %i.i = or i32 %i.h, -2147483648
  %i.j = getelementptr i8, ptr %i.e, i64 176
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef %i.e, i32 425984, i32 noundef %i.i, i1 noundef zeroext true) #10, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425984) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @intel_disable_tv(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425984) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef %i.d, i32 425984, i1 noundef zeroext true) #10, !inline_history !2
  %i.h = and i32 %i.g, 2147483647
  %i.i = getelementptr i8, ptr %i.d, i64 176
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef %i.d, i32 425984, i32 noundef %i.h, i1 noundef zeroext true) #10, !inline_history !3
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425984) #10
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @intel_tv_get_hw_state(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %i.c, i32 425984) #10
  %.val.i = load ptr, ptr %i.c, align 8
  %i.d = tail call ptr @to_intel_uncore(ptr noundef %.val.i) #10 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef %i.d, i32 range(i32 425984, 426101) 425984, i1 noundef zeroext true) #10, !inline_history !0 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.c, i32 425984) #10
  %i.h = lshr i32 %i.g, 30
  %i.i = and i32 %i.h, 1
  store i32 %i.i, ptr %1, align 4
  %i.j = icmp slt i32 %i.g, 0
  ret i1 %i.j
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @intel_connector_get_hw_state(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_get(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_dmc_wl_put(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @to_intel_uncore(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_connector_register(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_connector_unregister(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_connector_destroy(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef ptr @intel_tv_connector_duplicate_state(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1960
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call dereferenceable_or_null(448) ptr @kmemdup_noprof(ptr noundef %i.b, i64 noundef 448, i32 noundef 3264) #14 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__drm_atomic_helper_connector_duplicate_state(ptr noundef %0, ptr noundef nonnull %i.c) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local ptr @kmemdup_noprof(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_encoder_destroy(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__drm_to_display(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @intel_dpll_crtc_compute_clock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @intel_tv_mode_to_mode(ptr nofree noundef writeonly captures(none) initializes((0, 12), (14, 22), (24, 28)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #5 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 14
  %i.b = load i8, ptr %i.a, align 2
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr i8, ptr %1, i64 22         ; 4 uses
  %i.e = load i8, ptr %i.d, align 2
  %i.f = and i8 %i.e, 1
  %i.g = xor i8 %i.f, 1
  %i.h = zext nneg i8 %i.g to i32
  %i.i = lshr i32 %i.c, %i.h
  %i.j = sdiv i32 %2, %i.i
  store i32 %i.j, ptr %0, align 8
  %i.k = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.l = load i16, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %1, i64 18
  %i.n = load i16, ptr %i.m, align 2
  %i.o = sub i16 %i.l, %i.n                       ; 3 uses
  %i.p = getelementptr i8, ptr %0, i64 4
  store i16 %i.o, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.r = load i16, ptr %i.q, align 4
  %i.s = add i16 %i.r, %i.o
  %i.t = load i16, ptr %i.k, align 8
  %i.u = sub i16 %i.s, %i.t                       ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 6
  store i16 %i.u, ptr %i.v, align 2
  %i.w = getelementptr i8, ptr %1, i64 15
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i16
  %i.z = add i16 %i.u, %i.y
  %i.aa = getelementptr i8, ptr %0, i64 8
  store i16 %i.z, ptr %i.aa, align 8
  %i.ab = load i16, ptr %i.q, align 4
  %i.ac = add i16 %i.ab, 1
  %i.ad = getelementptr i8, ptr %0, i64 10
  store i16 %i.ac, ptr %i.ad, align 2
  %i.ae = load i8, ptr %i.d, align 2
  %i.af = trunc i8 %i.ae to i1
  %i.ag = getelementptr i8, ptr %1, i64 32
  %i.ah = load i16, ptr %i.ag, align 8
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = add nuw nsw i32 %i.ai, 1
  %i.ak = shl nuw nsw i32 %i.ai, 1
  %i.al = add nuw nsw i32 %i.ak, 2
  %.0.i = select i1 %i.af, i32 %i.aj, i32 %i.al   ; 4 uses
  %i.am = trunc i32 %.0.i to i16                  ; 3 uses
  %i.an = getelementptr i8, ptr %0, i64 14
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = load i8, ptr %i.d, align 2
  %i.ap = trunc i8 %i.ao to i1
  %i.aq = getelementptr i8, ptr %1, i64 23
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  br i1 %i.ap, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = add nuw nsw i32 %.0.i, %i.as
  %i.au = trunc i32 %i.at to i16
  %i.av = add i16 %i.au, 1                        ; 2 uses
  %i.aw = getelementptr i8, ptr %0, i64 16
  store i16 %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %1, i64 25
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i16
  %i.ba = add i16 %i.av, %i.az
  %i.bb = getelementptr i8, ptr %0, i64 18
  store i16 %i.ba, ptr %i.bb, align 2
  %i.bc = getelementptr i8, ptr %1, i64 30
  %i.bd = load i8, ptr %i.bc, align 2
  %i.be = zext i8 %i.bd to i16
  %i.bf = add i16 %i.am, 1
  %i.bg = add i16 %i.bf, %i.be
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bh = getelementptr i8, ptr %1, i64 24
  %i.bi = load i8, ptr %i.bh, align 8
  %i.bj = zext i8 %i.bi to i32
  %i.bk = add nuw nsw i32 %.0.i, 1
  %i.bl = add nuw nsw i32 %i.bk, %i.as
  %i.bm = add nuw nsw i32 %i.bl, %i.bj
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = add i16 %i.bn, 1                        ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 16
  store i16 %i.bo, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %1, i64 25
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i16
  %i.bt = shl nuw nsw i16 %i.bs, 1
  %i.bu = add i16 %i.bo, %i.bt
  %i.bv = getelementptr i8, ptr %0, i64 18
  store i16 %i.bu, ptr %i.bv, align 2
  %i.bw = getelementptr i8, ptr %1, i64 30
  %i.bx = load i8, ptr %i.bw, align 2
  %i.by = zext i8 %i.bx to i16
  %i.bz = getelementptr i8, ptr %1, i64 31
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i16
  %i.cc = add i16 %i.am, 2
  %i.cd = add i16 %i.cc, %i.by
  %i.ce = add i16 %i.cd, %i.cb
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i16 [ %i.bg, %bb.b ], [ %i.ce, %bb.c ]
  %i.cf = getelementptr i8, ptr %0, i64 20
  store i16 %.sink, ptr %i.cf, align 4
  %i.cg = getelementptr i8, ptr %0, i64 24
  store i32 0, ptr %i.cg, align 8
  %i.ch = getelementptr i8, ptr %0, i64 80
  %i.ci = zext i16 %i.o to i32
  %i.cj = and i32 %.0.i, 65535
  %i.ck = load i8, ptr %i.d, align 2
  %i.cl = trunc i8 %i.ck to i1
  %i.cm = select i1 %i.cl, i32 112, i32 105
  %i.cn = load ptr, ptr %1, align 8
  %i.co = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.ch, i64 noundef 32, ptr noundef @.str.33, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.cm, ptr noundef %i.cn) #10 ; 0 uses
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @assert_transcoder(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @intel_crtc_wait_for_next_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_tv_get_modes(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 1960
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 72
  %.val = load i32, ptr %i.f, align 8
  %i.g = sext i32 %.val to i64                    ; 2 uses
  %i.h = getelementptr [112 x i8], ptr @tv_modes, i64 %i.g ; 4 uses
  %1 = getelementptr i8, ptr %i.h, i64 22         ; 2 uses
  %i.i = and i64 %i.g, 1152921504606846974
  %.not48 = icmp samesign ugt i64 %i.i, 5
  %i.j = getelementptr i8, ptr %i.c, i64 1168
  %i.k = getelementptr i8, ptr %i.h, i64 32       ; 2 uses
  %i.l = getelementptr i8, ptr %i.h, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.m
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.054 = phi i32 [ 0, %bb.c ], [ %.1, %bb.m ]    ; 5 uses
  %i.m = getelementptr [4 x i8], ptr @input_res_table, i64 %indvars.iv ; 3 uses
  %i.n = shl nuw nsw i64 1, %indvars.iv
  %i.o = and i64 %i.n, 104
  %.not47 = icmp eq i64 %i.o, 0
  br i1 %.not47, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %2 = load i8, ptr %1, align 2
  %3 = trunc i8 %2 to i1                          ; 2 uses
  %or.cond.not = or i1 %.not48, %3
  br i1 %or.cond.not, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.e
  %i.p = load i16, ptr %i.j, align 8
  %i.q = icmp eq i16 %i.p, 3
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.thread
  %i.r = getelementptr i8, ptr %i.m, i64 2
  %i.s = load i16, ptr %i.r, align 2
  %i.t = zext i16 %i.s to i32
  %i.u = load i16, ptr %i.k, align 16
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = add nuw nsw i32 %i.v, 1
  %i.x = shl nuw nsw i32 %i.v, 1
  %i.y = add nuw nsw i32 %i.x, 2
  %.0.i = select i1 %3, i32 %i.w, i32 %i.y
  %i.z = icmp samesign ult i32 %.0.i, %i.t
  br i1 %i.z, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.d, %.thread, %bb.f
  %i.aa = load ptr, ptr %0, align 8
  %i.ab = tail call ptr @drm_mode_create(ptr noundef %i.aa) #10 ; 28 uses
  %.not50 = icmp eq ptr %i.ab, null
  br i1 %.not50, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load i32, ptr %i.l, align 8
  tail call fastcc void @intel_tv_mode_to_mode(ptr noundef nonnull %i.ab, ptr noundef %i.h, i32 noundef %i.ac) #13, !srcloc !26
  %i.ad = icmp eq i32 %.054, 0
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.i, %bb.j
  %i.ah = phi ptr [ %i.ag, %bb.j ], [ null, %bb.i ]
  %i.ai = getelementptr i8, ptr %i.ab, i64 80
  %i.aj = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull %i.ab) #10
  %i.ak = load i32, ptr %i.ab, align 8
  %i.al = getelementptr i8, ptr %i.ab, i64 4
  %i.am = load i16, ptr %i.al, align 4
  %i.an = zext i16 %i.am to i32
  %i.ao = getelementptr i8, ptr %i.ab, i64 6
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr i8, ptr %i.ab, i64 8
  %i.as = load i16, ptr %i.ar, align 8
  %i.at = zext i16 %i.as to i32
  %i.au = getelementptr i8, ptr %i.ab, i64 10
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = zext i16 %i.av to i32
  %i.ax = getelementptr i8, ptr %i.ab, i64 14
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = zext i16 %i.ay to i32
  %i.ba = getelementptr i8, ptr %i.ab, i64 16
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = zext i16 %i.bb to i32
  %i.bd = getelementptr i8, ptr %i.ab, i64 18
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr i8, ptr %i.ab, i64 20
  %i.bh = load i16, ptr %i.bg, align 4
  %i.bi = zext i16 %i.bh to i32
  %i.bj = getelementptr i8, ptr %i.ab, i64 62
  %i.bk = load i8, ptr %i.bj, align 2
  %i.bl = zext i8 %i.bk to i32
  %i.bm = getelementptr i8, ptr %i.ab, i64 24
  %i.bn = load i32, ptr %i.bm, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ah, i32 noundef 2, ptr noundef @.str.6, ptr noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %i.at, i32 noundef %i.aw, i32 noundef %i.az, i32 noundef %i.bc, i32 noundef %i.bf, i32 noundef %i.bi, i32 noundef %i.bl, i32 noundef %i.bn) #10
  br label %bb.k

bb.k:                                             ; preds = %__drm_to_dev.exit, %bb.h
  %i.bo = load i16, ptr %i.m, align 4             ; 4 uses
  %i.bp = zext i16 %i.bo to i32
  %i.bq = getelementptr i8, ptr %i.ab, i64 6      ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2
  %i.bs = zext i16 %i.br to i32
  %i.bt = getelementptr i8, ptr %i.ab, i64 4      ; 2 uses
  %i.bu = load i16, ptr %i.bt, align 4
  %i.bv = zext i16 %i.bu to i32                   ; 3 uses
  %i.bw = sub nsw i32 %i.bs, %i.bv
  %i.bx = getelementptr i8, ptr %i.ab, i64 8      ; 2 uses
  %i.by = load i16, ptr %i.bx, align 8
  %i.bz = zext i16 %i.by to i32
  %i.ca = sub nsw i32 %i.bz, %i.bv
  %i.cb = getelementptr i8, ptr %i.ab, i64 10     ; 2 uses
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = zext i16 %i.cc to i32                   ; 4 uses
  %i.ce = mul nuw i32 %i.cd, %i.bp
  %i.cf = sdiv i32 %i.ce, %i.bv                   ; 4 uses
  %i.cg = load i32, ptr %i.ab, align 8
  %i.ch = mul i32 %i.cg, %i.cf
  %i.ci = sdiv i32 %i.ch, %i.cd
  store i16 %i.bo, ptr %i.bt, align 4
  %i.cj = mul i32 %i.cf, %i.bw
  %i.ck = sdiv i32 %i.cj, %i.cd
  %i.cl = trunc i32 %i.ck to i16
  %i.cm = add i16 %i.bo, %i.cl
  store i16 %i.cm, ptr %i.bq, align 2
  %i.cn = mul i32 %i.ca, %i.cf
  %i.co = sdiv i32 %i.cn, %i.cd
  %i.cp = trunc i32 %i.co to i16
  %i.cq = add i16 %i.bo, %i.cp
  store i16 %i.cq, ptr %i.bx, align 8
  %i.cr = trunc i32 %i.cf to i16
  store i16 %i.cr, ptr %i.cb, align 2
  %i.cs = getelementptr i8, ptr %i.m, i64 2
  %i.ct = load i16, ptr %i.cs, align 2            ; 4 uses
  %i.cu = zext i16 %i.ct to i32                   ; 2 uses
  %i.cv = getelementptr i8, ptr %i.ab, i64 16     ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 8
  %i.cx = zext i16 %i.cw to i32
  %i.cy = getelementptr i8, ptr %i.ab, i64 14     ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2
  %i.da = zext i16 %i.cz to i32                   ; 3 uses
  %i.db = sub nsw i32 %i.cx, %i.da
  %i.dc = getelementptr i8, ptr %i.ab, i64 18     ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2
  %i.de = zext i16 %i.dd to i32
  %i.df = sub nsw i32 %i.de, %i.da
  %i.dg = getelementptr i8, ptr %i.ab, i64 20     ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 4
  %i.di = zext i16 %i.dh to i32                   ; 4 uses
  %i.dj = mul nuw i32 %i.di, %i.cu
  %i.dk = sdiv i32 %i.dj, %i.da                   ; 4 uses
  %i.dl = mul i32 %i.dk, %i.ci
  %i.dm = sdiv i32 %i.dl, %i.di
  store i32 %i.dm, ptr %i.ab, align 8
  store i16 %i.ct, ptr %i.cy, align 2
  %i.dn = mul i32 %i.dk, %i.db
  %i.do = sdiv i32 %i.dn, %i.di
  %i.dp = trunc i32 %i.do to i16
  %i.dq = add i16 %i.ct, %i.dp
  store i16 %i.dq, ptr %i.cv, align 8
  %i.dr = mul i32 %i.df, %i.dk
  %i.ds = sdiv i32 %i.dr, %i.di
  %i.dt = trunc i32 %i.ds to i16
  %i.du = add i16 %i.ct, %i.dt
  store i16 %i.du, ptr %i.dc, align 2
  %i.dv = trunc i32 %i.dk to i16
  store i16 %i.dv, ptr %i.dg, align 4
  %i.dw = getelementptr i8, ptr %i.ab, i64 62     ; 2 uses
  store i8 64, ptr %i.dw, align 2
  %.val4.i = load i8, ptr %1, align 2
  %.val5.i = load i16, ptr %i.k, align 16
  %4 = trunc i8 %.val4.i to i1
  %i.dx = zext i16 %.val5.i to i32                ; 2 uses
  %i.dy = add nuw nsw i32 %i.dx, 1
  %i.dz = shl nuw nsw i32 %i.dx, 1
  %i.ea = add nuw nsw i32 %i.dz, 2
  %.0.i.i.i = select i1 %4, i32 %i.dy, i32 %i.ea  ; 2 uses
  %i.eb = icmp samesign ult i32 %.0.i.i.i, 577
  %spec.store.select.i.i = select i1 %i.eb, i32 480, i32 %.0.i.i.i
  %i.ec = icmp eq i32 %spec.store.select.i.i, %i.cu
  br i1 %i.ec, label %bb.l, label %intel_tv_set_mode_type.exit

bb.l:                                             ; preds = %bb.k
  store i8 72, ptr %i.dw, align 2
  br label %intel_tv_set_mode_type.exit

intel_tv_set_mode_type.exit:                      ; preds = %bb.k, %bb.l
  tail call void @drm_mode_set_name(ptr noundef nonnull %i.ab) #10
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %i.ab) #10
  %i.ed = add i32 %.054, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.e, %intel_tv_set_mode_type.exit
  %.1 = phi i32 [ %.054, %bb.e ], [ %i.ed, %intel_tv_set_mode_type.exit ], [ %.054, %bb.f ], [ %.054, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.n, label %bb.d, !llvm.loop !25

bb.n:                                             ; preds = %bb.m
  ret i32 %.1
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @intel_tv_detect(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__drm_to_display(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 2248       ; 2 uses
  %.val = load ptr, ptr %i.d, align 8
  %i.e = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %__drm_to_dev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.g, %bb.d ], [ null, %bb.c ]
  %i.i = getelementptr i8, ptr %0, i64 64
  %i.j = load i32, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = zext i1 %2 to i32
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.h, i32 noundef 2, ptr noundef @.str.35, i32 noundef %i.j, ptr noundef %i.l, i32 noundef %i.m) #10
  %i.n = tail call zeroext i1 @intel_display_device_enabled(ptr noundef %i.c) #10
  br i1 %i.n, label %bb.e, label %intel_tv_find_better_format.exit

bb.e:                                             ; preds = %__drm_to_dev.exit
  %i.o = tail call zeroext i1 @intel_display_driver_check_access(ptr noundef %i.c) #10
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %0, i64 168
  %i.q = load i32, ptr %i.p, align 8
  br label %intel_tv_find_better_format.exit

bb.g:                                             ; preds = %bb.e
  br i1 %2, label %bb.h, label %bb.af

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @intel_load_detect_get_pipe(ptr noundef %0, ptr noundef %1) #10 ; 4 uses
  %i.s = icmp ugt ptr %i.r, inttoptr (i64 -4096 to ptr)
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = trunc i64 %i.t to i32
  br label %intel_tv_find_better_format.exit

bb.j:                                             ; preds = %bb.h
  %.not34 = icmp eq ptr %i.r, null
  br i1 %.not34, label %intel_tv_find_better_format.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i37 = icmp eq ptr %i.v, null
  br i1 %.not.i37, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call ptr @__drm_to_display(ptr noundef nonnull %i.v) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = phi ptr [ %i.w, %bb.l ], [ null, %bb.k ] ; 36 uses
  %i.y = getelementptr i8, ptr %0, i64 1960       ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 1576      ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8
  %i.ae = and i8 %i.ad, 1
  %.not57.i = icmp eq i8 %i.ae, 0
  br i1 %.not57.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr i8, ptr %i.x, i64 1224    ; 2 uses
  tail call void @_raw_spin_lock_irq(ptr noundef %i.af) #10
  tail call void @i915_disable_pipestat(ptr noundef %i.x, i32 noundef 0, i32 noundef 1028) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %i.af) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425988) #10
  %.val.i.i = load ptr, ptr %i.x, align 8
  %i.ag = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #10 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call i32 %i.ai(ptr noundef %i.ag, i32 range(i32 425984, 426101) 425988, i1 noundef zeroext true) #10, !inline_history !27 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425988) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425984) #10
  %.val.i60.i = load ptr, ptr %i.x, align 8
  %i.ak = tail call ptr @to_intel_uncore(ptr noundef %.val.i60.i) #10 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 144
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call i32 %i.am(ptr noundef %i.ak, i32 range(i32 425984, 426101) 425984, i1 noundef zeroext true) #10, !inline_history !27 ; 2 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425984) #10
  %i.ao = and i32 %i.an, 1073741816
  %i.ap = getelementptr i8, ptr %i.ab, i64 1664
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = shl i32 %i.aq, 30
  %i.as = or disjoint i32 %i.ar, %i.ao
  %i.at = or disjoint i32 %i.as, 7                ; 2 uses
  %i.au = and i32 %i.aj, -2130706624
  %i.av = getelementptr i8, ptr %i.x, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = and i64 %i.aw, 65536
  %.not58.i = icmp eq i64 %i.ax, 0
  %spec.select.v.i = select i1 %.not58.i, i32 251658410, i32 170
  %spec.select.i = or disjoint i32 %spec.select.v.i, %i.au
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425984) #10
  %.val.i61.i = load ptr, ptr %i.x, align 8
  %i.ay = tail call ptr @to_intel_uncore(ptr noundef %.val.i61.i) #10 ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 176
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef %i.ay, i32 425984, i32 noundef %i.at, i1 noundef zeroext true) #10, !inline_history !28
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425984) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425988) #10
  %.val.i62.i = load ptr, ptr %i.x, align 8
  %i.bb = tail call ptr @to_intel_uncore(ptr noundef %.val.i62.i) #10 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef %i.bb, i32 425988, i32 noundef %spec.select.i, i1 noundef zeroext true) #10, !inline_history !28
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425988) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425988) #10
  %.val.i63.i = load ptr, ptr %i.x, align 8
  %i.be = tail call ptr @to_intel_uncore(ptr noundef %.val.i63.i) #10 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call i32 %i.bg(ptr noundef %i.be, i32 range(i32 425984, 425989) 425988, i1 noundef zeroext false) #10, !inline_history !29 ; 0 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425988) #10
  tail call void @intel_crtc_wait_for_next_vblank(ptr noundef %i.ab) #10
  tail call void @intel_dmc_wl_get(ptr noundef %i.x, i32 425988) #10
  %.val.i64.i = load ptr, ptr %i.x, align 8
  %i.bi = tail call ptr @to_intel_uncore(ptr noundef %.val.i64.i) #10 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 144
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call i32 %i.bk(ptr noundef %i.bi, i32 range(i32 425984, 426101) 425988, i1 noundef zeroext true) #10, !inline_history !27 ; 3 uses
  tail call void @intel_dmc_wl_put(ptr noundef %i.x, i32 425988) #10
  %i.bm = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.p, %bb.o
  %i.bp = phi ptr [ %i.bo, %bb.p ], [ null, %bb.o ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bp, i32 noundef 2, ptr noundef @.str.36, i32 noundef %i.at, i32 noundef %i.bl) #10
  %i.bq = and i32 %i.bl, 1879048192               ; 2 uses
  %i.br = icmp eq i32 %i.bq, 805306368
  br i1 %i.br, label %bb.q, label %bb.s

bb.q:                                             ; preds = %__drm_to_dev.exit.i
  %i.bs = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i65.i = icmp eq ptr %i.bs, null
  br i1 %.not.i65.i, label %__drm_to_dev.exit66.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  br label %__drm_to_dev.exit66.i

__drm_to_dev.exit66.i:                            ; preds = %bb.r, %bb.q
  %i.bv = phi ptr [ %i.bu, %bb.r ], [ null, %bb.q ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bv, i32 noundef 2, ptr noundef @.str.37) #10
end_hunk_1
