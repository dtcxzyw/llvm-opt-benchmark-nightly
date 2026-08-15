inline.NumInlined: 55
inline.NumDeleted: 10
begin_hunk_0_@handle_cmdline_files:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  br label %bb.v

efi_open_device_path.exit.thread139:              ; preds = %._crit_edge.i, %bb.u
  %.0.i112.ph = phi i64 [ 0, %bb.u ], [ -9223372036854775807, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  br label %bb.aa

efi_open_device_path.exit:                        ; preds = %bb.u
  %i.fp = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.3) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  switch i64 %i.fo, label %.thread141 [
    i64 -9223372036854775794, label %bb.v
    i64 -9223372036854775805, label %bb.v
  ]

bb.v:                                             ; preds = %efi_open_device_path.exit.thread, %efi_open_device_path.exit, %efi_open_device_path.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_open_volume.fs_proto, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  br i1 %i.ab, label %bb.w, label %.thread.i113

bb.w:                                             ; preds = %bb.v
  %i.fq = load ptr, ptr @efi_system_table, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 96
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 152
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = load ptr, ptr %i.ak, align 8
  %i.fw = call win64cc i64 %i.fu(ptr noundef %i.fv, ptr noundef nonnull %8, ptr noundef nonnull %i.f) #5, !inline_history !10 ; 2 uses
  %.not.i115 = icmp eq i64 %i.fw, 0
  br i1 %.not.i115, label %bb.x, label %.sink.split.i

.thread.i113:                                     ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.fx = load ptr, ptr @efi_system_table, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 60
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = zext i32 %i.fz to i64
  %i.gb = inttoptr i64 %i.ga to ptr
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 88
  %i.gd = load i32, ptr %i.gc, align 8
  %i.ge = load i32, ptr %i.az, align 4
  %i.gf = zext i32 %i.ge to i64
  %i.gg = inttoptr i64 %i.gf to ptr
  store i32 0, ptr %i.ba, align 4
  %i.gh = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.gd, ptr noundef %i.gg, ptr noundef nonnull %8, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  %i.gi = trunc i64 %i.gh to i32                  ; 3 uses
  %i.gj = call noundef i32 @llvm.fshl.i32(i32 %i.gi, i32 %i.gi, i32 1)
  %i.gk = zext i32 %i.gj to i64                   ; 2 uses
  %i.gl = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.gk, i64 range(i64 0, 4294967296) %i.gk, i64 63)
  %.not19.i = icmp eq i32 %i.gi, 0
  br i1 %.not19.i, label %bb.y, label %.sink.split.i

bb.x:                                             ; preds = %bb.w
  %i.gm = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = call win64cc i64 %i.go(ptr noundef %i.gm, ptr noundef nonnull %i.s) #5, !inline_history !10
  br label %bb.z

bb.y:                                             ; preds = %.thread.i113
  %i.gq = load ptr, ptr %i.f, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load i32, ptr %i.gr, align 8
  store i32 0, ptr %i.ay, align 4
  %i.gt = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.gs, ptr noundef %i.gq, ptr noundef nonnull %i.s, ptr noundef nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  %i.gu = trunc i64 %i.gt to i32                  ; 2 uses
  %i.gv = call noundef i32 @llvm.fshl.i32(i32 %i.gu, i32 %i.gu, i32 1)
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.gw, i64 range(i64 0, 4294967296) %i.gw, i64 63)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.gy = phi i64 [ %i.gp, %bb.x ], [ %i.gx, %bb.y ] ; 2 uses
  %.not18.i = icmp eq i64 %i.gy, 0
  br i1 %.not18.i, label %efi_open_volume.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.z, %.thread.i113, %bb.w
  %.str.3.sink.i = phi ptr [ @.str.4, %bb.w ], [ @.str.4, %.thread.i113 ], [ @.str.3, %bb.z ]
  %.0.ph.i = phi i64 [ %i.fw, %bb.w ], [ %i.gl, %.thread.i113 ], [ %i.gy, %bb.z ]
  %i.gz = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull %.str.3.sink.i) #5 ; 0 uses
  br label %efi_open_volume.exit

efi_open_volume.exit:                             ; preds = %bb.z, %.sink.split.i
  %.0.i114 = phi i64 [ 0, %bb.z ], [ %.0.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  br label %bb.aa

bb.aa:                                            ; preds = %efi_open_device_path.exit.thread139, %efi_open_volume.exit
  %.389 = phi i64 [ %.0.i114, %efi_open_volume.exit ], [ %.0.i112.ph, %efi_open_device_path.exit.thread139 ] ; 2 uses
  %.not105 = icmp eq i64 %.389, 0
  br i1 %.not105, label %bb.ab, label %.thread141

bb.ab:                                            ; preds = %bb.aa
  %i.ha = load ptr, ptr %i.s, align 8             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) @__const.efi_open_file.info_guid, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  %.035.i = phi ptr [ %i.as, %bb.ab ], [ %i.hc, %bb.ae ] ; 3 uses
  %i.hb = load i16, ptr %.035.i, align 2
  switch i16 %i.hb, label %bb.ae [
    i16 0, label %bb.af
    i16 47, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  store i16 92, ptr %.035.i, align 2
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.hc = getelementptr inbounds nuw i8, ptr %.035.i, i64 2
  br label %bb.ac, !llvm.loop !11

bb.af:                                            ; preds = %bb.ac
  br i1 %i.ab, label %bb.ag, label %.thread.i116

bb.ag:                                            ; preds = %bb.af
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = call win64cc i64 %i.he(ptr noundef %i.ha, ptr noundef nonnull %i.a, ptr noundef nonnull %i.as, i64 noundef 1, i64 noundef 0) #5, !inline_history !12 ; 2 uses
  %.not39.i = icmp eq i64 %i.hf, 0
  br i1 %.not39.i, label %bb.ah, label %.thread231

.thread231:                                       ; preds = %bb.ag
  %i.hg = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.as) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  br label %bb.ax

.thread.i116:                                     ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hi = load i32, ptr %i.hh, align 8
  store i32 0, ptr %i.bb, align 4
  %i.hj = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.hi, ptr noundef %i.ha, ptr noundef nonnull %i.a, ptr noundef nonnull %i.as, i32 noundef 1, i64 noundef 0, i32 noundef 0, i64 noundef 0, ptr noundef nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  %i.hk = trunc i64 %i.hj to i32                  ; 3 uses
  %.not3941.i = icmp eq i32 %i.hk, 0
  br i1 %.not3941.i, label %.thread43.i, label %efi_open_file.exit

bb.ah:                                            ; preds = %bb.ag
  store i64 592, ptr %i.b, align 8
  %i.hl = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 64
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = call win64cc i64 %i.hn(ptr noundef %i.hl, ptr noundef nonnull %7, ptr noundef nonnull %i.b, ptr noundef nonnull %11) #5, !inline_history !12 ; 2 uses
  %.not40.i = icmp eq i64 %i.ho, 0
  br i1 %.not40.i, label %efi_open_file.exit.thread, label %.thread220

.thread43.i:                                      ; preds = %.thread.i116
  store i64 592, ptr %i.b, align 8
  %i.hp = load ptr, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 36
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.hr, ptr noundef %i.hp, ptr noundef nonnull %7, ptr noundef nonnull %i.b, ptr noundef nonnull %11, ptr noundef nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  %i.ht = trunc i64 %i.hs to i32                  ; 3 uses
  %.not4044.i = icmp eq i32 %i.ht, 0
  br i1 %.not4044.i, label %efi_open_file.exit.thread, label %efi_open_file.exit.thread222

.thread220:                                       ; preds = %bb.ah
  %i.hu = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.6) #5 ; 0 uses
  %i.hv = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = call win64cc i64 %i.hx(ptr noundef %i.hv) #5, !inline_history !12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  br label %bb.ax

efi_open_file.exit.thread:                        ; preds = %bb.ah, %.thread43.i
  %i.hz = load ptr, ptr %i.a, align 8             ; 12 uses
  %i.ia = load i64, ptr %i.bc, align 8            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  %i.ib = add i64 %i.ia, %.2                      ; 6 uses
  %i.ic = add i64 %i.ib, 4095
  %12 = and i64 %i.ic, -4096
  %i.id = add i64 %.2, 4095
  %13 = and i64 %i.id, -4096
  %i.ie = icmp ugt i64 %12, %13
  br i1 %i.ie, label %bb.ai, label %.thread157

efi_open_file.exit:                               ; preds = %.thread.i116
  %i.if = call noundef i32 @llvm.fshl.i32(i32 %i.hk, i32 %i.hk, i32 1)
  %i.ig = zext i32 %i.if to i64                   ; 2 uses
  %i.ih = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.ig, i64 range(i64 0, 4294967296) %i.ig, i64 63)
  %i.ii = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.as) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  br label %bb.ay

efi_open_file.exit.thread222:                     ; preds = %.thread43.i
  %i.ij = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.6) #5 ; 0 uses
  %i.ik = load ptr, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 12
  %i.im = load i32, ptr %i.il, align 4
  %i.in = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.im, ptr noundef %i.ik, ptr noundef nonnull %i.e) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  %i.io = call noundef i32 @llvm.fshl.i32(i32 %i.ht, i32 %i.ht, i32 1)
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  %i.iq = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.ip, i64 range(i64 0, 4294967296) %i.ip, i64 63)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  br label %bb.ay

bb.ai:                                            ; preds = %efi_open_file.exit.thread
  %i.ir = load i64, ptr %i.t, align 8             ; 3 uses
  br i1 %i.bd, label %bb.aj, label %.thread155

bb.aj:                                            ; preds = %bb.ai
  %i.is = call i64 @efi_allocate_pages(i64 noundef %i.ib, ptr noundef nonnull %i.t, i64 noundef %3) #5 ; 2 uses
  %i.it = icmp eq i64 %i.is, -9223372036854775799
  br i1 %i.it, label %.thread155, label %bb.ak

.thread155:                                       ; preds = %bb.ai, %bb.aj
  %i.iu = call i64 @efi_allocate_pages(i64 noundef %i.ib, ptr noundef nonnull %i.t, i64 noundef %4) #5
  br label %bb.ak

bb.ak:                                            ; preds = %.thread155, %bb.aj
  %.5 = phi i64 [ %i.iu, %.thread155 ], [ %i.is, %bb.aj ] ; 2 uses
  %.not107 = icmp eq i64 %.5, 0
  br i1 %.not107, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %.not108 = icmp eq i64 %i.ir, 0
  br i1 %.not108, label %.thread157, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iv = load i64, ptr %i.t, align 8
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = inttoptr i64 %i.ir to ptr
  %i.iy = call ptr @memcpy(ptr noundef %i.iw, ptr noundef nonnull %i.ix, i64 noundef %.2) #5 ; 0 uses
  call void @efi_free(i64 noundef %.2, i64 noundef %i.ir) #5
  br label %.thread157

bb.an:                                            ; preds = %bb.ak
  %i.iz = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str) #5 ; 0 uses
  br label %bb.aw

.thread157:                                       ; preds = %bb.am, %bb.al, %efi_open_file.exit.thread
  %.not109268 = icmp eq i64 %i.ia, 0
  br i1 %.not109268, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread157
  %i.ja = load i64, ptr %i.t, align 8
  %i.jb = inttoptr i64 %i.ja to ptr
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.2
  %i.jd = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  %i.je = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph, %bb.as
  %.094270 = phi ptr [ %i.jc, %.lr.ph ], [ %i.js, %bb.as ] ; 3 uses
  %.1269 = phi i64 [ %i.ia, %.lr.ph ], [ %i.jt, %bb.as ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #4
  %i.jf = call i64 @llvm.umin.i64(i64 %.1269, i64 1048576)
  %i.jg = select i1 %i.ar, i64 %.1269, i64 %i.jf
  store i64 %i.jg, ptr %i.u, align 8
  br i1 %i.ab, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jh = load ptr, ptr %i.je, align 8
  %i.ji = call win64cc i64 %i.jh(ptr noundef %i.hz, ptr noundef nonnull %i.u, ptr noundef %.094270) #5
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #4
  %i.jj = load i32, ptr %i.jd, align 4
  %i.jk = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.jj, ptr noundef %i.hz, ptr noundef nonnull %i.u, ptr noundef %.094270, ptr noundef nonnull %i.v) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #4
  %i.jl = trunc i64 %i.jk to i32                  ; 2 uses
  %i.jm = call noundef i32 @llvm.fshl.i32(i32 %i.jl, i32 %i.jl, i32 1)
  %i.jn = zext i32 %i.jm to i64                   ; 2 uses
  %i.jo = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.jn, i64 range(i64 0, 4294967296) %i.jn, i64 63)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jp = phi i64 [ %i.ji, %bb.ap ], [ %i.jo, %bb.aq ] ; 2 uses
  %.not110 = icmp eq i64 %i.jp, 0
  br i1 %.not110, label %bb.as, label %.thread159

.thread159:                                       ; preds = %bb.ar
  %i.jq = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.1) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #4
  br label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %i.jr = load i64, ptr %i.u, align 8             ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.094270, i64 %i.jr
  %i.jt = sub i64 %.1269, %i.jr                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #4
  %.not109 = icmp eq i64 %i.jt, 0
  br i1 %.not109, label %._crit_edge, label %bb.ao, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.as, %.thread157
  br i1 %i.ab, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = call win64cc i64 %i.jv(ptr noundef %i.hz) #5 ; 0 uses
  %i.jx = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = call win64cc i64 %i.jz(ptr noundef %i.jx) #5 ; 0 uses
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #4
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.kc = load i32, ptr %i.kb, align 4
  %i.kd = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.kc, ptr noundef %i.hz, ptr noundef nonnull %i.w) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #4
  %i.ke = load ptr, ptr %i.s, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #4
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %i.kg = load i32, ptr %i.kf, align 4
  %i.kh = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.kg, ptr noundef %i.ke, ptr noundef nonnull %i.x) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #4
  br label %bb.av

.thread179:                                       ; preds = %find_file_option.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  br label %.loopexit

.thread141:                                       ; preds = %efi_open_device_path.exit, %bb.aa
  %.8 = phi i64 [ %.389, %bb.aa ], [ %i.fo, %efi_open_device_path.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  br label %bb.az

bb.av:                                            ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  %i.ki = icmp sgt i32 %.3.i, 0
  br i1 %i.ki, label %bb.h, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %bb.av, %.thread179
  %.3177 = phi i64 [ %.2, %.thread179 ], [ %i.ib, %bb.av ] ; 2 uses
  %i.kj = load i64, ptr %i.t, align 8
  store i64 %i.kj, ptr %5, align 8
  store i64 %.3177, ptr %6, align 8
  %i.kk = icmp eq i64 %.3177, 0
  %. = select i1 %i.kk, i64 -9223372036854775802, i64 0
  br label %bb.ba

bb.aw:                                            ; preds = %.thread159, %bb.an
  %.8.ph = phi i64 [ %.5, %bb.an ], [ %i.jp, %.thread159 ] ; 2 uses
  %.3.ph = phi i64 [ %.2, %bb.an ], [ %i.ib, %.thread159 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  br i1 %i.ab, label %.thread210, label %.thread215

.thread210:                                       ; preds = %bb.aw
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.km = load ptr, ptr %i.kl, align 8
  %i.kn = call win64cc i64 %i.km(ptr noundef %i.hz) #5 ; 0 uses
  br label %bb.ax

.thread215:                                       ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.kp = load i32, ptr %i.ko, align 4
  %i.kq = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.kp, ptr noundef %i.hz, ptr noundef nonnull %i.y) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #4
  br label %bb.ay

bb.ax:                                            ; preds = %.thread231, %.thread220, %.thread210
  %.8196214 = phi i64 [ %.8.ph, %.thread210 ], [ %i.hf, %.thread231 ], [ %i.ho, %.thread220 ]
  %.3199213 = phi i64 [ %.3.ph, %.thread210 ], [ %.2, %.thread231 ], [ %.2, %.thread220 ]
  %i.kr = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8
  %i.ku = call win64cc i64 %i.kt(ptr noundef %i.kr) #5 ; 0 uses
  br label %bb.az

bb.ay:                                            ; preds = %efi_open_file.exit, %efi_open_file.exit.thread222, %.thread215
  %.8196219 = phi i64 [ %.8.ph, %.thread215 ], [ %i.ih, %efi_open_file.exit ], [ %i.iq, %efi_open_file.exit.thread222 ]
end_hunk_0
