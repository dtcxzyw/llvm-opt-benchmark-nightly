inline.NumInlined: 119
inline.NumDeleted: 35
begin_hunk_0_@efi_stub_entry:bb.a

bb.af:                                            ; preds = %efistub_fw_vendor.exit.i
  %i.ef = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.11) #6 ; 0 uses
  store i32 0, ptr %i.s, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %efistub_fw_vendor.exit.i, %bb.ab
  %i.eg = load ptr, ptr @cmdline_memmap_override, align 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.eg, null
  br i1 %.not23.i, label %._crit_edge.i, label %bb.ah

._crit_edge.i:                                    ; preds = %bb.ag
  %.pre.pre.i = load i32, ptr %i.s, align 8
  %i.eh = zext i32 %.pre.pre.i to i64
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ei = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.eg) #6 ; 0 uses
  store i32 0, ptr %i.s, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i, %bb.af
  %.pre.i = phi i64 [ %i.eh, %._crit_edge.i ], [ 0, %bb.ah ], [ 0, %bb.af ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.071, i64 529 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = or i8 %i.ek, 2
  store i8 %i.el, ptr %i.ej, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.aa
  %i.em = phi i64 [ 0, %bb.aa ], [ %.pre.i, %bb.ai ]
  %.018.i = phi i64 [ 16777216, %bb.aa ], [ %i.dt, %bb.ai ]
  %i.en = select i1 %i.bn, i64 -1, i64 4294967295
  %i.eo = call i64 @efi_random_alloc(i64 noundef %i.dh, i64 noundef 2097152, ptr noundef nonnull %i.r, i64 noundef %i.em, i32 noundef 1, i64 noundef 16777216, i64 noundef %i.en) #6 ; 2 uses
  %.not24.i = icmp eq i64 %i.eo, 0
  br i1 %.not24.i, label %bb.ak, label %efi_decompress_kernel.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.ep = load i64, ptr %i.r, align 8
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = call i64 @decompress_kernel(ptr noundef %i.eq, i64 noundef %.018.i, ptr noundef nonnull @error) #6 ; 2 uses
  %i.es = icmp eq i64 %i.er, -1
  %i.et = load i64, ptr %i.r, align 8             ; 3 uses
  br i1 %i.es, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @efi_free(i64 noundef %i.dh, i64 noundef %i.et) #6
  br label %efi_decompress_kernel.exit.thread

bb.am:                                            ; preds = %bb.ak
  %i.eu = load i64, ptr @kernel_text_size, align 8
  %i.ev = call i64 @efi_adjust_memory_range_protection(i64 noundef %i.et, i64 noundef %i.eu) #8 ; 2 uses
  %.not25.i = icmp eq i64 %i.ev, 0
  br i1 %.not25.i, label %efi_decompress_kernel.exit, label %efi_decompress_kernel.exit.thread

efi_decompress_kernel.exit.thread:                ; preds = %bb.aj, %bb.al, %bb.am
  %.0.i42.ph = phi i64 [ %i.ev, %bb.am ], [ -9223372036854775807, %bb.al ], [ %i.eo, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  br label %.sink.split

efi_decompress_kernel.exit:                       ; preds = %bb.am
  %i.ew = load i64, ptr %i.r, align 8
  %i.ex = load i64, ptr @kernel_inittext_offset, align 8
  %i.ey = add i64 %i.ex, %i.ew
  %i.ez = load i64, ptr @kernel_inittext_size, align 8
  %i.fa = call i64 @efi_adjust_memory_range_protection(i64 noundef %i.ey, i64 noundef %i.ez) #8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  %.not36 = icmp eq i64 %i.fa, 0
  br i1 %.not36, label %bb.an, label %.sink.split

bb.an:                                            ; preds = %efi_decompress_kernel.exit
  %i.fb = load ptr, ptr @image, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %.071, i64 556
  %i.fd = load i32, ptr %i.fc, align 1
  %i.fe = zext i32 %i.fd to i64
  %i.ff = call i64 @efi_load_initrd(ptr noundef %i.fb, i64 noundef %i.fe, i64 noundef -1, ptr noundef nonnull %i.v) #6 ; 2 uses
  %.not37 = icmp eq i64 %i.ff, 0
  br i1 %.not37, label %bb.ao, label %bb.dd

bb.ao:                                            ; preds = %bb.an
  %i.fg = load ptr, ptr %i.v, align 8             ; 3 uses
  %.not38 = icmp eq ptr %i.fg, null
  br i1 %.not38, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8
  %.not39 = icmp eq i64 %i.fi, 0
  br i1 %.not39, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fj = load i64, ptr %i.fg, align 8            ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.071, i64 536
  %i.fl = getelementptr inbounds nuw i8, ptr %.071, i64 192
  %i.fm = trunc i64 %i.fj to i32
  store i32 %i.fm, ptr %i.fk, align 4
  %i.fn = lshr i64 %i.fj, 32
  %i.fo = trunc nuw i64 %i.fn to i32
  store i32 %i.fo, ptr %i.fl, align 4
  %i.fp = load i64, ptr %i.fh, align 8            ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.071, i64 540
  %i.fr = getelementptr inbounds nuw i8, ptr %.071, i64 196
  %i.fs = trunc i64 %i.fp to i32
  store i32 %i.fs, ptr %i.fq, align 4
  %i.ft = lshr i64 %i.fp, 32
  %i.fu = trunc nuw i64 %i.ft to i32
  store i32 %i.fu, ptr %i.fr, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.fv = getelementptr inbounds nuw i8, ptr %.071, i64 492 ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = icmp eq i8 %i.fw, 0
  br i1 %i.fx, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fy = call i32 @efi_get_secureboot() #6
  %i.fz = trunc i32 %i.fy to i8
  store i8 %i.fz, ptr %i.fv, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ga = call i64 @efi_random_get_seed() #6      ; 0 uses
  call void @efi_retrieve_eventlog() #6
  %i.gb = call ptr @memset(ptr noundef nonnull %.071, i32 noundef 0, i64 noundef 64) #6
  %i.gc = getelementptr inbounds nuw i8, ptr %.071, i64 320
  %i.gd = call ptr @memset(ptr noundef nonnull %i.gc, i32 noundef 0, i64 noundef 128) #6
  %i.ge = call i64 @efi_setup_graphics(ptr noundef %i.gb, ptr noundef %i.gd) #6 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  store ptr null, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const.setup_efi_pci.pci_proto, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #5
  br i1 %i.bn, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gf = load ptr, ptr @efi_system_table, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 96
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 312
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = call win64cc i64 %i.gj(i32 noundef 2, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m) #6, !inline_history !10
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #5
  %i.gl = load ptr, ptr @efi_system_table, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 60
  %i.gn = load i32, ptr %i.gm, align 4
  %i.go = zext i32 %i.gn to i64
  %i.gp = inttoptr i64 %i.go to ptr
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 168
  %i.gr = load i32, ptr %i.gq, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.gs, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 0, ptr %i.gt, align 4
  %i.gu = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.gr, i32 noundef 2, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %i.n, ptr noundef nonnull %i.m, ptr noundef nonnull %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  %i.gv = trunc i64 %i.gu to i32                  ; 2 uses
  %i.gw = call noundef i32 @llvm.fshl.i32(i32 %i.gv, i32 %i.gv, i32 1)
  %i.gx = zext i32 %i.gw to i64                   ; 2 uses
  %i.gy = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.gx, i64 range(i64 0, 4294967296) %i.gx, i64 63)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gz = phi i64 [ %i.gk, %bb.au ], [ %i.gy, %bb.av ]
  %.not.i44 = icmp eq i64 %i.gz, 0
  br i1 %.not.i44, label %bb.ax, label %.critedge2.i

bb.ax:                                            ; preds = %bb.aw
  %i.ha = getelementptr inbounds nuw i8, ptr %.071, i64 592 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.020.in.i = phi i64 [ %i.hb, %bb.ax ], [ %i.hc, %bb.az ] ; 2 uses
  %.020.i = inttoptr i64 %.020.in.i to ptr        ; 2 uses
  %.not24.i45 = icmp eq i64 %.020.in.i, 0
  br i1 %.not24.i45, label %.critedge.i47, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hc = load i64, ptr %.020.i, align 8          ; 2 uses
  %.not25.i46 = icmp eq i64 %i.hc, 0
  br i1 %.not25.i46, label %.critedge.i47, label %bb.ay, !llvm.loop !11

.critedge.i47:                                    ; preds = %bb.az, %bb.ay
  %i.hd = load i64, ptr %i.n, align 8
  %.not65.i = icmp eq i64 %i.hd, 0
  br i1 %.not65.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i47
  %i.he = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bq, %.lr.ph.i
  %indvars.iv.i48 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i49, %bb.bq ] ; 3 uses
  %.160.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.2.i, %bb.bq ] ; 6 uses
  %.03459.i = phi ptr [ undef, %.lr.ph.i ], [ %.135.i, %bb.bq ] ; 5 uses
  %i.hg = load ptr, ptr %i.m, align 8             ; 2 uses
  br i1 %i.bn, label %bb.bb, label %.thread37.i

bb.bb:                                            ; preds = %bb.ba
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.i48
  %i.hi = load ptr, ptr %i.hh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #5
  store ptr null, ptr %i.p, align 8
  %i.hj = load ptr, ptr @efi_system_table, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 96
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 152
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = call win64cc i64 %i.hn(ptr noundef %i.hi, ptr noundef nonnull %5, ptr noundef nonnull %i.p) #6, !inline_history !10
  %i.hp = icmp eq i64 %i.ho, 0
  %i.hq = load ptr, ptr %i.p, align 8             ; 4 uses
  %i.hr = icmp ne ptr %i.hq, null
  %or.cond.i = select i1 %i.hp, i1 %i.hr, i1 false
  br i1 %or.cond.i, label %bb.bc, label %bb.bq

.thread37.i:                                      ; preds = %bb.ba
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hg, i64 %indvars.iv.i48
  %i.ht = load i32, ptr %i.hs, align 4
  %i.hu = zext i32 %i.ht to i64
  %i.hv = inttoptr i64 %i.hu to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #5
  store ptr null, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #5
  %i.hw = load ptr, ptr @efi_system_table, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 60
  %i.hy = load i32, ptr %i.hx, align 4
  %i.hz = zext i32 %i.hy to i64
  %i.ia = inttoptr i64 %i.hz to ptr
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 88
  %i.ic = load i32, ptr %i.ib, align 8
  store i32 0, ptr %i.he, align 4
  %i.id = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.ic, ptr noundef %i.hv, ptr noundef nonnull %5, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #5
  %i.ie = and i64 %i.id, 4294967295
  %i.if = icmp eq i64 %i.ie, 0
  %i.ig = load ptr, ptr %i.p, align 8             ; 4 uses
  %i.ih = icmp ne ptr %i.ig, null
  %or.cond38.i = select i1 %i.if, i1 %i.ih, i1 false
  br i1 %or.cond38.i, label %.thread80.i.i, label %bb.bq

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store ptr null, ptr %i.g, align 8
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hq, i64 152
  %i.ij = load ptr, ptr %i.ii, align 8            ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.hq, i64 144
  %i.ik = load i64, ptr %.in.i.i, align 8         ; 3 uses
  %i.il = icmp eq ptr %i.ij, null
  %i.im = add i64 %i.ik, -16777217
  %i.in = icmp ult i64 %i.im, -16777216
  %or.cond3.i.i = select i1 %i.il, i1 true, i1 %i.in
  br i1 %or.cond3.i.i, label %preserve_pci_rom_image.exit.thread.i, label %bb.bd

.thread80.i.i:                                    ; preds = %.thread37.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store ptr null, ptr %i.g, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 80
  %i.ip = load i32, ptr %i.io, align 8            ; 2 uses
  %.in82.i.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 72
  %i.iq = load i64, ptr %.in82.i.i, align 8       ; 3 uses
  %i.ir = icmp eq i32 %i.ip, 0
  %i.is = add i64 %i.iq, -16777217
  %i.it = icmp ult i64 %i.is, -16777216
  %or.cond383.i.i = select i1 %i.ir, i1 true, i1 %i.it
  br i1 %or.cond383.i.i, label %preserve_pci_rom_image.exit.thread.i, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.iu = add nuw nsw i64 %i.ik, 64
  %i.iv = load ptr, ptr @efi_system_table, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 96
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 64
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = call win64cc i64 %i.iz(i32 noundef 2, i64 noundef %i.iu, ptr noundef nonnull %i.g) #6, !inline_history !12
  br label %bb.bf

bb.be:                                            ; preds = %.thread80.i.i
  %i.jb = zext i32 %i.ip to i64
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = add nuw nsw i64 %i.iq, 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  %i.je = load ptr, ptr @efi_system_table, align 8
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 60
  %i.jg = load i32, ptr %i.jf, align 4
  %i.jh = zext i32 %i.jg to i64
  %i.ji = inttoptr i64 %i.jh to ptr
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 44
  %i.jk = load i32, ptr %i.jj, align 4
  store i32 0, ptr %i.hf, align 4
  %i.jl = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.jk, i32 noundef 2, i64 noundef %i.jd, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  %i.jm = trunc i64 %i.jl to i32                  ; 2 uses
  %i.jn = call noundef i32 @llvm.fshl.i32(i32 %i.jm, i32 %i.jm, i32 1)
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %i.jp = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.jo, i64 range(i64 0, 4294967296) %i.jo, i64 63)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.jq = phi ptr [ %i.hq, %bb.bd ], [ %i.ig, %bb.be ] ; 10 uses
  %i.jr = phi ptr [ %i.ij, %bb.bd ], [ %i.jc, %bb.be ]
  %i.js = phi i64 [ %i.ik, %bb.bd ], [ %i.iq, %bb.be ] ; 3 uses
  %i.jt = phi i64 [ %i.ja, %bb.bd ], [ %i.jp, %bb.be ] ; 2 uses
  %.not.i31.i = icmp eq i64 %i.jt, 0
  br i1 %.not.i31.i, label %bb.bg, label %.sink.split.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.ju = load ptr, ptr %i.g, align 8
  %i.jv = call ptr @memset(ptr noundef %i.ju, i32 noundef 0, i64 noundef 64) #6 ; 0 uses
  %i.jw = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store i32 3, ptr %i.jx, align 8
  %i.jy = trunc nuw nsw i64 %i.js to i32
  %i.jz = add nuw nsw i32 %i.jy, 48
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  store i32 %i.jz, ptr %i.ka, align 4
  store i64 0, ptr %i.jw, align 8
  %i.kb = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  store i64 %i.js, ptr %i.kc, align 8
  br i1 %i.bn, label %bb.bh, label %.thread.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jq, i64 48 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kg = call win64cc i64 %i.ke(ptr noundef nonnull %i.jq, i32 noundef 1, i32 noundef 0, i64 noundef 1, ptr noundef nonnull %i.kf) #6, !inline_history !12 ; 2 uses
  %.not59.i.i = icmp eq i64 %i.kg, 0
  br i1 %.not59.i.i, label %bb.bi, label %.sink.split.i.i

.thread.i.i:                                      ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jq, i64 24 ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.kk = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.ki, ptr noundef nonnull %i.jq, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.kj, ptr noundef nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  %i.kl = trunc i64 %i.kk to i32                  ; 3 uses
  %i.km = call noundef i32 @llvm.fshl.i32(i32 %i.kl, i32 %i.kl, i32 1)
  %i.kn = zext i32 %i.km to i64                   ; 2 uses
  %i.ko = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.kn, i64 range(i64 0, 4294967296) %i.kn, i64 63)
  %.not5967.i.i = icmp eq i32 %i.kl, 0
  br i1 %.not5967.i.i, label %.thread69.i.i, label %.sink.split.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.kp = load ptr, ptr %i.kd, align 8
  %i.kq = load ptr, ptr %i.g, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 18
  %i.ks = call win64cc i64 %i.kp(ptr noundef nonnull %i.jq, i32 noundef 1, i32 noundef 2, i64 noundef 1, ptr noundef nonnull %i.kr) #6, !inline_history !12 ; 2 uses
  %.not60.i.i = icmp eq i64 %i.ks, 0
  br i1 %.not60.i.i, label %bb.bj, label %.sink.split.i.i

.thread69.i.i:                                    ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  %i.kt = load i32, ptr %i.kh, align 8
  %i.ku = load ptr, ptr %i.g, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 18
  %i.kw = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.kt, ptr noundef nonnull %i.jq, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %i.kv, ptr noundef nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  %i.kx = trunc i64 %i.kw to i32                  ; 3 uses
  %i.ky = call noundef i32 @llvm.fshl.i32(i32 %i.kx, i32 %i.kx, i32 1)
  %i.kz = zext i32 %i.ky to i64                   ; 2 uses
  %i.la = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.kz, i64 range(i64 0, 4294967296) %i.kz, i64 63)
  %.not6070.i.i = icmp eq i32 %i.kx, 0
  br i1 %.not6070.i.i, label %.thread71.i.i, label %.sink.split.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jq, i64 112
  %i.lc = load ptr, ptr %i.lb, align 8
  %i.ld = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 48
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ld, i64 56
  %i.li = call win64cc i64 %i.lc(ptr noundef nonnull %i.jq, ptr noundef nonnull %i.le, ptr noundef nonnull %i.lf, ptr noundef nonnull %i.lg, ptr noundef nonnull %i.lh) #6, !inline_history !12
  br label %bb.bk

.thread71.i.i:                                    ; preds = %.thread69.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jq, i64 56
  %i.lk = load i32, ptr %i.lj, align 8
  %i.ll = load ptr, ptr %i.g, align 8             ; 8 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 36
  store i32 0, ptr %i.ln, align 4
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ll, i64 40
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 44
  store i32 0, ptr %i.lp, align 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ll, i64 48
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 52
  store i32 0, ptr %i.lr, align 4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ll, i64 56
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ll, i64 60
  store i32 0, ptr %i.lt, align 4
  %i.lu = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.lk, ptr noundef nonnull %i.jq, ptr noundef nonnull %i.lm, ptr noundef nonnull %i.lo, ptr noundef nonnull %i.lq, ptr noundef nonnull %i.ls, ptr noundef nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  %i.lv = trunc i64 %i.lu to i32                  ; 2 uses
  %i.lw = call noundef i32 @llvm.fshl.i32(i32 %i.lv, i32 %i.lv, i32 1)
  %i.lx = zext i32 %i.lw to i64                   ; 2 uses
  %i.ly = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.lx, i64 range(i64 0, 4294967296) %i.lx, i64 63)
  br label %bb.bk

bb.bk:                                            ; preds = %.thread71.i.i, %bb.bj
  %i.lz = phi i64 [ %i.li, %bb.bj ], [ %i.ly, %.thread71.i.i ]
  %.not61.i.i = icmp eq i64 %i.lz, 0
  br i1 %.not61.i.i, label %preserve_pci_rom_image.exit.thread54.i, label %bb.bl

preserve_pci_rom_image.exit.thread54.i:           ; preds = %bb.bk
  %i.ma = load ptr, ptr %i.g, align 8
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 64
  %i.mc = call ptr @memcpy(ptr noundef nonnull %i.mb, ptr noundef nonnull %i.jr, i64 noundef %i.js) #6 ; 0 uses
  %i.md = load ptr, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %bb.bn

.sink.split.i.i:                                  ; preds = %.thread69.i.i, %bb.bi, %.thread.i.i, %bb.bh, %bb.bf
  %.str.17.sink.i.i = phi ptr [ @.str.16, %bb.bh ], [ @.str.15, %bb.bf ], [ @.str.16, %.thread.i.i ], [ @.str.17, %.thread69.i.i ], [ @.str.17, %bb.bi ]
  %.0.ph.ph.i.i = phi i64 [ %i.kg, %bb.bh ], [ %i.jt, %bb.bf ], [ %i.ko, %.thread.i.i ], [ %i.la, %.thread69.i.i ], [ %i.ks, %bb.bi ]
  %i.me = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull %.str.17.sink.i.i) #6 ; 0 uses
  %i.mf = icmp eq i64 %.0.ph.ph.i.i, 0
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split.i.i, %bb.bk
  %.0.ph.i.i = phi i1 [ false, %bb.bk ], [ %i.mf, %.sink.split.i.i ]
  %.pr.i.i = load ptr, ptr %i.g, align 8          ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i, label %preserve_pci_rom_image.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.bn, label %.thread46.i, label %.thread91.i.i

.thread46.i:                                      ; preds = %bb.bm
  %i.mg = load ptr, ptr @efi_system_table, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 96
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 72
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = call win64cc i64 %i.mk(ptr noundef nonnull %.pr.i.i) #6, !inline_history !12 ; 0 uses
  br label %preserve_pci_rom_image.exit.i

.thread91.i.i:                                    ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.mm = load ptr, ptr @efi_system_table, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 60
  %i.mo = load i32, ptr %i.mn, align 4
  %i.mp = zext i32 %i.mo to i64
  %i.mq = inttoptr i64 %i.mp to ptr
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 48
  %i.ms = load i32, ptr %i.mr, align 8
  %i.mt = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.ms, ptr noundef nonnull %.pr.i.i, ptr noundef nonnull %i.f) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  br label %preserve_pci_rom_image.exit.i

preserve_pci_rom_image.exit.thread.i:             ; preds = %.thread80.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %bb.bq

preserve_pci_rom_image.exit.i:                    ; preds = %.thread91.i.i, %.thread46.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br i1 %.0.ph.i.i, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %preserve_pci_rom_image.exit.i, %preserve_pci_rom_image.exit.thread54.i
  %.23658.i = phi ptr [ %i.md, %preserve_pci_rom_image.exit.thread54.i ], [ %.03459.i, %preserve_pci_rom_image.exit.i ] ; 5 uses
  %.not27.i = icmp eq ptr %.160.i, null
  %i.mu = ptrtoint ptr %.23658.i to i64           ; 2 uses
  br i1 %.not27.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i64 %i.mu, ptr %.160.i, align 8
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  store i64 %i.mu, ptr %i.ha, align 1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %preserve_pci_rom_image.exit.i, %preserve_pci_rom_image.exit.thread.i, %.thread37.i, %bb.bb
  %.135.i = phi ptr [ %.03459.i, %preserve_pci_rom_image.exit.thread.i ], [ %.03459.i, %preserve_pci_rom_image.exit.i ], [ %.03459.i, %bb.bb ], [ %.03459.i, %.thread37.i ], [ %.23658.i, %bb.bp ], [ %.23658.i, %bb.bo ]
  %.2.i = phi ptr [ %.160.i, %preserve_pci_rom_image.exit.thread.i ], [ %.160.i, %preserve_pci_rom_image.exit.i ], [ %.160.i, %bb.bb ], [ %.160.i, %.thread37.i ], [ %.23658.i, %bb.bp ], [ %.23658.i, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %i.mv = load i64, ptr %i.n, align 8
  %i.mw = icmp ugt i64 %i.mv, %indvars.iv.next.i49
  br i1 %i.mw, label %bb.ba, label %.critedge2.i, !llvm.loop !13

.critedge2.i:                                     ; preds = %bb.bq, %.critedge.i47, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.mx = load ptr, ptr %i.m, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i, label %setup_efi_pci.exit, label %bb.br

bb.br:                                            ; preds = %.critedge2.i
  br i1 %i.bn, label %setup_efi_pci.exit.thread, label %setup_efi_pci.exit.thread81

setup_efi_pci.exit.thread:                        ; preds = %bb.br
  %i.my = load ptr, ptr @efi_system_table, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 96
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 72
  %i.nc = load ptr, ptr %i.nb, align 8
  %i.nd = call win64cc i64 %i.nc(ptr noundef nonnull %i.mx) #6, !inline_history !10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  %i.ne = load ptr, ptr @efi_system_table, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  br label %efistub_fw_vendor.exit.i50

setup_efi_pci.exit.thread81:                      ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  %i.ng = load ptr, ptr @efi_system_table, align 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 60
  %i.ni = load i32, ptr %i.nh, align 4
  %i.nj = zext i32 %i.ni to i64
  %i.nk = inttoptr i64 %i.nj to ptr
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 48
  %i.nm = load i32, ptr %i.nl, align 8
  %i.nn = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.nm, ptr noundef nonnull %i.mx, ptr noundef nonnull %i.l) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  %i.no = load ptr, ptr @efi_system_table, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 24
  br label %efistub_fw_vendor.exit.thread.i

setup_efi_pci.exit:                               ; preds = %.critedge2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  %i.nq = load ptr, ptr @efi_system_table, align 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 24 ; 2 uses
  br i1 %i.bn, label %efistub_fw_vendor.exit.i50, label %efistub_fw_vendor.exit.thread.i

efistub_fw_vendor.exit.i50:                       ; preds = %setup_efi_pci.exit.thread, %setup_efi_pci.exit
  %i.ns = phi ptr [ %i.nf, %setup_efi_pci.exit.thread ], [ %i.nr, %setup_efi_pci.exit ]
  %i.nt = load i64, ptr %i.ns, align 8
  %i.nu = inttoptr i64 %i.nt to ptr
  %i.nv = call i32 @memcmp(ptr noundef %i.nu, ptr noundef nonnull @apple, i64 noundef 12) #6
  %.not.i51 = icmp eq i32 %i.nv, 0
  br i1 %.not.i51, label %bb.bs, label %setup_quirks.exit

efistub_fw_vendor.exit.thread.i:                  ; preds = %setup_efi_pci.exit.thread81, %setup_efi_pci.exit
  %i.nw = phi ptr [ %i.np, %setup_efi_pci.exit.thread81 ], [ %i.nr, %setup_efi_pci.exit ]
  %i.nx = load i32, ptr %i.nw, align 8
  %i.ny = zext i32 %i.nx to i64
  %i.nz = inttoptr i64 %i.ny to ptr
  %i.oa = call i32 @memcmp(ptr noundef %i.nz, ptr noundef nonnull @apple, i64 noundef 12) #6
  %.not1.i = icmp eq i32 %i.oa, 0
  br i1 %.not1.i, label %.thread.i, label %setup_quirks.exit

.thread.i:                                        ; preds = %efistub_fw_vendor.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  br label %apple_set_os.exit.i

bb.bs:                                            ; preds = %efistub_fw_vendor.exit.i50
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.ob = call ptr @efi_get_smbios_record(i8 noundef zeroext 1) #6 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.ob, null
  br i1 %.not.i.i.i52, label %bb.bt, label %get_table_record.exit.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.oc = call ptr @get_efi_config_table(i64 1284420384822471985, i64 5602828850577807002) #6 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i.i, label %apple_set_os.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.od = call i32 @memcmp(ptr noundef nonnull %i.oc, ptr noundef nonnull @.str.22, i64 noundef 4) #6
  %.not.i.i.i.i.i = icmp eq i32 %i.od, 0
  br i1 %.not.i.i.i.i.i, label %bb.bv, label %apple_set_os.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 16 ; 2 uses
  %i.of = call i32 @memcmp(ptr noundef nonnull %i.oe, ptr noundef nonnull @.str.23, i64 noundef 5) #6
  %.not6.i.i.i.i.i = icmp eq i32 %i.of, 0
  br i1 %.not6.i.i.i.i.i, label %bb.bw, label %apple_set_os.exit.i

bb.bw:                                            ; preds = %bb.bv
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 5
  %i.oh = load i8, ptr %i.og, align 1             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.oh, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i8.i.i.i.i.i.preheader, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.bw
  %wide.trip.count.i.i.i.i.i.i = zext i8 %i.oh to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.067.i.i.i.i.i.i = phi i8 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.ok, %.lr.ph.i.i.i.i.i.i ]
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oc, i64 %indvars.iv.i.i.i.i.i.i
  %i.oj = load i8, ptr %i.oi, align 1
  %i.ok = add i8 %i.oj, %.067.i.i.i.i.i.i         ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %verify_ep_checksum.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !14

verify_ep_checksum.exit.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ol = icmp eq i8 %i.ok, 0
  br i1 %i.ol, label %.lr.ph.i8.i.i.i.i.i.preheader, label %apple_set_os.exit.i

.lr.ph.i8.i.i.i.i.i.preheader:                    ; preds = %verify_ep_checksum.exit.i.i.i.i.i, %bb.bw
  br label %.lr.ph.i8.i.i.i.i.i

.lr.ph.i8.i.i.i.i.i:                              ; preds = %.lr.ph.i8.i.i.i.i.i.preheader, %.lr.ph.i8.i.i.i.i.i
  %indvars.iv.i9.i.i.i.i.i = phi i64 [ %indvars.iv.next.i11.i.i.i.i.i, %.lr.ph.i8.i.i.i.i.i ], [ 0, %.lr.ph.i8.i.i.i.i.i.preheader ] ; 2 uses
  %.067.i10.i.i.i.i.i = phi i8 [ %i.oo, %.lr.ph.i8.i.i.i.i.i ], [ 0, %.lr.ph.i8.i.i.i.i.i.preheader ]
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 %indvars.iv.i9.i.i.i.i.i
  %i.on = load i8, ptr %i.om, align 1
  %i.oo = add i8 %i.on, %.067.i10.i.i.i.i.i       ; 2 uses
  %indvars.iv.next.i11.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i9.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i12.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i11.i.i.i.i.i, 15
  br i1 %exitcond.not.i12.i.i.i.i.i, label %verify_ep_integrity.exit.i.i.i.i, label %.lr.ph.i8.i.i.i.i.i, !llvm.loop !14

verify_ep_integrity.exit.i.i.i.i:                 ; preds = %.lr.ph.i8.i.i.i.i.i
  %i.op = icmp eq i8 %i.oo, 0
  br i1 %i.op, label %bb.bx, label %apple_set_os.exit.i

bb.bx:                                            ; preds = %verify_ep_integrity.exit.i.i.i.i
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oc, i64 24
  %i.or = load i32, ptr %i.oq, align 2
  %i.os = zext i32 %i.or to i64
  %i.ot = inttoptr i64 %i.os to ptr               ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oc, i64 22
  %i.ov = load i16, ptr %i.ou, align 2            ; 2 uses
  %i.ow = zext i16 %i.ov to i64
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ot, i64 %i.ow ; 3 uses
  %i.oy = icmp ugt i16 %i.ov, 4
  br i1 %i.oy, label %.lr.ph.i.i.i.i.i, label %apple_set_os.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bx, %.loopexit.i.i.i.i.i
  %.02235.i.i.i.i.i = phi ptr [ %i.pi, %.loopexit.i.i.i.i.i ], [ %i.ot, %bb.bx ] ; 4 uses
  %i.oz = load i8, ptr %.02235.i.i.i.i.i, align 2
  switch i8 %i.oz, label %bb.by [
    i8 1, label %get_table_record.exit.i.i.i
    i8 127, label %apple_set_os.exit.i
  ]

bb.by:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %.02235.i.i.i.i.i, i64 1
  %i.pb = load i8, ptr %i.pa, align 1
  %i.pc = zext i8 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %.02235.i.i.i.i.i, i64 %i.pc
  br label %thread-pre-split.i.i.i.i.i

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.cb, %bb.by
  %.020.ph.i.i.i.i.i = phi ptr [ %i.pf, %bb.cb ], [ %i.pd, %bb.by ] ; 2 uses
  %.pr.i.i.i.i.i = load i8, ptr %.020.ph.i.i.i.i.i, align 1
  %i.pe = icmp eq i8 %.pr.i.i.i.i.i, 0
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %thread-pre-split.i.i.i.i.i
  %.not.i6.i.i.i.i = phi i1 [ %i.pe, %thread-pre-split.i.i.i.i.i ], [ false, %bb.ca ]
  %.020.i.i.i.i.i = phi ptr [ %.020.ph.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.pf, %bb.ca ] ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 1 ; 5 uses
  br i1 %.not.i6.i.i.i.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.pg = load i8, ptr %i.pf, align 1
  %.not27.i.i.i.i.i = icmp ne i8 %i.pg, 0
  %i.ph = icmp ult ptr %i.pf, %i.ox
  %or.cond.i.i.i.i.i = and i1 %i.ph, %.not27.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.bz, label %.loopexit.i.i.i.i.i, !llvm.loop !15

bb.cb:                                            ; preds = %bb.bz
  %.old28.i.i.i.i.i = icmp ult ptr %i.pf, %i.ox
  br i1 %.old28.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !llvm.loop !15

.loopexit.i.i.i.i.i:                              ; preds = %bb.cb, %bb.ca
  %i.pi = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 2
  %i.pj = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 6
  %i.pk = icmp ult ptr %i.pj, %i.ox
  br i1 %i.pk, label %.lr.ph.i.i.i.i.i, label %apple_set_os.exit.i, !llvm.loop !16

get_table_record.exit.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i, %bb.bs
  %i.pl = phi ptr [ %i.ob, %bb.bs ], [ %.02235.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 5
  %i.pn = call ptr @__efi_get_smbios_string(ptr noundef nonnull %i.pl, ptr noundef nonnull %i.pm) #6 ; 2 uses
  %.not18.i.i.i = icmp eq ptr %i.pn, null
  br i1 %.not18.i.i.i, label %apple_set_os.exit.i, label %.preheader.i.i.i

bb.cc:                                            ; preds = %.preheader.i.i.i
end_hunk_0
begin_hunk_1_@efi_stub_entry:bb.a
  store i8 92, ptr %i.py, align 4
  %i.pz = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 125, ptr %i.pz, align 1
  %i.qa = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 -26, ptr %i.qa, align 2
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 7
  store i8 69, ptr %i.qb, align 1
  %i.qc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 -78, ptr %i.qc, align 4
  %i.qd = getelementptr inbounds nuw i8, ptr %4, i64 9
  store i8 -15, ptr %i.qd, align 1
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i8 63, ptr %i.qe, align 2
  %i.qf = getelementptr inbounds nuw i8, ptr %4, i64 11
  store i8 -43, ptr %i.qf, align 1
  %i.qg = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i8 43, ptr %i.qg, align 4
  %i.qh = getelementptr inbounds nuw i8, ptr %4, i64 13
  store i8 -79, ptr %i.qh, align 1
  %i.qi = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i8 0, ptr %i.qi, align 2
  %i.qj = getelementptr inbounds nuw i8, ptr %4, i64 15
  store i8 119, ptr %i.qj, align 1
  %i.qk = call win64cc i64 %i.pu(ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %i.e) #6, !inline_history !18
  %.not.i.i53 = icmp eq i64 %i.qk, 0
  br i1 %.not.i.i53, label %bb.ce, label %apple_set_os.exit.i

bb.ce:                                            ; preds = %bb.cd
  %i.ql = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.qm = load i64, ptr %i.ql, align 8
  %i.qn = icmp ugt i64 %i.qm, 1
  br i1 %i.qn, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qp = load ptr, ptr %i.qo, align 8
  %i.qq = call win64cc i64 %i.qp(ptr noundef nonnull @.str.18) #6, !inline_history !18
  %.not4.i.i = icmp eq i64 %i.qq, 0
  br i1 %.not4.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qr = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.qs = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.qt = load i64, ptr %i.qs, align 8
  %.not5.i.i = icmp eq i64 %i.qt, 0
  br i1 %.not5.i.i, label %apple_set_os.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8
  %i.qw = call win64cc i64 %i.qv(ptr noundef nonnull @.str.20) #6, !inline_history !18
  %.not6.i.i = icmp eq i64 %i.qw, 0
  br i1 %.not6.i.i, label %apple_set_os.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qx = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.21) #6 ; 0 uses
  br label %apple_set_os.exit.i

apple_set_os.exit.i:                              ; preds = %.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %bb.cc, %bb.cj, %bb.ci, %bb.ch, %bb.cd, %get_table_record.exit.i.i.i, %bb.bx, %verify_ep_integrity.exit.i.i.i.i, %verify_ep_checksum.exit.i.i.i.i.i, %bb.bv, %bb.bu, %bb.bt, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %setup_quirks.exit

setup_quirks.exit:                                ; preds = %efistub_fw_vendor.exit.i50, %efistub_fw_vendor.exit.thread.i, %apple_set_os.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store ptr %.071, ptr %3, align 8
  %i.qy = getelementptr inbounds nuw i8, ptr %.071, i64 448
  %i.qz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.qy, ptr %i.qz, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store ptr null, ptr %i.c, align 8
  %i.ra = call i64 @efi_get_memory_map(ptr noundef nonnull %i.c, i1 noundef zeroext false) #6 ; 2 uses
  %.not.i.i54 = icmp eq i64 %i.ra, 0
  %.pre26.i = load ptr, ptr %i.c, align 8         ; 4 uses
  br i1 %.not.i.i54, label %bb.ck, label %alloc_e820ext.exit.i.i

bb.ck:                                            ; preds = %setup_quirks.exit
  %i.rb = load i64, ptr %.pre26.i, align 8
  %i.rc = getelementptr inbounds nuw i8, ptr %.pre26.i, i64 8
  %i.rd = load i64, ptr %i.rc, align 8
  %i.re = udiv i64 %i.rb, %i.rd                   ; 2 uses
  %i.rf = and i64 %i.re, 4294967295
  %i.rg = icmp samesign ugt i64 %i.rf, 96
  br i1 %i.rg, label %._crit_edge.i.i.i, label %alloc_e820ext.exit.i.thread.i

._crit_edge.i.i.i:                                ; preds = %bb.ck
  %i.rh = add i64 %i.re, 4294967200
  %i.ri = and i64 %i.rh, 4294967295
  %i.rj = mul nuw nsw i64 %i.ri, 20
  %i.rk = add nuw nsw i64 %i.rj, 16               ; 3 uses
  %.pre21.i = load ptr, ptr @efi_system_table, align 8 ; 2 uses
  br i1 %i.bn, label %._crit_edge.i.i._crit_edge22.i, label %._crit_edge.i.i._crit_edge.i

._crit_edge.i.i._crit_edge22.i:                   ; preds = %._crit_edge.i.i.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre21.i, i64 96
  %.pre.i58 = load ptr, ptr %.phi.trans.insert.i, align 8
  %.phi.trans.insert23.i = getelementptr inbounds nuw i8, ptr %.pre.i58, i64 64
  %.pre24.i = load ptr, ptr %.phi.trans.insert23.i, align 8
  %i.rl = call win64cc i64 %.pre24.i(i32 noundef 2, i64 noundef %i.rk, ptr noundef nonnull %i.d) #6, !inline_history !19
  br label %bb.cl

._crit_edge.i.i._crit_edge.i:                     ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.rm = getelementptr inbounds nuw i8, ptr %.pre21.i, i64 60
  %i.rn = load i32, ptr %i.rm, align 4
  %i.ro = zext i32 %i.rn to i64
  %i.rp = inttoptr i64 %i.ro to ptr
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 44
  %i.rr = load i32, ptr %i.rq, align 4
  %i.rs = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.rs, align 4
  %i.rt = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.rr, i32 noundef 2, i64 noundef %i.rk, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.ru = trunc i64 %i.rt to i32                  ; 2 uses
  %i.rv = call noundef i32 @llvm.fshl.i32(i32 %i.ru, i32 %i.ru, i32 1)
  %i.rw = zext i32 %i.rv to i64                   ; 2 uses
  %i.rx = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.rw, i64 range(i64 0, 4294967296) %i.rw, i64 63)
  br label %bb.cl

bb.cl:                                            ; preds = %._crit_edge.i.i._crit_edge.i, %._crit_edge.i.i._crit_edge22.i
  %i.ry = phi i64 [ %i.rl, %._crit_edge.i.i._crit_edge22.i ], [ %i.rx, %._crit_edge.i.i._crit_edge.i ] ; 2 uses
  %i.rz = icmp eq i64 %i.ry, 0
  %i.sa = trunc i64 %i.rk to i32
  %spec.select.i = select i1 %i.rz, i32 %i.sa, i32 0
  %.pre25.i = load ptr, ptr %i.c, align 8
  br label %alloc_e820ext.exit.i.i

alloc_e820ext.exit.i.i:                           ; preds = %bb.cl, %setup_quirks.exit
  %i.sb = phi ptr [ %.pre26.i, %setup_quirks.exit ], [ %.pre25.i, %bb.cl ] ; 2 uses
  %.019.i = phi i32 [ 0, %setup_quirks.exit ], [ %spec.select.i, %bb.cl ] ; 2 uses
  %.1.i.i = phi i64 [ %i.ra, %setup_quirks.exit ], [ %i.ry, %bb.cl ] ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.sb, null
  br i1 %.not.i.i.i55, label %allocate_e820.exit.i, label %alloc_e820ext.exit.i.thread.i

alloc_e820ext.exit.i.thread.i:                    ; preds = %alloc_e820ext.exit.i.i, %bb.ck
  %.1.i37.i = phi i64 [ %.1.i.i, %alloc_e820ext.exit.i.i ], [ 0, %bb.ck ] ; 2 uses
  %.01935.i = phi i32 [ %.019.i, %alloc_e820ext.exit.i.i ], [ 0, %bb.ck ] ; 2 uses
  %i.sc = phi ptr [ %i.sb, %alloc_e820ext.exit.i.i ], [ %.pre26.i, %bb.ck ] ; 2 uses
  br i1 %i.bn, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %alloc_e820ext.exit.i.thread.i
  %i.sd = load ptr, ptr @efi_system_table, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 96
  %i.sf = load ptr, ptr %i.se, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 72
  %i.sh = load ptr, ptr %i.sg, align 8
  %i.si = call win64cc i64 %i.sh(ptr noundef nonnull %i.sc) #6, !inline_history !20 ; 0 uses
  br label %allocate_e820.exit.i

bb.cn:                                            ; preds = %alloc_e820ext.exit.i.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.sj = load ptr, ptr @efi_system_table, align 8
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 60
  %i.sl = load i32, ptr %i.sk, align 4
  %i.sm = zext i32 %i.sl to i64
  %i.sn = inttoptr i64 %i.sm to ptr
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 48
  %i.sp = load i32, ptr %i.so, align 8
  %i.sq = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.sp, ptr noundef nonnull %i.sc, ptr noundef nonnull %i.b) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  br label %allocate_e820.exit.i

allocate_e820.exit.i:                             ; preds = %bb.cn, %bb.cm, %alloc_e820ext.exit.i.i
  %.1.i38.i = phi i64 [ %.1.i.i, %alloc_e820ext.exit.i.i ], [ %.1.i37.i, %bb.cm ], [ %.1.i37.i, %bb.cn ] ; 2 uses
  %.01936.i = phi i32 [ %.019.i, %alloc_e820ext.exit.i.i ], [ %.01935.i, %bb.cm ], [ %.01935.i, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  %.not.i56 = icmp eq i64 %.1.i38.i, 0
  br i1 %.not.i56, label %bb.co, label %.loopexit

bb.co:                                            ; preds = %allocate_e820.exit.i
  %i.sr = call i64 @efi_exit_boot_services(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @exit_boot_func) #6 ; 2 uses
  %.not15.i = icmp eq i64 %i.sr, 0
  br i1 %.not15.i, label %bb.cp, label %.loopexit

bb.cp:                                            ; preds = %bb.co
  %i.ss = getelementptr inbounds nuw i8, ptr %.071, i64 480
  store i32 32768, ptr %i.ss, align 1
  %i.st = load ptr, ptr %i.d, align 8             ; 7 uses
  %i.su = getelementptr inbounds nuw i8, ptr %.071, i64 468
  %i.sv = load i32, ptr %i.su, align 4            ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.071, i64 456 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 4            ; 2 uses
  %i.sy = udiv i32 %i.sv, %i.sx                   ; 2 uses
  %.not83.i.i = icmp ugt i32 %i.sx, %i.sv
  br i1 %.not83.i.i, label %bb.dc, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cp
  %i.sz = getelementptr inbounds nuw i8, ptr %.071, i64 720
  %i.ta = getelementptr inbounds nuw i8, ptr %.071, i64 464
  %i.tb = getelementptr inbounds nuw i8, ptr %.071, i64 476
  %.not65.i.i = icmp eq ptr %i.st, null
  %i.tc = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cy, %.lr.ph.i.i
  %.04982.i.i = phi ptr [ %i.sz, %.lr.ph.i.i ], [ %.352.ph.i.i, %bb.cy ] ; 3 uses
  %.05581.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.156.ph.i.i, %bb.cy ] ; 6 uses
  %.05880.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.159.ph.i.i, %bb.cy ] ; 4 uses
  %.06179.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.us, %bb.cy ] ; 3 uses
  %i.td = load i32, ptr %i.ta, align 4
  %i.te = zext i32 %i.td to i64
  %i.tf = load i32, ptr %i.tb, align 4
  %i.tg = zext i32 %i.tf to i64
  %i.th = shl nuw i64 %i.tg, 32
  %i.ti = or disjoint i64 %i.th, %i.te
  %i.tj = inttoptr i64 %i.ti to ptr
  %i.tk = load i32, ptr %i.sw, align 4
  %i.tl = mul i32 %i.tk, %.06179.i.i
  %i.tm = zext i32 %i.tl to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tm ; 5 uses
  %i.to = load i32, ptr %i.tn, align 8            ; 2 uses
  %i.tp = icmp ult i32 %i.to, 15
  br i1 %i.tp, label %switch.lookup, label %bb.cy

switch.lookup:                                    ; preds = %bb.cq
  %i.tq = zext nneg i32 %i.to to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.efi_stub_entry, i64 %i.tq
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %.not.i17.i = icmp eq ptr %.05581.i.i, null
  br i1 %.not.i17.i, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %switch.lookup
  %i.tr = getelementptr inbounds nuw i8, ptr %.05581.i.i, i64 16
  %i.ts = load i32, ptr %i.tr, align 1
  %i.tt = icmp eq i32 %i.ts, %switch.ext
  br i1 %i.tt, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.tu = load i64, ptr %.05581.i.i, align 1
  %i.tv = getelementptr inbounds nuw i8, ptr %.05581.i.i, i64 8 ; 2 uses
  %i.tw = load i64, ptr %i.tv, align 1            ; 2 uses
  %i.tx = add i64 %i.tw, %i.tu
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tz = load i64, ptr %i.ty, align 8
  %i.ua = icmp eq i64 %i.tx, %i.tz
  br i1 %i.ua, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  %i.uc = load i64, ptr %i.ub, align 8
  %i.ud = shl i64 %i.uc, 12
  %i.ue = add i64 %i.ud, %i.tw
  store i64 %i.ue, ptr %i.tv, align 1
  br label %bb.cy

bb.cu:                                            ; preds = %bb.cs, %bb.cr, %switch.lookup
  %i.uf = icmp eq i32 %.05880.i.i, 128
  br i1 %i.uf, label %bb.cv, label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  br i1 %.not65.i.i, label %.loopexit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ug = sub i32 %i.sy, %.06179.i.i
  %i.uh = mul i32 %i.ug, 20
  %i.ui = add i32 %i.uh, 16
  %.not77.i.i = icmp ult i32 %.01936.i, %i.ui
  br i1 %.not77.i.i, label %.loopexit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cu
  %.251.i.i = phi ptr [ %i.tc, %bb.cw ], [ %.04982.i.i, %bb.cu ] ; 5 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.uk = load i64, ptr %i.uj, align 8
  store i64 %i.uk, ptr %.251.i.i, align 1
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tn, i64 24
  %i.um = load i64, ptr %i.ul, align 8
  %i.un = shl i64 %i.um, 12
  %i.uo = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 8
  store i64 %i.un, ptr %i.uo, align 1
  %i.up = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 16
  store i32 %switch.ext, ptr %i.up, align 1
  %i.uq = getelementptr inbounds nuw i8, ptr %.251.i.i, i64 20
  %i.ur = add i32 %.05880.i.i, 1
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cq, %bb.cx, %bb.ct
  %.159.ph.i.i = phi i32 [ %.05880.i.i, %bb.cq ], [ %i.ur, %bb.cx ], [ %.05880.i.i, %bb.ct ] ; 4 uses
  %.156.ph.i.i = phi ptr [ %.05581.i.i, %bb.cq ], [ %.251.i.i, %bb.cx ], [ %.05581.i.i, %bb.ct ]
  %.352.ph.i.i = phi ptr [ %.04982.i.i, %bb.cq ], [ %i.uq, %bb.cx ], [ %.04982.i.i, %bb.ct ]
  %i.us = add nuw nsw i32 %.06179.i.i, 1          ; 2 uses
  %i.ut = icmp ult i32 %i.us, %i.sy
  br i1 %i.ut, label %bb.cq, label %._crit_edge.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %bb.cy
  %i.uu = icmp ugt i32 %.159.ph.i.i, 128
  br i1 %i.uu, label %bb.cz, label %bb.dc

bb.cz:                                            ; preds = %._crit_edge.i.i
  %i.uv = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  store i32 1, ptr %i.uv, align 8
  %i.uw = mul i32 %.159.ph.i.i, 20
  %i.ux = add i32 %i.uw, -2560
  %i.uy = getelementptr inbounds nuw i8, ptr %i.st, i64 12
  store i32 %i.ux, ptr %i.uy, align 4
  store i64 0, ptr %i.st, align 8
  %i.uz = getelementptr inbounds nuw i8, ptr %.071, i64 592 ; 2 uses
  %i.va = load i64, ptr %i.uz, align 4
  br label %bb.da

bb.da:                                            ; preds = %bb.db, %bb.cz
  %.0.in.i.i.i = phi i64 [ %i.va, %bb.cz ], [ %i.vb, %bb.db ] ; 2 uses
  %.not.i.i18.i = icmp eq i64 %.0.in.i.i.i, 0
  br i1 %.not.i.i18.i, label %.critedge14.i.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.0.i.i.i = inttoptr i64 %.0.in.i.i.i to ptr    ; 2 uses
  %i.vb = load i64, ptr %.0.i.i.i, align 8        ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.vb, 0
  br i1 %.not13.i.i.i, label %.critedge.i.i.i, label %bb.da, !llvm.loop !22

.critedge.i.i.i:                                  ; preds = %bb.db
  %i.vc = ptrtoint ptr %i.st to i64
  store i64 %i.vc, ptr %.0.i.i.i, align 8
  br label %bb.dc

.critedge14.i.i.i:                                ; preds = %bb.da
  %i.vd = ptrtoint ptr %i.st to i64
  store i64 %i.vd, ptr %i.uz, align 4
  br label %bb.dc

.loopexit:                                        ; preds = %bb.cv, %bb.cw, %bb.co, %allocate_e820.exit.i
  %.0.i57.ph = phi i64 [ %.1.i38.i, %allocate_e820.exit.i ], [ %i.sr, %bb.co ], [ -9223372036854775803, %bb.cw ], [ -9223372036854775803, %bb.cv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  br label %.sink.split

bb.dc:                                            ; preds = %.critedge14.i.i.i, %.critedge.i.i.i, %._crit_edge.i.i, %bb.cp
  %.260.i.i = phi i32 [ %.159.ph.i.i, %._crit_edge.i.i ], [ 128, %.critedge.i.i.i ], [ 128, %.critedge14.i.i.i ], [ 0, %bb.cp ]
  %i.ve = add i64 %i.et, %i.er
  %i.vf = trunc nuw i32 %.260.i.i to i8
  %i.vg = getelementptr inbounds nuw i8, ptr %.071, i64 488
  store i8 %i.vf, ptr %i.vg, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @efi_5level_switch() #6
  call void asm sideeffect "jmp *$0", "r,{si},~{dirflag},~{fpsr},~{flags}"(i64 %i.ve, ptr nonnull %.071) #5, !srcloc !23
  unreachable

.sink.split:                                      ; preds = %efi_decompress_kernel.exit, %efi_decompress_kernel.exit.thread, %parse_options.exit, %bb.s, %.loopexit
  %.str.5.sink = phi ptr [ @.str.4, %bb.s ], [ @.str.7, %.loopexit ], [ @.str.5, %parse_options.exit ], [ @.str.6, %efi_decompress_kernel.exit.thread ], [ @.str.6, %efi_decompress_kernel.exit ]
  %.022.ph = phi i64 [ %i.cc, %bb.s ], [ %.0.i57.ph, %.loopexit ], [ %i.cw, %parse_options.exit ], [ %.0.i42.ph, %efi_decompress_kernel.exit.thread ], [ %i.fa, %efi_decompress_kernel.exit ]
  %i.vh = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull %.str.5.sink) #6 ; 0 uses
  br label %bb.dd

bb.dd:                                            ; preds = %.sink.split, %bb.an
  %.022 = phi i64 [ %i.ff, %bb.an ], [ %.022.ph, %.sink.split ]
  %i.vi = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.8) #6 ; 0 uses
  call fastcc void @efi_exit(ptr noundef %0, i64 noundef %.022) #7
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone noreturn nounwind optsize
define internal fastcc void @efi_exit(ptr noundef %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 3 uses
  %i.b = load i8, ptr @efi_is64, align 1, !range !4, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @efi_system_table, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call win64cc i64 %i.h(ptr noundef %0, i64 noundef %1, i64 noundef 0, ptr noundef null) #9 ; 0 uses
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.j = load ptr, ptr @efi_system_table, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %i.l = load i32, ptr %i.k, align 4
  %i.m = zext i32 %i.l to i64
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.p = load i32, ptr %i.o, align 8
  %i.q = lshr i64 %1, 32
  %i.r = or i64 %i.q, %1
  %i.s = trunc i64 %i.r to i32
  %i.t = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.p, ptr noundef %0, i32 noundef %i.s, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  call void asm sideeffect "hlt", "~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !24
  br label %bb.d
}

; Function Attrs: noredzone optsize
declare hidden ptr @get_efi_config_table(i64, i64) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i64 @efi_setup_5level_paging() local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i64 @efi_load_initrd(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i32 @efi_get_secureboot() local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i64 @efi_random_get_seed() local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden void @efi_retrieve_eventlog() local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden void @efi_5level_switch() local_unnamed_addr #2

; Function Attrs: noredzone noreturn nounwind optsize
define hidden win64cc noundef i64 @efi_pe_entry(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  tail call void @efi_stub_entry(ptr noundef %0, ptr noundef %1, ptr noundef null) #7
  unreachable
}

; Function Attrs: noredzone noreturn nounwind optsize
define hidden void @efi_handover_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @memset(ptr noundef nonnull @_bss, i32 noundef 0, i64 noundef sub (i64 ptrtoint (ptr @_ebss to i64), i64 ptrtoint (ptr @_bss to i64))) #6 ; 0 uses
  tail call void @efi_stub_entry(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  unreachable
}

; Function Attrs: noredzone optsize
declare hidden ptr @memset(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i64 @efi_allocate_pages(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden ptr @efi_convert_cmdline(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden void @efi_free(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden ptr @strstr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i64 @efi_parse_options(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i64 @efi_random_alloc(i64 noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i64 @decompress_kernel(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone nounwind optsize
define internal void @error(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.14, ptr noundef %0) #6 ; 0 uses
  ret void
}

; Function Attrs: noredzone optsize
declare hidden i64 @efi_get_random_bytes(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i64 @kaslr_get_random_long(ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i64 @efi_setup_graphics(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden ptr @memcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden ptr @efi_get_smbios_record(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden ptr @__efi_get_smbios_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone optsize
declare hidden i64 @efi_exit_boot_services(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone nounwind optsize
define internal noundef i64 @exit_boot_func(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load i8, ptr @efi_is64, align 1, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = select i1 %i.b, ptr @.str.24, ptr @.str.25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @memcpy(ptr noundef %i.e, ptr noundef nonnull %i.c, i64 noundef 4) #6 ; 0 uses
  %i.g = load ptr, ptr @efi_system_table, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = trunc i64 %i.h to i32
  store i32 %i.l, ptr %i.j, align 4
  %i.m = lshr i64 %i.h, 32
  %i.n = trunc nuw i64 %i.m to i32
  store i32 %i.n, ptr %i.k, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8
  %i.q = trunc i64 %i.p to i32
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 %i.q, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.d, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.u, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.z = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 28
  %i.ac = trunc i64 %i.y to i32
  store i32 %i.ac, ptr %i.aa, align 4
  %i.ad = lshr i64 %i.y, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  store i32 %i.ae, ptr %i.ab, align 4
  %i.af = load i64, ptr %0, align 8
  %i.ag = trunc i64 %i.af to i32
end_hunk_1
