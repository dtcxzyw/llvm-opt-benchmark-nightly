Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/acpi-build?download=true
inline.NumInlined: 114
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@build_dsdt:bb.a
  %i.gy = call ptr (ptr, ...) @aml_scope(ptr noundef nonnull @.str.54) #11 ; 2 uses
  %i.gz = call ptr (ptr, ...) @aml_device(ptr noundef nonnull @.str.156) #11 ; 7 uses
  %i.ha = call ptr @aml_int(i64 noundef 0) #11    ; 5 uses
  %i.hb = call ptr @aml_local(i32 noundef 0) #11  ; 5 uses
  %i.hc = call ptr @aml_local(i32 noundef 1) #11  ; 3 uses
  %i.hd = call ptr @aml_eisaid(ptr noundef nonnull @.str.157) #11
  %i.he = call ptr @aml_name_decl(ptr noundef nonnull @.str.56, ptr noundef %i.hd) #11
  call void @aml_append(ptr noundef %i.gz, ptr noundef %i.he) #11
  %i.hf = call ptr @aml_name_decl(ptr noundef nonnull @.str.58, ptr noundef %i.ha) #11
  call void @aml_append(ptr noundef %i.gz, ptr noundef %i.hf) #11
  %i.hg = call ptr @aml_int(i64 noundef 4275044352) #11
  %i.hh = call ptr @aml_operation_region(ptr noundef nonnull @.str.158, i32 noundef 0, ptr noundef %i.hg, i32 noundef 1024) #11
  call void @aml_append(ptr noundef %i.gz, ptr noundef %i.hh) #11
  %i.hi = call ptr @aml_field(ptr noundef nonnull @.str.158, i32 noundef 3, i32 noundef 1, i32 noundef 0) #11 ; 3 uses
  %i.hj = call ptr @aml_named_field(ptr noundef nonnull @.str.159, i32 noundef 32) #11
  call void @aml_append(ptr noundef %i.hi, ptr noundef %i.hj) #11
  %i.hk = call ptr @aml_named_field(ptr noundef nonnull @.str.160, i32 noundef 32) #11
  call void @aml_append(ptr noundef %i.hi, ptr noundef %i.hk) #11
  call void @aml_append(ptr noundef %i.gz, ptr noundef %i.hi) #11
  %i.hl = call ptr @aml_method(ptr noundef nonnull @.str.85, i32 noundef 0, i32 noundef 0) #11 ; 7 uses
  %i.hm = call ptr (ptr, ...) @aml_name(ptr noundef nonnull @.str.159) #11
  %i.hn = call ptr @aml_store(ptr noundef %i.hm, ptr noundef %i.hb) #11
  call void @aml_append(ptr noundef %i.hl, ptr noundef %i.hn) #11
  %i.ho = call ptr (ptr, ...) @aml_name(ptr noundef nonnull @.str.160) #11
  %i.hp = call ptr @aml_store(ptr noundef %i.ho, ptr noundef %i.hc) #11
  call void @aml_append(ptr noundef %i.hl, ptr noundef %i.hp) #11
  %i.hq = call ptr @aml_int(i64 noundef 16) #11
  %i.hr = call ptr @aml_shiftright(ptr noundef %i.hb, ptr noundef %i.hq, ptr noundef %i.hb) #11
  call void @aml_append(ptr noundef %i.hl, ptr noundef %i.hr) #11
  %i.hs = call ptr @aml_equal(ptr noundef %i.hb, ptr noundef %i.ha) #11
  %i.ht = call ptr @aml_int(i64 noundef 65535) #11
  %i.hu = call ptr @aml_equal(ptr noundef %i.hb, ptr noundef %i.ht) #11
  %i.hv = call ptr @aml_lor(ptr noundef %i.hs, ptr noundef %i.hu) #11
  %i.hw = call ptr @aml_if(ptr noundef %i.hv) #11 ; 2 uses
  %i.hx = call ptr @aml_return(ptr noundef %i.ha) #11
  call void @aml_append(ptr noundef %i.hw, ptr noundef %i.hx) #11
  call void @aml_append(ptr noundef %i.hl, ptr noundef %i.hw) #11
  %i.hy = call ptr @aml_equal(ptr noundef %i.hc, ptr noundef %i.ha) #11
  %i.hz = call ptr @aml_int(i64 noundef 100000000) #11
  %i.ia = call ptr @aml_lgreater(ptr noundef %i.hc, ptr noundef %i.hz) #11
  %i.ib = call ptr @aml_lor(ptr noundef %i.hy, ptr noundef %i.ia) #11
  %i.ic = call ptr @aml_if(ptr noundef %i.ib) #11 ; 2 uses
  %i.id = call ptr @aml_return(ptr noundef %i.ha) #11
  call void @aml_append(ptr noundef %i.ic, ptr noundef %i.id) #11
  call void @aml_append(ptr noundef %i.hl, ptr noundef %i.ic) #11
  %i.ie = call ptr @aml_int(i64 noundef 15) #11
  %i.if = call ptr @aml_return(ptr noundef %i.ie) #11
  call void @aml_append(ptr noundef %i.hl, ptr noundef %i.if) #11
  call void @aml_append(ptr noundef %i.gz, ptr noundef %i.hl) #11
  %i.ig = call ptr @aml_resource_template() #11   ; 2 uses
  %i.ih = call ptr @aml_memory32_fixed(i32 noundef -19922944, i32 noundef 1024, i32 noundef 0) #11
  call void @aml_append(ptr noundef %i.ig, ptr noundef %i.ih) #11
  %i.ii = call ptr @aml_name_decl(ptr noundef nonnull @.str.64, ptr noundef %i.ig) #11
  call void @aml_append(ptr noundef %i.gz, ptr noundef %i.ii) #11
  call void @aml_append(ptr noundef %i.gy, ptr noundef %i.gz) #11
  call void @aml_append(ptr noundef %i.y, ptr noundef %i.gy) #11
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ij = call ptr (ptr, ...) @aml_scope(ptr noundef nonnull @.str.54) #11 ; 2 uses
  %i.ik = call ptr (ptr, ...) @aml_device(ptr noundef nonnull @.str.161) #11 ; 10 uses
  %i.il = call ptr @aml_int(i64 noundef 15) #11
  %i.im = call ptr @aml_name_decl(ptr noundef nonnull @.str.162, ptr noundef %i.il) #11
  call void @aml_append(ptr noundef %i.ik, ptr noundef %i.im) #11
  %i.in = call ptr (ptr, ...) @aml_string(ptr noundef nonnull @.str.163) #11
  %i.io = call ptr @aml_name_decl(ptr noundef nonnull @.str.56, ptr noundef %i.in) #11
  call void @aml_append(ptr noundef %i.ik, ptr noundef %i.io) #11
  %i.ip = call ptr @aml_int(i64 noundef 0) #11
  %i.iq = call ptr @aml_name_decl(ptr noundef nonnull @.str.58, ptr noundef %i.ip) #11
  call void @aml_append(ptr noundef %i.ik, ptr noundef %i.iq) #11
  %i.ir = call ptr (ptr, ...) @aml_string(ptr noundef nonnull @.str.165) #11
  %i.is = call ptr @aml_name_decl(ptr noundef nonnull @.str.164, ptr noundef %i.ir) #11
  call void @aml_append(ptr noundef %i.ik, ptr noundef %i.is) #11
  %i.it = call ptr @aml_method(ptr noundef nonnull @.str.118, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.iu = call ptr (ptr, ...) @aml_name(ptr noundef nonnull @.str.162) #11
  %i.iv = call ptr @aml_int(i64 noundef 13) #11
  %i.iw = call ptr @aml_and(ptr noundef %i.iu, ptr noundef %i.iv, ptr noundef null) #11
  %i.ix = call ptr (ptr, ...) @aml_name(ptr noundef nonnull @.str.162) #11
  %i.iy = call ptr @aml_store(ptr noundef %i.iw, ptr noundef %i.ix) #11
  call void @aml_append(ptr noundef %i.it, ptr noundef %i.iy) #11
  call void @aml_append(ptr noundef %i.ik, ptr noundef %i.it) #11
  %i.iz = call ptr @aml_method(ptr noundef nonnull @.str.166, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.ja = call ptr (ptr, ...) @aml_name(ptr noundef nonnull @.str.162) #11
  %i.jb = call ptr @aml_int(i64 noundef 15) #11
  %i.jc = call ptr @aml_or(ptr noundef %i.ja, ptr noundef %i.jb, ptr noundef null) #11
  %i.jd = call ptr (ptr, ...) @aml_name(ptr noundef nonnull @.str.162) #11
  %i.je = call ptr @aml_store(ptr noundef %i.jc, ptr noundef %i.jd) #11
  call void @aml_append(ptr noundef %i.iz, ptr noundef %i.je) #11
  call void @aml_append(ptr noundef %i.ik, ptr noundef %i.iz) #11
  %i.jf = call ptr @aml_method(ptr noundef nonnull @.str.85, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.jg = call ptr (ptr, ...) @aml_name(ptr noundef nonnull @.str.162) #11
  %i.jh = call ptr @aml_return(ptr noundef %i.jg) #11
  call void @aml_append(ptr noundef %i.jf, ptr noundef %i.jh) #11
  call void @aml_append(ptr noundef %i.ik, ptr noundef %i.jf) #11
  %i.ji = call ptr @aml_int(i64 noundef 0) #11
  %i.jj = call ptr @aml_name_decl(ptr noundef nonnull @.str.167, ptr noundef %i.ji) #11
  call void @aml_append(ptr noundef %i.ik, ptr noundef %i.jj) #11
  %i.jk = call ptr @aml_resource_template() #11   ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.o, i64 808
  %i.jm = load i8, ptr %i.jl, align 8
  %i.jn = call ptr @aml_irq_no_flags(i8 noundef zeroext %i.jm) #11
  call void @aml_append(ptr noundef %i.jk, ptr noundef %i.jn) #11
  %i.jo = call ptr @aml_name_decl(ptr noundef nonnull @.str.64, ptr noundef %i.jk) #11
  call void @aml_append(ptr noundef %i.ik, ptr noundef %i.jo) #11
  call void @aml_append(ptr noundef %i.ij, ptr noundef %i.ik) #11
  call void @aml_append(ptr noundef %i.y, ptr noundef %i.ij) #11
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.jp = call ptr (ptr, ...) @aml_scope(ptr noundef nonnull @.str.67) #11 ; 3 uses
  %i.jq = call ptr (ptr, ...) @aml_string(ptr noundef nonnull @.str.68) #11
  %i.jr = call ptr @aml_name_decl(ptr noundef nonnull @.str.56, ptr noundef %i.jq) #11
  call void @aml_append(ptr noundef %i.jp, ptr noundef %i.jr) #11
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = load i8, ptr %i.jt, align 16, !range !7, !noundef !8
  %i.jv = trunc nuw i8 %i.ju to i1
  br i1 %i.jv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.jw = call ptr @aml_method(ptr noundef nonnull @.str.69, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.jx = call ptr (ptr, ...) @aml_name(ptr noundef nonnull @.str.70) #11
  %i.jy = call ptr @aml_int(i64 noundef 128) #11
  %i.jz = call ptr @aml_notify(ptr noundef %i.jx, ptr noundef %i.jy) #11
  call void @aml_append(ptr noundef %i.jw, ptr noundef %i.jz) #11
  call void @aml_append(ptr noundef %i.jp, ptr noundef %i.jw) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @aml_append(ptr noundef %i.y, ptr noundef %i.jp) #11
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.kb = load i8, ptr %i.ka, align 4, !range !7, !noundef !8
  %i.kc = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.kd = load i8, ptr %i.kc, align 1, !range !7, !noundef !8
  %i.ke = trunc nuw i8 %i.kd to i1
  %i.kf = select i1 %i.ke, ptr @.str.71, ptr null
  %i.kg = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.kh = load i16, ptr %i.kg, align 8
  %i.ki = zext i16 %i.kh to i64
  %.sroa.0.sroa.5.0.insert.ext = zext nneg i8 %i.kb to i64
  %.sroa.0.sroa.5.0.insert.shift = shl nuw nsw i64 %.sroa.0.sroa.5.0.insert.ext, 8
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.5.0.insert.shift, 1
  call void @build_cpus_aml(ptr noundef %i.y, ptr noundef nonnull %3, i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.kf, ptr noundef nonnull @pc_madt_cpu_entry, i64 noundef %i.ki, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.73, i32 noundef 1) #11
  %i.kj = getelementptr inbounds nuw i8, ptr %i.d, i64 1232
  %i.kk = load i64, ptr %i.kj, align 16           ; 2 uses
  %i.kl = icmp ne i64 %i.kk, 0
  %i.km = icmp ne i32 %i.k, 0
  %or.cond = select i1 %i.kl, i1 %i.km, i1 false
  br i1 %or.cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @build_memory_hotplug_aml(ptr noundef %i.y, i32 noundef %i.k, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.74, i32 noundef 1, i64 noundef %i.kk) #11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void @crs_range_set_init(ptr noundef nonnull %4) #11
  %i.kn = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 125, ptr noundef nonnull @__func__.PC_MACHINE) #11
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 1128
  %i.kp = load ptr, ptr %i.ko, align 8            ; 2 uses
  %.not294 = icmp eq ptr %i.kp, null
  br i1 %.not294, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 2256
  %.028216 = load ptr, ptr %i.kq, align 8         ; 2 uses
  %.not29517 = icmp eq ptr %.028216, null
  br i1 %.not29517, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.aa
  %i.kr = getelementptr inbounds nuw i8, ptr %i.d, i64 1568
  %i.ks = getelementptr inbounds nuw i8, ptr %i.d, i64 1696
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.al
  %.028220 = phi ptr [ %.028216, %.lr.ph ], [ %.0282, %bb.al ] ; 7 uses
  %.027919 = phi i1 [ false, %.lr.ph ], [ %.2281, %bb.al ] ; 2 uses
  %.028318 = phi i32 [ 255, %.lr.ph ], [ %.2285, %bb.al ] ; 3 uses
  %i.ku = call i32 @pci_bus_num(ptr noundef nonnull %.028220) #11
  %i.kv = call i32 @pci_bus_numa_node(ptr noundef nonnull %.028220) #11
  %i.kw = getelementptr i8, ptr %.028220, i64 120 ; 4 uses
  %.0282.val = load i32, ptr %i.kw, align 8
  %i.kx = trunc i32 %.0282.val to i1
  br i1 %i.kx, label %bb.ac, label %bb.al

bb.ac:                                            ; preds = %bb.ab
  %i.ky = and i32 %i.ku, 255                      ; 4 uses
  %i.kz = icmp slt i32 %i.ky, %.028318
  %i.la = add nsw i32 %i.ky, -1
  %spec.select = select i1 %i.kz, i32 %i.la, i32 %.028318 ; 2 uses
  %i.lb = call i64 @object_property_get_uint(ptr noundef nonnull %.028220, ptr noundef nonnull @.str.75, ptr noundef nonnull @error_fatal) #11
  %i.lc = call ptr (ptr, ...) @aml_scope(ptr noundef nonnull @.str.76) #11 ; 2 uses
  %.0282.val306 = load i32, ptr %i.kw, align 8
  %i.ld = and i32 %.0282.val306, 4
  %.not13 = icmp eq i32 %i.ld, 0
  %.str.78..str.77 = select i1 %.not13, ptr @.str.78, ptr @.str.77
  %i.le = call ptr (ptr, ...) @aml_device(ptr noundef nonnull %.str.78..str.77, i32 noundef %i.ky) #11 ; 13 uses
  %i.lf = and i64 %i.lb, 4294967295
  %i.lg = call ptr @aml_int(i64 noundef %i.lf) #11
  %i.lh = call ptr @aml_name_decl(ptr noundef nonnull @.str.58, ptr noundef %i.lg) #11
  call void @aml_append(ptr noundef %i.le, ptr noundef %i.lh) #11
  %i.li = zext nneg i32 %i.ky to i64
  %i.lj = call ptr @aml_int(i64 noundef %i.li) #11
  %i.lk = call ptr @aml_name_decl(ptr noundef nonnull @.str.79, ptr noundef %i.lj) #11
  call void @aml_append(ptr noundef %i.le, ptr noundef %i.lk) #11
  %.0282.val305 = load i32, ptr %i.kw, align 8
  %i.ll = and i32 %.0282.val305, 4
  %.not14 = icmp eq i32 %i.ll, 0
  br i1 %.not14, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.lm = call ptr @aml_package(i8 noundef zeroext 2) #11 ; 3 uses
  %i.ln = call ptr (ptr, ...) @aml_string(ptr noundef nonnull @.str.80) #11
  %i.lo = call ptr @aml_name_decl(ptr noundef nonnull @.str.56, ptr noundef %i.ln) #11
  call void @aml_append(ptr noundef %i.le, ptr noundef %i.lo) #11
  %i.lp = call ptr @aml_eisaid(ptr noundef nonnull @.str.59) #11
  call void @aml_append(ptr noundef %i.lm, ptr noundef %i.lp) #11
  %i.lq = call ptr @aml_eisaid(ptr noundef nonnull @.str.57) #11
  call void @aml_append(ptr noundef %i.lm, ptr noundef %i.lq) #11
  %i.lr = call ptr @aml_name_decl(ptr noundef nonnull @.str.60, ptr noundef %i.lm) #11
  call void @aml_append(ptr noundef %i.le, ptr noundef %i.lr) #11
  call void @build_cxl_osc_method(ptr noundef %i.le) #11
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ac
  %i.ls = call zeroext i1 @pci_bus_is_express(ptr noundef nonnull %.028220) #11
  br i1 %i.ls, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.lt = call ptr @aml_eisaid(ptr noundef nonnull @.str.59) #11
  %i.lu = call ptr @aml_name_decl(ptr noundef nonnull @.str.56, ptr noundef %i.lt) #11
  call void @aml_append(ptr noundef %i.le, ptr noundef %i.lu) #11
  %i.lv = call ptr @aml_eisaid(ptr noundef nonnull @.str.57) #11
  %i.lw = call ptr @aml_name_decl(ptr noundef nonnull @.str.60, ptr noundef %i.lv) #11
  call void @aml_append(ptr noundef %i.le, ptr noundef %i.lw) #11
  %i.lx = call ptr @build_pci_host_bridge_osc_method(i1 noundef zeroext true) #11
  call void @aml_append(ptr noundef %i.le, ptr noundef %i.lx) #11
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.ly = call ptr @aml_eisaid(ptr noundef nonnull @.str.57) #11
  %i.lz = call ptr @aml_name_decl(ptr noundef nonnull @.str.56, ptr noundef %i.ly) #11
  call void @aml_append(ptr noundef %i.le, ptr noundef %i.lz) #11
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ad
  %i.ma = and i32 %i.kv, 255                      ; 2 uses
  %.not302 = icmp eq i32 %i.ma, 128
  br i1 %.not302, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mb = zext nneg i32 %i.ma to i64
  %i.mc = call ptr @aml_int(i64 noundef %i.mb) #11
  %i.md = call ptr @aml_name_decl(ptr noundef nonnull @.str.81, ptr noundef %i.mc) #11
  call void @aml_append(ptr noundef %i.le, ptr noundef %i.md) #11
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.me = call fastcc ptr @build_prt(i1 noundef zeroext false)
  call void @aml_append(ptr noundef %i.le, ptr noundef %i.me) #11
  %i.mf = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %.028220, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.169, i32 noundef 320, ptr noundef nonnull @__func__.BUS) #11
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  %i.mh = load ptr, ptr %i.mg, align 8
  %i.mi = call ptr @object_dynamic_cast_assert(ptr noundef %i.mh, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 37, ptr noundef nonnull @__func__.PCI_HOST_BRIDGE) #11
  %i.mj = call ptr @build_crs(ptr noundef %i.mi, ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i64 noundef 0, i16 noundef zeroext 0) #11
  %i.mk = call ptr @aml_name_decl(ptr noundef nonnull @.str.64, ptr noundef %i.mj) #11
  call void @aml_append(ptr noundef %i.le, ptr noundef %i.mk) #11
  call void @aml_append(ptr noundef %i.lc, ptr noundef %i.le) #11
  call void @aml_append(ptr noundef %i.y, ptr noundef %i.lc) #11
  %.0282.val304 = load i32, ptr %i.kw, align 8
  %i.ml = and i32 %.0282.val304, 4
  %.not15 = icmp eq i32 %i.ml, 0
  br i1 %.not15, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mm = load i64, ptr %i.ks, align 16           ; 2 uses
  %i.mn = load ptr, ptr %i.kt, align 8
  %i.mo = call i64 @memory_region_size(ptr noundef nonnull %i.kr) #11
  %i.mp = add i64 %i.mm, -1
  %i.mq = add i64 %i.mp, %i.mo
  call void @crs_range_insert(ptr noundef %i.mn, i64 noundef %i.mm, i64 noundef %i.mq) #11
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ab
  %.2285 = phi i32 [ %.028318, %bb.ab ], [ %spec.select, %bb.ak ], [ %spec.select, %bb.aj ] ; 3 uses
  %.2281 = phi i1 [ %.027919, %bb.ab ], [ true, %bb.ak ], [ %.027919, %bb.aj ] ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.028220, i64 2264
  %.0282 = load ptr, ptr %i.mr, align 8           ; 2 uses
  %.not295 = icmp eq ptr %.0282, null
  br i1 %.not295, label %._crit_edge, label %bb.ab, !llvm.loop !20

._crit_edge:                                      ; preds = %bb.al
  br i1 %.2281, label %bb.am, label %.thread

bb.am:                                            ; preds = %._crit_edge
  %i.ms = call ptr (ptr, ...) @aml_scope(ptr noundef nonnull @.str.54) #11 ; 2 uses
  %i.mt = call ptr (ptr, ...) @aml_device(ptr noundef nonnull @.str.170) #11 ; 4 uses
  %i.mu = call ptr (ptr, ...) @aml_string(ptr noundef nonnull @.str.171) #11
  %i.mv = call ptr @aml_name_decl(ptr noundef nonnull @.str.56, ptr noundef %i.mu) #11
  call void @aml_append(ptr noundef %i.mt, ptr noundef %i.mv) #11
  %i.mw = call ptr @aml_method(ptr noundef nonnull @.str.85, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.mx = call ptr @aml_int(i64 noundef 11) #11
  %i.my = call ptr @aml_return(ptr noundef %i.mx) #11
  call void @aml_append(ptr noundef %i.mw, ptr noundef %i.my) #11
  call void @aml_append(ptr noundef %i.mt, ptr noundef %i.mw) #11
  call void @build_cxl_dsm_method(ptr noundef %i.mt) #11
  call void @aml_append(ptr noundef %i.ms, ptr noundef %i.mt) #11
  call void @aml_append(ptr noundef %i.y, ptr noundef %i.ms) #11
  br label %.thread

.thread:                                          ; preds = %bb.aa, %bb.z, %bb.am, %._crit_edge
  %.32869 = phi i32 [ %.2285, %._crit_edge ], [ %.2285, %bb.am ], [ 255, %bb.z ], [ 255, %bb.aa ]
  br i1 %i.h, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.thread
  %i.mz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = load i64, ptr %5, align 8               ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nd = load i32, ptr %i.nc, align 8
  %i.ne = zext i32 %i.nd to i64
  %i.nf = add i64 %i.nb, -1
  %i.ng = add i64 %i.nf, %i.ne
  call void @crs_range_insert(ptr noundef %i.na, i64 noundef %i.nb, i64 noundef %i.ng) #11
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread
  %i.nh = call ptr (ptr, ...) @aml_scope(ptr noundef nonnull @.str.72) #11 ; 4 uses
  %i.ni = call ptr @aml_resource_template() #11   ; 9 uses
  %i.nj = trunc nsw i32 %.32869 to i16            ; 2 uses
  %i.nk = add nsw i16 %i.nj, 1
  %i.nl = call ptr @aml_word_bus_number(i32 noundef 4, i32 noundef 8, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext %i.nj, i16 noundef zeroext 0, i16 noundef zeroext %i.nk) #11
  call void @aml_append(ptr noundef %i.ni, ptr noundef %i.nl) #11
  %i.nm = call ptr @aml_io(i32 noundef 1, i16 noundef zeroext 3320, i16 noundef zeroext 3320, i8 noundef zeroext 1, i8 noundef zeroext 8) #11
  call void @aml_append(ptr noundef %i.ni, ptr noundef %i.nm) #11
  %i.nn = call ptr @aml_word_io(i32 noundef 4, i32 noundef 8, i32 noundef 0, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 3319, i16 noundef zeroext 0, i16 noundef zeroext 3320) #11
  call void @aml_append(ptr noundef %i.ni, ptr noundef %i.nn) #11
  %i.no = load ptr, ptr %4, align 8
  call void @crs_replace_with_free_ranges(ptr noundef %i.no, i64 noundef 3328, i64 noundef 65535) #11
  %i.np = load ptr, ptr %4, align 8               ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %i.nr = load i32, ptr %i.nq, align 8
  %.not31 = icmp eq i32 %i.nr, 0
  br i1 %.not31, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.ao, %.lr.ph24
  %i.ns = phi ptr [ %i.oh, %.lr.ph24 ], [ %i.np, %bb.ao ]
  %.027822 = phi i32 [ %i.og, %.lr.ph24 ], [ 0, %bb.ao ] ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8
  %i.nu = sext i32 %.027822 to i64
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %i.nu
  %i.nw = load ptr, ptr %i.nv, align 8            ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8            ; 2 uses
  %i.ny = trunc i64 %i.nx to i16
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.oa = load i64, ptr %i.nz, align 8            ; 2 uses
  %i.ob = trunc i64 %i.oa to i16
  %i.oc = sub i64 %i.oa, %i.nx
  %i.od = trunc i64 %i.oc to i16
  %i.oe = add i16 %i.od, 1
  %i.of = call ptr @aml_word_io(i32 noundef 4, i32 noundef 8, i32 noundef 0, i32 noundef 3, i16 noundef zeroext 0, i16 noundef zeroext %i.ny, i16 noundef zeroext %i.ob, i16 noundef zeroext 0, i16 noundef zeroext %i.oe) #11
  call void @aml_append(ptr noundef %i.ni, ptr noundef %i.of) #11
  %i.og = add nuw i32 %.027822, 1                 ; 2 uses
  %i.oh = load ptr, ptr %4, align 8               ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load i32, ptr %i.oi, align 8
  %i.ok = icmp ult i32 %i.og, %i.oj
  br i1 %i.ok, label %.lr.ph24, label %._crit_edge25, !llvm.loop !21

._crit_edge25:                                    ; preds = %.lr.ph24, %bb.ao
  %i.ol = call ptr @aml_dword_memory(i32 noundef 0, i32 noundef 4, i32 noundef 8, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 655360, i32 noundef 786431, i32 noundef 0, i32 noundef 131072) #11
  call void @aml_append(ptr noundef %i.ni, ptr noundef %i.ol) #11
  %i.om = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.on = load ptr, ptr %i.om, align 8
  %.not.i.i.i = icmp ule i64 %.0.val1, %.8.val    ; 2 uses
  %i.oo = add i64 %.8.val, 1
  %i.op = icmp eq i64 %.0.val1, %i.oo
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.op
  br i1 %or.cond.i.i.i, label %range_is_empty.exit.i, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge25
  call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #13
  unreachable

range_is_empty.exit.i:                            ; preds = %._crit_edge25
  br i1 %.not.i.i.i, label %range_upb.exit, label %bb.aq

bb.aq:                                            ; preds = %range_is_empty.exit.i
  call void @__assert_fail(ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.48, i32 noundef 103, ptr noundef nonnull @__PRETTY_FUNCTION__.range_lob) #13
  unreachable

range_upb.exit:                                   ; preds = %range_is_empty.exit.i
  call void @crs_replace_with_free_ranges(ptr noundef %i.on, i64 noundef %.0.val1, i64 noundef %.8.val) #11
  %i.oq = load ptr, ptr %i.om, align 8            ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  %i.os = load i32, ptr %i.or, align 8
  %.not32 = icmp eq i32 %i.os, 0
  br i1 %.not32, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %range_upb.exit, %.lr.ph27
  %i.ot = phi ptr [ %i.pi, %.lr.ph27 ], [ %i.oq, %range_upb.exit ]
  %.126 = phi i32 [ %i.ph, %.lr.ph27 ], [ 0, %range_upb.exit ] ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8
  %i.ov = sext i32 %.126 to i64
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.ou, i64 %i.ov
  %i.ox = load ptr, ptr %i.ow, align 8            ; 2 uses
  %i.oy = load i64, ptr %i.ox, align 8            ; 2 uses
  %i.oz = trunc i64 %i.oy to i32
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pb = load i64, ptr %i.pa, align 8            ; 2 uses
  %i.pc = trunc i64 %i.pb to i32
  %i.pd = sub i64 %i.pb, %i.oy
  %i.pe = trunc i64 %i.pd to i32
  %i.pf = add i32 %i.pe, 1
  %i.pg = call ptr @aml_dword_memory(i32 noundef 0, i32 noundef 4, i32 noundef 8, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef %i.oz, i32 noundef %i.pc, i32 noundef 0, i32 noundef %i.pf) #11
  call void @aml_append(ptr noundef %i.ni, ptr noundef %i.pg) #11
  %i.ph = add nuw i32 %.126, 1                    ; 2 uses
  %i.pi = load ptr, ptr %i.om, align 8            ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pk = load i32, ptr %i.pj, align 8
  %i.pl = icmp ult i32 %i.ph, %i.pk
  br i1 %i.pl, label %.lr.ph27, label %._crit_edge28, !llvm.loop !22

._crit_edge28:                                    ; preds = %.lr.ph27, %range_upb.exit
  %.not.i.i = icmp ule i64 %.0.val3, %.8.val5     ; 2 uses
  %i.pm = add i64 %.8.val5, 1
  %i.pn = icmp eq i64 %.0.val3, %i.pm
  %or.cond.i.i = or i1 %.not.i.i, %i.pn
  br i1 %or.cond.i.i, label %range_is_empty.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge28
  call void @__assert_fail(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 43, ptr noundef nonnull @__PRETTY_FUNCTION__.range_invariant) #13
  unreachable

range_is_empty.exit:                              ; preds = %._crit_edge28
  br i1 %.not.i.i, label %range_upb.exit327, label %.loopexit

range_upb.exit327:                                ; preds = %range_is_empty.exit
  %i.po = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.pp = load ptr, ptr %i.po, align 8
  call void @crs_replace_with_free_ranges(ptr noundef %i.pp, i64 noundef %.0.val3, i64 noundef %.8.val5) #11
  %i.pq = load ptr, ptr %i.po, align 8            ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.ps = load i32, ptr %i.pr, align 8
  %.not33 = icmp eq i32 %i.ps, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph30
end_hunk_0
