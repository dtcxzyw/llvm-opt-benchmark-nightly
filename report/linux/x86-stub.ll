Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/x86-stub?download=true
inline.NumInlined: 119
inline.NumDeleted: 35
begin_hunk_0_@efi_stub_entry:bb.a

bb.af:                                            ; preds = %efistub_fw_vendor.exit.i
  %i.eg = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.11) #6 ; 0 uses
  store i32 0, ptr %i.t, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %efistub_fw_vendor.exit.i, %bb.ab
  %i.eh = load ptr, ptr @cmdline_memmap_override, align 8 ; 2 uses
  %.not23.i = icmp eq ptr %i.eh, null
  br i1 %.not23.i, label %._crit_edge.i, label %bb.ah

._crit_edge.i:                                    ; preds = %bb.ag
  %.pre.pre.i = load i32, ptr %i.t, align 8
  %i.ei = zext i32 %.pre.pre.i to i64
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ej = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.eh) #6 ; 0 uses
  store i32 0, ptr %i.t, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i, %bb.af
  %.pre.i = phi i64 [ %i.ei, %._crit_edge.i ], [ 0, %bb.ah ], [ 0, %bb.af ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.071, i64 529 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = or i8 %i.el, 2
  store i8 %i.em, ptr %i.ek, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.aa
  %i.en = phi i64 [ 0, %bb.aa ], [ %.pre.i, %bb.ai ]
  %.018.i = phi i64 [ 16777216, %bb.aa ], [ %i.du, %bb.ai ]
  %i.eo = select i1 %i.bo, i64 -1, i64 4294967295
  %i.ep = call i64 @efi_random_alloc(i64 noundef %i.di, i64 noundef 2097152, ptr noundef nonnull %i.s, i64 noundef %i.en, i32 noundef 1, i64 noundef 16777216, i64 noundef %i.eo) #6 ; 2 uses
  %.not24.i = icmp eq i64 %i.ep, 0
  br i1 %.not24.i, label %bb.ak, label %efi_decompress_kernel.exit.thread

bb.ak:                                            ; preds = %bb.aj
  %i.eq = load i64, ptr %i.s, align 8
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = call i64 @decompress_kernel(ptr noundef %i.er, i64 noundef %.018.i, ptr noundef nonnull @error) #6 ; 2 uses
  %i.et = icmp eq i64 %i.es, -1
  %i.eu = load i64, ptr %i.s, align 8             ; 3 uses
  br i1 %i.et, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void @efi_free(i64 noundef %i.di, i64 noundef %i.eu) #6
  br label %efi_decompress_kernel.exit.thread

bb.am:                                            ; preds = %bb.ak
  %i.ev = load i64, ptr @kernel_text_size, align 8
  %i.ew = call i64 @efi_adjust_memory_range_protection(i64 noundef %i.eu, i64 noundef %i.ev) #8 ; 2 uses
  %.not25.i = icmp eq i64 %i.ew, 0
  br i1 %.not25.i, label %efi_decompress_kernel.exit, label %efi_decompress_kernel.exit.thread

efi_decompress_kernel.exit.thread:                ; preds = %bb.aj, %bb.al, %bb.am
  %.0.i42.ph = phi i64 [ %i.ew, %bb.am ], [ -9223372036854775807, %bb.al ], [ %i.ep, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  br label %.sink.split

efi_decompress_kernel.exit:                       ; preds = %bb.am
  %i.ex = load i64, ptr %i.s, align 8
  %i.ey = load i64, ptr @kernel_inittext_offset, align 8
  %i.ez = add i64 %i.ey, %i.ex
  %i.fa = load i64, ptr @kernel_inittext_size, align 8
  %i.fb = call i64 @efi_adjust_memory_range_protection(i64 noundef %i.ez, i64 noundef %i.fa) #8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #5
  %.not36 = icmp eq i64 %i.fb, 0
  br i1 %.not36, label %bb.an, label %.sink.split

bb.an:                                            ; preds = %efi_decompress_kernel.exit
  %i.fc = load ptr, ptr @image, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.071, i64 556
  %i.fe = load i32, ptr %i.fd, align 1
  %i.ff = zext i32 %i.fe to i64
  %i.fg = call i64 @efi_load_initrd(ptr noundef %i.fc, i64 noundef %i.ff, i64 noundef -1, ptr noundef nonnull %i.w) #6 ; 2 uses
  %.not37 = icmp eq i64 %i.fg, 0
  br i1 %.not37, label %bb.ao, label %bb.di

bb.ao:                                            ; preds = %bb.an
  %i.fh = load ptr, ptr %i.w, align 8             ; 3 uses
  %.not38 = icmp eq ptr %i.fh, null
  br i1 %.not38, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8
  %.not39 = icmp eq i64 %i.fj, 0
  br i1 %.not39, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fk = load i64, ptr %i.fh, align 8            ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.071, i64 536
  %i.fm = getelementptr inbounds nuw i8, ptr %.071, i64 192
  %i.fn = trunc i64 %i.fk to i32
  store i32 %i.fn, ptr %i.fl, align 4
  %i.fo = lshr i64 %i.fk, 32
  %i.fp = trunc nuw i64 %i.fo to i32
  store i32 %i.fp, ptr %i.fm, align 4
  %i.fq = load i64, ptr %i.fi, align 8            ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.071, i64 540
  %i.fs = getelementptr inbounds nuw i8, ptr %.071, i64 196
  %i.ft = trunc i64 %i.fq to i32
  store i32 %i.ft, ptr %i.fr, align 4
  %i.fu = lshr i64 %i.fq, 32
  %i.fv = trunc nuw i64 %i.fu to i32
  store i32 %i.fv, ptr %i.fs, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.fw = getelementptr inbounds nuw i8, ptr %.071, i64 492 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fz = call i32 @efi_get_secureboot() #6
  %i.ga = trunc i32 %i.fz to i8
  store i8 %i.ga, ptr %i.fw, align 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gb = call i64 @efi_random_get_seed() #6      ; 0 uses
  call void @efi_retrieve_eventlog() #6
  %i.gc = call ptr @memset(ptr noundef nonnull %.071, i32 noundef 0, i64 noundef 64) #6
  %i.gd = getelementptr inbounds nuw i8, ptr %.071, i64 320
  %i.ge = call ptr @memset(ptr noundef nonnull %i.gd, i32 noundef 0, i64 noundef 128) #6
  %i.gf = call i64 @efi_setup_graphics(ptr noundef %i.gc, ptr noundef %i.ge) #6 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #5
  store ptr null, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const.setup_efi_pci.pci_proto, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #5
  br i1 %i.bo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.gg = load ptr, ptr @efi_system_table, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 96
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 312
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = call win64cc i64 %i.gk(i32 noundef 2, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n) #6, !inline_history !10
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #5
  %i.gm = load ptr, ptr @efi_system_table, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 60
  %i.go = load i32, ptr %i.gn, align 4
  %i.gp = zext i32 %i.go to i64
  %i.gq = inttoptr i64 %i.gp to ptr
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 168
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.gt, align 4
  %i.gu = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.gu, align 4
  %i.gv = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.gs, i32 noundef 2, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #5
  %i.gw = trunc i64 %i.gv to i32                  ; 2 uses
  %i.gx = call noundef i32 @llvm.fshl.i32(i32 %i.gw, i32 %i.gw, i32 1)
  %i.gy = zext i32 %i.gx to i64                   ; 2 uses
  %i.gz = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.gy, i64 range(i64 0, 4294967296) %i.gy, i64 63)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ha = phi i64 [ %i.gl, %bb.au ], [ %i.gz, %bb.av ]
  %.not.i44 = icmp eq i64 %i.ha, 0
  br i1 %.not.i44, label %bb.ax, label %.critedge2.i

bb.ax:                                            ; preds = %bb.aw
  %i.hb = getelementptr inbounds nuw i8, ptr %.071, i64 592 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.020.in.i = phi i64 [ %i.hc, %bb.ax ], [ %i.hd, %bb.az ] ; 2 uses
  %.020.i = inttoptr i64 %.020.in.i to ptr        ; 2 uses
  %.not24.i45 = icmp eq i64 %.020.in.i, 0
  br i1 %.not24.i45, label %.critedge.i47, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hd = load i64, ptr %.020.i, align 8          ; 2 uses
  %.not25.i46 = icmp eq i64 %i.hd, 0
  br i1 %.not25.i46, label %.critedge.i47, label %bb.ay, !llvm.loop !11

.critedge.i47:                                    ; preds = %bb.az, %bb.ay
  %i.he = load i64, ptr %i.o, align 8
  %.not62.i = icmp eq i64 %i.he, 0
  br i1 %.not62.i, label %.critedge2.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge.i47
  %i.hf = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bq, %.lr.ph.i
  %indvars.iv.i48 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i49, %bb.bq ] ; 3 uses
  %.157.i = phi ptr [ %.020.i, %.lr.ph.i ], [ %.2.i.a, %bb.bq ] ; 6 uses
  %i.hh = load ptr, ptr %i.n, align 8             ; 2 uses
  br i1 %i.bo, label %bb.bb, label %.thread35.i

bb.bb:                                            ; preds = %bb.ba
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.hh, i64 %indvars.iv.i48
  %i.hj = load ptr, ptr %i.hi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #5
  store ptr null, ptr %i.q, align 8
  %i.hk = load ptr, ptr @efi_system_table, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 152
  %i.ho = load ptr, ptr %i.hn, align 8
  %i.hp = call win64cc i64 %i.ho(ptr noundef %i.hj, ptr noundef nonnull %5, ptr noundef nonnull %i.q) #6, !inline_history !10
  %i.hq = icmp eq i64 %i.hp, 0
  %i.hr = load ptr, ptr %i.q, align 8             ; 4 uses
  %i.hs = icmp ne ptr %i.hr, null
  %or.cond.i = select i1 %i.hq, i1 %i.hs, i1 false
  br i1 %or.cond.i, label %bb.bc, label %bb.bq

.thread35.i:                                      ; preds = %bb.ba
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %indvars.iv.i48
  %i.hu = load i32, ptr %i.ht, align 4
  %i.hv = zext i32 %i.hu to i64
  %i.hw = inttoptr i64 %i.hv to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #5
  store ptr null, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #5
  %i.hx = load ptr, ptr @efi_system_table, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 60
  %i.hz = load i32, ptr %i.hy, align 4
  %i.ia = zext i32 %i.hz to i64
  %i.ib = inttoptr i64 %i.ia to ptr
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 88
  %i.id = load i32, ptr %i.ic, align 8
  store i32 0, ptr %i.hf, align 4
  %i.ie = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.id, ptr noundef %i.hw, ptr noundef nonnull %5, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #5
  %i.if = and i64 %i.ie, 4294967295
  %i.ig = icmp eq i64 %i.if, 0
  %i.ih = load ptr, ptr %i.q, align 8             ; 4 uses
  %i.ii = icmp ne ptr %i.ih, null
  %or.cond36.i = select i1 %i.ig, i1 %i.ii, i1 false
  br i1 %or.cond36.i, label %.thread80.i.i, label %bb.bq

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  store ptr null, ptr %i.h, align 8
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hr, i64 152
  %i.ik = load ptr, ptr %i.ij, align 8            ; 2 uses
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.hr, i64 144
  %i.il = load i64, ptr %.in.i.i, align 8         ; 3 uses
  %i.im = icmp eq ptr %i.ik, null
  %i.in = add i64 %i.il, -16777217
  %i.io = icmp ult i64 %i.in, -16777216
  %or.cond3.i.i = select i1 %i.im, i1 true, i1 %i.io
  br i1 %or.cond3.i.i, label %preserve_pci_rom_image.exit.thread.i, label %bb.bd

.thread80.i.i:                                    ; preds = %.thread35.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  store ptr null, ptr %i.h, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ih, i64 80
  %i.iq = load i32, ptr %i.ip, align 8            ; 2 uses
  %.in82.i.i = getelementptr inbounds nuw i8, ptr %i.ih, i64 72
  %i.ir = load i64, ptr %.in82.i.i, align 8       ; 3 uses
  %i.is = icmp eq i32 %i.iq, 0
  %i.it = add i64 %i.ir, -16777217
  %i.iu = icmp ult i64 %i.it, -16777216
  %or.cond383.i.i = select i1 %i.is, i1 true, i1 %i.iu
  br i1 %or.cond383.i.i, label %preserve_pci_rom_image.exit.thread.i, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.iv = add nuw nsw i64 %i.il, 64
  %i.iw = load ptr, ptr @efi_system_table, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 96
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  %i.ja = load ptr, ptr %i.iz, align 8
  %i.jb = call win64cc i64 %i.ja(i32 noundef 2, i64 noundef %i.iv, ptr noundef nonnull %i.h) #6, !inline_history !12
  br label %bb.bf

bb.be:                                            ; preds = %.thread80.i.i
  %i.jc = zext i32 %i.iq to i64
  %i.jd = inttoptr i64 %i.jc to ptr
  %i.je = add nuw nsw i64 %i.ir, 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  %i.jf = load ptr, ptr @efi_system_table, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 60
  %i.jh = load i32, ptr %i.jg, align 4
  %i.ji = zext i32 %i.jh to i64
  %i.jj = inttoptr i64 %i.ji to ptr
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 44
  %i.jl = load i32, ptr %i.jk, align 4
  store i32 0, ptr %i.hg, align 4
  %i.jm = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.jl, i32 noundef 2, i64 noundef %i.je, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  %i.jn = trunc i64 %i.jm to i32                  ; 2 uses
  %i.jo = call noundef i32 @llvm.fshl.i32(i32 %i.jn, i32 %i.jn, i32 1)
  %i.jp = zext i32 %i.jo to i64                   ; 2 uses
  %i.jq = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.jp, i64 range(i64 0, 4294967296) %i.jp, i64 63)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.jr = phi ptr [ %i.hr, %bb.bd ], [ %i.ih, %bb.be ] ; 10 uses
  %i.js = phi ptr [ %i.ik, %bb.bd ], [ %i.jd, %bb.be ]
  %i.jt = phi i64 [ %i.il, %bb.bd ], [ %i.ir, %bb.be ] ; 3 uses
  %i.ju = phi i64 [ %i.jb, %bb.bd ], [ %i.jq, %bb.be ] ; 2 uses
  %.not.i31.i = icmp eq i64 %i.ju, 0
  br i1 %.not.i31.i, label %bb.bg, label %.sink.split.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.jv = load ptr, ptr %i.h, align 8
  %i.jw = call ptr @memset(ptr noundef %i.jv, i32 noundef 0, i64 noundef 64) #6 ; 0 uses
  %i.jx = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  store i32 3, ptr %i.jy, align 8
  %i.jz = trunc nuw nsw i64 %i.jt to i32
  %i.ka = add nuw nsw i32 %i.jz, 48
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  store i32 %i.ka, ptr %i.kb, align 4
  store i64 0, ptr %i.jx, align 8
  %i.kc = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  store i64 %i.jt, ptr %i.kd, align 8
  br i1 %i.bo, label %bb.bh, label %.thread.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jr, i64 48 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kh = call win64cc i64 %i.kf(ptr noundef nonnull %i.jr, i32 noundef 1, i32 noundef 0, i64 noundef 1, ptr noundef nonnull %i.kg) #6, !inline_history !12 ; 2 uses
  %.not59.i.i = icmp eq i64 %i.kh, 0
  br i1 %.not59.i.i, label %bb.bi, label %.sink.split.i.i

.thread.i.i:                                      ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jr, i64 24 ; 2 uses
  %i.kj = load i32, ptr %i.ki, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kl = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.kj, ptr noundef nonnull %i.jr, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.kk, ptr noundef nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  %i.km = trunc i64 %i.kl to i32                  ; 3 uses
  %i.kn = call noundef i32 @llvm.fshl.i32(i32 %i.km, i32 %i.km, i32 1)
  %i.ko = zext i32 %i.kn to i64                   ; 2 uses
  %i.kp = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.ko, i64 range(i64 0, 4294967296) %i.ko, i64 63)
  %.not5967.i.i = icmp eq i32 %i.km, 0
  br i1 %.not5967.i.i, label %.thread69.i.i, label %.sink.split.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.kq = load ptr, ptr %i.ke, align 8
  %i.kr = load ptr, ptr %i.h, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 18
  %i.kt = call win64cc i64 %i.kq(ptr noundef nonnull %i.jr, i32 noundef 1, i32 noundef 2, i64 noundef 1, ptr noundef nonnull %i.ks) #6, !inline_history !12 ; 2 uses
  %.not60.i.i = icmp eq i64 %i.kt, 0
  br i1 %.not60.i.i, label %bb.bj, label %.sink.split.i.i

.thread69.i.i:                                    ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #5
  %i.ku = load i32, ptr %i.ki, align 8
  %i.kv = load ptr, ptr %i.h, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 18
  %i.kx = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.ku, ptr noundef nonnull %i.jr, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %i.kw, ptr noundef nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  %i.ky = trunc i64 %i.kx to i32                  ; 3 uses
  %i.kz = call noundef i32 @llvm.fshl.i32(i32 %i.ky, i32 %i.ky, i32 1)
  %i.la = zext i32 %i.kz to i64                   ; 2 uses
  %i.lb = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.la, i64 range(i64 0, 4294967296) %i.la, i64 63)
  %.not6070.i.i = icmp eq i32 %i.ky, 0
  br i1 %.not6070.i.i, label %.thread71.i.i, label %.sink.split.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jr, i64 112
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = load ptr, ptr %i.h, align 8             ; 4 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 48
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 56
  %i.lj = call win64cc i64 %i.ld(ptr noundef nonnull %i.jr, ptr noundef nonnull %i.lf, ptr noundef nonnull %i.lg, ptr noundef nonnull %i.lh, ptr noundef nonnull %i.li) #6, !inline_history !12
  br label %bb.bk

.thread71.i.i:                                    ; preds = %.thread69.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #5
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jr, i64 56
  %i.ll = load i32, ptr %i.lk, align 8
  %i.lm = load ptr, ptr %i.h, align 8             ; 8 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 36
  store i32 0, ptr %i.lo, align 4
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 40
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 44
  store i32 0, ptr %i.lq, align 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lm, i64 48
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 52
  store i32 0, ptr %i.ls, align 4
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lm, i64 56
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lm, i64 60
  store i32 0, ptr %i.lu, align 4
  %i.lv = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.ll, ptr noundef nonnull %i.jr, ptr noundef nonnull %i.ln, ptr noundef nonnull %i.lp, ptr noundef nonnull %i.lr, ptr noundef nonnull %i.lt, ptr noundef nonnull %i.l) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #5
  %i.lw = trunc i64 %i.lv to i32                  ; 2 uses
  %i.lx = call noundef i32 @llvm.fshl.i32(i32 %i.lw, i32 %i.lw, i32 1)
  %i.ly = zext i32 %i.lx to i64                   ; 2 uses
  %i.lz = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.ly, i64 range(i64 0, 4294967296) %i.ly, i64 63)
  br label %bb.bk

bb.bk:                                            ; preds = %.thread71.i.i, %bb.bj
  %i.ma = phi i64 [ %i.lj, %bb.bj ], [ %i.lz, %.thread71.i.i ]
  %.not61.i.i = icmp eq i64 %i.ma, 0
  br i1 %.not61.i.i, label %preserve_pci_rom_image.exit.thread52.i, label %bb.bl

preserve_pci_rom_image.exit.thread52.i:           ; preds = %bb.bk
  %i.mb = load ptr, ptr %i.h, align 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 64
  %i.md = call ptr @memcpy(ptr noundef nonnull %i.mc, ptr noundef nonnull %i.js, i64 noundef %i.jt) #6 ; 0 uses
  %i.me = load ptr, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br label %bb.bn

.sink.split.i.i:                                  ; preds = %.thread69.i.i, %bb.bi, %.thread.i.i, %bb.bh, %bb.bf
  %.str.17.sink.i.i = phi ptr [ @.str.16, %bb.bh ], [ @.str.15, %bb.bf ], [ @.str.16, %.thread.i.i ], [ @.str.17, %.thread69.i.i ], [ @.str.17, %bb.bi ]
  %.0.ph.ph.i.i = phi i64 [ %i.kh, %bb.bh ], [ %i.ju, %bb.bf ], [ %i.kp, %.thread.i.i ], [ %i.lb, %.thread69.i.i ], [ %i.kt, %bb.bi ]
  %i.mf = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull %.str.17.sink.i.i) #6 ; 0 uses
  %i.mg = icmp eq i64 %.0.ph.ph.i.i, 0
  br label %bb.bl

bb.bl:                                            ; preds = %.sink.split.i.i, %bb.bk
  %.0.ph.i.i = phi i1 [ false, %bb.bk ], [ %i.mg, %.sink.split.i.i ]
  %.pr.i.i = load ptr, ptr %i.h, align 8          ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i, label %preserve_pci_rom_image.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  br i1 %i.bo, label %.thread44.i, label %.thread91.i.i

.thread44.i:                                      ; preds = %bb.bm
  %i.mh = load ptr, ptr @efi_system_table, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 96
  %i.mj = load ptr, ptr %i.mi, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 72
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = call win64cc i64 %i.ml(ptr noundef nonnull %.pr.i.i) #6, !inline_history !12 ; 0 uses
  br label %preserve_pci_rom_image.exit.i

.thread91.i.i:                                    ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  %i.mn = load ptr, ptr @efi_system_table, align 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 60
  %i.mp = load i32, ptr %i.mo, align 4
  %i.mq = zext i32 %i.mp to i64
  %i.mr = inttoptr i64 %i.mq to ptr
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 48
  %i.mt = load i32, ptr %i.ms, align 8
  %i.mu = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.mt, ptr noundef nonnull %.pr.i.i, ptr noundef nonnull %i.g) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  br label %preserve_pci_rom_image.exit.i

preserve_pci_rom_image.exit.thread.i:             ; preds = %.thread80.i.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br label %bb.bq

preserve_pci_rom_image.exit.i:                    ; preds = %.thread91.i.i, %.thread44.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  br i1 %.0.ph.i.i, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %preserve_pci_rom_image.exit.i, %preserve_pci_rom_image.exit.thread52.i
  %.03456.i = phi ptr [ %i.me, %preserve_pci_rom_image.exit.thread52.i ], [ undef, %preserve_pci_rom_image.exit.i ] ; 3 uses
  %.not27.i = icmp eq ptr %.157.i, null
  %i.mv = ptrtoint ptr %.03456.i to i64           ; 2 uses
  br i1 %.not27.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i64 %i.mv, ptr %.157.i, align 8
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  store i64 %i.mv, ptr %i.hb, align 1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %preserve_pci_rom_image.exit.i, %preserve_pci_rom_image.exit.thread.i, %.thread35.i, %bb.bb
  %.2.i.a = phi ptr [ %.157.i, %bb.bb ], [ %.157.i, %preserve_pci_rom_image.exit.thread.i ], [ %.157.i, %preserve_pci_rom_image.exit.i ], [ %.157.i, %.thread35.i ], [ %.03456.i, %bb.bp ], [ %.03456.i, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #5
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i48, 1 ; 2 uses
  %i.mw = load i64, ptr %i.o, align 8
  %i.mx = icmp ugt i64 %i.mw, %indvars.iv.next.i49
  br i1 %i.mx, label %bb.ba, label %.critedge2.i, !llvm.loop !13

.critedge2.i:                                     ; preds = %bb.bq, %.critedge.i47, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #5
  %i.my = load ptr, ptr %i.n, align 8             ; 3 uses
  %.not.i.i = icmp eq ptr %i.my, null
  br i1 %.not.i.i, label %setup_efi_pci.exit, label %bb.br

bb.br:                                            ; preds = %.critedge2.i
  br i1 %i.bo, label %setup_efi_pci.exit.thread, label %setup_efi_pci.exit.thread81

setup_efi_pci.exit.thread:                        ; preds = %bb.br
  %i.mz = load ptr, ptr @efi_system_table, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 96
  %i.nb = load ptr, ptr %i.na, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 72
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = call win64cc i64 %i.nd(ptr noundef nonnull %i.my) #6, !inline_history !10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  %i.nf = load ptr, ptr @efi_system_table, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 24
  br label %efistub_fw_vendor.exit.i50

setup_efi_pci.exit.thread81:                      ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #5
  %i.nh = load ptr, ptr @efi_system_table, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 60
  %i.nj = load i32, ptr %i.ni, align 4
  %i.nk = zext i32 %i.nj to i64
  %i.nl = inttoptr i64 %i.nk to ptr
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 48
  %i.nn = load i32, ptr %i.nm, align 8
  %i.no = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.nn, ptr noundef nonnull %i.my, ptr noundef nonnull %i.m) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  %i.np = load ptr, ptr @efi_system_table, align 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  br label %efistub_fw_vendor.exit.thread.i

setup_efi_pci.exit:                               ; preds = %.critedge2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #5
  %i.nr = load ptr, ptr @efi_system_table, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 24 ; 2 uses
  br i1 %i.bo, label %efistub_fw_vendor.exit.i50, label %efistub_fw_vendor.exit.thread.i

efistub_fw_vendor.exit.i50:                       ; preds = %setup_efi_pci.exit.thread, %setup_efi_pci.exit
  %i.nt = phi ptr [ %i.ng, %setup_efi_pci.exit.thread ], [ %i.ns, %setup_efi_pci.exit ]
  %i.nu = load i64, ptr %i.nt, align 8
  %i.nv = inttoptr i64 %i.nu to ptr
  %i.nw = call i32 @memcmp(ptr noundef %i.nv, ptr noundef nonnull @apple, i64 noundef 12) #6
  %.not.i51 = icmp eq i32 %i.nw, 0
  br i1 %.not.i51, label %bb.bs, label %setup_quirks.exit

efistub_fw_vendor.exit.thread.i:                  ; preds = %setup_efi_pci.exit.thread81, %setup_efi_pci.exit
  %i.nx = phi ptr [ %i.nq, %setup_efi_pci.exit.thread81 ], [ %i.ns, %setup_efi_pci.exit ]
  %i.ny = load i32, ptr %i.nx, align 8
  %i.nz = zext i32 %i.ny to i64
  %i.oa = inttoptr i64 %i.nz to ptr
  %i.ob = call i32 @memcmp(ptr noundef %i.oa, ptr noundef nonnull @apple, i64 noundef 12) #6
  %.not1.i = icmp eq i32 %i.ob, 0
  br i1 %.not1.i, label %.thread.i, label %setup_quirks.exit

.thread.i:                                        ; preds = %efistub_fw_vendor.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  br label %apple_set_os.exit.i

bb.bs:                                            ; preds = %efistub_fw_vendor.exit.i50
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  %i.oc = call ptr @efi_get_smbios_record(i8 noundef zeroext 1) #6 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i52, label %bb.bt, label %get_table_record.exit.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.od = call ptr @get_efi_config_table(i64 1284420384822471985, i64 5602828850577807002) #6 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i.i, label %apple_set_os.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.oe = call i32 @memcmp(ptr noundef nonnull %i.od, ptr noundef nonnull @.str.22, i64 noundef 4) #6
  %.not.i.i.i.i.i = icmp eq i32 %i.oe, 0
  br i1 %.not.i.i.i.i.i, label %bb.bv, label %apple_set_os.exit.i

bb.bv:                                            ; preds = %bb.bu
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 16 ; 2 uses
  %i.og = call i32 @memcmp(ptr noundef nonnull %i.of, ptr noundef nonnull @.str.23, i64 noundef 5) #6
  %.not6.i.i.i.i.i = icmp eq i32 %i.og, 0
  br i1 %.not6.i.i.i.i.i, label %bb.bw, label %apple_set_os.exit.i

bb.bw:                                            ; preds = %bb.bv
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 5
  %i.oi = load i8, ptr %i.oh, align 1             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.oi, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i8.i.i.i.i.i.preheader, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.bw
  %wide.trip.count.i.i.i.i.i.i = zext i8 %i.oi to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.067.i.i.i.i.i.i = phi i8 [ 0, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.ol, %.lr.ph.i.i.i.i.i.i ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 %indvars.iv.i.i.i.i.i.i
  %i.ok = load i8, ptr %i.oj, align 1
  %i.ol = add i8 %i.ok, %.067.i.i.i.i.i.i         ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %verify_ep_checksum.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !14

verify_ep_checksum.exit.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i
  %i.om = icmp eq i8 %i.ol, 0
  br i1 %i.om, label %.lr.ph.i8.i.i.i.i.i.preheader, label %apple_set_os.exit.i

.lr.ph.i8.i.i.i.i.i.preheader:                    ; preds = %verify_ep_checksum.exit.i.i.i.i.i, %bb.bw
  br label %.lr.ph.i8.i.i.i.i.i

.lr.ph.i8.i.i.i.i.i:                              ; preds = %.lr.ph.i8.i.i.i.i.i.preheader, %.lr.ph.i8.i.i.i.i.i
  %indvars.iv.i9.i.i.i.i.i = phi i64 [ %indvars.iv.next.i11.i.i.i.i.i, %.lr.ph.i8.i.i.i.i.i ], [ 0, %.lr.ph.i8.i.i.i.i.i.preheader ] ; 2 uses
  %.067.i10.i.i.i.i.i = phi i8 [ %i.op, %.lr.ph.i8.i.i.i.i.i ], [ 0, %.lr.ph.i8.i.i.i.i.i.preheader ]
  %i.on = getelementptr inbounds nuw i8, ptr %i.of, i64 %indvars.iv.i9.i.i.i.i.i
  %i.oo = load i8, ptr %i.on, align 1
  %i.op = add i8 %i.oo, %.067.i10.i.i.i.i.i       ; 2 uses
  %indvars.iv.next.i11.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i9.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i12.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i11.i.i.i.i.i, 15
  br i1 %exitcond.not.i12.i.i.i.i.i, label %verify_ep_integrity.exit.i.i.i.i, label %.lr.ph.i8.i.i.i.i.i, !llvm.loop !14

verify_ep_integrity.exit.i.i.i.i:                 ; preds = %.lr.ph.i8.i.i.i.i.i
  %i.oq = icmp eq i8 %i.op, 0
  br i1 %i.oq, label %bb.bx, label %apple_set_os.exit.i

bb.bx:                                            ; preds = %verify_ep_integrity.exit.i.i.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.os = load i32, ptr %i.or, align 2
  %i.ot = zext i32 %i.os to i64
  %i.ou = inttoptr i64 %i.ot to ptr               ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.od, i64 22
  %i.ow = load i16, ptr %i.ov, align 2            ; 2 uses
  %i.ox = zext i16 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 %i.ox ; 3 uses
  %i.oz = icmp ugt i16 %i.ow, 4
  br i1 %i.oz, label %.lr.ph.i.i.i.i.i, label %apple_set_os.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bx, %.loopexit.i.i.i.i.i
  %.02135.i.i.i.i.i = phi ptr [ %i.pj, %.loopexit.i.i.i.i.i ], [ %i.ou, %bb.bx ] ; 4 uses
  %i.pa = load i8, ptr %.02135.i.i.i.i.i, align 2
  switch i8 %i.pa, label %bb.by [
    i8 1, label %get_table_record.exit.i.i.i
    i8 127, label %apple_set_os.exit.i
  ]

bb.by:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.pb = getelementptr inbounds nuw i8, ptr %.02135.i.i.i.i.i, i64 1
  %i.pc = load i8, ptr %i.pb, align 1
  %i.pd = zext i8 %i.pc to i64
  %i.pe = getelementptr inbounds nuw i8, ptr %.02135.i.i.i.i.i, i64 %i.pd
  br label %thread-pre-split.i.i.i.i.i

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.cb, %bb.by
  %.020.ph.i.i.i.i.i = phi ptr [ %i.pg, %bb.cb ], [ %i.pe, %bb.by ] ; 2 uses
  %.pr.i.i.i.i.i = load i8, ptr %.020.ph.i.i.i.i.i, align 1
  %i.pf = icmp eq i8 %.pr.i.i.i.i.i, 0
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %thread-pre-split.i.i.i.i.i
  %.not.i6.i.i.i.i = phi i1 [ %i.pf, %thread-pre-split.i.i.i.i.i ], [ false, %bb.ca ]
  %.020.i.i.i.i.i = phi ptr [ %.020.ph.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ], [ %i.pg, %bb.ca ] ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 1 ; 5 uses
  br i1 %.not.i6.i.i.i.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ph = load i8, ptr %i.pg, align 1
  %.not27.i.i.i.i.i = icmp ne i8 %i.ph, 0
  %i.pi = icmp ult ptr %i.pg, %i.oy
  %or.cond.i.i.i.i.i = and i1 %i.pi, %.not27.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.bz, label %.loopexit.i.i.i.i.i, !llvm.loop !15

bb.cb:                                            ; preds = %bb.bz
  %.old28.i.i.i.i.i = icmp ult ptr %i.pg, %i.oy
  br i1 %.old28.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i, label %.loopexit.i.i.i.i.i, !llvm.loop !15

.loopexit.i.i.i.i.i:                              ; preds = %bb.cb, %bb.ca
  %i.pj = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 2
  %i.pk = getelementptr inbounds nuw i8, ptr %.020.i.i.i.i.i, i64 6
  %i.pl = icmp ult ptr %i.pk, %i.oy
  br i1 %i.pl, label %.lr.ph.i.i.i.i.i, label %apple_set_os.exit.i, !llvm.loop !16

get_table_record.exit.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i, %bb.bs
  %i.pm = phi ptr [ %i.oc, %bb.bs ], [ %.02135.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 5
  %i.po = call ptr @__efi_get_smbios_string(ptr noundef nonnull %i.pm, ptr noundef nonnull %i.pn) #6 ; 2 uses
  %.not18.i.i.i = icmp eq ptr %i.po, null
  br i1 %.not18.i.i.i, label %apple_set_os.exit.i, label %.preheader.i.i.i

bb.cc:                                            ; preds = %.preheader.i.i.i
end_hunk_0
begin_hunk_1_@efi_stub_entry:bb.a
bb.cf:                                            ; preds = %bb.ce
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8
  %i.qr = call win64cc i64 %i.qq(ptr noundef nonnull @.str.18) #6, !inline_history !18
  %.not4.i.i = icmp eq i64 %i.qr, 0
  br i1 %.not4.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qs = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.19) #6 ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce
  %i.qt = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.qu = load i64, ptr %i.qt, align 8
  %.not5.i.i = icmp eq i64 %i.qu, 0
  br i1 %.not5.i.i, label %apple_set_os.exit.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8
  %i.qx = call win64cc i64 %i.qw(ptr noundef nonnull @.str.20) #6, !inline_history !18
  %.not6.i.i = icmp eq i64 %i.qx, 0
  br i1 %.not6.i.i, label %apple_set_os.exit.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.qy = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.21) #6 ; 0 uses
  br label %apple_set_os.exit.i

apple_set_os.exit.i:                              ; preds = %.loopexit.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %bb.cc, %bb.cj, %bb.ci, %bb.ch, %bb.cd, %get_table_record.exit.i.i.i, %bb.bx, %verify_ep_integrity.exit.i.i.i.i, %verify_ep_checksum.exit.i.i.i.i.i, %bb.bv, %bb.bu, %bb.bt, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %setup_quirks.exit

setup_quirks.exit:                                ; preds = %efistub_fw_vendor.exit.i50, %efistub_fw_vendor.exit.thread.i, %apple_set_os.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store ptr %.071, ptr %3, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %.071, i64 448
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.qz, ptr %i.ra, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  store ptr null, ptr %i.d, align 8
  %i.rb = call i64 @efi_get_memory_map(ptr noundef nonnull %i.d, i1 noundef zeroext false) #6 ; 2 uses
  %.not.i.i54 = icmp eq i64 %i.rb, 0
  %.pre21.i = load ptr, ptr %i.d, align 8         ; 4 uses
  br i1 %.not.i.i54, label %bb.ck, label %alloc_e820ext.exit.i.i

bb.ck:                                            ; preds = %setup_quirks.exit
  %i.rc = load i64, ptr %.pre21.i, align 8
  %i.rd = getelementptr inbounds nuw i8, ptr %.pre21.i, i64 8
  %i.re = load i64, ptr %i.rd, align 8
  %i.rf = udiv i64 %i.rc, %i.re                   ; 2 uses
  %i.rg = and i64 %i.rf, 4294967295
  %i.rh = icmp samesign ugt i64 %i.rg, 96
  br i1 %i.rh, label %bb.cl, label %alloc_e820ext.exit.i.thread.i

bb.cl:                                            ; preds = %bb.ck
  %i.ri = add i64 %i.rf, 4294967200
  %i.rj = and i64 %i.ri, 4294967295
  %i.rk = mul nuw nsw i64 %i.rj, 20
  %i.rl = add nuw nsw i64 %i.rk, 16               ; 3 uses
  %i.rm = load ptr, ptr %i.e, align 8             ; 3 uses
  %.not.i14.i.i = icmp eq ptr %i.rm, null
  br i1 %.not.i14.i.i, label %._crit_edge.i.i.i, label %bb.cm

._crit_edge.i.i.i:                                ; preds = %bb.cl
  br i1 %i.bo, label %bb.co, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  br i1 %i.bo, label %.thread.i.i.i, label %bb.cn

.thread.i.i.i:                                    ; preds = %bb.cm
  %i.rn = load ptr, ptr @efi_system_table, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 96
  %i.rp = load ptr, ptr %i.ro, align 8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 72
  %i.rr = load ptr, ptr %i.rq, align 8
  %i.rs = call win64cc i64 %i.rr(ptr noundef nonnull %i.rm) #6, !inline_history !19 ; 0 uses
  store ptr null, ptr %i.e, align 8
  br label %bb.co

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.rt = load ptr, ptr @efi_system_table, align 8
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 60
  %i.rv = load i32, ptr %i.ru, align 4
  %i.rw = zext i32 %i.rv to i64
  %i.rx = inttoptr i64 %i.rw to ptr
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 48
  %i.rz = load i32, ptr %i.ry, align 8
  %i.sa = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.rz, ptr noundef nonnull %i.rm, ptr noundef nonnull %i.a) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.e, align 8
  br label %bb.cp

bb.co:                                            ; preds = %.thread.i.i.i, %._crit_edge.i.i.i
  %i.sb = load ptr, ptr @efi_system_table, align 8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 96
  %i.sd = load ptr, ptr %i.sc, align 8
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 64
  %i.sf = load ptr, ptr %i.se, align 8
  %i.sg = call win64cc i64 %i.sf(i32 noundef 2, i64 noundef %i.rl, ptr noundef nonnull %i.e) #6, !inline_history !19
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn, %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.sh = load ptr, ptr @efi_system_table, align 8
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 60
  %i.sj = load i32, ptr %i.si, align 4
  %i.sk = zext i32 %i.sj to i64
  %i.sl = inttoptr i64 %i.sk to ptr
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 44
  %i.sn = load i32, ptr %i.sm, align 4
  %i.so = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.so, align 4
  %i.sp = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.sn, i32 noundef 2, i64 noundef %i.rl, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  %i.sq = trunc i64 %i.sp to i32                  ; 2 uses
  %i.sr = call noundef i32 @llvm.fshl.i32(i32 %i.sq, i32 %i.sq, i32 1)
  %i.ss = zext i32 %i.sr to i64                   ; 2 uses
  %i.st = call range(i64 0, -9223372034707292160) i64 @llvm.fshl.i64(i64 range(i64 0, 4294967296) %i.ss, i64 range(i64 0, 4294967296) %i.ss, i64 63)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.su = phi i64 [ %i.sg, %bb.co ], [ %i.st, %bb.cp ] ; 2 uses
  %i.sv = icmp eq i64 %i.su, 0
  %i.sw = trunc i64 %i.rl to i32
  %spec.select.i = select i1 %i.sv, i32 %i.sw, i32 0
  %.pre.i58 = load ptr, ptr %i.d, align 8
  br label %alloc_e820ext.exit.i.i

alloc_e820ext.exit.i.i:                           ; preds = %bb.cq, %setup_quirks.exit
  %i.sx = phi ptr [ %.pre21.i, %setup_quirks.exit ], [ %.pre.i58, %bb.cq ] ; 2 uses
  %.019.i = phi i32 [ 0, %setup_quirks.exit ], [ %spec.select.i, %bb.cq ] ; 2 uses
  %.1.i.i = phi i64 [ %i.rb, %setup_quirks.exit ], [ %i.su, %bb.cq ] ; 2 uses
  %.not.i.i.i55 = icmp eq ptr %i.sx, null
  br i1 %.not.i.i.i55, label %allocate_e820.exit.i, label %alloc_e820ext.exit.i.thread.i

alloc_e820ext.exit.i.thread.i:                    ; preds = %alloc_e820ext.exit.i.i, %bb.ck
  %.1.i33.i = phi i64 [ %.1.i.i, %alloc_e820ext.exit.i.i ], [ 0, %bb.ck ] ; 2 uses
  %.01931.i = phi i32 [ %.019.i, %alloc_e820ext.exit.i.i ], [ 0, %bb.ck ] ; 2 uses
  %i.sy = phi ptr [ %i.sx, %alloc_e820ext.exit.i.i ], [ %.pre21.i, %bb.ck ] ; 2 uses
  br i1 %i.bo, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %alloc_e820ext.exit.i.thread.i
  %i.sz = load ptr, ptr @efi_system_table, align 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 96
  %i.tb = load ptr, ptr %i.ta, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 72
  %i.td = load ptr, ptr %i.tc, align 8
  %i.te = call win64cc i64 %i.td(ptr noundef nonnull %i.sy) #6, !inline_history !20 ; 0 uses
  br label %allocate_e820.exit.i

bb.cs:                                            ; preds = %alloc_e820ext.exit.i.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.tf = load ptr, ptr @efi_system_table, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 60
  %i.th = load i32, ptr %i.tg, align 4
  %i.ti = zext i32 %i.th to i64
  %i.tj = inttoptr i64 %i.ti to ptr
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 48
  %i.tl = load i32, ptr %i.tk, align 8
  %i.tm = call i64 (i32, ...) @__efi64_thunk(i32 noundef %i.tl, ptr noundef nonnull %i.sy, ptr noundef nonnull %i.c) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  br label %allocate_e820.exit.i

allocate_e820.exit.i:                             ; preds = %bb.cs, %bb.cr, %alloc_e820ext.exit.i.i
  %.1.i34.i = phi i64 [ %.1.i.i, %alloc_e820ext.exit.i.i ], [ %.1.i33.i, %bb.cr ], [ %.1.i33.i, %bb.cs ] ; 2 uses
  %.01932.i = phi i32 [ %.019.i, %alloc_e820ext.exit.i.i ], [ %.01931.i, %bb.cr ], [ %.01931.i, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  %.not.i56 = icmp eq i64 %.1.i34.i, 0
  br i1 %.not.i56, label %bb.ct, label %.loopexit

bb.ct:                                            ; preds = %allocate_e820.exit.i
  %i.tn = call i64 @efi_exit_boot_services(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @exit_boot_func) #6 ; 2 uses
  %.not15.i = icmp eq i64 %i.tn, 0
  br i1 %.not15.i, label %bb.cu, label %.loopexit

bb.cu:                                            ; preds = %bb.ct
  %i.to = getelementptr inbounds nuw i8, ptr %.071, i64 480
  store i32 32768, ptr %i.to, align 1
  %i.tp = load ptr, ptr %i.e, align 8             ; 7 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.071, i64 468
  %i.tr = load i32, ptr %i.tq, align 4            ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.071, i64 456 ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4            ; 2 uses
  %i.tu = udiv i32 %i.tr, %i.tt                   ; 2 uses
  %.not83.i.i = icmp ugt i32 %i.tt, %i.tr
  br i1 %.not83.i.i, label %bb.dh, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.cu
  %i.tv = getelementptr inbounds nuw i8, ptr %.071, i64 720
  %i.tw = getelementptr inbounds nuw i8, ptr %.071, i64 464
  %i.tx = getelementptr inbounds nuw i8, ptr %.071, i64 476
  %.not65.i.i = icmp eq ptr %i.tp, null
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  br label %bb.cv

bb.cv:                                            ; preds = %bb.dd, %.lr.ph.i.i
  %.05282.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.vo, %bb.dd ] ; 3 uses
  %.05381.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.154.ph.i.i, %bb.dd ] ; 4 uses
  %.05680.i.i = phi ptr [ null, %.lr.ph.i.i ], [ %.157.ph.i.i, %bb.dd ] ; 6 uses
  %.05879.i.i = phi ptr [ %i.tv, %.lr.ph.i.i ], [ %.361.ph.i.i, %bb.dd ] ; 3 uses
  %i.tz = load i32, ptr %i.tw, align 4
  %i.ua = zext i32 %i.tz to i64
  %i.ub = load i32, ptr %i.tx, align 4
  %i.uc = zext i32 %i.ub to i64
  %i.ud = shl nuw i64 %i.uc, 32
  %i.ue = or disjoint i64 %i.ud, %i.ua
  %i.uf = inttoptr i64 %i.ue to ptr
  %i.ug = load i32, ptr %i.ts, align 4
  %i.uh = mul i32 %i.ug, %.05282.i.i
  %i.ui = zext i32 %i.uh to i64
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uf, i64 %i.ui ; 5 uses
  %i.uk = load i32, ptr %i.uj, align 8            ; 2 uses
  %i.ul = icmp ult i32 %i.uk, 15
  br i1 %i.ul, label %switch.lookup, label %bb.dd

switch.lookup:                                    ; preds = %bb.cv
  %i.um = zext nneg i32 %i.uk to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.efi_stub_entry, i64 %i.um
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32       ; 2 uses
  %.not.i17.i = icmp eq ptr %.05680.i.i, null
  br i1 %.not.i17.i, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %switch.lookup
  %i.un = getelementptr inbounds nuw i8, ptr %.05680.i.i, i64 16
  %i.uo = load i32, ptr %i.un, align 1
  %i.up = icmp eq i32 %i.uo, %switch.ext
  br i1 %i.up, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %i.uq = load i64, ptr %.05680.i.i, align 1
  %i.ur = getelementptr inbounds nuw i8, ptr %.05680.i.i, i64 8 ; 2 uses
  %i.us = load i64, ptr %i.ur, align 1            ; 2 uses
  %i.ut = add i64 %i.us, %i.uq
  %i.uu = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.uv = load i64, ptr %i.uu, align 8
  %i.uw = icmp eq i64 %i.ut, %i.uv
  br i1 %i.uw, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  %i.uy = load i64, ptr %i.ux, align 8
  %i.uz = shl i64 %i.uy, 12
  %i.va = add i64 %i.uz, %i.us
  store i64 %i.va, ptr %i.ur, align 1
  br label %bb.dd

bb.cz:                                            ; preds = %bb.cx, %bb.cw, %switch.lookup
  %i.vb = icmp eq i32 %.05381.i.i, 128
  br i1 %i.vb, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  br i1 %.not65.i.i, label %.loopexit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.vc = sub i32 %i.tu, %.05282.i.i
  %i.vd = mul i32 %i.vc, 20
  %i.ve = add i32 %i.vd, 16
  %.not77.i.i = icmp ult i32 %.01932.i, %i.ve
  br i1 %.not77.i.i, label %.loopexit, label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.cz
  %.260.i.i.a = phi ptr [ %i.ty, %bb.db ], [ %.05879.i.i, %bb.cz ] ; 5 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.uj, i64 8
  %i.vg = load i64, ptr %i.vf, align 8
  store i64 %i.vg, ptr %.260.i.i.a, align 1
  %i.vh = getelementptr inbounds nuw i8, ptr %i.uj, i64 24
  %i.vi = load i64, ptr %i.vh, align 8
  %i.vj = shl i64 %i.vi, 12
  %i.vk = getelementptr inbounds nuw i8, ptr %.260.i.i.a, i64 8
  store i64 %i.vj, ptr %i.vk, align 1
  %i.vl = getelementptr inbounds nuw i8, ptr %.260.i.i.a, i64 16
  store i32 %switch.ext, ptr %i.vl, align 1
  %i.vm = getelementptr inbounds nuw i8, ptr %.260.i.i.a, i64 20
  %i.vn = add i32 %.05381.i.i, 1
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cv, %bb.dc, %bb.cy
  %.361.ph.i.i = phi ptr [ %.05879.i.i, %bb.cv ], [ %i.vm, %bb.dc ], [ %.05879.i.i, %bb.cy ]
  %.157.ph.i.i = phi ptr [ %.05680.i.i, %bb.cv ], [ %.260.i.i.a, %bb.dc ], [ %.05680.i.i, %bb.cy ]
  %.154.ph.i.i = phi i32 [ %.05381.i.i, %bb.cv ], [ %i.vn, %bb.dc ], [ %.05381.i.i, %bb.cy ] ; 4 uses
  %i.vo = add nuw nsw i32 %.05282.i.i, 1          ; 2 uses
  %i.vp = icmp ult i32 %i.vo, %i.tu
  br i1 %i.vp, label %bb.cv, label %._crit_edge.i.i, !llvm.loop !21

._crit_edge.i.i:                                  ; preds = %bb.dd
  %i.vq = icmp ugt i32 %.154.ph.i.i, 128
  br i1 %i.vq, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %._crit_edge.i.i
  %i.vr = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  store i32 1, ptr %i.vr, align 8
  %i.vs = mul i32 %.154.ph.i.i, 20
  %i.vt = add i32 %i.vs, -2560
  %i.vu = getelementptr inbounds nuw i8, ptr %i.tp, i64 12
  store i32 %i.vt, ptr %i.vu, align 4
  store i64 0, ptr %i.tp, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %.071, i64 592 ; 2 uses
  %i.vw = load i64, ptr %i.vv, align 4
  br label %bb.df

bb.df:                                            ; preds = %bb.dg, %bb.de
  %.0.in.i.i.i = phi i64 [ %i.vw, %bb.de ], [ %i.vx, %bb.dg ] ; 2 uses
  %.not.i.i18.i = icmp eq i64 %.0.in.i.i.i, 0
  br i1 %.not.i.i18.i, label %.critedge14.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.0.i.i.i = inttoptr i64 %.0.in.i.i.i to ptr    ; 2 uses
  %i.vx = load i64, ptr %.0.i.i.i, align 8        ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.vx, 0
  br i1 %.not13.i.i.i, label %.critedge.i.i.i, label %bb.df, !llvm.loop !22

.critedge.i.i.i:                                  ; preds = %bb.dg
  %i.vy = ptrtoint ptr %i.tp to i64
  store i64 %i.vy, ptr %.0.i.i.i, align 8
  br label %bb.dh

.critedge14.i.i.i:                                ; preds = %bb.df
  %i.vz = ptrtoint ptr %i.tp to i64
  store i64 %i.vz, ptr %i.vv, align 4
  br label %bb.dh

.loopexit:                                        ; preds = %bb.da, %bb.db, %bb.ct, %allocate_e820.exit.i
  %.0.i57.ph = phi i64 [ %.1.i34.i, %allocate_e820.exit.i ], [ %i.tn, %bb.ct ], [ -9223372036854775803, %bb.db ], [ -9223372036854775803, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  br label %.sink.split

bb.dh:                                            ; preds = %.critedge14.i.i.i, %.critedge.i.i.i, %._crit_edge.i.i, %bb.cu
  %.255.i.i = phi i32 [ %.154.ph.i.i, %._crit_edge.i.i ], [ 128, %.critedge.i.i.i ], [ 128, %.critedge14.i.i.i ], [ 0, %bb.cu ]
  %i.wa = add i64 %i.eu, %i.es
  %i.wb = trunc nuw i32 %.255.i.i to i8
  %i.wc = getelementptr inbounds nuw i8, ptr %.071, i64 488
  store i8 %i.wb, ptr %i.wc, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @efi_5level_switch() #6
  call void asm sideeffect "jmp *$0", "r,{si},~{dirflag},~{fpsr},~{flags}"(i64 %i.wa, ptr nonnull %.071) #5, !srcloc !23
  unreachable

.sink.split:                                      ; preds = %efi_decompress_kernel.exit, %efi_decompress_kernel.exit.thread, %parse_options.exit, %bb.s, %.loopexit
  %.str.5.sink = phi ptr [ @.str.4, %bb.s ], [ @.str.7, %.loopexit ], [ @.str.5, %parse_options.exit ], [ @.str.6, %efi_decompress_kernel.exit.thread ], [ @.str.6, %efi_decompress_kernel.exit ]
  %.022.ph = phi i64 [ %i.cd, %bb.s ], [ %.0.i57.ph, %.loopexit ], [ %i.cx, %parse_options.exit ], [ %.0.i42.ph, %efi_decompress_kernel.exit.thread ], [ %i.fb, %efi_decompress_kernel.exit ]
  %i.wd = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull %.str.5.sink) #6 ; 0 uses
  br label %bb.di

bb.di:                                            ; preds = %.sink.split, %bb.an
  %.022 = phi i64 [ %i.fg, %bb.an ], [ %.022.ph, %.sink.split ]
  %i.we = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.8) #6 ; 0 uses
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
